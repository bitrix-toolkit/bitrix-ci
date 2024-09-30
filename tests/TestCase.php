<?php

namespace BitrixToolkit\BitrixCi\Test;

use PHPUnit\Framework\TestCase as PhpUnitTestCase;

abstract class TestCase extends PhpUnitTestCase
{
    protected $backupGlobals = false;
}