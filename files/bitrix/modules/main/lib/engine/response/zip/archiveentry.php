<?php
namespace Bitrix\Main\Engine\Response\Zip;

use \Bitrix\Main\Application;
use \Bitrix\Main\Text\Encoding;
use \Bitrix\Main\Config\Option;

class ArchiveEntry
{
	/**
	 * File name in entry.
	 * @var string
	 */
	protected $name;

	/**
	 * File path in entry.
	 * @var string
	 */
	protected $path;

	/**
	 * File id.
	 * @var int
	 */
	protected $fileId;

	/**
	 * File size in entry.
	 * @var int
	 */
	protected $size;

	/**
	 * Marker for path of files in archive.
	 * @var string
	 */
	protected $pathMarker = '/upload/#fileName#';

	/**
	 * Entry constructor.
	 * @param array $params Some params.
	 */
	protected function __construct(array $params = [])
	{
		$this->fileId = 0;

		if (isset($params['pathMarker']))
		{
			$this->pathMarker = $params['pathMarker'];
		}
	}

	/**
	 * Gets id of current file.
	 * @return int
	 */
	public function getId()
	{
		return $this->fileId;
	}

	/**
	 * Gets name of current file.
	 * @return string
	 */
	public function getName()
	{
		return $this->name;
	}

	/**
	 * Gets full path of current file.
	 * @return string
	 */
	public function getPath()
	{
		return $this->path;
	}

	/**
	 * Gets size of current file.
	 * @return int
	 */
	public function getSize()
	{
		return $this->size;
	}

	/**
	 * Set path marker.
	 * @param string $marker Marker.
	 * @return void
	 */
	public function setPathMarker($marker)
	{
		$this->pathMarker = $marker;
	}

	/**
	 * Creates Entry from file path.
	 * @param string $filePath File id from b_file.
	 * @return static
	 */
	public static function createFromFilePath($filePath)
	{
		$fileArray = \CFile::MakeFileArray($filePath);

		if ($fileArray)
		{
			return self::createFromFile([
				'ID' => 0,
				'ORIGINAL_NAME' => $fileArray['name'],
				'FILE_SIZE' => $fileArray['size'],
				'SRC' => substr(
					$fileArray['tmp_name'],
					strlen(self::getDocRoot())
				),
			]);
		}

		return null;
	}

	/**
	 * Creates Entry from file id (from b_file).
	 * @param int $fileId File id from b_file.
	 * @param string $moduleId Module id for strong restriction.
	 * @return static
	 */
	public static function createFromFileId($fileId, $moduleId = null)
	{
		$fileArray = \CFile::getFileArray($fileId);

		// check file exists
		if (!$fileArray || empty($fileArray['SRC']))
		{
			return null;
		}

		// check module restriction
		if (
			$moduleId !== null &&
			(
				!isset($fileArray['MODULE_ID']) ||
				$fileArray['MODULE_ID'] != $moduleId
			)
		)
		{
			return null;
		}

		return self::createFromFile($fileArray);
	}

	/**
	 * Creates Entry from file array.
	 * @param array $fileArray File id from b_file.
	 * @return static
	 */
	protected static function createFromFile(array $fileArray)
	{
		$zipEntry = new static;
		$zipEntry->name = $fileArray['ORIGINAL_NAME'];
		$zipEntry->fileId = (int)$fileArray['ID'];
		$zipEntry->size = (int)$fileArray['FILE_SIZE'];

		$fromClouds = false;
		$filename = $fileArray['SRC'];

		if (isset($fileArray['HANDLER_ID']) && !empty($fileArray['HANDLER_ID']))
		{
			$fromClouds = true;
		}

		unset($fileArray);

		if ($fromClouds)
		{
			$filename = preg_replace('~^(http[s]?)(\://)~i', '\\1.' , $filename);
			$cloudUploadPath = Option::get(
				'main',
				'bx_cloud_upload',
				'/upload/bx_cloud_upload/'
			);
			$zipEntry->path = $cloudUploadPath . $filename;
			unset($cloudUploadPath);
		}
		else
		{
			$zipEntry->path = self::encodeUrn(
				Encoding::convertEncoding($filename, LANG_CHARSET, 'UTF-8')
			);
		}
		unset($filename);

		return $zipEntry;
	}

	/**
	 * Get main instance of \CMain.
	 * @return \CMain
	 */
	protected static function getApplication()
	{
		return $GLOBALS['APPLICATION'];
	}

	/**
	 * Famous document root.
	 * @return string
	 */
	protected static function getDocRoot()
	{
		static $docRoot = null;

		if ($docRoot === null)
		{
			$context = Application::getInstance()->getContext();
			$server = $context->getServer();
			$docRoot = $server->getDocumentRoot();
		}

		return $docRoot;
	}

	/**
	 * Encodes uri: explodes uri by / and encodes in UTF-8 and rawurlencodes.
	 * @param string $uri Uri.
	 * @return string
	 */
	protected function encodeUrn($uri)
	{
		$result = '';
		$parts = preg_split(
			"#(://|:\\d+/|/|\\?|=|&)#", $uri, -1, PREG_SPLIT_DELIM_CAPTURE
		);

		foreach ($parts as $i => $part)
		{
			$part = self::getApplication()->convertCharset(
				$part,
				LANG_CHARSET,
				'UTF-8'
			);
			$result .= ($i % 2)
				? $part
				: rawurlencode($part);
		}
		unset($parts, $i, $part);

		return $result;
	}

	/**
	 * Returns representation zip entry as string.
	 * @return string
	 */
	public function __toString()
	{
		$name = Encoding::convertEncoding(
			$this->name,
			LANG_CHARSET,
			'UTF-8'
		);
		$pathMarker = str_replace(
			['#fileId#', '#fileName#'],
			[$this->fileId, $name],
			$this->pathMarker
		);
		return "- {$this->size} {$this->path} {$pathMarker}";
	}
}