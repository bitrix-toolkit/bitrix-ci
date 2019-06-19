# Bitrix CI Build

[![pipeline status](https://gitlab.com/sheerockoff/bitrix-ci/badges/master/pipeline.svg)](https://gitlab.com/sheerockoff/bitrix-ci/commits/master)

Минимальный сборка Bitrix для использования в тестировании.

## Быстрый старт

Устанавливаем.

```bash
composer require --dev sheerockoff/bitrix-ci:dev-master
```

Разворачиваем дамп MySQL.

```php
require __DIR__ . '/vendor/autoload.php';

$db = mysqli_connect('localhost', 'user', 'password', 'db');

$sqlDump = new \Sheerockoff\BitrixCi\SqlDump(__DIR__ . '/vendor/sheerockoff/bitrix-ci/dump.sql');
foreach ($sqlDump->parse() as $query) {
    mysqli_query($db, $query);
}
```

Подключаем Bitrix.

```php
$_SERVER['DOCUMENT_ROOT'] = __DIR__ . '/vendor/sheerockoff/bitrix-ci/files/';
require $_SERVER['DOCUMENT_ROOT'] . '/bitrix/modules/main/include/prolog_before.php';
CModule::IncludeModule('iblock');
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

## Список включенных модулей

* main
* iblock