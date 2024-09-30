<?php

namespace BitrixToolkit\BitrixCi\Test;

use Bitrix\Highloadblock\HighloadBlockTable;
use Bitrix\Main\ORM\Data\AddResult;
use Bitrix\Main\ORM\Data\DeleteResult;
use Bitrix\Main\ORM\Data\UpdateResult;
use Bitrix\Main\ORM\Query\Result;
use Bitrix\Main\SystemException;
use CModule;
use CUserTypeEntity;
use Exception;

class HighloadBlockTest extends TestCase
{
    public static function tearDownAfterClass(): void
    {
        $exist = HighloadBlockTable::getList(['filter' => ['TABLE_NAME' => 'test_data']])->fetch();
        if (!empty($exist['ID'])) {
            HighloadBlockTable::delete($exist['ID']);
        }
    }

    public function testCanLoadModule()
    {
        global $APPLICATION;
        $this->assertTrue(CModule::IncludeModule('highloadblock'), $APPLICATION->LAST_ERROR);
    }

    /**
     * @return array
     * @throws SystemException
     */
    public function testCanAddHighloadBlock()
    {
        $result = HighloadBlockTable::add([
            'NAME' => 'TestData',
            'TABLE_NAME' => 'test_data'
        ]);

        $this->assertInstanceOf(AddResult::class, $result);
        $this->assertNotEmpty($result->getId(), implode("\n", $result->getErrorMessages()));

        return [
            'id' => $result->getId()
        ];
    }

    /**
     * @depends testCanAddHighloadBlock
     * @param array $stack
     * @return array
     */
    public function testCanAddUserTypeEntity($stack)
    {
        $cUserTypeEntity = new CUserTypeEntity();

        $userTypeEntityId = $cUserTypeEntity->Add([
            'ENTITY_ID' => 'HLBLOCK_' . $stack['id'],
            'FIELD_NAME' => 'UF_TITLE',
            'USER_TYPE_ID' => 'string',
        ]);

        $this->assertNotEmpty($userTypeEntityId);

        $userTypeEntityId = $cUserTypeEntity->Add([
            'ENTITY_ID' => 'HLBLOCK_' . $stack['id'],
            'FIELD_NAME' => 'UF_COUNT',
            'USER_TYPE_ID' => 'integer',
        ]);

        $this->assertNotEmpty($userTypeEntityId);

        return $stack;
    }

    /**
     * @depends testCanAddUserTypeEntity
     * @param array $stack
     * @return array
     * @throws SystemException
     * @throws Exception
     */
    public function testCanAddEntry($stack)
    {
        $entity = HighloadBlockTable::compileEntity(HighloadBlockTable::getById($stack['id'])->fetch())->getDataClass();
        $this->assertNotEmpty($entity);

        $result = $entity::add([
            'UF_TITLE' => 'Books',
            'UF_COUNT' => 132
        ]);

        $this->assertInstanceOf(AddResult::class, $result);
        $this->assertTrue($result->isSuccess());
        $this->assertNotEmpty($result->getId());
        $stack['booksId'] = $result->getId();

        $result = $entity::add([
            'UF_TITLE' => 'Games',
            'UF_COUNT' => 16
        ]);

        $this->assertInstanceOf(AddResult::class, $result);
        $this->assertTrue($result->isSuccess());
        $this->assertNotEmpty($result->getId());
        $stack['gamesId'] = $result->getId();

        return $stack;
    }

    /**
     * @depends testCanAddEntry
     * @param array $stack
     * @return array
     * @throws SystemException
     */
    public function testCanSelectEntry($stack)
    {
        $entity = HighloadBlockTable::compileEntity(HighloadBlockTable::getById($stack['id'])->fetch())->getDataClass();
        $this->assertNotEmpty($entity);

        $result = $entity::getList(['filter' => ['UF_TITLE' => 'Games']]);
        $this->assertInstanceOf(Result::class, $result);
        $this->assertSame(1, $result->getSelectedRowsCount());

        $exist = $result->fetch();
        $this->assertSame('Games', $exist['UF_TITLE']);

        return $stack;
    }

    /**
     * @depends testCanAddEntry
     * @param array $stack
     * @return array
     * @throws SystemException
     * @throws Exception
     */
    public function testCanUpdateEntry($stack)
    {
        $entity = HighloadBlockTable::compileEntity(HighloadBlockTable::getById($stack['id'])->fetch())->getDataClass();
        $this->assertNotEmpty($entity);

        $result = $entity::update($stack['booksId'], ['UF_COUNT' => 134]);
        $this->assertInstanceOf(UpdateResult::class, $result);
        $this->assertTrue($result->isSuccess());

        $entry = $entity::getById($stack['booksId'])->fetch();
        $this->assertTrue($entry['UF_COUNT'] == 134);

        return $stack;
    }

    /**
     * @depends testCanUpdateEntry
     * @param array $stack
     * @return array
     * @throws SystemException
     * @throws Exception
     */
    public function testCanDeleteEntry($stack)
    {
        $entity = HighloadBlockTable::compileEntity(HighloadBlockTable::getById($stack['id'])->fetch())->getDataClass();
        $this->assertNotEmpty($entity);

        $exist = $entity::getById($stack['gamesId'])->fetch();
        $this->assertNotEmpty($exist['ID']);

        $result = $entity::delete($stack['gamesId']);
        $this->assertInstanceOf(DeleteResult::class, $result);
        $this->assertTrue($result->isSuccess());

        $exist = $entity::getById($stack['gamesId'])->fetch();
        $this->assertFalse($exist);

        return $stack;
    }
}