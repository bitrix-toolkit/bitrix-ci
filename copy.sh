# cd ./public
# wget https://www.1c-bitrix.ru/download/business_encode.zip
# unzip business_encode.zip
# cd ..
# docker-compose up -d
# chrome http://localhost

# sale
mkdir -p ./files/bitrix/modules
cp -r ./public/bitrix/modules/sale ./files/bitrix/modules/
rm -rf ./files/bitrix/modules/sale/admin
rm -rf ./files/bitrix/modules/sale/de
rm -rf ./files/bitrix/modules/sale/delivery
rm -rf ./files/bitrix/modules/sale/export
rm -rf ./files/bitrix/modules/sale/handlers
rm -rf ./files/bitrix/modules/sale/install
rm -rf ./files/bitrix/modules/sale/la
rm -rf ./files/bitrix/modules/sale/payment
rm -rf ./files/bitrix/modules/sale/reports
rm -rf ./files/bitrix/modules/sale/ru
rm -rf ./files/bitrix/modules/sale/services
rm -rf ./files/bitrix/modules/sale/tools
rm -rf ./files/bitrix/modules/sale/ttf

# catalog
mkdir -p ./files/bitrix/modules
cp -r ./public/bitrix/modules/catalog ./files/bitrix/modules/
rm -rf ./files/bitrix/modules/catalog/admin
rm -rf ./files/bitrix/modules/catalog/install
rm -rf ./files/bitrix/modules/catalog/load
rm -rf ./files/bitrix/modules/catalog/load_import
rm -rf ./files/bitrix/modules/catalog/tools

# currency
mkdir -p ./files/bitrix/modules
cp -r ./public/bitrix/modules/currency ./files/bitrix/modules/
rm -rf ./files/bitrix/modules/currency/admin
rm -rf ./files/bitrix/modules/currency/install
rm -rf ./files/bitrix/modules/currency/tools

# highloadblock
mkdir -p ./files/bitrix/modules
cp -r ./public/bitrix/modules/highloadblock ./files/bitrix/modules/
rm -rf ./files/bitrix/modules/highloadblock/admin
rm -rf ./files/bitrix/modules/highloadblock/install

# iblock
mkdir -p ./files/bitrix/modules
cp -r ./public/bitrix/modules/iblock ./files/bitrix/modules/
rm -rf ./files/bitrix/modules/iblock/admin
rm -rf ./files/bitrix/modules/iblock/install

# forum
mkdir -p ./files/bitrix/modules
cp -r ./public/bitrix/modules/forum ./files/bitrix/modules/
rm -rf ./files/bitrix/modules/forum/admin
rm -rf ./files/bitrix/modules/forum/install

# main
mkdir -p ./files/bitrix/modules
cp -r ./public/bitrix/modules/main ./files/bitrix/modules/
rm -rf ./files/bitrix/modules/main/cli
rm -rf ./files/bitrix/modules/main/fonts
rm -rf ./files/bitrix/modules/main/interface

# php_interface
mkdir -p ./files/bitrix/php_interface
cp ./public/bitrix/php_interface/after_connect.php ./files/bitrix/php_interface/after_connect.php
cp ./public/bitrix/php_interface/after_connect_d7.php ./files/bitrix/php_interface/after_connect_d7.php
cp ./public/bitrix/php_interface/init.php ./files/bitrix/php_interface/init.php
cp ./public/bitrix/php_interface/dbconn.php ./files/bitrix/php_interface/dbconn.php

# $DBHost = getenv('MYSQL_HOST', true) ?: getenv('MYSQL_HOST');
# $DBLogin = getenv('MYSQL_USER', true) ?: getenv('MYSQL_USER');
# $DBPassword = getenv('MYSQL_PASSWORD', true) ?: getenv('MYSQL_PASSWORD');
# $DBName = getenv('MYSQL_DATABASE', true) ?: getenv('MYSQL_DATABASE');

# other
mkdir -p ./files/bitrix
cp ./public/bitrix/license_key.php ./files/bitrix/license_key.php
cp ./public/bitrix/.settings.php ./files/bitrix/.settings.php

# 'host' => getenv('MYSQL_HOST', true) ?: getenv('MYSQL_HOST'),
# 'database' => getenv('MYSQL_DATABASE', true) ?: getenv('MYSQL_DATABASE'),
# 'login' => getenv('MYSQL_USER', true) ?: getenv('MYSQL_USER'),
# 'password' => getenv('MYSQL_PASSWORD', true) ?: getenv('MYSQL_PASSWORD'),
# 'debug' => boolval(getenv('DEBUG', true) ?: getenv('DEBUG'))

# pstorm ./files/bitrix/modules/main/include.php

# mysqldump -u bitrix-ci -pbitrix-ci bitrix-ci > dump.sql