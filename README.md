# Bitrix CI Build

[![PHPUnit](https://github.com/bitrix-toolkit/bitrix-ci/actions/workflows/php-unit.yml/badge.svg?branch=dev%2Fv21.400)](https://github.com/bitrix-toolkit/bitrix-ci/actions/workflows/php-unit.yml)
[![Code Size](https://img.shields.io/github/languages/code-size/bitrix-toolkit/bitrix-ci.svg)](https://packagist.org/packages/bitrix-toolkit/bitrix-ci)

Минимальный сборка [Bitrix](https://www.1c-bitrix.ru/products/cms/index.php) для использования в тестировании.

## Быстрый старт

Устанавливаем.

```bash
composer require --dev bitrix-toolkit/bitrix-ci
```

Подключаем зависимости.

```php
<?php

require 'vendor/autoload.php';
```

Подключение к базе данных настраивается переменными окружения `MYSQL_HOST`, `MYSQL_DATABASE`, `MYSQL_USER` и `MYSQL_PASSWORD`.
Они могут быть переопределены в PHP.

```php
putenv('MYSQL_HOST=localhost');
putenv('MYSQL_DATABASE=bitrix_ci');
putenv('MYSQL_USER=user');
putenv('MYSQL_PASSWORD=password');
```

Разворачиваем дамп MySQL.

```php
\BitrixToolkit\BitrixCi\Bootstrap::migrate();
```

Подключаем Bitrix.

```php
\BitrixToolkit\BitrixCi\Bootstrap::bootstrap();
```

Тестируем код, который зависит от API Bitrix.

```php
/**
 * @param array $stack
 * @return array
 */
public function testCanGetBitrixElement(array $stack)
{
    $element = CIBlockElement::GetList(null, ['ID' => $stack['id']])->GetNextElement();
    $this->assertInstanceOf(_CIBElement::class, $element);
    
    $fields = $element->GetFields();
    $this->assertEquals($stack['id'], $fields['ID']);
    
    return $stack;
}
```

## Список подключенных модулей

* [Главный модуль](https://dev.1c-bitrix.ru/api_help/main/index.php)
* [Информационные блоки](https://dev.1c-bitrix.ru/api_help/iblock/index.php)
* [Highload-блоки](https://dev.1c-bitrix.ru/api_help/hlblock/index.php)
* [Интернет-магазин](https://dev.1c-bitrix.ru/api_help/sale/index.php)
* [Торговый каталог](https://dev.1c-bitrix.ru/api_help/catalog/index.php)
* [Валюты](https://dev.1c-bitrix.ru/api_help/currency/index.php)
