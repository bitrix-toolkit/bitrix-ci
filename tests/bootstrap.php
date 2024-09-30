<?php

use BitrixToolkit\BitrixCi\Bootstrap;

require __DIR__ . '/../vendor/autoload.php';

echo 'SQL dump migration...';
Bootstrap::migrate();
echo "COMPLETE\n";

Bootstrap::bootstrap();
