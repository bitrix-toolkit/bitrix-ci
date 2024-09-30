<?php

namespace BitrixToolkit\BitrixCi;

use InvalidArgumentException;
use CModule;

class Bootstrap
{
    public static function migrate()
    {
        $db = mysqli_connect(
            getenv('MYSQL_HOST', true) ?: getenv('MYSQL_HOST'),
            getenv('MYSQL_USER', true) ?: getenv('MYSQL_USER'),
            getenv('MYSQL_PASSWORD', true) ?: getenv('MYSQL_PASSWORD'),
            getenv('MYSQL_DATABASE', true) ?: getenv('MYSQL_DATABASE')
        );

        if (!$db) {
            throw new InvalidArgumentException('Mysql connection error.');
        }

        $sqlDump = new SqlDump(__DIR__ . '/../dump.sql');
        foreach ($sqlDump->parse() as $query) {
            mysqli_query($db, $query);
        }

        mysqli_close($db);
    }

    public static function bootstrap()
    {
        if (!defined('NOT_CHECK_PERMISSIONS')) {
            define('NOT_CHECK_PERMISSIONS', true);
        }

        if (!defined('NO_AGENT_CHECK')) {
            define('NO_AGENT_CHECK', true);
        }

        $_SERVER['DOCUMENT_ROOT'] = realpath(__DIR__ . '/../files/');
        require_once __DIR__ . '/../files/bitrix/modules/main/include/prolog_before.php';

        CModule::IncludeModule('main');
        CModule::IncludeModule('iblock');
        CModule::IncludeModule('catalog');
        CModule::IncludeModule('currency');
        CModule::IncludeModule('highloadblock');
    }
}