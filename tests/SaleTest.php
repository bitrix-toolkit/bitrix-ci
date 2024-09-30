<?php

namespace BitrixToolkit\BitrixCi\Test;

use Bitrix\Sale\Basket;
use Bitrix\Sale\Order;

class SaleTest extends TestCase
{
    public function testCanLoadModule()
    {
        global $APPLICATION;
        $this->assertTrue(\CModule::IncludeModule('sale'), $APPLICATION->LAST_ERROR);
    }

    public function testCanMakeOrder()
    {
        global $APPLICATION;

        $fUserId = \CSaleBasket::GetBasketUserID();
        $this->assertNotEmpty($fUserId, $APPLICATION->LAST_ERROR);

        $result = \CSaleBasket::Add([
            'LID' => 's1',
            'PRODUCT_ID' => 1,
            'NAME' => 'Тестовый товар',
            'QUANTITY' => 2,
            'CUSTOM_PRICE' => 'Y',
            'PRICE' => 999.99,
            'CURRENCY' => 'RUB',
            'CAN_BUY' => 'Y',
        ]);

        $this->assertNotEmpty($result, $APPLICATION->LAST_ERROR);

        $user = \CUser::GetList()->Fetch();
        $this->assertNotEmpty($user['ID']);

        $personType = \CSalePersonType::GetList(null, ['=NAME' => 'Тестовый плательщик'])->Fetch();
        if (empty($personType['ID'])) {
            $personTypeId = \CSalePersonType::Add([
                'LID' => 's1',
                'NAME' => 'Тестовый плательщик',
                'ACTIVE' => 'Y',
            ]);
        } else {
            $personTypeId = $personType['ID'];
        }


        $orderId = \CSaleOrder::Add([
            'LID' => 's1',
            'PERSON_TYPE_ID' => $personTypeId,
            'PAYED' => 'N',
            'CANCELED' => 'N',
            'STATUS_ID' => 'N',
            'USER_ID' => $user['ID'],
            'CURRENCY' => 'RUB',
        ]);

        $this->assertNotEmpty($orderId);

        $result = \CSaleBasket::OrderBasket($orderId, $fUserId);
        $this->assertNotEmpty($result, $APPLICATION->LAST_ERROR);

        $savedOrder = \CSaleOrder::GetByID($orderId);
        $this->assertNotEmpty($savedOrder['ID'], $APPLICATION->LAST_ERROR);
        $this->assertEquals($orderId, $savedOrder['ID']);

        $savedBasketRow = \CSaleBasket::GetList(null, ['=ORDER_ID' => $orderId])->Fetch();
        $this->assertNotEmpty($savedBasketRow['ID']);
        $this->assertEquals($orderId, $savedBasketRow['ORDER_ID']);
        $this->assertEquals($fUserId, $savedBasketRow['FUSER_ID']);
    }

    public function testCanMakeOrderD7()
    {
        global $APPLICATION;

        $basket = Basket::create('s1');

        $basketItem = $basket->createItem('catalog', 1);
        $basketItem->setFields([
            'LID' => 's1',
            'PRODUCT_ID' => 1,
            'NAME' => 'Тестовый товар',
            'QUANTITY' => 2,
            'CUSTOM_PRICE' => 'Y',
            'PRICE' => 999.99,
            'CURRENCY' => 'RUB',
            'CAN_BUY' => 'Y',
        ]);

        $user = \CUser::GetList()->Fetch();
        $this->assertNotEmpty($user['ID']);

        $order = Order::create('s1', $user['ID']);

        $personType = \CSalePersonType::GetList(null, ['=NAME' => 'Тестовый плательщик'])->Fetch();
        if (empty($personType['ID'])) {
            $personTypeId = \CSalePersonType::Add([
                'LID' => 's1',
                'NAME' => 'Тестовый плательщик',
                'ACTIVE' => 'Y',
            ]);
        } else {
            $personTypeId = $personType['ID'];
        }

        $order->setPersonTypeId($personTypeId);
        $order->setField('CURRENCY', 'RUB');

        $order->setBasket($basket);

        $order->doFinalAction(true);
        $result = $order->save();
        $orderId = $result->getId();
        $this->assertNotEmpty($orderId);

        $savedOrder = \CSaleOrder::GetByID($orderId);
        $this->assertNotEmpty($savedOrder['ID'], $APPLICATION->LAST_ERROR);
        $this->assertEquals($orderId, $savedOrder['ID']);

        $savedBasketRow = \CSaleBasket::GetList(null, ['=ORDER_ID' => $orderId])->Fetch();
        $this->assertNotEmpty($savedBasketRow['ID']);
        $this->assertEquals($orderId, $savedBasketRow['ORDER_ID']);
    }
}