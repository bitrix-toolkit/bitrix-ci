# Bitrix CI Build

[![pipeline status](https://gitlab.com/sheerockoff/bitrix-ci/badges/master/pipeline.svg)](https://gitlab.com/sheerockoff/bitrix-ci/pipelines)
[![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/sheerockoff/bitrix-ci.svg)](https://packagist.org/packages/sheerockoff/bitrix-ci)

Минимальный сборка [Bitrix](https://www.1c-bitrix.ru/products/cms/index.php) для использования в тестировании.

## Быстрый старт

Устанавливаем.

```bash
composer require --dev sheerockoff/bitrix-ci
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
\Sheerockoff\BitrixCi\Bootstrap::migrate();
```

Подключаем Bitrix.

```php
\Sheerockoff\BitrixCi\Bootstrap::bootstrap();
```

Тестируем код, который зависит от API Bitrix.

```php
/**
 * @return array
 * @throws ReflectionException
 * @throws AnnotationException
 */
public function testCanSaveNewObject()
{
    $book = new Book();
    $book->title = 'Остров сокровищ';
    $book->author = new Author('Р. Л. Стивенсон');
    $book->isBestseller = true;
    
    $id = EntityMapper::save($book);
    $this->assertNotEmpty($id);
    
    $element = CIBlockElement::GetList(null, ['ID' => $id])->GetNextElement();
    $this->assertInstanceOf(_CIBElement::class, $element);
    
    $fields = $element->GetFields();
    $this->assertEquals($id, $fields['ID']);
    $this->assertEquals('Остров сокровищ', $fields['NAME']);
    
    $properties = $element->GetProperties();
    $this->assertEquals('Y', $properties['is_bestseller']['VALUE']);
    
    $this->assertNotEmpty($properties['author']['VALUE']);
    $bitrixAuthor = CIBlockElement::GetList(null, ['ID' => $properties['author']['VALUE']])->Fetch();
    $this->assertNotEmpty($bitrixAuthor['NAME']);
    $this->assertEquals('Р. Л. Стивенсон', $bitrixAuthor['NAME']);
    
    return ['id' => $id];
}
```

## Список подключенных модулей

* [Главный модуль](https://dev.1c-bitrix.ru/api_help/main/index.php)
* [Информационные блоки](https://dev.1c-bitrix.ru/api_help/iblock/index.php)
* [Highload-блоки](https://dev.1c-bitrix.ru/api_help/hlblock/index.php)
* [Торговый каталог](https://dev.1c-bitrix.ru/api_help/catalog/index.php)
* [Валюты](https://dev.1c-bitrix.ru/api_help/currency/index.php)