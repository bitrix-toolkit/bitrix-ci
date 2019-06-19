<?php

return array (
  'utf_mode' => 
  array (
    'value' => true,
    'readonly' => true,
  ),
  'cache_flags' => 
  array (
    'value' => 
    array (
      'config_options' => 3600,
      'site_domain' => 3600,
    ),
    'readonly' => false,
  ),
  'cookies' => 
  array (
    'value' => 
    array (
      'secure' => false,
      'http_only' => true,
    ),
    'readonly' => false,
  ),
  'exception_handling' => 
  array (
    'value' => 
    array (
      'debug' => true,
      'handled_errors_types' => 4437,
      'exception_errors_types' => 4437,
      'ignore_silence' => false,
      'assertion_throws_exception' => true,
      'assertion_error_type' => 256,
      'log' => NULL,
    ),
    'readonly' => false,
  ),
  'connections' => 
  array (
    'value' => 
    array (
      'default' => 
      array (
        'className' => '\\Bitrix\\Main\\DB\\MysqliConnection',
        'host' => getenv('MYSQL_HOST', true) ?: getenv('MYSQL_HOST'),
        'database' => getenv('MYSQL_DATABASE', true) ?: getenv('MYSQL_DATABASE'),
        'login' => getenv('MYSQL_USER', true) ?: getenv('MYSQL_USER'),
        'password' => getenv('MYSQL_PASSWORD', true) ?: getenv('MYSQL_PASSWORD'),
        'options' => 2,
      ),
    ),
    'readonly' => true,
  ),
  'crypto' => 
  array (
    'value' => 
    array (
      'crypto_key' => '28e245599a4e93e8141e30792e22be6a',
    ),
    'readonly' => true,
  ),
);
