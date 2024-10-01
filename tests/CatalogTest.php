<?php

namespace BitrixToolkit\BitrixCi\Test;

use CCatalog;
use CCatalogGroup;
use CCatalogStore;
use CCatalogStoreProduct;
use CCurrency;
use CIBlock;
use CIBlockElement;
use CIBlockType;
use CModule;
use CPrice;

class CatalogTest extends TestCase
{
    public function testCanLoadModule()
    {
        global $APPLICATION;
        $this->assertTrue(CModule::IncludeModule('catalog'), $APPLICATION->LAST_ERROR);
    }

    /**
     * @param array $stack
     * @return array
     */
    public function testCanAddCatalog(array $stack = [])
    {
        global $APPLICATION;

        CIBlockType::Delete('bitrix_ci_test');

        $cCatalogGroup = new CCatalogGroup();
        if ($catalogGroup = CCatalogGroup::GetList(null, ['NAME' => 'OUTLET'])->Fetch()) {
            $cCatalogGroup->Delete($catalogGroup['ID']);
        }

        CCurrency::Delete('CAP');

        if ($catalogStore = CCatalogStore::GetList(null, ['XML_ID' => 'VAULT13'])->Fetch()) {
            CCatalogStore::Delete($catalogStore['ID']);
        }

        $cIBlockType = new CIBlockType();
        $isAdded = $cIBlockType->Add([
            'ID' => 'bitrix_ci_test',
            'SECTIONS' => 'Y',
            'LANG' => [
                'en' => [
                    'NAME' => 'Continuous Integration',
                    'SECTION_NAME' => 'Sections',
                    'ELEMENT_NAME' => 'Elements'
                ]
            ]
        ]);

        $this->assertNotEmpty($isAdded, $cIBlockType->LAST_ERROR);

        $cIBlock = new CIBlock();
        $iBlockId = $cIBlock->Add([
            'LID' => SITE_ID,
            'CODE' => 'bitrix_ci_iblock',
            'IBLOCK_TYPE_ID' => 'bitrix_ci_test',
            'NAME' => 'Bitrix CI Block',
            'GROUP_ID' => ['1' => 'X', '2' => 'W']
        ]);

        $this->assertNotEmpty($iBlockId, $cIBlock->LAST_ERROR);
        $stack['iBlockId'] = $iBlockId;

        $isAdded = CCatalog::Add([
            'IBLOCK_ID' => $stack['iBlockId']
        ]);

        $this->assertNotEmpty($isAdded, $APPLICATION->GetException());

        return $stack;
    }

    /**
     * @depends testCanAddCatalog
     * @param array $stack
     * @return array
     */
    public function testCanAddPriceType(array $stack = [])
    {
        global $APPLICATION;

        $cCatalogGroup = new CCatalogGroup();
        $id = $cCatalogGroup->Add([
            'BASE' => 'Y',
            'NAME' => 'OUTLET',
            'USER_GROUP' => [1, 2],
            'USER_GROUP_BUY' => [1, 2],
            'USER_LANG' => [
                'ru' => 'Аутлет',
                'en' => 'Outlet'
            ]
        ]);

        $this->assertNotEmpty($id, $APPLICATION->GetException());
        $stack['outletPriceId'] = $id;

        return $stack;
    }

    /**
     * @depends testCanAddPriceType
     * @param array $stack
     * @return array
     */
    public function testCanAddCurrency(array $stack = [])
    {
        global $APPLICATION;

        $isAdd = CCurrency::Add([
            'CURRENCY' => 'CAP',
            'AMOUNT' => 100,
            'AMOUNT_CNT' => 1,
            'BASE' => 'N',
            'SORT' => 500
        ]);

        $this->assertNotEmpty($isAdd, $APPLICATION->GetException());

        return $stack;
    }

    /**
     * @depends testCanAddCurrency
     * @param array $stack
     * @return array
     */
    public function testCanAddStore(array $stack = [])
    {
        global $APPLICATION;

        $storeId = CCatalogStore::Add([
            'TITLE' => 'VAULT13',
            'XML_ID' => 'VAULT13',
            'ACTIVE' => 'Y',
            'ADDRESS' => '',
            'DESCRIPTION' => ''
        ]);

        $this->assertNotEmpty($storeId, $APPLICATION->GetException());
        $stack['storeId'] = $storeId;

        return $stack;
    }

    /**
     * @depends testCanAddStore
     * @param array $stack
     * @return array
     */
    public function testCanAddProductWithPriceAndQuantity(array $stack = [])
    {
        global $APPLICATION;

        $cIBlockElement = new CIBlockElement();
        $elementId = $cIBlockElement->Add([
            'IBLOCK_ID' => $stack['iBlockId'],
            'NAME' => 'Тестовый товар'
        ]);

        $this->assertNotEmpty($elementId, $cIBlockElement->LAST_ERROR);
        $stack['elementId'] = $elementId;

        $isAdd = CPrice::Add([
            'PRODUCT_ID' => $stack['elementId'],
            'CATALOG_GROUP_ID' => $stack['outletPriceId'],
            'PRICE' => 39.99,
            'CURRENCY' => 'CAP'
        ]);

        $this->assertNotEmpty($isAdd, $APPLICATION->GetException());

        $isAdd = CCatalogStoreProduct::Add([
            'PRODUCT_ID' => $stack['elementId'],
            'STORE_ID' => $stack['storeId'],
            'AMOUNT' => 99
        ]);

        $this->assertNotEmpty($isAdd, $APPLICATION->GetException());

        return $stack;
    }

    /**
     * @depends testCanAddProductWithPriceAndQuantity
     * @param array $stack
     * @return array
     */
    public function testCanGetProductWithPriceAndQuantity(array $stack = [])
    {
        $element = CIBlockElement::GetList(
            null,
            [
                'IBLOCK_ID' => $stack['iBlockId'],
                'ID' => $stack['elementId']
            ],
            false,
            false,
            ['ID', 'IBLOCK_ID', 'CATALOG_GROUP_' . $stack['outletPriceId'], 'CATALOG_STORE_AMOUNT_' . $stack['storeId']]
        )->GetNextElement();

        $this->assertNotEmpty($element);
        $this->assertEquals(39.99, $element->fields['CATALOG_PRICE_' . $stack['outletPriceId']]);
        $this->assertEquals('CAP', $element->fields['CATALOG_CURRENCY_' . $stack['outletPriceId']]);
        $this->assertEquals(99, $element->fields['CATALOG_STORE_AMOUNT_' . $stack['storeId']]);

        return $stack;
    }
}