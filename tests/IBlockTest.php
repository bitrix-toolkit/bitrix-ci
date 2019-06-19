<?php

namespace Sheerockoff\BitrixCi\Test;

use CIBlock;
use CIBlockElement;
use CIBlockProperty;
use CIBlockSection;
use CIBlockType;
use CModule;

class IBlockTest extends TestCase
{
    public static function tearDownAfterClass()
    {
        CIBlockType::Delete('bitrix_ci_test');
    }

    public function testCanLoadModule()
    {
        global $APPLICATION;
        $this->assertTrue(CModule::IncludeModule('iblock'), $APPLICATION->LAST_ERROR);
    }

    /**
     * @depends testCanLoadModule
     */
    public function testCanAddIBlockType()
    {
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
    }

    /**
     * @depends testCanAddIBlockType
     */
    public function testCanAddIBlock()
    {
        $stack = [];

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

        return $stack;
    }

    /**
     * @depends testCanAddIBlock
     * @param array $stack
     * @return array
     */
    public function testCanAddSection(array $stack)
    {
        $cIBlockSection = new CIBlockSection();
        $sectionId = $cIBlockSection->Add([
            'ACTIVE' => 'Y',
            'IBLOCK_ID' => $stack['iBlockId'],
            'NAME' => 'Bitrix CI Section'
        ]);

        $this->assertNotEmpty($sectionId, $cIBlockSection->LAST_ERROR);
        $stack['sectionId'] = $sectionId;

        return $stack;
    }

    /**
     * @depends testCanAddSection
     * @param array $stack
     * @return array
     */
    public function testCanAddElement(array $stack)
    {
        $cIBlockElement = new CIBlockElement();
        $elementId = $cIBlockElement->Add([
            'ACTIVE' => 'Y',
            'IBLOCK_ID' => $stack['iBlockId'],
            'IBLOCK_SECTION_ID' => $stack['sectionId'],
            'NAME' => 'Bitrix CI Element'
        ]);

        $this->assertNotEmpty($elementId, $cIBlockElement->LAST_ERROR);
        $stack['elementId'] = $elementId;

        return $stack;
    }

    /**
     * @depends testCanAddElement
     * @param array $stack
     * @return array
     */
    public function testCanAddProperty(array $stack)
    {
        $cIBlockProperty = new CIBlockProperty();
        $propertyId = $cIBlockProperty->Add([
            'IBLOCK_ID' => $stack['iBlockId'],
            'CODE' => 'CI_PROP',
            'NAME' => 'Bitrix CI Property',
            'MULTIPLE' => 'N',
            'PROPERTY_TYPE' => 'S'
        ]);

        $this->assertNotEmpty($propertyId, $cIBlockProperty->LAST_ERROR);
        $stack['propertyId'] = $propertyId;

        return $stack;
    }

    /**
     * @depends testCanAddElement
     * @param array $stack
     * @return array
     */
    public function testCanUpdateElement(array $stack)
    {
        $cIBlockElement = new CIBlockElement();
        $isUpdated = $cIBlockElement->Update($stack['elementId'], [
            'NAME' => 'Bitrix CI Updated Property'
        ]);

        $this->assertTrue($isUpdated, $cIBlockElement->LAST_ERROR);

        return $stack;
    }

    /**
     * @depends testCanAddProperty
     * @param array $stack
     * @return array
     */
    public function testCanUpdateElementProperty(array $stack)
    {
        CIBlockElement::SetPropertyValuesEx($stack['elementId'], $stack['iBlockId'], ['CI_PROP' => 'Updated Value']);

        $element = CIBlockElement::GetList(
            null,
            [
                'ID' => $stack['elementId'],
                'IBLOCK_ID' => $stack['iBlockId']
            ],
            false,
            false,
            ['ID', 'PROPERTY_CI_PROP']
        )->Fetch();

        $this->assertEquals('Updated Value', $element['PROPERTY_CI_PROP_VALUE']);

        return $stack;
    }
}
