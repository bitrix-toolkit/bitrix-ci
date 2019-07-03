<?
define("BX_USE_MYSQLI", true);
define("DBPersistent", false);
$DBType = "mysql";
$DBHost = getenv('MYSQL_HOST', true) ?: getenv('MYSQL_HOST');
$DBLogin = getenv('MYSQL_USER', true) ?: getenv('MYSQL_USER');
$DBPassword = getenv('MYSQL_PASSWORD', true) ?: getenv('MYSQL_PASSWORD');
$DBName = getenv('MYSQL_DATABASE', true) ?: getenv('MYSQL_DATABASE');
$DBDebug = false;
$DBDebugToFile = false;

define("DELAY_DB_CONNECT", true);
define("CACHED_b_file", 3600);
define("CACHED_b_file_bucket_size", 10);
define("CACHED_b_lang", 3600);
define("CACHED_b_option", 3600);
define("CACHED_b_lang_domain", 3600);
define("CACHED_b_site_template", 3600);
define("CACHED_b_event", 3600);
define("CACHED_b_agent", 3660);
define("CACHED_menu", 3600);

define("BX_UTF", true);
define("BX_FILE_PERMISSIONS", 0644);
define("BX_DIR_PERMISSIONS", 0755);
@umask(~(BX_FILE_PERMISSIONS|BX_DIR_PERMISSIONS)&0777);
define("BX_DISABLE_INDEX_PAGE", true);
?>