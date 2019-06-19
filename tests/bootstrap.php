<?php

require __DIR__ . '/../vendor/autoload.php';

$db = mysqli_connect(
    getenv('MYSQL_HOST'),
    getenv('MYSQL_USER'),
    getenv('MYSQL_PASSWORD'),
    getenv('MYSQL_DATABASE')
);

if (!$db) {
    throw new InvalidArgumentException('Mysql connection error.');
}

$sqlDump = new \Sheerockoff\BitrixCi\SqlDump(__DIR__ . '/../dump.sql');
foreach ($sqlDump->parse() as $query) {
    mysqli_query($db, $query);
}

mysqli_close($db);

define('NOT_CHECK_PERMISSIONS', true);
define('NO_AGENT_CHECK', true);

$_SERVER['DOCUMENT_ROOT'] = realpath(__DIR__ . '/../files/');
/** @noinspection PhpIncludeInspection */
require($_SERVER['DOCUMENT_ROOT'] . '/bitrix/modules/main/include/prolog_before.php');
