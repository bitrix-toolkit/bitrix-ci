<?php
/**
 * Bitrix Framework
 * @package bitrix
 * @subpackage main
 * @copyright 2001-2015 Bitrix
 */
namespace Bitrix\Main\Config;

use Bitrix\Main;

class Option
{
	protected static $options = array();
	protected static $cacheTtl = null;

	/**
	 * Returns a value of an option.
	 *
	 * @param string $moduleId The module ID.
	 * @param string $name The option name.
	 * @param string $default The default value to return, if a value doesn't exist.
	 * @param bool|string $siteId The site ID, if the option differs for sites.
	 * @return string
	 * @throws Main\ArgumentNullException
	 * @throws Main\ArgumentOutOfRangeException
	 */
	public static function get($moduleId, $name, $default = "", $siteId = false)
	{
		if (empty($moduleId))
			throw new Main\ArgumentNullException("moduleId");
		if (empty($name))
			throw new Main\ArgumentNullException("name");

		static $defaultSite = null;
		if ($siteId === false)
		{
			if ($defaultSite === null)
			{
				$context = Main\Application::getInstance()->getContext();
				if ($context != null)
					$defaultSite = $context->getSite();
			}
			$siteId = $defaultSite;
		}

		$siteKey = ($siteId == "") ? "-" : $siteId;
		if (static::$cacheTtl === null)
			static::$cacheTtl = self::getCacheTtl();
		if ((static::$cacheTtl === false) && !isset(self::$options[$siteKey][$moduleId])
			|| (static::$cacheTtl !== false) && empty(self::$options))
		{
			self::load($moduleId, $siteId);
		}

		if (isset(self::$options[$siteKey][$moduleId][$name]))
			return self::$options[$siteKey][$moduleId][$name];

		if (isset(self::$options["-"][$moduleId][$name]))
			return self::$options["-"][$moduleId][$name];

		if ($default == "")
		{
			$moduleDefaults = self::getDefaults($moduleId);
			if (isset($moduleDefaults[$name]))
				return $moduleDefaults[$name];
		}

		return $default;
	}

	/**
	 * Returns the real value of an option as it's written in a DB.
	 *
	 * @param string $moduleId The module ID.
	 * @param string $name The option name.
	 * @param bool|string $siteId The site ID.
	 * @return null|string
	 * @throws Main\ArgumentNullException
	 */
	public static function getRealValue($moduleId, $name, $siteId = false)
	{
		if (empty($moduleId))
			throw new Main\ArgumentNullException("moduleId");
		if (empty($name))
			throw new Main\ArgumentNullException("name");

		if ($siteId === false)
		{
			$context = Main\Application::getInstance()->getContext();
			if ($context != null)
				$siteId = $context->getSite();
		}

		$siteKey = ($siteId == "") ? "-" : $siteId;
		if (static::$cacheTtl === null)
			static::$cacheTtl = self::getCacheTtl();
		if ((static::$cacheTtl === false) && !isset(self::$options[$siteKey][$moduleId])
			|| (static::$cacheTtl !== false) && empty(self::$options))
		{
			self::load($moduleId, $siteId);
		}

		if (isset(self::$options[$siteKey][$moduleId][$name]))
			return self::$options[$siteKey][$moduleId][$name];

		return null;
	}

	/**
	 * Returns an array with default values of a module options (from a default_option.php file).
	 *
	 * @param string $moduleId The module ID.
	 * @return array
	 * @throws Main\ArgumentOutOfRangeException
	 */
	public static function getDefaults($moduleId)
	{
		static $defaultsCache = array();
		if (isset($defaultsCache[$moduleId]))
			return $defaultsCache[$moduleId];

		if (preg_match("#[^a-zA-Z0-9._]#", $moduleId))
			throw new Main\ArgumentOutOfRangeException("moduleId");

		$path = Main\Loader::getLocal("modules/".$moduleId."/default_option.php");
		if ($path === false)
			return $defaultsCache[$moduleId] = array();

		include($path);

		$varName = str_replace(".", "_", $moduleId)."_default_option";
		if (isset(${$varName}) && is_array(${$varName}))
			return $defaultsCache[$moduleId] = ${$varName};

		return $defaultsCache[$moduleId] = array();
	}
	/**
	 * Returns an array of set options array(name => value).
	 *
	 * @param string $moduleId The module ID.
	 * @param bool|string $siteId The site ID, if the option differs for sites.
	 * @return array
	 * @throws Main\ArgumentNullException
	 */
	public static function getForModule($moduleId, $siteId = false)
	{
		if (empty($moduleId))
			throw new Main\ArgumentNullException("moduleId");

		$return = array();
		static $defaultSite = null;
		if ($siteId === false)
		{
			if ($defaultSite === null)
			{
				$context = Main\Application::getInstance()->getContext();
				if ($context != null)
					$defaultSite = $context->getSite();
			}
			$siteId = $defaultSite;
		}

		$siteKey = ($siteId == "") ? "-" : $siteId;
		if (static::$cacheTtl === null)
			static::$cacheTtl = self::getCacheTtl();
		if ((static::$cacheTtl === false) && !isset(self::$options[$siteKey][$moduleId])
			|| (static::$cacheTtl !== false) && empty(self::$options))
		{
			self::load($moduleId, $siteId);
		}

		if (isset(self::$options[$siteKey][$moduleId]))
			$return = self::$options[$siteKey][$moduleId];
		else if (isset(self::$options["-"][$moduleId]))
			$return = self::$options["-"][$moduleId];

		return is_array($return) ? $return : array();
	}

	private static function load($moduleId, $siteId)
	{
		$siteKey = ($siteId == "") ? "-" : $siteId;

		if (static::$cacheTtl === null)
			static::$cacheTtl = self::getCacheTtl();

		if (static::$cacheTtl === false)
		{
			if (!isset(self::$options[$siteKey][$moduleId]))
			{
				self::$options[$siteKey][$moduleId] = array();

				$con = Main\Application::getConnection();
				$sqlHelper = $con->getSqlHelper();

				$res = $con->query(
					"SELECT SITE_ID, NAME, VALUE ".
					"FROM b_option ".
					"WHERE (SITE_ID = '".$sqlHelper->forSql($siteId, 2)."' OR SITE_ID IS NULL) ".
					"	AND MODULE_ID = '". $sqlHelper->forSql($moduleId)."' "
				);
				while ($ar = $res->fetch())
				{
					$s = ($ar["SITE_ID"] == ""? "-" : $ar["SITE_ID"]);
					self::$options[$s][$moduleId][$ar["NAME"]] = $ar["VALUE"];

					
				}
			}
		}
		else
		{
			if (empty(self::$options))
			{
				$cache = Main\Application::getInstance()->getManagedCache();
				if ($cache->read(static::$cacheTtl, "b_option"))
				{
					self::$options = $cache->get("b_option");
				}
				else
				{
					$con = Main\Application::getConnection();
					$res = $con->query(
						"SELECT o.SITE_ID, o.MODULE_ID, o.NAME, o.VALUE ".
						"FROM b_option o "
					);
					while ($ar = $res->fetch())
					{
						$s = ($ar["SITE_ID"] == "") ? "-" : $ar["SITE_ID"];
						self::$options[$s][$ar["MODULE_ID"]][$ar["NAME"]] = $ar["VALUE"];
					}

					

					$cache->set("b_option", self::$options);
				}
			}
		}
	}

	/**
	 * Sets an option value and saves it into a DB. After saving the OnAfterSetOption event is triggered.
	 *
	 * @param string $moduleId The module ID.
	 * @param string $name The option name.
	 * @param string $value The option value.
	 * @param string $siteId The site ID, if the option depends on a site.
	 * @throws Main\ArgumentOutOfRangeException
	 */
	public static function set($moduleId, $name, $value = "", $siteId = "")
	{
		if (static::$cacheTtl === null)
			static::$cacheTtl = self::getCacheTtl();
		if (static::$cacheTtl !== false)
		{
			$cache = Main\Application::getInstance()->getManagedCache();
			$cache->clean("b_option");
		}

		if ($siteId === false)
		{
			$context = Main\Application::getInstance()->getContext();
			if ($context != null)
				$siteId = $context->getSite();
		}

		$con = Main\Application::getConnection();
		$sqlHelper = $con->getSqlHelper();

		$strSqlWhere = sprintf(
			"SITE_ID %s AND MODULE_ID = '%s' AND NAME = '%s'",
			($siteId == "") ? "IS NULL" : "= '".$sqlHelper->forSql($siteId, 2)."'",
			$sqlHelper->forSql($moduleId, 50),
			$sqlHelper->forSql($name, 50)
		);

		$res = $con->queryScalar(
			"SELECT 'x' ".
			"FROM b_option ".
			"WHERE ".$strSqlWhere
		);

		if ($res != null)
		{
			$con->queryExecute(
				"UPDATE b_option SET ".
				"	VALUE = '".$sqlHelper->forSql($value)."' ".
				"WHERE ".$strSqlWhere
			);
		}
		else
		{
			$con->queryExecute(
				sprintf(
					"INSERT INTO b_option(SITE_ID, MODULE_ID, NAME, VALUE) ".
					"VALUES(%s, '%s', '%s', '%s') ",
					($siteId == "") ? "NULL" : "'".$sqlHelper->forSql($siteId, 2)."'",
					$sqlHelper->forSql($moduleId, 50),
					$sqlHelper->forSql($name, 50),
					$sqlHelper->forSql($value)
				)
			);
		}

		$s = ($siteId == ""? '-' : $siteId);
		self::$options[$s][$moduleId][$name] = $value;

		self::loadTriggers($moduleId);

		$event = new Main\Event(
			"main",
			"OnAfterSetOption_".$name,
			array("value" => $value)
		);
		$event->send();

		$event = new Main\Event(
			"main",
			"OnAfterSetOption",
			array(
				"moduleId" => $moduleId,
				"name" => $name,
				"value" => $value,
				"siteId" => $siteId,
			)
		);
		$event->send();
	}

	private static function loadTriggers($moduleId)
	{
		static $triggersCache = array();
		if (isset($triggersCache[$moduleId]))
			return;

		if (preg_match("#[^a-zA-Z0-9._]#", $moduleId))
			throw new Main\ArgumentOutOfRangeException("moduleId");

		$triggersCache[$moduleId] = true;

		$path = Main\Loader::getLocal("modules/".$moduleId."/option_triggers.php");
		if ($path === false)
			return;

		include($path);
	}

	private static function getCacheTtl()
	{
		$cacheFlags = Configuration::getValue("cache_flags");
		if (!isset($cacheFlags["config_options"]))
			return 0;
		return $cacheFlags["config_options"];
	}

	/**
	 * Deletes options from a DB.
	 *
	 * @param string $moduleId The module ID.
	 * @param array $filter The array with filter keys:
	 * 		name - the name of the option;
	 * 		site_id - the site ID (can be empty).
	 * @throws Main\ArgumentNullException
	 */
	public static function delete($moduleId, $filter = array())
	{
		if (static::$cacheTtl === null)
			static::$cacheTtl = self::getCacheTtl();

		if (static::$cacheTtl !== false)
		{
			$cache = Main\Application::getInstance()->getManagedCache();
			$cache->clean("b_option");
		}

		$con = Main\Application::getConnection();
		$sqlHelper = $con->getSqlHelper();

		$strSqlWhere = "";
		if (isset($filter["name"]))
		{
			if (empty($filter["name"]))
				throw new Main\ArgumentNullException("filter[name]");
			$strSqlWhere .= " AND NAME = '".$sqlHelper->forSql($filter["name"])."' ";
		}
		if (isset($filter["site_id"]))
			$strSqlWhere .= " AND SITE_ID ".(($filter["site_id"] == "") ? "IS NULL" : "= '".$sqlHelper->forSql($filter["site_id"], 2)."'");

		if ($moduleId == "main")
		{
			$con->queryExecute(
				"DELETE FROM b_option ".
				"WHERE MODULE_ID = 'main' ".
				"   AND NAME NOT LIKE '~%' ".
				"	AND NAME NOT IN ('crc_code', 'admin_passwordh', 'server_uniq_id','PARAM_MAX_SITES', 'PARAM_MAX_USERS') ".
				$strSqlWhere
			);
		}
		else
		{
			$con->queryExecute(
				"DELETE FROM b_option ".
				"WHERE MODULE_ID = '".$sqlHelper->forSql($moduleId)."' ".
				"   AND NAME <> '~bsm_stop_date' ".
				$strSqlWhere
			);
		}

		if (isset($filter["site_id"]))
		{
			$siteKey = $filter["site_id"] == "" ? "-" : $filter["site_id"];
			if (!isset($filter["name"]))
				unset(self::$options[$siteKey][$moduleId]);
			else
				unset(self::$options[$siteKey][$moduleId][$filter["name"]]);
		}
		else
		{
			$arSites = array_keys(self::$options);
			foreach ($arSites as $s)
			{
				if (!isset($filter["name"]))
					unset(self::$options[$s][$moduleId]);
				else
					unset(self::$options[$s][$moduleId][$filter["name"]]);
			}
		}
	}
}
