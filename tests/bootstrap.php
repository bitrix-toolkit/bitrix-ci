<?php

require __DIR__ . '/../vendor/autoload.php';

$pdo = new PDO(
    sprintf('mysql:host=%s;dbname=%s;charset=%s', getenv('MYSQL_HOST'), getenv('MYSQL_DATABASE'), 'utf8'),
    getenv('MYSQL_USER'),
    getenv('MYSQL_PASSWORD'),
    [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]
);

if (!$pdo) {
    throw new InvalidArgumentException('Mysql connection error.');
}

$sqlDump = new \Sheerockoff\BitrixCi\SqlDump(__DIR__ . '/../dump.sql');
foreach ($sqlDump->parse() as $query) {
    $pdo->exec($query);
}

define('NOT_CHECK_PERMISSIONS', true);
define('NO_AGENT_CHECK', true);

$_SERVER['DOCUMENT_ROOT'] = realpath(__DIR__ . '/../files/');
/** @noinspection PhpIncludeInspection */
require($_SERVER['DOCUMENT_ROOT'] . '/bitrix/modules/main/include/prolog_before.php');
