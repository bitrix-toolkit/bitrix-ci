<?php

use Sheerockoff\BitrixCi\Bootstrap;

require __DIR__ . '/../vendor/autoload.php';

if (!getenv('SKIP_MIGRATION', true) && !getenv('SKIP_MIGRATION')) {
    file_put_contents('php://stdout', 'SQL dump migration...');
    Bootstrap::migrate();
    file_put_contents('php://stdout', "COMPLETE\n");
}

Bootstrap::bootstrap();
