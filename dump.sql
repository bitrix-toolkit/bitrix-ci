-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: bitrix-ci
-- ------------------------------------------------------
-- Server version	5.7.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `b_abtest`
--

DROP TABLE IF EXISTS `b_abtest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_abtest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENABLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCR` text COLLATE utf8_unicode_ci,
  `TEST_DATA` text COLLATE utf8_unicode_ci NOT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `STOP_DATE` datetime DEFAULT NULL,
  `DURATION` int(11) NOT NULL DEFAULT '0',
  `PORTION` int(11) NOT NULL DEFAULT '0',
  `MIN_AMOUNT` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_abtest`
--

LOCK TABLES `b_abtest` WRITE;
/*!40000 ALTER TABLE `b_abtest` DISABLE KEYS */;
INSERT INTO `b_abtest` VALUES (1,'s1','N','T','Новый дизайн','Запустите А/B-тестирование для сравнения текущего дизайна с новым, и убедитесь, что показатели конверсии нового шаблона сайта выше.','a:2:{s:2:\"id\";s:7:\"sample1\";s:4:\"list\";a:1:{i:0;a:3:{s:4:\"type\";s:8:\"template\";s:9:\"old_value\";s:0:\"\";s:9:\"new_value\";s:0:\"\";}}}',NULL,NULL,0,30,NULL,NULL,100),(2,'s1','N','T','Главная страница','Запустите А/B-тестирование, сравните влияние изменений на главной странице на конверсию вашего сайта.','a:2:{s:2:\"id\";s:7:\"sample2\";s:4:\"list\";a:1:{i:0;a:3:{s:4:\"type\";s:4:\"page\";s:9:\"old_value\";s:0:\"\";s:9:\"new_value\";s:0:\"\";}}}',NULL,NULL,0,30,NULL,NULL,200),(3,'s1','N','T','Детальная карточка товара','С этой страничкой знакомится почти каждый покупатель вашего магазина, прежде чем изменить ее, проведите А/B-тестирование и убедитесь, что для новой страницы показатели конверсии выше.','a:2:{s:2:\"id\";s:7:\"sample3\";s:4:\"list\";a:1:{i:0;a:3:{s:4:\"type\";s:4:\"page\";s:9:\"old_value\";s:0:\"\";s:9:\"new_value\";s:0:\"\";}}}',NULL,NULL,0,30,NULL,NULL,300),(4,'s1','N','T','Страницы корзины','Запустите А/B-тестирование, сравните влияние изменений на странице корзины на конверсию вашего сайта.','a:2:{s:2:\"id\";s:7:\"sample4\";s:4:\"list\";a:1:{i:0;a:3:{s:4:\"type\";s:4:\"page\";s:9:\"old_value\";s:0:\"\";s:9:\"new_value\";s:0:\"\";}}}',NULL,NULL,0,30,NULL,NULL,400),(5,'s1','N','T','Страница оформления заказа','Запустите А/B-тестирование, сравните влияние изменений на странице оформления заказа на конверсию вашего сайта.','a:2:{s:2:\"id\";s:7:\"sample5\";s:4:\"list\";a:1:{i:0;a:3:{s:4:\"type\";s:4:\"page\";s:9:\"old_value\";s:0:\"\";s:9:\"new_value\";s:0:\"\";}}}',NULL,NULL,0,30,NULL,NULL,500),(6,'s1','N','T','Произвольная выбранная страница','Проведите А/B-тестирование для любой страницы вашего сайта и сравните показатели конверсии для принятия правильного решения.','a:2:{s:2:\"id\";s:7:\"sample6\";s:4:\"list\";a:1:{i:0;a:3:{s:4:\"type\";s:4:\"page\";s:9:\"old_value\";s:0:\"\";s:9:\"new_value\";s:0:\"\";}}}',NULL,NULL,0,30,NULL,NULL,600),(7,'s1','N','N','Композит','Запустите А/B-тестирование и сравните показатели конверсии с композитом и без него.','a:2:{s:2:\"id\";s:7:\"sample7\";s:4:\"list\";a:1:{i:0;a:3:{s:4:\"type\";s:9:\"composite\";s:9:\"old_value\";s:1:\"N\";s:9:\"new_value\";s:1:\"Y\";}}}',NULL,NULL,0,30,NULL,NULL,700),(8,'s1','N','N','CDN','Запустите А/B-тестирование, чтобы выявить влияние CDN на конверсию вашего сайта.','a:2:{s:2:\"id\";s:7:\"sample8\";s:4:\"list\";a:1:{i:0;a:3:{s:4:\"type\";s:3:\"cdn\";s:9:\"old_value\";s:1:\"N\";s:9:\"new_value\";s:1:\"Y\";}}}',NULL,NULL,0,30,NULL,NULL,800),(9,'s1','N','N','BigData','Узнайте насколько эффективна работа BigData. Запустите А/B-тестирование и сравните показатели конверсии сайта.','a:2:{s:2:\"id\";s:7:\"sample9\";s:4:\"list\";a:1:{i:0;a:3:{s:4:\"type\";s:7:\"bigdata\";s:9:\"old_value\";s:1:\"N\";s:9:\"new_value\";s:1:\"Y\";}}}',NULL,NULL,0,30,NULL,NULL,900);
/*!40000 ALTER TABLE `b_abtest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_admin_notify`
--

DROP TABLE IF EXISTS `b_admin_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_admin_notify` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `ENABLE_CLOSE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `PUBLIC_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NOTIFY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M',
  PRIMARY KEY (`ID`),
  KEY `IX_AD_TAG` (`TAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_admin_notify`
--

LOCK TABLES `b_admin_notify` WRITE;
/*!40000 ALTER TABLE `b_admin_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_admin_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_admin_notify_lang`
--

DROP TABLE IF EXISTS `b_admin_notify_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_admin_notify_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NOTIFY_ID` int(18) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_ADM_NTFY_LANG` (`NOTIFY_ID`,`LID`),
  KEY `IX_ADM_NTFY_LID` (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_admin_notify_lang`
--

LOCK TABLES `b_admin_notify_lang` WRITE;
/*!40000 ALTER TABLE `b_admin_notify_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_admin_notify_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_agent`
--

DROP TABLE IF EXISTS `b_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_agent` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `NAME` text COLLATE utf8_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime NOT NULL,
  `DATE_CHECK` datetime DEFAULT NULL,
  `AGENT_INTERVAL` int(18) DEFAULT '86400',
  `IS_PERIOD` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `USER_ID` int(18) DEFAULT NULL,
  `RUNNING` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_act_next_exec` (`ACTIVE`,`NEXT_EXEC`),
  KEY `ix_agent_user_id` (`USER_ID`),
  KEY `ix_agent_name` (`NAME`(100))
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_agent`
--

LOCK TABLES `b_agent` WRITE;
/*!40000 ALTER TABLE `b_agent` DISABLE KEYS */;
INSERT INTO `b_agent` VALUES (1,'main',100,'\\Bitrix\\Main\\Analytics\\CounterDataTable::submitData();','Y','2019-10-17 11:09:07','2019-10-17 11:10:07',NULL,60,'N',NULL,'N'),(2,'main',100,'CCaptchaAgent::DeleteOldCaptcha(3600);','Y','2019-10-17 11:06:54','2019-10-17 12:06:54',NULL,3600,'N',NULL,'N'),(3,'main',100,'CSiteCheckerTest::CommonTest();','Y',NULL,'2019-10-18 03:00:00',NULL,86400,'N',NULL,'N'),(4,'main',100,'CEvent::CleanUpAgent();','Y',NULL,'2019-10-18 03:10:00',NULL,86400,'N',NULL,'N'),(5,'main',100,'CUser::CleanUpHitAuthAgent();','Y',NULL,'2019-10-18 03:15:00',NULL,86400,'N',NULL,'N'),(6,'main',100,'CUndo::CleanUpOld();','Y',NULL,'2019-10-18 03:20:00',NULL,86400,'N',NULL,'N'),(7,'main',100,'CUserCounter::DeleteOld();','Y',NULL,'2019-10-18 03:25:00',NULL,86400,'N',NULL,'N'),(8,'main',100,'\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable::deleteOldAgent();','Y',NULL,'2019-10-18 03:30:00',NULL,86400,'N',NULL,'N'),(9,'main',100,'CUser::AuthActionsCleanUpAgent();','Y',NULL,'2019-10-18 04:15:00',NULL,86400,'N',NULL,'N'),(10,'main',100,'CUser::CleanUpAgent();','Y',NULL,'2019-10-18 04:20:00',NULL,86400,'N',NULL,'N'),(11,'main',100,'CUser::DeactivateAgent();','Y',NULL,'2019-10-18 04:25:00',NULL,86400,'N',NULL,'N'),(12,'main',100,'CEventLog::CleanUpAgent();','Y',NULL,'2019-10-18 04:30:00',NULL,86400,'N',NULL,'N'),(13,'catalog',100,'\\Bitrix\\Catalog\\CatalogViewedProductTable::clearAgent();','Y','2019-10-17 11:06:54','2019-10-22 11:06:54',NULL,432000,'N',NULL,'N'),(14,'currency',100,'\\Bitrix\\Currency\\CurrencyManager::currencyBaseRateAgent();','Y',NULL,'2019-10-18 00:01:00',NULL,86400,'Y',NULL,'N'),(15,'forum',100,'CForumStat::CleanUp();','Y','2019-10-17 11:06:54','2019-10-18 11:06:54',NULL,86400,'N',NULL,'N'),(16,'forum',100,'CForumFiles::CleanUp();','Y','2019-10-17 11:06:54','2019-10-18 11:06:54',NULL,86400,'N',NULL,'N'),(17,'messageservice',100,'\\Bitrix\\MessageService\\Queue::cleanUpAgent();','Y','2019-10-17 11:06:54','2019-10-18 00:00:00',NULL,86400,'Y',NULL,'N'),(21,'rest',100,'Bitrix\\Rest\\Marketplace\\Client::getNumUpdates();','Y','2019-10-17 11:06:54','2019-10-18 11:06:54',NULL,86400,'N',NULL,'N'),(22,'rest',100,'\\Bitrix\\Rest\\EventOfflineTable::cleanProcessAgent();','Y','2019-10-17 11:06:54','2019-10-18 11:06:54',NULL,86400,'N',NULL,'N'),(23,'rest',100,'\\Bitrix\\Rest\\StatTable::cleanUpAgent();','Y','2019-10-17 11:06:54','2019-10-18 11:06:54',NULL,86400,'N',NULL,'N'),(25,'sale',100,'\\Bitrix\\Sale\\Product2ProductTable::deleteOldProducts(10);','Y','2019-10-17 11:06:54','2019-10-27 11:06:54',NULL,864000,'N',NULL,'N'),(26,'sale',100,'CSaleRecurring::AgentCheckRecurring();','Y','2019-10-17 11:06:54','2019-10-17 13:06:54',NULL,7200,'N',NULL,'N'),(27,'sale',100,'CSaleOrder::RemindPayment();','Y','2019-10-17 11:06:54','2019-10-18 11:06:54',NULL,86400,'N',NULL,'N'),(28,'sale',100,'CSaleViewedProduct::ClearViewed();','Y','2019-10-17 11:06:54','2019-10-18 11:06:54',NULL,86400,'N',NULL,'N'),(29,'sale',100,'CSaleOrder::ClearProductReservedQuantity();','Y','2019-10-17 11:06:54','2019-10-18 11:06:54',NULL,86400,'N',NULL,'N'),(32,'search',10,'CSearchSuggest::CleanUpAgent();','Y','2019-10-17 11:06:55','2019-10-18 11:06:55',NULL,86400,'N',NULL,'N'),(33,'search',10,'CSearchStatistic::CleanUpAgent();','Y','2019-10-17 11:06:55','2019-10-18 11:06:55',NULL,86400,'N',NULL,'N'),(35,'security',100,'CSecuritySession::CleanUpAgent();','Y','2019-10-17 11:06:54','2019-10-17 11:36:54',NULL,1800,'N',NULL,'N'),(36,'security',100,'CSecurityIPRule::CleanUpAgent();','Y','2019-10-17 11:06:54','2019-10-17 12:06:54',NULL,3600,'N',NULL,'N'),(39,'seo',100,'Bitrix\\Seo\\Engine\\YandexDirect::updateAgent();','Y','2019-10-17 11:06:55','2019-10-17 12:06:55',NULL,3600,'N',NULL,'N'),(40,'seo',100,'Bitrix\\Seo\\Adv\\LogTable::clean();','Y','2019-10-17 11:06:55','2019-10-18 11:06:55',NULL,86400,'N',NULL,'N'),(41,'seo',100,'Bitrix\\Seo\\Adv\\Auto::checkQuantityAgent();','Y','2019-10-17 11:06:55','2019-10-17 12:06:55',NULL,3600,'N',NULL,'N'),(44,'storeassist',100,'CStoreAssist::AgentCountDayOrders();','Y',NULL,'2019-10-18 00:00:00',NULL,86400,'N',NULL,'N'),(46,'subscribe',100,'CSubscription::CleanUp();','Y',NULL,'2019-10-18 03:00:00',NULL,86400,'Y',NULL,'N'),(51,'pull',100,'CPullChannel::CheckOnlineChannel();','Y','2019-10-17 11:09:04','2019-10-17 11:13:04',NULL,240,'N',NULL,'N'),(52,'pull',100,'CPullChannel::CheckExpireAgent();','Y',NULL,'2019-10-17 23:06:55',NULL,43200,'N',NULL,'N'),(53,'pull',100,'CPullStack::CheckExpireAgent();','Y',NULL,'2019-10-18 11:06:55',NULL,86400,'N',NULL,'N'),(54,'pull',100,'CPullWatch::CheckExpireAgent();','Y',NULL,'2019-10-17 11:16:55',NULL,600,'N',NULL,'N'),(56,'main',100,'CRatings::Calculate(3);','Y','2019-10-17 11:08:08','2019-10-17 12:08:08',NULL,3600,'N',NULL,'N'),(57,'main',100,'CRatings::Calculate(4);','Y','2019-10-17 11:08:08','2019-10-17 12:08:08',NULL,3600,'N',NULL,'N');
/*!40000 ALTER TABLE `b_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_app_password`
--

DROP TABLE IF EXISTS `b_app_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_app_password` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DIGEST_PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SYSCOMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_app_password_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_app_password`
--

LOCK TABLES `b_app_password` WRITE;
/*!40000 ALTER TABLE `b_app_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_app_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_b24connector_buttons`
--

DROP TABLE IF EXISTS `b_b24connector_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_b24connector_buttons` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `ADD_DATE` datetime NOT NULL,
  `ADD_BY` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCRIPT` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_b24connector_buttons`
--

LOCK TABLES `b_b24connector_buttons` WRITE;
/*!40000 ALTER TABLE `b_b24connector_buttons` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_b24connector_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_bitrixcloud_option`
--

DROP TABLE IF EXISTS `b_bitrixcloud_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_bitrixcloud_option` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL,
  `PARAM_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM_VALUE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_bitrixcloud_option_1` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_bitrixcloud_option`
--

LOCK TABLES `b_bitrixcloud_option` WRITE;
/*!40000 ALTER TABLE `b_bitrixcloud_option` DISABLE KEYS */;
INSERT INTO `b_bitrixcloud_option` VALUES (1,'backup_quota',0,'0','0'),(2,'backup_total_size',0,'0','0'),(3,'backup_last_backup_time',0,'0','1571310552'),(4,'monitoring_expire_time',0,'0','1571312359');
/*!40000 ALTER TABLE `b_bitrixcloud_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog`
--

DROP TABLE IF EXISTS `b_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `OWNER_ID` int(11) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(11) DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REAL_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `ENABLE_COMMENTS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ENABLE_IMG_VERIF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENABLE_RSS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_POST_ID` int(11) DEFAULT NULL,
  `LAST_POST_DATE` datetime DEFAULT NULL,
  `AUTO_GROUPS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL_NOTIFY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_HTML` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SEARCH_INDEX` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `USE_SOCNET` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `EDITOR_USE_FONT` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `EDITOR_USE_LINK` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `EDITOR_USE_IMAGE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `EDITOR_USE_VIDEO` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `EDITOR_USE_FORMAT` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_BLOG_4` (`URL`),
  KEY `IX_BLOG_BLOG_1` (`GROUP_ID`,`ACTIVE`),
  KEY `IX_BLOG_BLOG_2` (`OWNER_ID`),
  KEY `IX_BLOG_BLOG_5` (`LAST_POST_DATE`),
  KEY `IX_BLOG_BLOG_6` (`SOCNET_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog`
--

LOCK TABLES `b_blog` WRITE;
/*!40000 ALTER TABLE `b_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_category`
--

DROP TABLE IF EXISTS `b_blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BLOG_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_CAT_1` (`BLOG_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_category`
--

LOCK TABLES `b_blog_category` WRITE;
/*!40000 ALTER TABLE `b_blog_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_comment`
--

DROP TABLE IF EXISTS `b_blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_comment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BLOG_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `AUTHOR_ID` int(11) DEFAULT NULL,
  `ICON_ID` int(11) DEFAULT NULL,
  `AUTHOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_IP` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_IP1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POST_TEXT` text COLLATE utf8_unicode_ci NOT NULL,
  `PUBLISH_STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `HAS_PROPS` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SHARE_DEST` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BLOG_COMM_1` (`BLOG_ID`,`POST_ID`),
  KEY `IX_BLOG_COMM_2` (`AUTHOR_ID`),
  KEY `IX_BLOG_COMM_3` (`DATE_CREATE`,`AUTHOR_ID`),
  KEY `IX_BLOG_COMM_4` (`POST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_comment`
--

LOCK TABLES `b_blog_comment` WRITE;
/*!40000 ALTER TABLE `b_blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_group`
--

DROP TABLE IF EXISTS `b_blog_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BLOG_GROUP_1` (`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_group`
--

LOCK TABLES `b_blog_group` WRITE;
/*!40000 ALTER TABLE `b_blog_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_image`
--

DROP TABLE IF EXISTS `b_blog_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_image` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILE_ID` int(11) NOT NULL DEFAULT '0',
  `BLOG_ID` int(11) NOT NULL DEFAULT '0',
  `POST_ID` int(11) NOT NULL DEFAULT '0',
  `USER_ID` int(11) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_SIZE` int(11) NOT NULL DEFAULT '0',
  `IS_COMMENT` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `COMMENT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BLOG_IMAGE_1` (`POST_ID`,`BLOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_image`
--

LOCK TABLES `b_blog_image` WRITE;
/*!40000 ALTER TABLE `b_blog_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_post`
--

DROP TABLE IF EXISTS `b_blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_post` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `AUTHOR_ID` int(11) NOT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci,
  `PREVIEW_TEXT_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DETAIL_TEXT` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `DETAIL_TEXT_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DATE_CREATE` datetime NOT NULL,
  `DATE_PUBLISH` datetime NOT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PUBLISH_STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `CATEGORY_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ATRIBUTE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENABLE_TRACKBACK` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ENABLE_COMMENTS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ATTACH_IMG` int(11) DEFAULT NULL,
  `NUM_COMMENTS` int(11) NOT NULL DEFAULT '0',
  `NUM_COMMENTS_ALL` int(11) NOT NULL DEFAULT '0',
  `NUM_TRACKBACKS` int(11) NOT NULL DEFAULT '0',
  `VIEWS` int(11) DEFAULT NULL,
  `FAVORITE_SORT` int(11) DEFAULT NULL,
  `PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MICRO` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `HAS_IMAGES` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_PROPS` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_TAGS` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_COMMENT_IMAGES` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_SOCNET_ALL` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEO_TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEO_TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEO_DESCRIPTION` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_BLOG_POST_1` (`BLOG_ID`,`PUBLISH_STATUS`,`DATE_PUBLISH`),
  KEY `IX_BLOG_POST_2` (`BLOG_ID`,`DATE_PUBLISH`,`PUBLISH_STATUS`),
  KEY `IX_BLOG_POST_3` (`BLOG_ID`,`CATEGORY_ID`),
  KEY `IX_BLOG_POST_4` (`PUBLISH_STATUS`,`DATE_PUBLISH`),
  KEY `IX_BLOG_POST_5` (`DATE_PUBLISH`,`AUTHOR_ID`),
  KEY `IX_BLOG_POST_CODE` (`BLOG_ID`,`CODE`),
  KEY `IX_BLOG_POST_6` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_post`
--

LOCK TABLES `b_blog_post` WRITE;
/*!40000 ALTER TABLE `b_blog_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_post_category`
--

DROP TABLE IF EXISTS `b_blog_post_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_post_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BLOG_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  `CATEGORY_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_POST_CATEGORY` (`POST_ID`,`CATEGORY_ID`),
  KEY `IX_BLOG_POST_CATEGORY_CAT_ID` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_post_category`
--

LOCK TABLES `b_blog_post_category` WRITE;
/*!40000 ALTER TABLE `b_blog_post_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_post_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_post_param`
--

DROP TABLE IF EXISTS `b_blog_post_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_post_param` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `POST_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BLOG_PP_1` (`POST_ID`,`USER_ID`),
  KEY `IX_BLOG_PP_2` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_post_param`
--

LOCK TABLES `b_blog_post_param` WRITE;
/*!40000 ALTER TABLE `b_blog_post_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_post_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_site_path`
--

DROP TABLE IF EXISTS `b_blog_site_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_site_path` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `PATH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_SITE_PATH_2` (`SITE_ID`,`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_site_path`
--

LOCK TABLES `b_blog_site_path` WRITE;
/*!40000 ALTER TABLE `b_blog_site_path` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_site_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_socnet`
--

DROP TABLE IF EXISTS `b_blog_socnet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_socnet` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BLOG_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_SOCNET` (`BLOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_socnet`
--

LOCK TABLES `b_blog_socnet` WRITE;
/*!40000 ALTER TABLE `b_blog_socnet` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_socnet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_socnet_rights`
--

DROP TABLE IF EXISTS `b_blog_socnet_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_socnet_rights` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `POST_ID` int(11) NOT NULL,
  `ENTITY_TYPE` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ENTITY` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BLOG_SR_1` (`POST_ID`),
  KEY `IX_BLOG_SR_2` (`ENTITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_socnet_rights`
--

LOCK TABLES `b_blog_socnet_rights` WRITE;
/*!40000 ALTER TABLE `b_blog_socnet_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_socnet_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_trackback`
--

DROP TABLE IF EXISTS `b_blog_trackback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_trackback` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci NOT NULL,
  `BLOG_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POST_DATE` datetime NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BLOG_TRBK_1` (`BLOG_ID`,`POST_ID`),
  KEY `IX_BLOG_TRBK_2` (`POST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_trackback`
--

LOCK TABLES `b_blog_trackback` WRITE;
/*!40000 ALTER TABLE `b_blog_trackback` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_trackback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_user`
--

DROP TABLE IF EXISTS `b_blog_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `ALIAS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `AVATAR` int(11) DEFAULT NULL,
  `INTERESTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  `DATE_REG` datetime NOT NULL,
  `ALLOW_POST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_USER_1` (`USER_ID`),
  KEY `IX_BLOG_USER_2` (`ALIAS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_user`
--

LOCK TABLES `b_blog_user` WRITE;
/*!40000 ALTER TABLE `b_blog_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_user2blog`
--

DROP TABLE IF EXISTS `b_blog_user2blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_user2blog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_USER2GROUP_1` (`BLOG_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_user2blog`
--

LOCK TABLES `b_blog_user2blog` WRITE;
/*!40000 ALTER TABLE `b_blog_user2blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_user2blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_user2user_group`
--

DROP TABLE IF EXISTS `b_blog_user2user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_user2user_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `USER_GROUP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_USER2GROUP_1` (`USER_ID`,`BLOG_ID`,`USER_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_user2user_group`
--

LOCK TABLES `b_blog_user2user_group` WRITE;
/*!40000 ALTER TABLE `b_blog_user2user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_user2user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_user_group`
--

DROP TABLE IF EXISTS `b_blog_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_user_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BLOG_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BLOG_USER_GROUP_1` (`BLOG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_user_group`
--

LOCK TABLES `b_blog_user_group` WRITE;
/*!40000 ALTER TABLE `b_blog_user_group` DISABLE KEYS */;
INSERT INTO `b_blog_user_group` VALUES (1,NULL,'all'),(2,NULL,'registered');
/*!40000 ALTER TABLE `b_blog_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_blog_user_group_perms`
--

DROP TABLE IF EXISTS `b_blog_user_group_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_blog_user_group_perms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BLOG_ID` int(11) NOT NULL,
  `USER_GROUP_ID` int(11) NOT NULL,
  `PERMS_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `POST_ID` int(11) DEFAULT NULL,
  `PERMS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `AUTOSET` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BLOG_UG_PERMS_1` (`BLOG_ID`,`USER_GROUP_ID`,`PERMS_TYPE`,`POST_ID`),
  KEY `IX_BLOG_UG_PERMS_2` (`USER_GROUP_ID`,`PERMS_TYPE`,`POST_ID`),
  KEY `IX_BLOG_UG_PERMS_3` (`POST_ID`,`USER_GROUP_ID`,`PERMS_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_blog_user_group_perms`
--

LOCK TABLES `b_blog_user_group_perms` WRITE;
/*!40000 ALTER TABLE `b_blog_user_group_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_blog_user_group_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_cache_tag`
--

DROP TABLE IF EXISTS `b_cache_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_cache_tag` (
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SALT` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RELATIVE_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_b_cache_tag_0` (`SITE_ID`,`CACHE_SALT`,`RELATIVE_PATH`(50)),
  KEY `ix_b_cache_tag_1` (`TAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_cache_tag`
--

LOCK TABLES `b_cache_tag` WRITE;
/*!40000 ALTER TABLE `b_cache_tag` DISABLE KEYS */;
INSERT INTO `b_cache_tag` VALUES (NULL,NULL,'0:1571310488','**'),('s1','/e25','/s1/bitrix/menu/06f','bitrix:menu'),('s1','/e25','/s1/bitrix/menu/345','bitrix:menu');
/*!40000 ALTER TABLE `b_cache_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_captcha`
--

DROP TABLE IF EXISTS `b_captcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_captcha` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  UNIQUE KEY `UX_B_CAPTCHA` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_captcha`
--

LOCK TABLES `b_captcha` WRITE;
/*!40000 ALTER TABLE `b_captcha` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_captcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_contractor`
--

DROP TABLE IF EXISTS `b_catalog_contractor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_contractor` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERSON_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `PERSON_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSON_LASTNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSON_MIDDLENAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POST_INDEX` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COUNTRY` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CITY` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPANY` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INN` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KPP` varchar(145) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `MODIFIED_BY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_contractor`
--

LOCK TABLES `b_catalog_contractor` WRITE;
/*!40000 ALTER TABLE `b_catalog_contractor` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_contractor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_currency`
--

DROP TABLE IF EXISTS `b_catalog_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_currency` (
  `CURRENCY` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `AMOUNT_CNT` int(11) NOT NULL DEFAULT '1',
  `AMOUNT` decimal(18,4) DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `DATE_UPDATE` datetime NOT NULL,
  `NUMCODE` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BASE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CREATED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `CURRENT_BASE_RATE` decimal(26,12) DEFAULT NULL,
  PRIMARY KEY (`CURRENCY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_currency`
--

LOCK TABLES `b_catalog_currency` WRITE;
/*!40000 ALTER TABLE `b_catalog_currency` DISABLE KEYS */;
INSERT INTO `b_catalog_currency` VALUES ('BYN',1,32.2000,500,'2019-10-17 11:03:07','933','N',NULL,'2019-10-17 11:03:07',NULL,32.200000000000),('EUR',1,78.3200,300,'2019-10-17 11:03:07','978','N',NULL,'2019-10-17 11:03:07',NULL,78.320000000000),('RUB',1,1.0000,100,'2019-10-17 11:03:07','643','Y',NULL,'2019-10-17 11:03:07',NULL,1.000000000000),('UAH',10,25.1100,400,'2019-10-17 11:03:07','980','N',NULL,'2019-10-17 11:03:07',NULL,2.511000000000),('USD',1,68.7900,200,'2019-10-17 11:03:07','840','N',NULL,'2019-10-17 11:03:07',NULL,68.790000000000);
/*!40000 ALTER TABLE `b_catalog_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_currency_lang`
--

DROP TABLE IF EXISTS `b_catalog_currency_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_currency_lang` (
  `CURRENCY` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_STRING` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FULL_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEC_POINT` varchar(16) COLLATE utf8_unicode_ci DEFAULT '.',
  `THOUSANDS_SEP` varchar(16) COLLATE utf8_unicode_ci DEFAULT ' ',
  `DECIMALS` tinyint(4) NOT NULL DEFAULT '2',
  `THOUSANDS_VARIANT` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HIDE_ZERO` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CREATED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  PRIMARY KEY (`CURRENCY`,`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_currency_lang`
--

LOCK TABLES `b_catalog_currency_lang` WRITE;
/*!40000 ALTER TABLE `b_catalog_currency_lang` DISABLE KEYS */;
INSERT INTO `b_catalog_currency_lang` VALUES ('BYN','en','Br#','Belarusian Ruble','.',NULL,2,'C','Y',NULL,'2019-10-17 11:03:07',NULL,'2019-10-17 11:03:07'),('BYN','ru','# руб.','Белорусский рубль','.',NULL,2,'B','Y',NULL,'2019-10-17 11:03:07',NULL,'2019-10-17 11:03:07'),('EUR','en','&euro;#','Euro','.',NULL,2,'C','Y',NULL,'2019-10-17 11:03:07',NULL,'2019-10-17 11:03:07'),('EUR','ru','# &euro;','Евро','.',NULL,2,'B','Y',NULL,'2019-10-17 11:03:07',NULL,'2019-10-17 11:03:07'),('RUB','en','&#8381;#','Russian Ruble','.',NULL,2,'C','Y',NULL,'2019-10-17 11:03:07',NULL,'2019-10-17 11:03:07'),('RUB','ru','# руб.','Российский рубль','.',NULL,2,'B','Y',NULL,'2019-10-17 11:03:07',NULL,'2019-10-17 11:03:07'),('UAH','en','&#8372;#','Hryvnia','.',NULL,2,'C','Y',NULL,'2019-10-17 11:03:07',NULL,'2019-10-17 11:03:07'),('UAH','ru','# грн.','Гривна','.',NULL,2,'B','Y',NULL,'2019-10-17 11:03:07',NULL,'2019-10-17 11:03:07'),('USD','en','$#','US Dollar','.',NULL,2,'C','Y',NULL,'2019-10-17 11:03:07',NULL,'2019-10-17 11:03:07'),('USD','ru','$#','Доллар США','.',NULL,2,'C','Y',NULL,'2019-10-17 11:03:07',NULL,'2019-10-17 11:03:07');
/*!40000 ALTER TABLE `b_catalog_currency_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_currency_rate`
--

DROP TABLE IF EXISTS `b_catalog_currency_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_currency_rate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `BASE_CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_RATE` date NOT NULL,
  `RATE_CNT` int(11) NOT NULL DEFAULT '1',
  `RATE` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `CREATED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_CURRENCY_RATE` (`CURRENCY`,`DATE_RATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_currency_rate`
--

LOCK TABLES `b_catalog_currency_rate` WRITE;
/*!40000 ALTER TABLE `b_catalog_currency_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_currency_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_disc_save_group`
--

DROP TABLE IF EXISTS `b_catalog_disc_save_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_disc_save_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_CAT_DSG_DISCOUNT` (`DISCOUNT_ID`),
  KEY `IX_CAT_DSG_GROUP` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_disc_save_group`
--

LOCK TABLES `b_catalog_disc_save_group` WRITE;
/*!40000 ALTER TABLE `b_catalog_disc_save_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_disc_save_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_disc_save_range`
--

DROP TABLE IF EXISTS `b_catalog_disc_save_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_disc_save_range` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `RANGE_FROM` double NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `VALUE` double NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_CAT_DSR_DISCOUNT2` (`DISCOUNT_ID`,`RANGE_FROM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_disc_save_range`
--

LOCK TABLES `b_catalog_disc_save_range` WRITE;
/*!40000 ALTER TABLE `b_catalog_disc_save_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_disc_save_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_disc_save_user`
--

DROP TABLE IF EXISTS `b_catalog_disc_save_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_disc_save_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ACTIVE_FROM` datetime NOT NULL,
  `ACTIVE_TO` datetime NOT NULL,
  `RANGE_FROM` double NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_CAT_DSU_USER` (`DISCOUNT_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_disc_save_user`
--

LOCK TABLES `b_catalog_disc_save_user` WRITE;
/*!40000 ALTER TABLE `b_catalog_disc_save_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_disc_save_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_discount`
--

DROP TABLE IF EXISTS `b_catalog_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_discount` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` int(11) NOT NULL DEFAULT '0',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `RENEWAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAX_USES` int(11) NOT NULL DEFAULT '0',
  `COUNT_USES` int(11) NOT NULL DEFAULT '0',
  `COUPON` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `MAX_DISCOUNT` decimal(18,4) DEFAULT NULL,
  `VALUE_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `VALUE` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `CURRENCY` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `MIN_ORDER_SUM` decimal(18,4) DEFAULT '0.0000',
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `COUNT_PERIOD` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'U',
  `COUNT_SIZE` int(11) NOT NULL DEFAULT '0',
  `COUNT_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `COUNT_FROM` datetime DEFAULT NULL,
  `COUNT_TO` datetime DEFAULT NULL,
  `ACTION_SIZE` int(11) NOT NULL DEFAULT '0',
  `ACTION_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `PRIORITY` int(18) NOT NULL DEFAULT '1',
  `LAST_DISCOUNT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `VERSION` int(11) NOT NULL DEFAULT '1',
  `NOTES` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONDITIONS` text COLLATE utf8_unicode_ci,
  `UNPACK` text COLLATE utf8_unicode_ci,
  `USE_COUPONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SALE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_C_D_ACT` (`ACTIVE`,`ACTIVE_FROM`,`ACTIVE_TO`),
  KEY `IX_C_D_ACT_B` (`SITE_ID`,`RENEWAL`,`ACTIVE`,`ACTIVE_FROM`,`ACTIVE_TO`),
  KEY `IX_B_CAT_DISCOUNT_COUPON` (`USE_COUPONS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_discount`
--

LOCK TABLES `b_catalog_discount` WRITE;
/*!40000 ALTER TABLE `b_catalog_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_discount2cat`
--

DROP TABLE IF EXISTS `b_catalog_discount2cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_discount2cat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `CATALOG_GROUP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_C_D2C_CATDIS` (`CATALOG_GROUP_ID`,`DISCOUNT_ID`),
  UNIQUE KEY `IX_C_D2C_CATDIS_B` (`DISCOUNT_ID`,`CATALOG_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_discount2cat`
--

LOCK TABLES `b_catalog_discount2cat` WRITE;
/*!40000 ALTER TABLE `b_catalog_discount2cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_discount2cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_discount2group`
--

DROP TABLE IF EXISTS `b_catalog_discount2group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_discount2group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_C_D2G_GRDIS` (`GROUP_ID`,`DISCOUNT_ID`),
  UNIQUE KEY `IX_C_D2G_GRDIS_B` (`DISCOUNT_ID`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_discount2group`
--

LOCK TABLES `b_catalog_discount2group` WRITE;
/*!40000 ALTER TABLE `b_catalog_discount2group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_discount2group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_discount2iblock`
--

DROP TABLE IF EXISTS `b_catalog_discount2iblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_discount2iblock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_C_D2I_IBDIS` (`IBLOCK_ID`,`DISCOUNT_ID`),
  UNIQUE KEY `IX_C_D2I_IBDIS_B` (`DISCOUNT_ID`,`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_discount2iblock`
--

LOCK TABLES `b_catalog_discount2iblock` WRITE;
/*!40000 ALTER TABLE `b_catalog_discount2iblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_discount2iblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_discount2product`
--

DROP TABLE IF EXISTS `b_catalog_discount2product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_discount2product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_C_D2P_PRODIS` (`PRODUCT_ID`,`DISCOUNT_ID`),
  UNIQUE KEY `IX_C_D2P_PRODIS_B` (`DISCOUNT_ID`,`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_discount2product`
--

LOCK TABLES `b_catalog_discount2product` WRITE;
/*!40000 ALTER TABLE `b_catalog_discount2product` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_discount2product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_discount2section`
--

DROP TABLE IF EXISTS `b_catalog_discount2section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_discount2section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_C_D2S_SECDIS` (`SECTION_ID`,`DISCOUNT_ID`),
  UNIQUE KEY `IX_C_D2S_SECDIS_B` (`DISCOUNT_ID`,`SECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_discount2section`
--

LOCK TABLES `b_catalog_discount2section` WRITE;
/*!40000 ALTER TABLE `b_catalog_discount2section` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_discount2section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_discount_cond`
--

DROP TABLE IF EXISTS `b_catalog_discount_cond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_discount_cond` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_GROUP_ID` int(11) NOT NULL DEFAULT '-1',
  `PRICE_TYPE_ID` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_discount_cond`
--

LOCK TABLES `b_catalog_discount_cond` WRITE;
/*!40000 ALTER TABLE `b_catalog_discount_cond` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_discount_cond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_discount_coupon`
--

DROP TABLE IF EXISTS `b_catalog_discount_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_discount_coupon` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `COUPON` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_APPLY` datetime DEFAULT NULL,
  `ONE_TIME` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_cat_dc_index1` (`DISCOUNT_ID`,`COUPON`),
  KEY `ix_cat_dc_index2` (`COUPON`,`ACTIVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_discount_coupon`
--

LOCK TABLES `b_catalog_discount_coupon` WRITE;
/*!40000 ALTER TABLE `b_catalog_discount_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_discount_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_discount_module`
--

DROP TABLE IF EXISTS `b_catalog_discount_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_discount_module` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_CAT_DSC_MOD` (`DISCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_discount_module`
--

LOCK TABLES `b_catalog_discount_module` WRITE;
/*!40000 ALTER TABLE `b_catalog_discount_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_discount_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_docs_barcode`
--

DROP TABLE IF EXISTS `b_catalog_docs_barcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_docs_barcode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOC_ELEMENT_ID` int(11) NOT NULL,
  `BARCODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CATALOG_DOCS_BARCODE1` (`DOC_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_docs_barcode`
--

LOCK TABLES `b_catalog_docs_barcode` WRITE;
/*!40000 ALTER TABLE `b_catalog_docs_barcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_docs_barcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_docs_element`
--

DROP TABLE IF EXISTS `b_catalog_docs_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_docs_element` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOC_ID` int(11) NOT NULL,
  `STORE_FROM` int(11) DEFAULT NULL,
  `STORE_TO` int(11) DEFAULT NULL,
  `ELEMENT_ID` int(11) DEFAULT NULL,
  `AMOUNT` double DEFAULT NULL,
  `PURCHASING_PRICE` double DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CATALOG_DOCS_ELEMENT1` (`DOC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_docs_element`
--

LOCK TABLES `b_catalog_docs_element` WRITE;
/*!40000 ALTER TABLE `b_catalog_docs_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_docs_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_export`
--

DROP TABLE IF EXISTS `b_catalog_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_export` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILE_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `DEFAULT_PROFILE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IN_MENU` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IN_AGENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IN_CRON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SETUP_VARS` mediumtext COLLATE utf8_unicode_ci,
  `LAST_USE` datetime DEFAULT NULL,
  `IS_EXPORT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NEED_EDIT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `BCAT_EX_FILE_NAME` (`FILE_NAME`),
  KEY `IX_CAT_IS_EXPORT` (`IS_EXPORT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_export`
--

LOCK TABLES `b_catalog_export` WRITE;
/*!40000 ALTER TABLE `b_catalog_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_extra`
--

DROP TABLE IF EXISTS `b_catalog_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_extra` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PERCENTAGE` decimal(18,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_extra`
--

LOCK TABLES `b_catalog_extra` WRITE;
/*!40000 ALTER TABLE `b_catalog_extra` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_group`
--

DROP TABLE IF EXISTS `b_catalog_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `BASE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT '100',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_group`
--

LOCK TABLES `b_catalog_group` WRITE;
/*!40000 ALTER TABLE `b_catalog_group` DISABLE KEYS */;
INSERT INTO `b_catalog_group` VALUES (1,'BASE','Y',100,NULL,'2019-10-17 11:09:05',1,'2019-10-17 11:09:05',1),(2,'WHOLESALE','N',200,NULL,'2019-10-17 11:09:05',1,'2019-10-17 11:09:05',1),(3,'RETAIL','N',300,NULL,'2019-10-17 11:09:05',1,'2019-10-17 11:09:05',1);
/*!40000 ALTER TABLE `b_catalog_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_group2group`
--

DROP TABLE IF EXISTS `b_catalog_group2group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_group2group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATALOG_GROUP_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `BUY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_CATG2G_UNI` (`CATALOG_GROUP_ID`,`GROUP_ID`,`BUY`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_group2group`
--

LOCK TABLES `b_catalog_group2group` WRITE;
/*!40000 ALTER TABLE `b_catalog_group2group` DISABLE KEYS */;
INSERT INTO `b_catalog_group2group` VALUES (1,1,1,'N'),(2,1,1,'Y'),(3,2,2,'N'),(4,2,2,'Y'),(5,3,2,'N'),(6,3,2,'Y');
/*!40000 ALTER TABLE `b_catalog_group2group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_group_lang`
--

DROP TABLE IF EXISTS `b_catalog_group_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_group_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATALOG_GROUP_ID` int(11) NOT NULL,
  `LANG` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_CATALOG_GROUP_ID` (`CATALOG_GROUP_ID`,`LANG`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_group_lang`
--

LOCK TABLES `b_catalog_group_lang` WRITE;
/*!40000 ALTER TABLE `b_catalog_group_lang` DISABLE KEYS */;
INSERT INTO `b_catalog_group_lang` VALUES (1,1,'ru','Базовая цена'),(2,1,'en','Base price'),(3,2,'ru','Оптовая цена'),(4,2,'en','Wholesale price'),(5,3,'ru','Розничная цена'),(6,3,'en','Retail price');
/*!40000 ALTER TABLE `b_catalog_group_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_iblock`
--

DROP TABLE IF EXISTS `b_catalog_iblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_iblock` (
  `IBLOCK_ID` int(11) NOT NULL,
  `YANDEX_EXPORT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SUBSCRIPTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `VAT_ID` int(11) DEFAULT '0',
  `PRODUCT_IBLOCK_ID` int(11) NOT NULL DEFAULT '0',
  `SKU_PROPERTY_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IBLOCK_ID`),
  KEY `IXS_CAT_IB_PRODUCT` (`PRODUCT_IBLOCK_ID`),
  KEY `IXS_CAT_IB_SKU_PROP` (`SKU_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_iblock`
--

LOCK TABLES `b_catalog_iblock` WRITE;
/*!40000 ALTER TABLE `b_catalog_iblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_iblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_load`
--

DROP TABLE IF EXISTS `b_catalog_load`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_load` (
  `NAME` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'I',
  `LAST_USED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`NAME`,`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_load`
--

LOCK TABLES `b_catalog_load` WRITE;
/*!40000 ALTER TABLE `b_catalog_load` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_load` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_measure`
--

DROP TABLE IF EXISTS `b_catalog_measure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_measure` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` int(11) NOT NULL,
  `MEASURE_TITLE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SYMBOL_RUS` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SYMBOL_INTL` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SYMBOL_LETTER_INTL` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_DEFAULT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_CATALOG_MEASURE1` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_measure`
--

LOCK TABLES `b_catalog_measure` WRITE;
/*!40000 ALTER TABLE `b_catalog_measure` DISABLE KEYS */;
INSERT INTO `b_catalog_measure` VALUES (1,6,NULL,NULL,'m','MTR','N'),(2,112,NULL,NULL,'l','LTR','N'),(3,163,NULL,NULL,'g','GRM','N'),(4,166,NULL,NULL,'kg','KGM','N'),(5,796,NULL,NULL,'pc. 1','PCE. NMB','Y');
/*!40000 ALTER TABLE `b_catalog_measure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_measure_ratio`
--

DROP TABLE IF EXISTS `b_catalog_measure_ratio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_measure_ratio` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int(11) NOT NULL,
  `RATIO` double NOT NULL DEFAULT '1',
  `IS_DEFAULT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_CATALOG_MEASURE_RATIO` (`PRODUCT_ID`,`RATIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_measure_ratio`
--

LOCK TABLES `b_catalog_measure_ratio` WRITE;
/*!40000 ALTER TABLE `b_catalog_measure_ratio` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_measure_ratio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_price`
--

DROP TABLE IF EXISTS `b_catalog_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_price` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int(11) NOT NULL,
  `EXTRA_ID` int(11) DEFAULT NULL,
  `CATALOG_GROUP_ID` int(11) NOT NULL,
  `PRICE` decimal(18,2) NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `QUANTITY_FROM` int(11) DEFAULT NULL,
  `QUANTITY_TO` int(11) DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRICE_SCALE` decimal(26,12) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IXS_CAT_PRICE_PID` (`PRODUCT_ID`,`CATALOG_GROUP_ID`),
  KEY `IXS_CAT_PRICE_GID` (`CATALOG_GROUP_ID`),
  KEY `IXS_CAT_PRICE_SCALE` (`PRICE_SCALE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_price`
--

LOCK TABLES `b_catalog_price` WRITE;
/*!40000 ALTER TABLE `b_catalog_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_product`
--

DROP TABLE IF EXISTS `b_catalog_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_product` (
  `ID` int(11) NOT NULL,
  `QUANTITY` double NOT NULL,
  `QUANTITY_TRACE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `WEIGHT` double NOT NULL DEFAULT '0',
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PRICE_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `RECUR_SCHEME_LENGTH` int(11) DEFAULT NULL,
  `RECUR_SCHEME_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `TRIAL_PRICE_ID` int(11) DEFAULT NULL,
  `WITHOUT_ORDER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SELECT_BEST_PRICE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `VAT_ID` int(11) DEFAULT '0',
  `VAT_INCLUDED` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `CAN_BUY_ZERO` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NEGATIVE_AMOUNT_TRACE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PURCHASING_PRICE` decimal(18,2) DEFAULT NULL,
  `PURCHASING_CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BARCODE_MULTI` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `QUANTITY_RESERVED` double DEFAULT '0',
  `SUBSCRIBE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WIDTH` double DEFAULT NULL,
  `LENGTH` double DEFAULT NULL,
  `HEIGHT` double DEFAULT NULL,
  `MEASURE` int(11) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `AVAILABLE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUNDLE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_product`
--

LOCK TABLES `b_catalog_product` WRITE;
/*!40000 ALTER TABLE `b_catalog_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_product2group`
--

DROP TABLE IF EXISTS `b_catalog_product2group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_product2group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `ACCESS_LENGTH` int(11) NOT NULL,
  `ACCESS_LENGTH_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_C_P2G_PROD_GROUP` (`PRODUCT_ID`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_product2group`
--

LOCK TABLES `b_catalog_product2group` WRITE;
/*!40000 ALTER TABLE `b_catalog_product2group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_product2group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_product_sets`
--

DROP TABLE IF EXISTS `b_catalog_product_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_product_sets` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE` int(11) NOT NULL,
  `SET_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `QUANTITY` double DEFAULT NULL,
  `MEASURE` int(11) DEFAULT NULL,
  `DISCOUNT_PERCENT` double DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `CREATED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_CAT_PR_SET_TYPE` (`TYPE`),
  KEY `IX_CAT_PR_SET_OWNER_ID` (`OWNER_ID`),
  KEY `IX_CAT_PR_SET_SET_ID` (`SET_ID`),
  KEY `IX_CAT_PR_SET_ITEM_ID` (`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_product_sets`
--

LOCK TABLES `b_catalog_product_sets` WRITE;
/*!40000 ALTER TABLE `b_catalog_product_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_product_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_rounding`
--

DROP TABLE IF EXISTS `b_catalog_rounding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_rounding` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATALOG_GROUP_ID` int(11) NOT NULL,
  `PRICE` decimal(18,4) NOT NULL,
  `ROUND_TYPE` int(11) NOT NULL,
  `ROUND_PRECISION` decimal(18,4) NOT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_MODIFY` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_CAT_RND_CATALOG_GROUP` (`CATALOG_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_rounding`
--

LOCK TABLES `b_catalog_rounding` WRITE;
/*!40000 ALTER TABLE `b_catalog_rounding` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_rounding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_store`
--

DROP TABLE IF EXISTS `b_catalog_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_store` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ADDRESS` varchar(245) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `GPS_N` varchar(15) COLLATE utf8_unicode_ci DEFAULT '0',
  `GPS_S` varchar(15) COLLATE utf8_unicode_ci DEFAULT '0',
  `IMAGE_ID` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DATE_CREATE` datetime DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `MODIFIED_BY` int(11) DEFAULT NULL,
  `PHONE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCHEDULE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ISSUING_CENTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SHIPPING_CENTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_store`
--

LOCK TABLES `b_catalog_store` WRITE;
/*!40000 ALTER TABLE `b_catalog_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_store_barcode`
--

DROP TABLE IF EXISTS `b_catalog_store_barcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_store_barcode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int(11) NOT NULL,
  `BARCODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STORE_ID` int(11) DEFAULT NULL,
  `ORDER_ID` int(11) DEFAULT NULL,
  `DATE_MODIFY` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `MODIFIED_BY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_CATALOG_STORE_BARCODE1` (`BARCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_store_barcode`
--

LOCK TABLES `b_catalog_store_barcode` WRITE;
/*!40000 ALTER TABLE `b_catalog_store_barcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_store_barcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_store_docs`
--

DROP TABLE IF EXISTS `b_catalog_store_docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_store_docs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOC_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTRACTOR_ID` int(11) DEFAULT NULL,
  `DATE_MODIFY` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `MODIFIED_BY` int(11) DEFAULT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DATE_STATUS` datetime DEFAULT NULL,
  `DATE_DOCUMENT` datetime DEFAULT NULL,
  `STATUS_BY` int(11) DEFAULT NULL,
  `TOTAL` double DEFAULT NULL,
  `COMMENTARY` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_store_docs`
--

LOCK TABLES `b_catalog_store_docs` WRITE;
/*!40000 ALTER TABLE `b_catalog_store_docs` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_store_docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_store_product`
--

DROP TABLE IF EXISTS `b_catalog_store_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_store_product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int(11) NOT NULL,
  `AMOUNT` double NOT NULL DEFAULT '0',
  `STORE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_CATALOG_STORE_PRODUCT2` (`PRODUCT_ID`,`STORE_ID`),
  KEY `IX_CATALOG_STORE_PRODUCT1` (`STORE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_store_product`
--

LOCK TABLES `b_catalog_store_product` WRITE;
/*!40000 ALTER TABLE `b_catalog_store_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_store_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_subscribe`
--

DROP TABLE IF EXISTS `b_catalog_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_subscribe` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DATE_FROM` datetime NOT NULL,
  `DATE_TO` datetime DEFAULT NULL,
  `USER_CONTACT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONTACT_TYPE` smallint(5) unsigned NOT NULL,
  `USER_ID` int(10) unsigned DEFAULT NULL,
  `ITEM_ID` int(10) unsigned NOT NULL,
  `NEED_SENDING` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `LANDING_SITE_ID` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_CAT_SUB_USER_CONTACT` (`USER_CONTACT`),
  KEY `IX_CAT_SUB_USER_ID` (`USER_ID`),
  KEY `IX_CAT_SUB_ITEM_ID` (`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_subscribe`
--

LOCK TABLES `b_catalog_subscribe` WRITE;
/*!40000 ALTER TABLE `b_catalog_subscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_subscribe_access`
--

DROP TABLE IF EXISTS `b_catalog_subscribe_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_subscribe_access` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `DATE_FROM` datetime NOT NULL,
  `USER_CONTACT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TOKEN` char(6) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_CAT_SUB_ACS_USER_CONTACT` (`USER_CONTACT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_subscribe_access`
--

LOCK TABLES `b_catalog_subscribe_access` WRITE;
/*!40000 ALTER TABLE `b_catalog_subscribe_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_subscribe_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_vat`
--

DROP TABLE IF EXISTS `b_catalog_vat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_vat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `RATE` decimal(18,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ID`),
  KEY `IX_CAT_VAT_ACTIVE` (`ACTIVE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_vat`
--

LOCK TABLES `b_catalog_vat` WRITE;
/*!40000 ALTER TABLE `b_catalog_vat` DISABLE KEYS */;
INSERT INTO `b_catalog_vat` VALUES (1,'2019-10-17 11:09:05','Y',100,'Без НДС',0.00),(2,'2019-10-17 11:09:05','Y',200,'НДС 18%',18.00);
/*!40000 ALTER TABLE `b_catalog_vat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_catalog_viewed_product`
--

DROP TABLE IF EXISTS `b_catalog_viewed_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_catalog_viewed_product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FUSER_ID` int(11) NOT NULL,
  `DATE_VISIT` datetime NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `VIEW_COUNT` int(11) NOT NULL DEFAULT '1',
  `RECOMMENDATION` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_CAT_V_PR_VISIT` (`FUSER_ID`,`SITE_ID`,`DATE_VISIT`),
  KEY `IX_CAT_V_PR_PRODUCT` (`FUSER_ID`,`SITE_ID`,`ELEMENT_ID`),
  KEY `IX_CAT_V_PR_PRODUCT_VISIT` (`ELEMENT_ID`,`DATE_VISIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_catalog_viewed_product`
--

LOCK TABLES `b_catalog_viewed_product` WRITE;
/*!40000 ALTER TABLE `b_catalog_viewed_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_catalog_viewed_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_checklist`
--

DROP TABLE IF EXISTS `b_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_checklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_CREATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TESTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPANY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `SUCCESS` int(11) DEFAULT NULL,
  `FAILED` int(11) DEFAULT NULL,
  `PENDING` int(11) DEFAULT NULL,
  `SKIP` int(11) DEFAULT NULL,
  `STATE` longtext COLLATE utf8_unicode_ci,
  `REPORT_COMMENT` text COLLATE utf8_unicode_ci,
  `REPORT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENDED_TO_BITRIX` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_checklist`
--

LOCK TABLES `b_checklist` WRITE;
/*!40000 ALTER TABLE `b_checklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_checklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_copy_queue`
--

DROP TABLE IF EXISTS `b_clouds_copy_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_copy_queue` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `OP` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `SOURCE_BUCKET_ID` int(11) NOT NULL,
  `SOURCE_FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `TARGET_BUCKET_ID` int(11) NOT NULL,
  `TARGET_FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` int(11) NOT NULL DEFAULT '-1',
  `FILE_POS` int(11) NOT NULL DEFAULT '0',
  `FAIL_COUNTER` int(11) NOT NULL DEFAULT '0',
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ERROR_MESSAGE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_copy_queue`
--

LOCK TABLES `b_clouds_copy_queue` WRITE;
/*!40000 ALTER TABLE `b_clouds_copy_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_copy_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_delete_queue`
--

DROP TABLE IF EXISTS `b_clouds_delete_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_delete_queue` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `BUCKET_ID` int(11) NOT NULL,
  `FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_clouds_delete_queue_1` (`BUCKET_ID`,`FILE_PATH`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_delete_queue`
--

LOCK TABLES `b_clouds_delete_queue` WRITE;
/*!40000 ALTER TABLE `b_clouds_delete_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_delete_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_bucket`
--

DROP TABLE IF EXISTS `b_clouds_file_bucket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_bucket` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(11) DEFAULT '500',
  `READ_ONLY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SERVICE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOCATION` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_COUNT` int(11) DEFAULT '0',
  `FILE_SIZE` double DEFAULT '0',
  `LAST_FILE_ID` int(11) DEFAULT NULL,
  `PREFIX` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `FILE_RULES` text COLLATE utf8_unicode_ci,
  `FAILOVER_ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_BUCKET_ID` int(11) DEFAULT NULL,
  `FAILOVER_COPY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_DELETE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_DELETE_DELAY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_bucket`
--

LOCK TABLES `b_clouds_file_bucket` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_bucket` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_bucket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_resize`
--

DROP TABLE IF EXISTS `b_clouds_file_resize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_resize` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ERROR_CODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `FILE_ID` int(11) DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `FROM_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_file_resize_ts` (`TIMESTAMP_X`),
  KEY `ix_b_file_resize_path` (`TO_PATH`(100)),
  KEY `ix_b_file_resize_file` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_resize`
--

LOCK TABLES `b_clouds_file_resize` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_resize` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_resize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_clouds_file_upload`
--

DROP TABLE IF EXISTS `b_clouds_file_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_clouds_file_upload` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `TMP_FILE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `PART_SIZE` int(11) NOT NULL,
  `PART_NO` int(11) NOT NULL,
  `PART_FAIL_COUNTER` int(11) NOT NULL,
  `NEXT_STEP` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_clouds_file_upload`
--

LOCK TABLES `b_clouds_file_upload` WRITE;
/*!40000 ALTER TABLE `b_clouds_file_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_clouds_file_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_component_params`
--

DROP TABLE IF EXISTS `b_component_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_component_params` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `COMPONENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TEMPLATE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REAL_PATH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SEF_MODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SEF_FOLDER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_CHAR` int(11) NOT NULL,
  `END_CHAR` int(11) NOT NULL,
  `PARAMETERS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_comp_params_name` (`COMPONENT_NAME`),
  KEY `ix_comp_params_path` (`SITE_ID`,`REAL_PATH`),
  KEY `ix_comp_params_sname` (`SITE_ID`,`COMPONENT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_component_params`
--

LOCK TABLES `b_component_params` WRITE;
/*!40000 ALTER TABLE `b_component_params` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_component_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_composite_log`
--

DROP TABLE IF EXISTS `b_composite_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_composite_log` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  `AJAX` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USER_ID` int(18) NOT NULL DEFAULT '0',
  `PAGE_ID` int(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_B_COMPOSITE_LOG_PAGE_ID` (`PAGE_ID`),
  KEY `IX_B_COMPOSITE_LOG_HOST` (`HOST`),
  KEY `IX_B_COMPOSITE_LOG_TYPE` (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_composite_log`
--

LOCK TABLES `b_composite_log` WRITE;
/*!40000 ALTER TABLE `b_composite_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_composite_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_composite_page`
--

DROP TABLE IF EXISTS `b_composite_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_composite_page` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CACHE_KEY` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `CHANGED` datetime NOT NULL,
  `LAST_VIEWED` datetime NOT NULL,
  `VIEWS` int(18) NOT NULL DEFAULT '0',
  `REWRITES` int(18) NOT NULL DEFAULT '0',
  `SIZE` int(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_B_COMPOSITE_PAGE_CACHE_KEY` (`CACHE_KEY`(100)),
  KEY `IX_B_COMPOSITE_PAGE_VIEWED` (`LAST_VIEWED`),
  KEY `IX_B_COMPOSITE_PAGE_HOST` (`HOST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_composite_page`
--

LOCK TABLES `b_composite_page` WRITE;
/*!40000 ALTER TABLE `b_composite_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_composite_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_agreement`
--

DROP TABLE IF EXISTS `b_consent_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_consent_agreement` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATA_PROVIDER` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AGREEMENT_TEXT` longtext COLLATE utf8_unicode_ci,
  `LABEL_TEXT` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_AGREEMENT_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_agreement`
--

LOCK TABLES `b_consent_agreement` WRITE;
/*!40000 ALTER TABLE `b_consent_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_field`
--

DROP TABLE IF EXISTS `b_consent_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_consent_field` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `AGREEMENT_ID` int(18) NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_FIELD_AG_ID` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_field`
--

LOCK TABLES `b_consent_field` WRITE;
/*!40000 ALTER TABLE `b_consent_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_consent_user_consent`
--

DROP TABLE IF EXISTS `b_consent_user_consent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_consent_user_consent` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `AGREEMENT_ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGIN_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGINATOR_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_CONSENT_USER_CONSENT` (`AGREEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_consent_user_consent`
--

LOCK TABLES `b_consent_user_consent` WRITE;
/*!40000 ALTER TABLE `b_consent_user_consent` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_consent_user_consent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_conv_context`
--

DROP TABLE IF EXISTS `b_conv_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_conv_context` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SNAPSHOT` char(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_CONV_CONTEXT_SNAPSHOT` (`SNAPSHOT`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_conv_context`
--

LOCK TABLES `b_conv_context` WRITE;
/*!40000 ALTER TABLE `b_conv_context` DISABLE KEYS */;
INSERT INTO `b_conv_context` VALUES (1,'f30dbffa4ac0a3816522ee64fc073185f4770f876adb593e3eae426f132a25d0');
/*!40000 ALTER TABLE `b_conv_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_conv_context_attribute`
--

DROP TABLE IF EXISTS `b_conv_context_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_conv_context_attribute` (
  `CONTEXT_ID` int(10) unsigned NOT NULL,
  `NAME` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`CONTEXT_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_conv_context_attribute`
--

LOCK TABLES `b_conv_context_attribute` WRITE;
/*!40000 ALTER TABLE `b_conv_context_attribute` DISABLE KEYS */;
INSERT INTO `b_conv_context_attribute` VALUES (1,'conversion_browser','chrome'),(1,'conversion_device_desktop',''),(1,'conversion_operating_system','linux'),(1,'conversion_site','s1');
/*!40000 ALTER TABLE `b_conv_context_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_conv_context_counter_day`
--

DROP TABLE IF EXISTS `b_conv_context_counter_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_conv_context_counter_day` (
  `DAY` date NOT NULL,
  `CONTEXT_ID` int(10) unsigned NOT NULL,
  `NAME` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` float NOT NULL,
  PRIMARY KEY (`DAY`,`CONTEXT_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_conv_context_counter_day`
--

LOCK TABLES `b_conv_context_counter_day` WRITE;
/*!40000 ALTER TABLE `b_conv_context_counter_day` DISABLE KEYS */;
INSERT INTO `b_conv_context_counter_day` VALUES ('2019-10-17',1,'conversion_visit_day',1);
/*!40000 ALTER TABLE `b_conv_context_counter_day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_conv_context_entity_item`
--

DROP TABLE IF EXISTS `b_conv_context_entity_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_conv_context_entity_item` (
  `ENTITY` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `CONTEXT_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ENTITY`,`ITEM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_conv_context_entity_item`
--

LOCK TABLES `b_conv_context_entity_item` WRITE;
/*!40000 ALTER TABLE `b_conv_context_entity_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_conv_context_entity_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_counter_data`
--

DROP TABLE IF EXISTS `b_counter_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_counter_data` (
  `ID` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DATA` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_counter_data`
--

LOCK TABLES `b_counter_data` WRITE;
/*!40000 ALTER TABLE `b_counter_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_counter_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_culture`
--

DROP TABLE IF EXISTS `b_culture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_culture` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(1) DEFAULT '1',
  `CHARSET` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SHORT_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'n/j/Y',
  `MEDIUM_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'M j, Y',
  `LONG_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'F j, Y',
  `FULL_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'l, F j, Y',
  `DAY_MONTH_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'M j',
  `SHORT_TIME_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'g:i a',
  `LONG_TIME_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'g:i:s a',
  `AM_VALUE` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'am',
  `PM_VALUE` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pm',
  `NUMBER_THOUSANDS_SEPARATOR` varchar(10) COLLATE utf8_unicode_ci DEFAULT ',',
  `NUMBER_DECIMAL_SEPARATOR` varchar(10) COLLATE utf8_unicode_ci DEFAULT '.',
  `NUMBER_DECIMALS` tinyint(4) DEFAULT '2',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_culture`
--

LOCK TABLES `b_culture` WRITE;
/*!40000 ALTER TABLE `b_culture` DISABLE KEYS */;
INSERT INTO `b_culture` VALUES (1,'ru','ru','DD.MM.YYYY','DD.MM.YYYY HH:MI:SS','#NAME# #LAST_NAME#',1,'UTF-8','Y','d.m.Y','j M Y','j F Y','l, j F  Y','j F','H:i','H:i:s','am','pm',' ',',',2),(2,'en','en','MM/DD/YYYY','MM/DD/YYYY H:MI:SS T','#NAME# #LAST_NAME#',0,'UTF-8','Y','n/j/Y','M j, Y','F j, Y','l, F j, Y','M j','g:i a','g:i:s a','am','pm',',','.',2);
/*!40000 ALTER TABLE `b_culture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event`
--

DROP TABLE IF EXISTS `b_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` int(18) DEFAULT NULL,
  `LID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_FIELDS` longtext COLLATE utf8_unicode_ci,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DUPLICATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_success` (`SUCCESS_EXEC`),
  KEY `ix_b_event_date_exec` (`DATE_EXEC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event`
--

LOCK TABLES `b_event` WRITE;
/*!40000 ALTER TABLE `b_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_attachment`
--

DROP TABLE IF EXISTS `b_event_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_attachment` (
  `EVENT_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `IS_FILE_COPIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`EVENT_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_attachment`
--

LOCK TABLES `b_event_attachment` WRITE;
/*!40000 ALTER TABLE `b_event_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_log`
--

DROP TABLE IF EXISTS `b_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_log` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SEVERITY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `GUEST_ID` int(18) DEFAULT NULL,
  `DESCRIPTION` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_event_log_time` (`TIMESTAMP_X`),
  KEY `ix_b_event_log_audit_type_time` (`AUDIT_TYPE_ID`,`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_log`
--

LOCK TABLES `b_event_log` WRITE;
/*!40000 ALTER TABLE `b_event_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message`
--

DROP TABLE IF EXISTS `b_event_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_message` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EMAIL_FROM` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_FROM#',
  `EMAIL_TO` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_TO#',
  `SUBJECT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  `MESSAGE_PHP` longtext COLLATE utf8_unicode_ci,
  `BODY_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `BCC` text COLLATE utf8_unicode_ci,
  `REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRIORITY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_FIELD` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_event_message_name` (`EVENT_NAME`(50))
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message`
--

LOCK TABLES `b_event_message` WRITE;
/*!40000 ALTER TABLE `b_event_message` DISABLE KEYS */;
INSERT INTO `b_event_message` VALUES (1,'2019-10-17 11:02:34','NEW_USER','s1','Y','#DEFAULT_EMAIL_FROM#','#DEFAULT_EMAIL_FROM#','#SITE_NAME#: Зарегистрировался новый пользователь','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте #SERVER_NAME# успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: #USER_ID#\n\nИмя: #NAME#\nФамилия: #LAST_NAME#\nE-Mail: #EMAIL#\n\nLogin: #LOGIN#\n\nПисьмо сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНа сайте <?=$arParams[\"SERVER_NAME\"];?> успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\n\nИмя: <?=$arParams[\"NAME\"];?>\n\nФамилия: <?=$arParams[\"LAST_NAME\"];?>\n\nE-Mail: <?=$arParams[\"EMAIL\"];?>\n\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nПисьмо сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(2,'2019-10-17 11:02:34','USER_INFO','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Регистрационная информация','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(3,'2019-10-17 11:02:34','USER_PASS_REQUEST','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Запрос на смену пароля','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(4,'2019-10-17 11:02:34','USER_PASS_CHANGED','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Подтверждение смены пароля','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(5,'2019-10-17 11:02:34','NEW_USER_CONFIRM','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Подтверждение регистрации нового пользователя','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере #SERVER_NAME#.\n\nВаш код для подтверждения регистрации: #CONFIRM_CODE#\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#&confirm_code=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере <?=$arParams[\"SERVER_NAME\"];?>.\n\nВаш код для подтверждения регистрации: <?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>&confirm_code=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>\n\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(6,'2019-10-17 11:02:34','USER_INVITE','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Приглашение на сайт','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\nЗдравствуйте, #NAME# #LAST_NAME#!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: #ID#\nLogin: #LOGIN#\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth.php?change_password=yes&USER_LOGIN=#URL_LOGIN#&USER_CHECKWORD=#CHECKWORD#\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\nЗдравствуйте, <?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"ID\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth.php?change_password=yes&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>\n\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(7,'2019-10-17 11:02:34','FEEDBACK_FORM','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: Сообщение из формы обратной связи','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: #AUTHOR#\nE-mail автора: #AUTHOR_EMAIL#\n\nТекст сообщения:\n#TEXT#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nE-mail автора: <?=$arParams[\"AUTHOR_EMAIL\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"TEXT\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ru'),(8,'2019-10-17 11:02:34','MAIN_MAIL_CONFIRM_CODE','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#MESSAGE_SUBJECT#','<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>','<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>','html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mail_join',NULL,NULL),(9,'2019-10-17 11:02:47','NEW_BLOG_MESSAGE','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] #BLOG_NAME# : #MESSAGE_TITLE#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовое сообщение в блоге \"#BLOG_NAME#\"\n\nТема:\n#MESSAGE_TITLE#\n\nАвтор: #AUTHOR#\nДата: #MESSAGE_DATE#\n\nТекст сообщения:\n#MESSAGE_TEXT#\n\nАдрес сообщения:\n#MESSAGE_PATH#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовое сообщение в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\"\n\nТема:\n<?=$arParams[\"MESSAGE_TITLE\"];?>\n\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"MESSAGE_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"MESSAGE_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'2019-10-17 11:02:47','NEW_BLOG_COMMENT','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] #MESSAGE_TITLE# : #COMMENT_TITLE#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий в блоге \"#BLOG_NAME#\" на сообщение \"#MESSAGE_TITLE#\"\n\nТема:\n#COMMENT_TITLE#\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовый комментарий в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\" на сообщение \"<?=$arParams[\"MESSAGE_TITLE\"];?>\"\n\nТема:\n<?=$arParams[\"COMMENT_TITLE\"];?>\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"COMMENT_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"COMMENT_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"COMMENT_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'2019-10-17 11:02:47','NEW_BLOG_COMMENT2COMMENT','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] #MESSAGE_TITLE# : #COMMENT_TITLE#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге \"#BLOG_NAME#\" на сообщение \"#MESSAGE_TITLE#\".\n\nТема:\n#COMMENT_TITLE#\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\" на сообщение \"<?=$arParams[\"MESSAGE_TITLE\"];?>\".\n\nТема:\n<?=$arParams[\"COMMENT_TITLE\"];?>\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"COMMENT_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"COMMENT_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"COMMENT_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'2019-10-17 11:02:47','NEW_BLOG_COMMENT_WITHOUT_TITLE','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] #MESSAGE_TITLE#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий в блоге \"#BLOG_NAME#\" на сообщение \"#MESSAGE_TITLE#\"\n\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовый комментарий в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\" на сообщение \"<?=$arParams[\"MESSAGE_TITLE\"];?>\"\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"COMMENT_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"COMMENT_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"COMMENT_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'2019-10-17 11:02:47','NEW_BLOG_COMMENT2COMMENT_WITHOUT_TITLE','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] #MESSAGE_TITLE#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге \"#BLOG_NAME#\" на сообщение \"#MESSAGE_TITLE#\".\n\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\" на сообщение \"<?=$arParams[\"MESSAGE_TITLE\"];?>\".\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"COMMENT_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"COMMENT_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"COMMENT_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'2019-10-17 11:02:47','BLOG_YOUR_BLOG_TO_USER','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] Ваш блог \"#BLOG_NAME#\" был добавлен в друзья к #USER#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВаш блог \"#BLOG_NAME#\" был добавлен в друзья к #USER#.\n\nПрофиль пользователя: #USER_URL#\n\nАдрес вашего блога: #BLOG_ADR#\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВаш блог \"<?=$arParams[\"BLOG_NAME\"];?>\" был добавлен в друзья к <?=$arParams[\"USER\"];?>.\n\nПрофиль пользователя: <?=$arParams[\"USER_URL\"];?>\n\n\nАдрес вашего блога: <?=$arParams[\"BLOG_ADR\"];?>\n\n\nСообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'2019-10-17 11:02:47','BLOG_YOU_TO_BLOG','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] Вы были добавлены в друзья блога \"#BLOG_NAME#\"','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВы были добавлены в друзья блога \"#BLOG_NAME#\".\n\nАдрес блога: #BLOG_ADR#\n\nВаш профиль: #USER_URL#\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВы были добавлены в друзья блога \"<?=$arParams[\"BLOG_NAME\"];?>\".\n\nАдрес блога: <?=$arParams[\"BLOG_ADR\"];?>\n\n\nВаш профиль: <?=$arParams[\"USER_URL\"];?>\n\n\nСообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'2019-10-17 11:02:47','BLOG_BLOG_TO_YOU','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] К вам в друзья был добавлен блог \"#BLOG_NAME#\"','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nК вам в друзья был добавлен блог \"#BLOG_NAME#\".\n\nАдрес блога: #BLOG_ADR#\n\nВаш профиль: #USER_URL#\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nК вам в друзья был добавлен блог \"<?=$arParams[\"BLOG_NAME\"];?>\".\n\nАдрес блога: <?=$arParams[\"BLOG_ADR\"];?>\n\n\nВаш профиль: <?=$arParams[\"USER_URL\"];?>\n\n\nСообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'2019-10-17 11:02:47','BLOG_USER_TO_YOUR_BLOG','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [B] В ваш блог \"#BLOG_NAME#\" был добавлен друг #USER#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВ ваш блог \"#BLOG_NAME#\" был добавлен друг #USER#.\n\nПрофиль пользователя: #USER_URL#\n\nАдрес вашего блога: #BLOG_ADR#\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВ ваш блог \"<?=$arParams[\"BLOG_NAME\"];?>\" был добавлен друг <?=$arParams[\"USER\"];?>.\n\nПрофиль пользователя: <?=$arParams[\"USER_URL\"];?>\n\n\nАдрес вашего блога: <?=$arParams[\"BLOG_ADR\"];?>\n\n\nСообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'2019-10-17 11:02:47','BLOG_SONET_NEW_POST','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#POST_TITLE#','<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post.mail\",\"\",Array(\"EMAIL_TO\" => \"{#EMAIL_TO#}\",\"RECIPIENT_ID\" => \"{#RECIPIENT_ID#}\",\"POST_ID\" => \"{#POST_ID#}\",\"URL\" => \"{#URL#}\"));?>','<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post.mail\",\"\",Array(\"EMAIL_TO\" => \"{$arParams[\'EMAIL_TO\']}\",\"RECIPIENT_ID\" => \"{$arParams[\'RECIPIENT_ID\']}\",\"POST_ID\" => \"{$arParams[\'POST_ID\']}\",\"URL\" => \"{$arParams[\'URL\']}\"));?>','html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mail_user',NULL,NULL),(19,'2019-10-17 11:02:47','BLOG_SONET_NEW_COMMENT','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','Re: #POST_TITLE#','<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post.comment.mail\",\"\",Array(\"COMMENT_ID\" => \"{#COMMENT_ID#}\",\"RECIPIENT_ID\" => \"{#RECIPIENT_ID#}\",\"EMAIL_TO\" => \"{#EMAIL_TO#}\",\"POST_ID\" => \"{#POST_ID#}\",\"URL\" => \"{#URL#}\"));?>','<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post.comment.mail\",\"\",Array(\"COMMENT_ID\" => \"{$arParams[\'COMMENT_ID\']}\",\"RECIPIENT_ID\" => \"{$arParams[\'RECIPIENT_ID\']}\",\"EMAIL_TO\" => \"{$arParams[\'EMAIL_TO\']}\",\"POST_ID\" => \"{$arParams[\'POST_ID\']}\",\"URL\" => \"{$arParams[\'URL\']}\"));?>','html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mail_user',NULL,NULL),(20,'2019-10-17 11:02:47','BLOG_SONET_POST_SHARE','s1','Y','#EMAIL_FROM#','#EMAIL_TO#','#POST_TITLE#','<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post_share.mail\",\"\",Array(\"EMAIL_TO\" => \"{#EMAIL_TO#}\",\"RECIPIENT_ID\" => \"{#RECIPIENT_ID#}\",\"POST_ID\" => \"{#POST_ID#}\",\"URL\" => \"{#URL#}\"));?>','<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post_share.mail\",\"\",Array(\"EMAIL_TO\" => \"{$arParams[\'EMAIL_TO\']}\",\"RECIPIENT_ID\" => \"{$arParams[\'RECIPIENT_ID\']}\",\"POST_ID\" => \"{$arParams[\'POST_ID\']}\",\"URL\" => \"{$arParams[\'URL\']}\"));?>','html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'mail_user',NULL,NULL),(21,'2019-10-17 11:02:47','BLOG_POST_BROADCAST','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: #MESSAGE_TITLE#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте добавлено новое сообщение.\n\nТема:\n#MESSAGE_TITLE#\n\nАвтор: #AUTHOR#\n\nТекст сообщения:\n#MESSAGE_TEXT#\n\nАдрес сообщения:\n#MESSAGE_PATH#\n\nСообщение сгенерировано автоматически.','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНа сайте добавлено новое сообщение.\n\nТема:\n<?=$arParams[\"MESSAGE_TITLE\"];?>\n\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"MESSAGE_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'2019-10-17 11:02:55','CATALOG_PRODUCT_SUBSCRIBE_LIST_CONFIRM','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: Код подтверждения','\n			<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n			<html xmlns=\"http://www.w3.org/1999/xhtml\">\n			<head>\n				<style>\n					body\n					{\n						font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n						font-size: 14px;\n						color: #000;\n					}\n				</style>\n			</head>\n			<body>\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; \n				border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n				<tr>\n					<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; \n						padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n						<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n							<tr>\n								<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: \n								center; font-size: 26px; color: #0b3961;\">Информационное сообщение сайта #SITE_NAME#</td>\n							</tr>\n							<tr>\n								<td bgcolor=\"#bad3df\" height=\"11\"></td>\n							</tr>\n						</table>\n					</td>\n				</tr>\n				<tr>\n					<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; \n						padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n						<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый, #USER_NAME#!</p>\n						<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">\nВы получили это сообщение, так как на ваш адрес был запрошен код подтверждения для доступа к подпискам сайта #SERVER_NAME#. <br><br> \nВаш код для подтверждения подписки: #TOKEN# <br><br> \nДля получения доступа к подпискам перейдите по следующей ссылке: #TOKEN_URL# <br><br>\nВы также можете ввести код на странице: #LIST_SUBSCRIBES# <br><br>\nПисьмо содержит информацию для авторизации.<br>\nИспользуя код подтверждения, вы cможете получить доступ к списку подписок.<br>\nНе отвечайте на письмо, оно сформировано автоматически.<br><br>\nСпасибо, что вы с нами!<br>\n</p>\n					</td>\n				</tr>\n				<tr>\n					<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; \n						padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n						<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; \n							line-height:21px;\">С уважением, администрация \n							<a href=\"http://#SERVER_NAME#\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n							E-mail: <a href=\"mailto:#DEFAULT_EMAIL_FROM#\" style=\"color:#2e6eb6;\">#DEFAULT_EMAIL_FROM#</a>\n							\n						</p>\n					</td>\n				</tr>\n			</table>\n			</body>\n			</html>\n		','\n			<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n			<html xmlns=\"http://www.w3.org/1999/xhtml\">\n			<head>\n				<style>\n					body\n					{\n						font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n						font-size: 14px;\n						color: #000;\n					}\n				</style>\n			</head>\n			<body>\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; \n				border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n				<tr>\n					<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; \n						padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n						<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n							<tr>\n								<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: \n								center; font-size: 26px; color: #0b3961;\">Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?></td>\n							</tr>\n							<tr>\n								<td bgcolor=\"#bad3df\" height=\"11\"></td>\n							</tr>\n						</table>\n					</td>\n				</tr>\n				<tr>\n					<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; \n						padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n						<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый, <?=$arParams[\"USER_NAME\"];?>!</p>\n						<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">\nВы получили это сообщение, так как на ваш адрес был запрошен код подтверждения для доступа к подпискам сайта <?=$arParams[\"SERVER_NAME\"];?>. <br><br> \nВаш код для подтверждения подписки: <?=$arParams[\"TOKEN\"];?> <br><br> \nДля получения доступа к подпискам перейдите по следующей ссылке: <?=$arParams[\"TOKEN_URL\"];?> <br><br>\nВы также можете ввести код на странице: <?=$arParams[\"LIST_SUBSCRIBES\"];?> <br><br>\nПисьмо содержит информацию для авторизации.<br>\nИспользуя код подтверждения, вы cможете получить доступ к списку подписок.<br>\nНе отвечайте на письмо, оно сформировано автоматически.<br><br>\nСпасибо, что вы с нами!<br>\n</p>\n					</td>\n				</tr>\n				<tr>\n					<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; \n						padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n						<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; \n							line-height:21px;\">С уважением, администрация \n							<a href=\"http://<?=$arParams[\"SERVER_NAME\"];?>\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n							E-mail: <a href=\"mailto:<?=$arParams[\"DEFAULT_EMAIL_FROM\"];?>\" style=\"color:#2e6eb6;\"><?=$arParams[\"DEFAULT_EMAIL_FROM\"];?></a>\n							\n						</p>\n					</td>\n				</tr>\n			</table>\n			</body>\n			</html>\n		','html','#BCC#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'2019-10-17 11:02:55','CATALOG_PRODUCT_SUBSCRIBE_NOTIFY','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: Уведомление о поступлении товара','\n			<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n			<html xmlns=\"http://www.w3.org/1999/xhtml\">\n			<head>\n				<style>\n					body\n					{\n						font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n						font-size: 14px;\n						color: #000;\n					}\n				</style>\n			</head>\n			<body>\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; \n				border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n				<tr>\n					<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; \n						padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n						<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n							<tr>\n								<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: \n								center; font-size: 26px; color: #0b3961;\">Уведомление о поступлении товара в магазин #SITE_NAME#</td>\n							</tr>\n							<tr>\n								<td bgcolor=\"#bad3df\" height=\"11\"></td>\n							</tr>\n						</table>\n					</td>\n				</tr>\n				<tr>\n					<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; \n						padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n						<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый, #USER_NAME#!</p>\n						<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">\nТовар \"#NAME#\" (#PAGE_URL#) поступил на склад.<br><br>\nВы просили оповестить вас о поступление товара.<br><br>\nТовар поступил к нам в магазин, вы можете оформить заказ прямо сейчас: (#CHECKOUT_URL#)<br><br>\nНе отвечайте на письмо, оно сформировано автоматически.<br><br>\nСпасибо, что вы с нами!<br>\n</p>\n					</td>\n				</tr>\n				<tr>\n					<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; \n						padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n						<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; \n							line-height:21px;\">С уважением, администрация \n							<a href=\"http://#SERVER_NAME#\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n							E-mail: <a href=\"mailto:#DEFAULT_EMAIL_FROM#\" style=\"color:#2e6eb6;\">#DEFAULT_EMAIL_FROM#</a>\n							<br><a href=\"#UNSUBSCRIBE_URL#\">Отписаться</a>\n						</p>\n					</td>\n				</tr>\n			</table>\n			</body>\n			</html>\n		','\n			<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n			<html xmlns=\"http://www.w3.org/1999/xhtml\">\n			<head>\n				<style>\n					body\n					{\n						font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n						font-size: 14px;\n						color: #000;\n					}\n				</style>\n			</head>\n			<body>\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; \n				border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n				<tr>\n					<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; \n						padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n						<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n							<tr>\n								<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: \n								center; font-size: 26px; color: #0b3961;\">Уведомление о поступлении товара в магазин <?=$arParams[\"SITE_NAME\"];?></td>\n							</tr>\n							<tr>\n								<td bgcolor=\"#bad3df\" height=\"11\"></td>\n							</tr>\n						</table>\n					</td>\n				</tr>\n				<tr>\n					<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; \n						padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n						<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый, <?=$arParams[\"USER_NAME\"];?>!</p>\n						<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">\nТовар \"<?=$arParams[\"NAME\"];?>\" (<?=$arParams[\"PAGE_URL\"];?>) поступил на склад.<br><br>\nВы просили оповестить вас о поступление товара.<br><br>\nТовар поступил к нам в магазин, вы можете оформить заказ прямо сейчас: (<?=$arParams[\"CHECKOUT_URL\"];?>)<br><br>\nНе отвечайте на письмо, оно сформировано автоматически.<br><br>\nСпасибо, что вы с нами!<br>\n</p>\n					</td>\n				</tr>\n				<tr>\n					<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; \n						padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n						<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; \n							line-height:21px;\">С уважением, администрация \n							<a href=\"http://<?=$arParams[\"SERVER_NAME\"];?>\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n							E-mail: <a href=\"mailto:<?=$arParams[\"DEFAULT_EMAIL_FROM\"];?>\" style=\"color:#2e6eb6;\"><?=$arParams[\"DEFAULT_EMAIL_FROM\"];?></a>\n							<br><a href=\"<?=$arParams[\"UNSUBSCRIBE_URL\"];?>\">Отписаться</a>\n						</p>\n					</td>\n				</tr>\n			</table>\n			</body>\n			</html>\n		','html','#BCC#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'2019-10-17 11:02:55','CATALOG_PRODUCT_SUBSCRIBE_NOTIFY_REPEATED','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','Уведомление о товаре в магазине #SITE_NAME#','\n			<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n			<html xmlns=\"http://www.w3.org/1999/xhtml\">\n			<head>\n				<style>\n					body\n					{\n						font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n						font-size: 14px;\n						color: #000;\n					}\n				</style>\n			</head>\n			<body>\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; \n				border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n				<tr>\n					<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; \n						padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n						<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n							<tr>\n								<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: \n								center; font-size: 26px; color: #0b3961;\">Уведомление о товаре в магазине #SITE_NAME#</td>\n							</tr>\n							<tr>\n								<td bgcolor=\"#bad3df\" height=\"11\"></td>\n							</tr>\n						</table>\n					</td>\n				</tr>\n				<tr>\n					<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; \n						padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n						<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый, #USER_NAME#!</p>\n						<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">\nТовар \"#NAME#\" (#PAGE_URL#) к сожалению снова закончился.<br><br>\nМы обязательно сообщим вам о поступлении товара.<br><br>\nНе отвечайте на письмо, оно сформировано автоматически.<br><br>\nСпасибо, что вы с нами!<br>\n</p>\n					</td>\n				</tr>\n				<tr>\n					<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; \n						padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n						<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; \n							line-height:21px;\">С уважением, администрация \n							<a href=\"http://#SERVER_NAME#\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n							E-mail: <a href=\"mailto:#DEFAULT_EMAIL_FROM#\" style=\"color:#2e6eb6;\">#DEFAULT_EMAIL_FROM#</a>\n							<br><a href=\"#UNSUBSCRIBE_URL#\">Отписаться</a>\n						</p>\n					</td>\n				</tr>\n			</table>\n			</body>\n			</html>\n		','\n			<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n			<html xmlns=\"http://www.w3.org/1999/xhtml\">\n			<head>\n				<style>\n					body\n					{\n						font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n						font-size: 14px;\n						color: #000;\n					}\n				</style>\n			</head>\n			<body>\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; \n				border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n				<tr>\n					<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; \n						padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n						<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n							<tr>\n								<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: \n								center; font-size: 26px; color: #0b3961;\">Уведомление о товаре в магазине <?=$arParams[\"SITE_NAME\"];?></td>\n							</tr>\n							<tr>\n								<td bgcolor=\"#bad3df\" height=\"11\"></td>\n							</tr>\n						</table>\n					</td>\n				</tr>\n				<tr>\n					<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; \n						padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n						<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый, <?=$arParams[\"USER_NAME\"];?>!</p>\n						<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">\nТовар \"<?=$arParams[\"NAME\"];?>\" (<?=$arParams[\"PAGE_URL\"];?>) к сожалению снова закончился.<br><br>\nМы обязательно сообщим вам о поступлении товара.<br><br>\nНе отвечайте на письмо, оно сформировано автоматически.<br><br>\nСпасибо, что вы с нами!<br>\n</p>\n					</td>\n				</tr>\n				<tr>\n					<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; \n						padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n						<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; \n							line-height:21px;\">С уважением, администрация \n							<a href=\"http://<?=$arParams[\"SERVER_NAME\"];?>\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n							E-mail: <a href=\"mailto:<?=$arParams[\"DEFAULT_EMAIL_FROM\"];?>\" style=\"color:#2e6eb6;\"><?=$arParams[\"DEFAULT_EMAIL_FROM\"];?></a>\n							<br><a href=\"<?=$arParams[\"UNSUBSCRIBE_URL\"];?>\">Отписаться</a>\n						</p>\n					</td>\n				</tr>\n			</table>\n			</body>\n			</html>\n		','html','#BCC#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'2019-10-17 11:03:24','NEW_FORUM_MESSAGE','s1','Y','#FROM_EMAIL#','#RECIPIENT#','#SITE_NAME#: [F] #TOPIC_TITLE# : #FORUM_NAME#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовое сообщение на форуме #SERVER_NAME#.\n\nТема:\n#TOPIC_TITLE#\n\nАвтор: #AUTHOR#\nДата : #MESSAGE_DATE#\nТекст сообщения:\n\n#MESSAGE_TEXT#\n\nАдрес сообщения:\nhttp://#SERVER_NAME##PATH2FORUM#\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовое сообщение на форуме <?=$arParams[\"SERVER_NAME\"];?>.\n\nТема:\n<?=$arParams[\"TOPIC_TITLE\"];?>\n\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата : <?=$arParams[\"MESSAGE_DATE\"];?>\n\nТекст сообщения:\n\n<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\nАдрес сообщения:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"PATH2FORUM\"];?>\n\n\nСообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'2019-10-17 11:03:24','NEW_FORUM_PRIV','s1','Y','#FROM_EMAIL#','#TO_EMAIL#','#SITE_NAME#: [private] #SUBJECT#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте #SERVER_NAME#.\n\nТема: #SUBJECT#\n\nАвтор: #FROM_NAME# #FROM_EMAIL#\nДата : #MESSAGE_DATE#\nСообщение:\n\n#MESSAGE#\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте <?=$arParams[\"SERVER_NAME\"];?>.\n\nТема: <?=$arParams[\"SUBJECT\"];?>\n\n\nАвтор: <?=$arParams[\"FROM_NAME\"];?> <?=$arParams[\"FROM_EMAIL\"];?>\n\nДата : <?=$arParams[\"MESSAGE_DATE\"];?>\n\nСообщение:\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nСообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'2019-10-17 11:03:24','NEW_FORUM_PRIVATE_MESSAGE','s1','Y','#FROM_EMAIL#','#TO_EMAIL#','#SITE_NAME#: [private] #SUBJECT#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте #SERVER_NAME#.\n\nТема: #SUBJECT#\n\nАвтор: #FROM_NAME#\nДата: #MESSAGE_DATE#\nСообщение:\n\n#MESSAGE#\n\nСсылка на сообщение: #MESSAGE_LINK#Сообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте <?=$arParams[\"SERVER_NAME\"];?>.\n\nТема: <?=$arParams[\"SUBJECT\"];?>\n\n\nАвтор: <?=$arParams[\"FROM_NAME\"];?>\n\nДата: <?=$arParams[\"MESSAGE_DATE\"];?>\n\nСообщение:\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nСсылка на сообщение: <?=$arParams[\"MESSAGE_LINK\"];?>Сообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'2019-10-17 11:03:24','EDIT_FORUM_MESSAGE','s1','Y','#FROM_EMAIL#','#RECIPIENT#','#SITE_NAME#: [F] #TOPIC_TITLE# : #FORUM_NAME#','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nИзменение сообщения на форуме #SERVER_NAME#.\n\nТема:\n#TOPIC_TITLE#\n\nАвтор: #AUTHOR#\nДата : #MESSAGE_DATE#\nТекст сообщения:\n\n#MESSAGE_TEXT#\n\nАдрес сообщения:\nhttp://#SERVER_NAME##PATH2FORUM#\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nИзменение сообщения на форуме <?=$arParams[\"SERVER_NAME\"];?>.\n\nТема:\n<?=$arParams[\"TOPIC_TITLE\"];?>\n\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата : <?=$arParams[\"MESSAGE_DATE\"];?>\n\nТекст сообщения:\n\n<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\nАдрес сообщения:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"PATH2FORUM\"];?>\n\n\nСообщение сгенерировано автоматически.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'2019-10-17 11:03:24','FORUM_NEW_MESSAGE_MAIL','s1','Y','#FROM_EMAIL#','#RECIPIENT#','#TOPIC_TITLE#','#MESSAGE_TEXT#\n\n------------------------------------------  \nВы получили это сообщение, так как выподписаны на форум #FORUM_NAME#.\n\nОтветить на сообщение можно по электронной почте или через форму на сайте:\nhttp://#SERVER_NAME##PATH2FORUM#\n\nНаписать новое сообщение: #FORUM_EMAIL#\n\nАвтор сообщения: #AUTHOR#\n\nСообщение сгенерировано автоматически на сайте #SITE_NAME#.\n','<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\n------------------------------------------  \nВы получили это сообщение, так как выподписаны на форум <?=$arParams[\"FORUM_NAME\"];?>.\n\nОтветить на сообщение можно по электронной почте или через форму на сайте:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"PATH2FORUM\"];?>\n\n\nНаписать новое сообщение: <?=$arParams[\"FORUM_EMAIL\"];?>\n\n\nАвтор сообщения: <?=$arParams[\"AUTHOR\"];?>\n\n\nСообщение сгенерировано автоматически на сайте <?=$arParams[\"SITE_NAME\"];?>.\n','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'2019-10-17 11:04:16','SALE_NEW_ORDER','s1','Y','#SALE_EMAIL#','#EMAIL#','#SITE_NAME#: Новый заказ N#ORDER_ID#','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Вами оформлен заказ в магазине #SITE_NAME#</td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый #ORDER_USER#,</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Ваш заказ номер #ORDER_ID# от #ORDER_DATE# принят.<br />\n<br />\nСтоимость заказа: #PRICE#.<br />\n<br />\nСостав заказа:<br />\n#ORDER_LIST#<br />\n<br />\nВы можете следить за выполнением своего заказа (на какой стадии выполнения он находится), войдя в Ваш персональный раздел сайта #SITE_NAME#.<br />\n<br />\nОбратите внимание, что для входа в этот раздел Вам необходимо будет ввести логин и пароль пользователя сайта #SITE_NAME#.<br />\n<br />\nДля того, чтобы аннулировать заказ, воспользуйтесь функцией отмены заказа, которая доступна в Вашем персональном разделе сайта #SITE_NAME#.<br />\n<br />\nПожалуйста, при обращении к администрации сайта #SITE_NAME# ОБЯЗАТЕЛЬНО указывайте номер Вашего заказа - #ORDER_ID#.<br />\n<br />\nСпасибо за покупку!<br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://#SERVER_NAME#\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:#SALE_EMAIL#\" style=\"color:#2e6eb6;\">#SALE_EMAIL#</a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Вами оформлен заказ в магазине <?=$arParams[\"SITE_NAME\"];?></td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый <?=$arParams[\"ORDER_USER\"];?>,</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Ваш заказ номер <?=$arParams[\"ORDER_ID\"];?> от <?=$arParams[\"ORDER_DATE\"];?> принят.<br />\n<br />\nСтоимость заказа: <?=$arParams[\"PRICE\"];?>.<br />\n<br />\nСостав заказа:<br />\n<?=$arParams[\"ORDER_LIST\"];?><br />\n<br />\nВы можете следить за выполнением своего заказа (на какой стадии выполнения он находится), войдя в Ваш персональный раздел сайта <?=$arParams[\"SITE_NAME\"];?>.<br />\n<br />\nОбратите внимание, что для входа в этот раздел Вам необходимо будет ввести логин и пароль пользователя сайта <?=$arParams[\"SITE_NAME\"];?>.<br />\n<br />\nДля того, чтобы аннулировать заказ, воспользуйтесь функцией отмены заказа, которая доступна в Вашем персональном разделе сайта <?=$arParams[\"SITE_NAME\"];?>.<br />\n<br />\nПожалуйста, при обращении к администрации сайта <?=$arParams[\"SITE_NAME\"];?> ОБЯЗАТЕЛЬНО указывайте номер Вашего заказа - <?=$arParams[\"ORDER_ID\"];?>.<br />\n<br />\nСпасибо за покупку!<br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://<?=$arParams[\"SERVER_NAME\"];?>\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:<?=$arParams[\"SALE_EMAIL\"];?>\" style=\"color:#2e6eb6;\"><?=$arParams[\"SALE_EMAIL\"];?></a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','html','#BCC#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'2019-10-17 11:04:16','SALE_ORDER_CANCEL','s1','Y','#SALE_EMAIL#','#EMAIL#','#SITE_NAME#: Отмена заказа N#ORDER_ID#','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">#SITE_NAME#: Отмена заказа N#ORDER_ID#</td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Заказ номер #ORDER_ID# от #ORDER_DATE# отменен.</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">#ORDER_CANCEL_DESCRIPTION#<br />\n<br />\nДля получения подробной информации по заказу пройдите на сайт http://#SERVER_NAME#/personal/order/#ORDER_ACCOUNT_NUMBER_ENCODE#/<br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://#SERVER_NAME#\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:#SALE_EMAIL#\" style=\"color:#2e6eb6;\">#SALE_EMAIL#</a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\"><?=$arParams[\"SITE_NAME\"];?>: Отмена заказа N<?=$arParams[\"ORDER_ID\"];?></td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Заказ номер <?=$arParams[\"ORDER_ID\"];?> от <?=$arParams[\"ORDER_DATE\"];?> отменен.</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\"><?=$arParams[\"ORDER_CANCEL_DESCRIPTION\"];?><br />\n<br />\nДля получения подробной информации по заказу пройдите на сайт http://<?=$arParams[\"SERVER_NAME\"];?>/personal/order/<?=$arParams[\"ORDER_ACCOUNT_NUMBER_ENCODE\"];?>/<br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://<?=$arParams[\"SERVER_NAME\"];?>\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:<?=$arParams[\"SALE_EMAIL\"];?>\" style=\"color:#2e6eb6;\"><?=$arParams[\"SALE_EMAIL\"];?></a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','html','#BCC#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'2019-10-17 11:04:16','SALE_ORDER_DELIVERY','s1','Y','#SALE_EMAIL#','#EMAIL#','#SITE_NAME#: Доставка заказа N#ORDER_ID# разрешена','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Доставка вашего заказа с сайта #SITE_NAME# разрешена</td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Доставка заказа номер #ORDER_ID# от #ORDER_DATE# разрешена.</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Для получения подробной информации по заказу пройдите на сайт http://#SERVER_NAME#/personal/order/#ORDER_ACCOUNT_NUMBER_ENCODE#/<br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://#SERVER_NAME#\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:#SALE_EMAIL#\" style=\"color:#2e6eb6;\">#SALE_EMAIL#</a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Доставка вашего заказа с сайта <?=$arParams[\"SITE_NAME\"];?> разрешена</td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Доставка заказа номер <?=$arParams[\"ORDER_ID\"];?> от <?=$arParams[\"ORDER_DATE\"];?> разрешена.</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Для получения подробной информации по заказу пройдите на сайт http://<?=$arParams[\"SERVER_NAME\"];?>/personal/order/<?=$arParams[\"ORDER_ACCOUNT_NUMBER_ENCODE\"];?>/<br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://<?=$arParams[\"SERVER_NAME\"];?>\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:<?=$arParams[\"SALE_EMAIL\"];?>\" style=\"color:#2e6eb6;\"><?=$arParams[\"SALE_EMAIL\"];?></a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','html','#BCC#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'2019-10-17 11:04:16','SALE_ORDER_PAID','s1','Y','#SALE_EMAIL#','#EMAIL#','#SITE_NAME#: Заказ N#ORDER_ID# оплачен','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Вы оплатили заказ на сайте #SITE_NAME#</td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Заказ номер #ORDER_ID# от #ORDER_DATE# оплачен.</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Для получения подробной информации по заказу пройдите на сайт http://#SERVER_NAME#/personal/order/#ORDER_ACCOUNT_NUMBER_ENCODE#/</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://#SERVER_NAME#\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:#SALE_EMAIL#\" style=\"color:#2e6eb6;\">#SALE_EMAIL#</a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Вы оплатили заказ на сайте <?=$arParams[\"SITE_NAME\"];?></td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Заказ номер <?=$arParams[\"ORDER_ID\"];?> от <?=$arParams[\"ORDER_DATE\"];?> оплачен.</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Для получения подробной информации по заказу пройдите на сайт http://<?=$arParams[\"SERVER_NAME\"];?>/personal/order/<?=$arParams[\"ORDER_ACCOUNT_NUMBER_ENCODE\"];?>/</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://<?=$arParams[\"SERVER_NAME\"];?>\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:<?=$arParams[\"SALE_EMAIL\"];?>\" style=\"color:#2e6eb6;\"><?=$arParams[\"SALE_EMAIL\"];?></a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','html','#BCC#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'2019-10-17 11:04:16','SALE_ORDER_REMIND_PAYMENT','s1','Y','#SALE_EMAIL#','#EMAIL#','#SITE_NAME#: Напоминание об оплате заказа N#ORDER_ID# ','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Напоминаем вам об оплате заказа на сайте #SITE_NAME#</td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый #ORDER_USER#,</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Вами был оформлен заказ N #ORDER_ID# от #ORDER_DATE# на сумму #PRICE#.<br />\n<br />\nК сожалению, на сегодняшний день средства по этому заказу не поступили к нам.<br />\n<br />\nВы можете следить за выполнением своего заказа (на какой стадии выполнения он находится), войдя в Ваш персональный раздел сайта #SITE_NAME#.<br />\n<br />\nОбратите внимание, что для входа в этот раздел Вам необходимо будет ввести логин и пароль пользователя сайта #SITE_NAME#.<br />\n<br />\nДля того, чтобы аннулировать заказ, воспользуйтесь функцией отмены заказа, которая доступна в Вашем персональном разделе сайта #SITE_NAME#.<br />\n<br />\nПожалуйста, при обращении к администрации сайта #SITE_NAME# ОБЯЗАТЕЛЬНО указывайте номер Вашего заказа - #ORDER_ID#.<br />\n<br />\nСпасибо за покупку!<br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://#SERVER_NAME#\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:#SALE_EMAIL#\" style=\"color:#2e6eb6;\">#SALE_EMAIL#</a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Напоминаем вам об оплате заказа на сайте <?=$arParams[\"SITE_NAME\"];?></td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый <?=$arParams[\"ORDER_USER\"];?>,</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Вами был оформлен заказ N <?=$arParams[\"ORDER_ID\"];?> от <?=$arParams[\"ORDER_DATE\"];?> на сумму <?=$arParams[\"PRICE\"];?>.<br />\n<br />\nК сожалению, на сегодняшний день средства по этому заказу не поступили к нам.<br />\n<br />\nВы можете следить за выполнением своего заказа (на какой стадии выполнения он находится), войдя в Ваш персональный раздел сайта <?=$arParams[\"SITE_NAME\"];?>.<br />\n<br />\nОбратите внимание, что для входа в этот раздел Вам необходимо будет ввести логин и пароль пользователя сайта <?=$arParams[\"SITE_NAME\"];?>.<br />\n<br />\nДля того, чтобы аннулировать заказ, воспользуйтесь функцией отмены заказа, которая доступна в Вашем персональном разделе сайта <?=$arParams[\"SITE_NAME\"];?>.<br />\n<br />\nПожалуйста, при обращении к администрации сайта <?=$arParams[\"SITE_NAME\"];?> ОБЯЗАТЕЛЬНО указывайте номер Вашего заказа - <?=$arParams[\"ORDER_ID\"];?>.<br />\n<br />\nСпасибо за покупку!<br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://<?=$arParams[\"SERVER_NAME\"];?>\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:<?=$arParams[\"SALE_EMAIL\"];?>\" style=\"color:#2e6eb6;\"><?=$arParams[\"SALE_EMAIL\"];?></a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','html','#BCC#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'2019-10-17 11:04:16','SALE_SUBSCRIBE_PRODUCT','s1','Y','#SALE_EMAIL#','#EMAIL#','#SITE_NAME#: Уведомление о поступлении товара','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Уведомление о поступлении товара в магазин #SITE_NAME#</td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый, #USER_NAME#!</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Товар \"#NAME#\" (#PAGE_URL#) поступил на склад.<br />\n<br />\nВы можете Оформить заказ (http://#SERVER_NAME#/personal/cart/).<br />\n<br />\nНе забудьте авторизоваться!<br />\n<br />\nВы получили это сообщение по Вашей просьбе оповестить при появлении товара.<br />\nНе отвечайте на него - письмо сформировано автоматически.<br />\n<br />\nСпасибо за покупку!<br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://#SERVER_NAME#\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:#SALE_EMAIL#\" style=\"color:#2e6eb6;\">#SALE_EMAIL#</a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Уведомление о поступлении товара в магазин <?=$arParams[\"SITE_NAME\"];?></td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый, <?=$arParams[\"USER_NAME\"];?>!</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Товар \"<?=$arParams[\"NAME\"];?>\" (<?=$arParams[\"PAGE_URL\"];?>) поступил на склад.<br />\n<br />\nВы можете Оформить заказ (http://<?=$arParams[\"SERVER_NAME\"];?>/personal/cart/).<br />\n<br />\nНе забудьте авторизоваться!<br />\n<br />\nВы получили это сообщение по Вашей просьбе оповестить при появлении товара.<br />\nНе отвечайте на него - письмо сформировано автоматически.<br />\n<br />\nСпасибо за покупку!<br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://<?=$arParams[\"SERVER_NAME\"];?>\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:<?=$arParams[\"SALE_EMAIL\"];?>\" style=\"color:#2e6eb6;\"><?=$arParams[\"SALE_EMAIL\"];?></a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','html','#BCC#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'2019-10-17 11:04:16','SALE_ORDER_TRACKING_NUMBER','s1','Y','#SALE_EMAIL#','#EMAIL#','Номер идентификатора отправления вашего заказа на сайте #SITE_NAME#','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Номер идентификатора отправления вашего заказа на сайте #SITE_NAME#</td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый #ORDER_USER#,</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Произошла почтовая отправка заказа N #ORDER_ID# от #ORDER_DATE#.<br />\n<br />\nНомер идентификатора отправления: #ORDER_TRACKING_NUMBER#.<br />\n<br />\nДля получения подробной информации по заказу пройдите на сайт http://#SERVER_NAME#/personal/order/detail/#ORDER_ACCOUNT_NUMBER_ENCODE#/<br />\n<br />\nE-mail: #SALE_EMAIL#<br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://#SERVER_NAME#\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:#SALE_EMAIL#\" style=\"color:#2e6eb6;\">#SALE_EMAIL#</a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Номер идентификатора отправления вашего заказа на сайте <?=$arParams[\"SITE_NAME\"];?></td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый <?=$arParams[\"ORDER_USER\"];?>,</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Произошла почтовая отправка заказа N <?=$arParams[\"ORDER_ID\"];?> от <?=$arParams[\"ORDER_DATE\"];?>.<br />\n<br />\nНомер идентификатора отправления: <?=$arParams[\"ORDER_TRACKING_NUMBER\"];?>.<br />\n<br />\nДля получения подробной информации по заказу пройдите на сайт http://<?=$arParams[\"SERVER_NAME\"];?>/personal/order/detail/<?=$arParams[\"ORDER_ACCOUNT_NUMBER_ENCODE\"];?>/<br />\n<br />\nE-mail: <?=$arParams[\"SALE_EMAIL\"];?><br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://<?=$arParams[\"SERVER_NAME\"];?>\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:<?=$arParams[\"SALE_EMAIL\"];?>\" style=\"color:#2e6eb6;\"><?=$arParams[\"SALE_EMAIL\"];?></a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','html','#BCC#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'2019-10-17 11:04:16','SALE_CHECK_PRINT','s1','Y','#SALE_EMAIL#','#EMAIL#','Ссылка на чек','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Вы оплатили заказ на сайте #SITE_NAME#</td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый #ORDER_USER#,</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\"><br />\nСогласно требованиям закона ФЗ-54 о фискальных чеках по вашему заказу произведена оплата и сформирован фискальный кассовый чек, который вы можете посмотреть по ссылке:<br />\n<br />\n#CHECK_LINK#<br />\n<br />\nДля получения подробной информации по заказу №#ORDER_ID# от #ORDER_DATE# пройдите на сайт #LINK_URL#<br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://#SERVER_NAME#\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:#SALE_EMAIL#\" style=\"color:#2e6eb6;\">#SALE_EMAIL#</a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Вы оплатили заказ на сайте <?=$arParams[\"SITE_NAME\"];?></td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый <?=$arParams[\"ORDER_USER\"];?>,</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\"><br />\nСогласно требованиям закона ФЗ-54 о фискальных чеках по вашему заказу произведена оплата и сформирован фискальный кассовый чек, который вы можете посмотреть по ссылке:<br />\n<br />\n<?=$arParams[\"CHECK_LINK\"];?><br />\n<br />\nДля получения подробной информации по заказу №<?=$arParams[\"ORDER_ID\"];?> от <?=$arParams[\"ORDER_DATE\"];?> пройдите на сайт <?=$arParams[\"LINK_URL\"];?><br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://<?=$arParams[\"SERVER_NAME\"];?>\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:<?=$arParams[\"SALE_EMAIL\"];?>\" style=\"color:#2e6eb6;\"><?=$arParams[\"SALE_EMAIL\"];?></a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','html','#BCC#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'2019-10-17 11:04:16','SALE_CHECK_PRINT_ERROR','s1','Y','#SALE_EMAIL#','#EMAIL#','Ошибка при печати чека','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Ошибка при печати чека</td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Здравствуйте!</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\"><br />\nПо какой-то причине чек №#CHECK_ID# по заказу №#ORDER_ACCOUNT_NUMBER# от #ORDER_DATE# не удалось распечатать!<br />\n<br />\nПерейдите по ссылке, чтобы устранить причину возникшей ситуации:<br />\n#LINK_URL#<br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://#SERVER_NAME#\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:#SALE_EMAIL#\" style=\"color:#2e6eb6;\">#SALE_EMAIL#</a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Ошибка при печати чека</td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Здравствуйте!</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\"><br />\nПо какой-то причине чек №<?=$arParams[\"CHECK_ID\"];?> по заказу №<?=$arParams[\"ORDER_ACCOUNT_NUMBER\"];?> от <?=$arParams[\"ORDER_DATE\"];?> не удалось распечатать!<br />\n<br />\nПерейдите по ссылке, чтобы устранить причину возникшей ситуации:<br />\n<?=$arParams[\"LINK_URL\"];?><br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://<?=$arParams[\"SERVER_NAME\"];?>\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:<?=$arParams[\"SALE_EMAIL\"];?>\" style=\"color:#2e6eb6;\"><?=$arParams[\"SALE_EMAIL\"];?></a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','html','#BCC#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'2019-10-17 11:04:16','SALE_ORDER_SHIPMENT_STATUS_CHANGED','s1','Y','#SALE_EMAIL#','#EMAIL#','Статус почтового отправления вашего заказа на сайте #SITE_NAME# изменился','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Изменился статус почтового отправления заказа на сайте #SITE_NAME#</td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый #ORDER_USER#,</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Статус почтового отправления по заказу № #ORDER_NO# от #ORDER_DATE#<br />\n<br />\nизменил значение на \"#STATUS_NAME#\" (#STATUS_DESCRIPTION#).<br />\n<br />\nИдентификатор отправления: #TRACKING_NUMBER#.<br />\n<br />\nНаименование службы доставки: #DELIVERY_NAME#.<br />\n<br />\n#DELIVERY_TRACKING_URL##ORDER_DETAIL_URL#<br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://#SERVER_NAME#\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:#SALE_EMAIL#\" style=\"color:#2e6eb6;\">#SALE_EMAIL#</a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Изменился статус почтового отправления заказа на сайте <?=$arParams[\"SITE_NAME\"];?></td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\">Уважаемый <?=$arParams[\"ORDER_USER\"];?>,</p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Статус почтового отправления по заказу № <?=$arParams[\"ORDER_NO\"];?> от <?=$arParams[\"ORDER_DATE\"];?><br />\n<br />\nизменил значение на \"<?=$arParams[\"STATUS_NAME\"];?>\" (<?=$arParams[\"STATUS_DESCRIPTION\"];?>).<br />\n<br />\nИдентификатор отправления: <?=$arParams[\"TRACKING_NUMBER\"];?>.<br />\n<br />\nНаименование службы доставки: <?=$arParams[\"DELIVERY_NAME\"];?>.<br />\n<br />\n<?=$arParams[\"DELIVERY_TRACKING_URL\"];?><?=$arParams[\"ORDER_DETAIL_URL\"];?><br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://<?=$arParams[\"SERVER_NAME\"];?>\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:<?=$arParams[\"SALE_EMAIL\"];?>\" style=\"color:#2e6eb6;\"><?=$arParams[\"SALE_EMAIL\"];?></a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','html','#BCC#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'2019-10-17 11:04:16','SALE_NEW_ORDER_RECURRING','s1','Y','#SALE_EMAIL#','#EMAIL#','#SITE_NAME#: Новый заказ N#ORDER_ID# на продление подписки','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nУважаемый #ORDER_USER#,\n\nВаш заказ номер #ORDER_ID# от #ORDER_DATE# на продление подписки принят.\n\nСтоимость заказа: #PRICE#.\n\nСостав заказа:\n#ORDER_LIST#\n\nВы можете следить за выполнением своего заказа (на какой\nстадии выполнения он находится), войдя в Ваш персональный\nраздел сайта #SITE_NAME#. Обратите внимание, что для входа\nв этот раздел Вам необходимо будет ввести логин и пароль\nпользователя сайта #SITE_NAME#.\n\nДля того, чтобы аннулировать заказ, воспользуйтесь функцией\nотмены заказа, которая доступна в Вашем персональном\nразделе сайта #SITE_NAME#.\n\nПожалуйста, при обращении к администрации сайта #SITE_NAME#\nОБЯЗАТЕЛЬНО указывайте номер Вашего заказа - #ORDER_ID#.\n\nСпасибо за покупку!\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nУважаемый <?=$arParams[\"ORDER_USER\"];?>,\n\nВаш заказ номер <?=$arParams[\"ORDER_ID\"];?> от <?=$arParams[\"ORDER_DATE\"];?> на продление подписки принят.\n\nСтоимость заказа: <?=$arParams[\"PRICE\"];?>.\n\nСостав заказа:\n<?=$arParams[\"ORDER_LIST\"];?>\n\n\nВы можете следить за выполнением своего заказа (на какой\nстадии выполнения он находится), войдя в Ваш персональный\nраздел сайта <?=$arParams[\"SITE_NAME\"];?>. Обратите внимание, что для входа\nв этот раздел Вам необходимо будет ввести логин и пароль\nпользователя сайта <?=$arParams[\"SITE_NAME\"];?>.\n\nДля того, чтобы аннулировать заказ, воспользуйтесь функцией\nотмены заказа, которая доступна в Вашем персональном\nразделе сайта <?=$arParams[\"SITE_NAME\"];?>.\n\nПожалуйста, при обращении к администрации сайта <?=$arParams[\"SITE_NAME\"];?>\n\nОБЯЗАТЕЛЬНО указывайте номер Вашего заказа - <?=$arParams[\"ORDER_ID\"];?>.\n\nСпасибо за покупку!\n','text','#BCC#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'2019-10-17 11:04:16','SALE_RECURRING_CANCEL','s1','Y','#SALE_EMAIL#','#EMAIL#','#SITE_NAME#: Подписка отменена','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nПодписка отменена\n\n#CANCELED_REASON#\n#SITE_NAME#\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nПодписка отменена\n\n<?=$arParams[\"CANCELED_REASON\"];?>\n\n<?=$arParams[\"SITE_NAME\"];?>\n\n','text','#BCC#',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'2019-10-17 11:04:17','SALE_STATUS_CHANGED_F','s1','Y','#SALE_EMAIL#','#EMAIL#','#SERVER_NAME#: Изменение статуса заказа N#ORDER_ID#','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Изменение статуса заказа в магазине #SITE_NAME#</td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\"></p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Информационное сообщение сайта #SITE_NAME#<br />\n------------------------------------------<br />\n<br />\nСтатус заказа номер #ORDER_ID# от #ORDER_DATE# изменен.<br />\n<br />\nНовый статус заказа:<br />\n#ORDER_STATUS#<br />\n#ORDER_DESCRIPTION#<br />\n#TEXT#<br />\n<br />\nДля получения подробной информации по заказу пройдите на сайт #SERVER_NAME#/personal/order/#ORDER_ID#/<br />\n<br />\nСпасибо за ваш выбор!<br />\n#SITE_NAME#<br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://#SERVER_NAME#\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:#SALE_EMAIL#\" style=\"color:#2e6eb6;\">#SALE_EMAIL#</a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Изменение статуса заказа в магазине <?=$arParams[\"SITE_NAME\"];?></td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\"></p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?><br />\n------------------------------------------<br />\n<br />\nСтатус заказа номер <?=$arParams[\"ORDER_ID\"];?> от <?=$arParams[\"ORDER_DATE\"];?> изменен.<br />\n<br />\nНовый статус заказа:<br />\n<?=$arParams[\"ORDER_STATUS\"];?><br />\n<?=$arParams[\"ORDER_DESCRIPTION\"];?><br />\n<?=$arParams[\"TEXT\"];?><br />\n<br />\nДля получения подробной информации по заказу пройдите на сайт <?=$arParams[\"SERVER_NAME\"];?>/personal/order/<?=$arParams[\"ORDER_ID\"];?>/<br />\n<br />\nСпасибо за ваш выбор!<br />\n<?=$arParams[\"SITE_NAME\"];?><br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://<?=$arParams[\"SERVER_NAME\"];?>\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:<?=$arParams[\"SALE_EMAIL\"];?>\" style=\"color:#2e6eb6;\"><?=$arParams[\"SALE_EMAIL\"];?></a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,'2019-10-17 11:04:17','SALE_STATUS_CHANGED_N','s1','Y','#SALE_EMAIL#','#EMAIL#','#SERVER_NAME#: Изменение статуса заказа N#ORDER_ID#','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Изменение статуса заказа в магазине #SITE_NAME#</td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\"></p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Информационное сообщение сайта #SITE_NAME#<br />\n------------------------------------------<br />\n<br />\nСтатус заказа номер #ORDER_ID# от #ORDER_DATE# изменен.<br />\n<br />\nНовый статус заказа:<br />\n#ORDER_STATUS#<br />\n#ORDER_DESCRIPTION#<br />\n#TEXT#<br />\n<br />\nДля получения подробной информации по заказу пройдите на сайт #SERVER_NAME#/personal/order/#ORDER_ID#/<br />\n<br />\nСпасибо за ваш выбор!<br />\n#SITE_NAME#<br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://#SERVER_NAME#\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:#SALE_EMAIL#\" style=\"color:#2e6eb6;\">#SALE_EMAIL#</a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"ru\" lang=\"ru\">\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\n	<style>\n		body\n		{\n			font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif;\n			font-size: 14px;\n			color: #000;\n		}\n	</style>\n</head>\n<body>\n<table cellpadding=\"0\" cellspacing=\"0\" width=\"850\" style=\"background-color: #d1d1d1; border-radius: 2px; border:1px solid #d1d1d1; margin: 0 auto;\" border=\"1\" bordercolor=\"#d1d1d1\">\n	<tr>\n		<td height=\"83\" width=\"850\" bgcolor=\"#eaf3f5\" style=\"border: none; padding-top: 23px; padding-right: 17px; padding-bottom: 24px; padding-left: 17px;\">\n			<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\n				<tr>\n					<td bgcolor=\"#ffffff\" height=\"75\" style=\"font-weight: bold; text-align: center; font-size: 26px; color: #0b3961;\">Изменение статуса заказа в магазине <?=$arParams[\"SITE_NAME\"];?></td>\n				</tr>\n				<tr>\n					<td bgcolor=\"#bad3df\" height=\"11\"></td>\n				</tr>\n			</table>\n		</td>\n	</tr>\n	<tr>\n		<td width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 16px; padding-left: 44px;\">\n			<p style=\"margin-top:30px; margin-bottom: 28px; font-weight: bold; font-size: 19px;\"></p>\n			<p style=\"margin-top: 0; margin-bottom: 20px; line-height: 20px;\">Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?><br />\n------------------------------------------<br />\n<br />\nСтатус заказа номер <?=$arParams[\"ORDER_ID\"];?> от <?=$arParams[\"ORDER_DATE\"];?> изменен.<br />\n<br />\nНовый статус заказа:<br />\n<?=$arParams[\"ORDER_STATUS\"];?><br />\n<?=$arParams[\"ORDER_DESCRIPTION\"];?><br />\n<?=$arParams[\"TEXT\"];?><br />\n<br />\nДля получения подробной информации по заказу пройдите на сайт <?=$arParams[\"SERVER_NAME\"];?>/personal/order/<?=$arParams[\"ORDER_ID\"];?>/<br />\n<br />\nСпасибо за ваш выбор!<br />\n<?=$arParams[\"SITE_NAME\"];?><br />\n</p>\n		</td>\n	</tr>\n	<tr>\n		<td height=\"40px\" width=\"850\" bgcolor=\"#f7f7f7\" valign=\"top\" style=\"border: none; padding-top: 0; padding-right: 44px; padding-bottom: 30px; padding-left: 44px;\">\n			<p style=\"border-top: 1px solid #d1d1d1; margin-bottom: 5px; margin-top: 0; padding-top: 20px; line-height:21px;\">С уважением,<br />администрация <a href=\"http://<?=$arParams[\"SERVER_NAME\"];?>\" style=\"color:#2e6eb6;\">Интернет-магазина</a><br />\n				E-mail: <a href=\"mailto:<?=$arParams[\"SALE_EMAIL\"];?>\" style=\"color:#2e6eb6;\"><?=$arParams[\"SALE_EMAIL\"];?></a>\n			</p>\n		</td>\n	</tr>\n</table>\n</body>\n</html>','html',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'2019-10-17 11:04:29','VIRUS_DETECTED','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Обнаружен вирус','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте!\n\nВы получили это сообщение, так как модуль проактивной защиты сервера #SERVER_NAME# обнаружил код, похожий на вирус.\n\n1. Подозрительный код был вырезан из html.\n2. Проверьте журнал вторжений и убедитесь, что код действительно вредоносный, а не является кодом какого-либо счетчика или фреймворка.\n (ссылка: http://#SERVER_NAME#/bitrix/admin/event_log.php?lang=ru&set_filter=Y&find_type=audit_type_id&find_audit_type[]=SECURITY_VIRUS )\n3. В случае, если код не является опасным, добавьте его в исключения на странице настройки антивируса.\n (ссылка: http://#SERVER_NAME#/bitrix/admin/security_antivirus.php?lang=ru&tabControl_active_tab=exceptions )\n4. Если код является вирусным, то необходимо выполнить следующие действия:\n\n а) Смените пароли доступа к сайту у администраторов и ответственных сотрудников.\n б) Смените пароли доступа по ssh и ftp.\n в) Проверьте и вылечите компьютеры администраторов, имевших доступ к сайту по ssh или ftp.\n г) В программах доступа к сайту по ssh и ftp отключите сохранение паролей.\n д) Удалите вредоносный код из зараженных файлов. Например, восстановите поврежденные файлы из самой свежей резервной копии.\n\n---------------------------------------------------------------------\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте!\n\nВы получили это сообщение, так как модуль проактивной защиты сервера <?=$arParams[\"SERVER_NAME\"];?> обнаружил код, похожий на вирус.\n\n1. Подозрительный код был вырезан из html.\n2. Проверьте журнал вторжений и убедитесь, что код действительно вредоносный, а не является кодом какого-либо счетчика или фреймворка.\n (ссылка: http://<?=$arParams[\"SERVER_NAME\"];?>/bitrix/admin/event_log.php?lang=ru&set_filter=Y&find_type=audit_type_id&find_audit_type[]=SECURITY_VIRUS )\n3. В случае, если код не является опасным, добавьте его в исключения на странице настройки антивируса.\n (ссылка: http://<?=$arParams[\"SERVER_NAME\"];?>/bitrix/admin/security_antivirus.php?lang=ru&tabControl_active_tab=exceptions )\n4. Если код является вирусным, то необходимо выполнить следующие действия:\n\n а) Смените пароли доступа к сайту у администраторов и ответственных сотрудников.\n б) Смените пароли доступа по ssh и ftp.\n в) Проверьте и вылечите компьютеры администраторов, имевших доступ к сайту по ssh или ftp.\n г) В программах доступа к сайту по ssh и ftp отключите сохранение паролей.\n д) Удалите вредоносный код из зараженных файлов. Например, восстановите поврежденные файлы из самой свежей резервной копии.\n\n---------------------------------------------------------------------\nСообщение сгенерировано автоматически.\n','text','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'2019-10-17 11:04:35','SENDER_SUBSCRIBE_CONFIRM','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Подтверждение подписки','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был подписан\nна список рассылки сервера #SERVER_NAME#.\n\nДополнительная информация о подписке:\n\nАдрес подписки (email) ............ #EMAIL#\nДата добавления/редактирования .... #DATE#\nСписок рассылок:\n#MAILING_LIST#\n\n\nДля подтверждения подписки перейдите по следующей ссылке:\nhttp://#SERVER_NAME##CONFIRM_URL#\n\n\nВнимание! Вы не будете получать сообщения рассылки, пока не подтвердите\nсвою подписку.\nЕсли вы не подписывались на рассылку и получили это письмо по ошибке,\nпроигнорируйте его.\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был подписан\nна список рассылки сервера <?=$arParams[\"SERVER_NAME\"];?>.\n\nДополнительная информация о подписке:\n\nАдрес подписки (email) ............ <?=$arParams[\"EMAIL\"];?>\n\nДата добавления/редактирования .... <?=$arParams[\"DATE\"];?>\n\nСписок рассылок:\n<?=$arParams[\"MAILING_LIST\"];?>\n\n\n\nДля подтверждения подписки перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"CONFIRM_URL\"];?>\n\n\n\nВнимание! Вы не будете получать сообщения рассылки, пока не подтвердите\nсвою подписку.\nЕсли вы не подписывались на рассылку и получили это письмо по ошибке,\nпроигнорируйте его.\n\nСообщение сгенерировано автоматически.\n','text','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'2019-10-17 11:04:50','SUBSCRIBE_CONFIRM','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL#','#SITE_NAME#: Подтверждение подписки','Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был подписан\nна список рассылки сервера #SERVER_NAME#.\n\nДополнительная информация о подписке:\n\nАдрес подписки (email) ............ #EMAIL#\nДата добавления/редактирования .... #DATE_SUBSCR#\n\nВаш код для подтверждения подписки: #CONFIRM_CODE#\n\nДля подтверждения подписки перейдите по следующей ссылке:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#&CONFIRM_CODE=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения подписки на странице:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#\n\nВнимание! Вы не будете получать сообщения рассылки, пока не подтвердите\nсвою подписку.\n\n---------------------------------------------------------------------\nСохраните это письмо, так как оно содержит информацию для авторизации.\nИспользуя код подтверждения подписки, вы cможете изменить параметры\nподписки или отписаться от рассылки.\n\nИзменить параметры:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#&CONFIRM_CODE=#CONFIRM_CODE#\n\nОтписаться:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#&CONFIRM_CODE=#CONFIRM_CODE#&action=unsubscribe\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.\n','Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был подписан\nна список рассылки сервера <?=$arParams[\"SERVER_NAME\"];?>.\n\nДополнительная информация о подписке:\n\nАдрес подписки (email) ............ <?=$arParams[\"EMAIL\"];?>\n\nДата добавления/редактирования .... <?=$arParams[\"DATE_SUBSCR\"];?>\n\n\nВаш код для подтверждения подписки: <?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nДля подтверждения подписки перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"SUBSCR_SECTION\"];?>subscr_edit.php?ID=<?=$arParams[\"ID\"];?>&CONFIRM_CODE=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nВы также можете ввести код для подтверждения подписки на странице:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"SUBSCR_SECTION\"];?>subscr_edit.php?ID=<?=$arParams[\"ID\"];?>\n\n\nВнимание! Вы не будете получать сообщения рассылки, пока не подтвердите\nсвою подписку.\n\n---------------------------------------------------------------------\nСохраните это письмо, так как оно содержит информацию для авторизации.\nИспользуя код подтверждения подписки, вы cможете изменить параметры\nподписки или отписаться от рассылки.\n\nИзменить параметры:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"SUBSCR_SECTION\"];?>subscr_edit.php?ID=<?=$arParams[\"ID\"];?>&CONFIRM_CODE=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nОтписаться:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"SUBSCR_SECTION\"];?>subscr_edit.php?ID=<?=$arParams[\"ID\"];?>&CONFIRM_CODE=<?=$arParams[\"CONFIRM_CODE\"];?>&action=unsubscribe\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.\n','text','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(47,'2019-10-17 11:05:01','VOTE_FOR','s1','Y','#DEFAULT_EMAIL_FROM#','#EMAIL_TO#','#SITE_NAME#: [V] #VOTE_TITLE#','#USER_NAME# принял участие в опросе \"#VOTE_TITLE#\":\n#VOTE_STATISTIC#\n\nhttp://#SERVER_NAME##URL#\nСообщение сгенерировано автоматически.','<?=$arParams[\"USER_NAME\"];?> принял участие в опросе \"<?=$arParams[\"VOTE_TITLE\"];?>\":\n<?=$arParams[\"VOTE_STATISTIC\"];?>\n\n\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"URL\"];?>\n\nСообщение сгенерировано автоматически.','text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_event_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message_attachment`
--

DROP TABLE IF EXISTS `b_event_message_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_message_attachment` (
  `EVENT_MESSAGE_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  PRIMARY KEY (`EVENT_MESSAGE_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message_attachment`
--

LOCK TABLES `b_event_message_attachment` WRITE;
/*!40000 ALTER TABLE `b_event_message_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_event_message_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_message_site`
--

DROP TABLE IF EXISTS `b_event_message_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_message_site` (
  `EVENT_MESSAGE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`EVENT_MESSAGE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_message_site`
--

LOCK TABLES `b_event_message_site` WRITE;
/*!40000 ALTER TABLE `b_event_message_site` DISABLE KEYS */;
INSERT INTO `b_event_message_site` VALUES (1,'s1'),(2,'s1'),(3,'s1'),(4,'s1'),(5,'s1'),(6,'s1'),(7,'s1'),(8,'s1'),(9,'s1'),(10,'s1'),(11,'s1'),(12,'s1'),(13,'s1'),(14,'s1'),(15,'s1'),(16,'s1'),(17,'s1'),(18,'s1'),(19,'s1'),(20,'s1'),(21,'s1'),(22,'s1'),(23,'s1'),(24,'s1'),(25,'s1'),(26,'s1'),(27,'s1'),(28,'s1'),(29,'s1'),(30,'s1'),(31,'s1'),(32,'s1'),(33,'s1'),(34,'s1'),(35,'s1'),(36,'s1'),(37,'s1'),(38,'s1'),(39,'s1'),(40,'s1'),(41,'s1'),(42,'s1'),(43,'s1'),(44,'s1'),(45,'s1'),(46,'s1'),(47,'s1');
/*!40000 ALTER TABLE `b_event_message_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_event_type`
--

DROP TABLE IF EXISTS `b_event_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_event_type` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(18) NOT NULL DEFAULT '150',
  `EVENT_TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'email',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_1` (`EVENT_NAME`,`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_event_type`
--

LOCK TABLES `b_event_type` WRITE;
/*!40000 ALTER TABLE `b_event_type` DISABLE KEYS */;
INSERT INTO `b_event_type` VALUES (1,'ru','NEW_USER','Зарегистрировался новый пользователь','\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n',1,'email'),(2,'ru','USER_INFO','Информация о пользователе','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',2,'email'),(3,'ru','NEW_USER_CONFIRM','Подтверждение регистрации нового пользователя','\n\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n#CONFIRM_CODE# - Код подтверждения\n',3,'email'),(4,'ru','USER_PASS_REQUEST','Запрос на смену пароля','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',4,'email'),(5,'ru','USER_PASS_CHANGED','Подтверждение смены пароля','\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n',5,'email'),(6,'ru','USER_INVITE','Приглашение на сайт нового пользователя','#ID# - ID пользователя\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#PASSWORD# - пароль пользователя \n#CHECKWORD# - Контрольная строка для смены пароля\n#XML_ID# - ID пользователя для связи с внешними источниками\n',6,'email'),(7,'ru','FEEDBACK_FORM','Отправка сообщения через форму обратной связи','#AUTHOR# - Автор сообщения\n#AUTHOR_EMAIL# - Email автора сообщения\n#TEXT# - Текст сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма',7,'email'),(8,'ru','MAIN_MAIL_CONFIRM_CODE','Подтверждение email-адреса отправителя','\n\n#EMAIL_TO# - Email-адрес для подтверждения\n#MESSAGE_SUBJECT# - Тема сообщения\n#CONFIRM_CODE# - Код подтверждения',8,'email'),(9,'ru','SMS_USER_CONFIRM_NUMBER','Подтверждение номера телефона по СМС','#USER_PHONE# - номер телефона\n#CODE# - код подтверждения\n',100,'sms'),(10,'ru','SMS_USER_RESTORE_PASSWORD','Восстановление пароля через СМС','#USER_PHONE# - номер телефона\n#CODE# - код для восстановления\n',100,'sms'),(11,'en','NEW_USER','New user was registered','\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#USER_IP# - User IP\n#USER_HOST# - User Host\n',1,'email'),(12,'en','USER_INFO','Account Information','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',2,'email'),(13,'en','NEW_USER_CONFIRM','New user registration confirmation','\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - E-mail\n#NAME# - First name\n#LAST_NAME# - Last name\n#USER_IP# - User IP\n#USER_HOST# - User host\n#CONFIRM_CODE# - Confirmation code\n',3,'email'),(14,'en','USER_PASS_REQUEST','Password Change Request','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',4,'email'),(15,'en','USER_PASS_CHANGED','Password Change Confirmation','\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n',5,'email'),(16,'en','USER_INVITE','Invitation of a new site user','#ID# - User ID\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#PASSWORD# - User password \n#CHECKWORD# - Password check string\n#XML_ID# - User ID to link with external data sources\n\n',6,'email'),(17,'en','FEEDBACK_FORM','Sending a message using a feedback form','#AUTHOR# - Message author\n#AUTHOR_EMAIL# - Author\'s e-mail address\n#TEXT# - Message text\n#EMAIL_FROM# - Sender\'s e-mail address\n#EMAIL_TO# - Recipient\'s e-mail address',7,'email'),(18,'en','MAIN_MAIL_CONFIRM_CODE','Confirm sender\'s email address','\n\n#EMAIL_TO# - confirmation email address\n#MESSAGE_SUBJECT# - Message subject\n#CONFIRM_CODE# - Confirmation code',8,'email'),(19,'en','SMS_USER_CONFIRM_NUMBER','Verify phone number using SMS','#USER_PHONE# - phone number\n#CODE# - confirmation code',100,'sms'),(20,'en','SMS_USER_RESTORE_PASSWORD','Recover password using SMS','#USER_PHONE# - phone number\n#CODE# - recovery confirmation code',100,'sms'),(21,'ru','NEW_BLOG_MESSAGE','Новое сообщение в блоге','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#MESSAGE_TEXT# - Текст сообщения\n#MESSAGE_DATE# - Дата сообщения\n#MESSAGE_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма',100,'email'),(22,'ru','NEW_BLOG_COMMENT','Новый комментарий в блоге','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#COMMENT_TITLE# - Заголовок комментария\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма',100,'email'),(23,'ru','NEW_BLOG_COMMENT2COMMENT','Новый комментарий на ваш комментарий в блоге','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#COMMENT_TITLE# - Заголовок комментария\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма',100,'email'),(24,'ru','NEW_BLOG_COMMENT_WITHOUT_TITLE','Новый комментарий в блоге (без темы)','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма',100,'email'),(25,'ru','NEW_BLOG_COMMENT2COMMENT_WITHOUT_TITLE','Новый комментарий на ваш комментарий в блоге (без темы)','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#COMMENT_TITLE# - Заголовок комментария\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма',100,'email'),(26,'ru','BLOG_YOUR_BLOG_TO_USER','Ваш блог был добавлен в друзья','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n',100,'email'),(27,'ru','BLOG_YOU_TO_BLOG','Вы были добавлены в друзья блога','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n',100,'email'),(28,'ru','BLOG_BLOG_TO_YOU','К вам в друзья был добавлен блог','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n',100,'email'),(29,'ru','BLOG_USER_TO_YOUR_BLOG','В ваш блог был добавлен друг','#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n',100,'email'),(30,'ru','BLOG_SONET_NEW_POST','Добавлено новое сообщение','#EMAIL_TO# - Email получателя письма\n#POST_ID# - ID сообщения\n#RECIPIENT_ID# - ID получателя\n#URL_ID# - URL страницы сообщения\n',100,'email'),(31,'ru','BLOG_SONET_NEW_COMMENT','Добавлен новый комментарий','#EMAIL_TO# - Email получателя письма\n#COMMENT_ID# - ID комментария\n#POST_ID# - ID сообщения\n#RECIPIENT_ID# - ID получателя\n#URL_ID# - URL страницы сообщения\n',100,'email'),(32,'ru','BLOG_SONET_POST_SHARE','Добавлен новый получатель сообщения','#EMAIL_TO# - Email получателя письма\n#POST_ID# - ID сообщения\n#RECIPIENT_ID# - ID получателя\n#URL_ID# - URL страницы сообщения\n',100,'email'),(33,'ru','BLOG_POST_BROADCAST','Добавлено новое сообщение','\n#MESSAGE_TITLE# - Тема сообщения\n#MESSAGE_TEXT# - Текст сообщения\n#MESSAGE_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_TO# - Email получателя письма',100,'email'),(34,'en','NEW_BLOG_MESSAGE','New blog message','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#MESSAGE_TEXT# - Message text\n#MESSAGE_DATE# - Message date\n#MESSAGE_PATH# - URL to message\n#AUTHOR# - Message author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email',100,'email'),(35,'en','NEW_BLOG_COMMENT','New comment in blog','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TITLE# - Comment title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email',100,'email'),(36,'en','NEW_BLOG_COMMENT2COMMENT','New comment for your in blog','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TITLE# - Comment title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email',100,'email'),(37,'en','NEW_BLOG_COMMENT_WITHOUT_TITLE','New comment in blog (without subject)','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email',100,'email'),(38,'en','NEW_BLOG_COMMENT2COMMENT_WITHOUT_TITLE','New comment for your in blog (without subject)','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email',100,'email'),(39,'en','BLOG_YOUR_BLOG_TO_USER','Your blog has been added to friends','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail',100,'email'),(40,'en','BLOG_YOU_TO_BLOG','You have been added to blog friends','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail',100,'email'),(41,'en','BLOG_BLOG_TO_YOU','A blog has been added to your friends','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail',100,'email'),(42,'en','BLOG_USER_TO_YOUR_BLOG','A friend has been added to your blog','#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail',100,'email'),(43,'en','BLOG_SONET_NEW_POST','New post added','#EMAIL_TO# - Recipient email\n#POST_ID# - Post ID\n#URL_ID# - Post URL',100,'email'),(44,'en','BLOG_SONET_NEW_COMMENT','Comment added','#EMAIL_TO# - Recipient email\n#COMMENT_ID# - Comment ID\n#POST_ID# - Post ID\n#URL_ID# - Post URL',100,'email'),(45,'en','BLOG_SONET_POST_SHARE','New recipient added','#EMAIL_TO# - Recipient email\n#POST_ID# - Post ID\n#URL_ID# - Post URL',100,'email'),(46,'en','BLOG_POST_BROADCAST','New post added','\n#MESSAGE_TITLE# - Post subject\n#MESSAGE_TEXT# - Post text \n#MESSAGE_PATH# - Post URL\n#AUTHOR# - Post author\n#EMAIL_TO# - E-mail recipient',100,'email'),(47,'en','CATALOG_PRODUCT_SUBSCRIBE_LIST_CONFIRM','Код подтверждения','\n#TOKEN# - Код подтверждения\n#TOKEN_URL# - Ссылка с кодом подтверждения\n#LIST_SUBSCRIBES# - Список подписок\n#URL_PARAMETERS# - Параметры ссылки для подтверждения кода доступа\n',100,'email'),(48,'en','CATALOG_PRODUCT_SUBSCRIBE_NOTIFY','Уведомление о поступлении товара','#USER_NAME# - имя пользователя\n#EMAIL_TO# - email пользователя\n#NAME# - название товара\n#PAGE_URL# - детальная страница товара\n#CHECKOUT_URL# - добавление товара в корзину\n#CHECKOUT_URL_PARAMETERS# - параметры ссылки добавления товара в корзину\n#PRODUCT_ID# - id товара для формирования ссылок\n#UNSUBSCRIBE_URL# - ссылка отписки от товара\n#UNSUBSCRIBE_URL_PARAMETERS# - параметры ссылки отписки от товара\n',100,'email'),(49,'en','CATALOG_PRODUCT_SUBSCRIBE_NOTIFY_REPEATED','Уведомление о товаре в магазине','#USER_NAME# - имя пользователя\n#EMAIL_TO# - email пользователя\n#NAME# - название товара\n#PAGE_URL# - детальная страница товара\n#PRODUCT_ID# - id товара для формирования ссылок\n#UNSUBSCRIBE_URL# - ссылка отписки от товара\n#UNSUBSCRIBE_URL_PARAMETERS# - параметры ссылки отписки от товара\n',100,'email'),(50,'ru','CATALOG_PRODUCT_SUBSCRIBE_LIST_CONFIRM','Код подтверждения','\n#TOKEN# - Код подтверждения\n#TOKEN_URL# - Ссылка с кодом подтверждения\n#LIST_SUBSCRIBES# - Список подписок\n#URL_PARAMETERS# - Параметры ссылки для подтверждения кода доступа\n',100,'email'),(51,'ru','CATALOG_PRODUCT_SUBSCRIBE_NOTIFY','Уведомление о поступлении товара','#USER_NAME# - имя пользователя\n#EMAIL_TO# - email пользователя\n#NAME# - название товара\n#PAGE_URL# - детальная страница товара\n#CHECKOUT_URL# - добавление товара в корзину\n#CHECKOUT_URL_PARAMETERS# - параметры ссылки добавления товара в корзину\n#PRODUCT_ID# - id товара для формирования ссылок\n#UNSUBSCRIBE_URL# - ссылка отписки от товара\n#UNSUBSCRIBE_URL_PARAMETERS# - параметры ссылки отписки от товара\n',100,'email'),(52,'ru','CATALOG_PRODUCT_SUBSCRIBE_NOTIFY_REPEATED','Уведомление о товаре в магазине','#USER_NAME# - имя пользователя\n#EMAIL_TO# - email пользователя\n#NAME# - название товара\n#PAGE_URL# - детальная страница товара\n#PRODUCT_ID# - id товара для формирования ссылок\n#UNSUBSCRIBE_URL# - ссылка отписки от товара\n#UNSUBSCRIBE_URL_PARAMETERS# - параметры ссылки отписки от товара\n',100,'email'),(53,'ru','NEW_FORUM_MESSAGE','Новое сообщение на форуме','\n			#FORUM_ID# - ID форума\n			#FORUM_NAME# - Название форума\n			#TOPIC_ID# - ID темы\n			#MESSAGE_ID# - ID сообщения\n			#TOPIC_TITLE# - Тема сообщения\n			#MESSAGE_TEXT# - Текст сообщения\n			#MESSAGE_DATE# - Дата сообщения\n			#AUTHOR# - Автор сообщения\n			#RECIPIENT# - Получатель сообщения\n			#TAPPROVED# - Тема сообщения показывается\n			#MAPPROVED# - Тело сообщения показывается\n			#PATH2FORUM# - Адрес сообщения\n			#FROM_EMAIL# - E-Mail для поля From письма',100,'email'),(54,'ru','NEW_FORUM_PRIV','Приватное письмо посетителю форума','\n			#FROM_NAME# - Автор сообщения\n			#FROM_EMAIL# - E-Mail автора сообщения\n			#TO_NAME# - Имя получателя сообщения\n			#TO_EMAIL# - E-Mail получателя сообщения\n			#SUBJECT# - Тема сообщения\n			#MESSAGE# - Тело сообщения\n			#MESSAGE_DATE# - Дата сообщения',100,'email'),(55,'ru','NEW_FORUM_PRIVATE_MESSAGE','Приватное сообщение','\n			#FROM_NAME# - Имя автора сообщения\n			#FROM_USER_ID# - ID автора сообщения\n			#FROM_EMAIL# - E-Mail автора сообщения\n			#TO_NAME# - Имя получателя сообщения\n			#TO_USER_ID# - ID получателя сообщения\n			#TO_EMAIL# - E-Mail получателя сообщения\n			#SUBJECT# - Тема сообщения\n			#MESSAGE# - Текст сообщения\n			#MESSAGE_DATE# - Дата сообщения\n			#MESSAGE_LINK# - Ссылка на сообщение',100,'email'),(56,'ru','EDIT_FORUM_MESSAGE','Изменение сообщения на форуме','\n			#FORUM_ID# - ID форума\n			#FORUM_NAME# - Название форума\n			#TOPIC_ID# - ID темы\n			#MESSAGE_ID# - ID сообщения\n			#TOPIC_TITLE# - Тема сообщения\n			#MESSAGE_TEXT# - Текст сообщения\n			#MESSAGE_DATE# - Дата сообщения\n			#AUTHOR# - Автор сообщения\n			#RECIPIENT# - Получатель сообщения\n			#TAPPROVED# - Тема сообщения показывается\n			#MAPPROVED# - Тело сообщения показывается\n			#PATH2FORUM# - Адрес сообщения\n			#FROM_EMAIL# - E-Mail для поля From письма',100,'email'),(57,'en','NEW_FORUM_MESSAGE','New forum message','\n			#FORUM_ID# - Forum ID\n			#FORUM_NAME# - Forum name\n			#TOPIC_ID# - Topic ID\n			#MESSAGE_ID# - Message ID\n			#TOPIC_TITLE# - Topic title\n			#MESSAGE_TEXT# - Message text\n			#MESSAGE_DATE# - Message date\n			#AUTHOR# - Message author\n			#RECIPIENT# - E-Mail recipient\n			#TAPPROVED# - Message topic is approved\n			#MAPPROVED# - Message is approved\n			#PATH2FORUM# - Message Url\n			#FROM_EMAIL# - E-Mail for From field of the EMail',100,'email'),(58,'en','NEW_FORUM_PRIV','Private message for forum user','\n			#FROM_NAME# - Name of the sender\n			#FROM_EMAIL# - E-Mail of the sender\n			#TO_NAME# - Name of recipient\n			#TO_EMAIL# - E-Mail of recipient\n			#SUBJECT# - Topic\n			#MESSAGE# - Message\n			#MESSAGE_DATE# - Date',100,'email'),(59,'en','NEW_FORUM_PRIVATE_MESSAGE','Private message for forum user','\n			#FROM_NAME# - Name of the sender\n			#FROM_USER_ID# - ID of the sender\n			#FROM_EMAIL# - E-Mail of the sender\n			#TO_NAME# - Name of recipient\n			#TO_USER_ID# - ID of recipient\n			#TO_EMAIL# - E-Mail of recipient\n			#SUBJECT# - Topic\n			#MESSAGE# - Message\n			#MESSAGE_DATE# - Date\n			#MESSAGE_LINK# - Link to message',100,'email'),(60,'en','EDIT_FORUM_MESSAGE','Changing forum message','\n			#FORUM_ID# - Forum ID\n			#FORUM_NAME# - Forum name\n			#TOPIC_ID# - Topic ID\n			#MESSAGE_ID# - Message ID\n			#TOPIC_TITLE# - Topic title\n			#MESSAGE_TEXT# - Message text\n			#MESSAGE_DATE# - Message date\n			#AUTHOR# - Message author\n			#RECIPIENT# - E-Mail recipient\n			#TAPPROVED# - Message topic is approved\n			#MAPPROVED# - Message is approved\n			#PATH2FORUM# - Message Url\n			#FROM_EMAIL# - E-Mail for From field of the EMail',100,'email'),(61,'ru','FORUM_NEW_MESSAGE_MAIL','Новое сообщение на форуме в режиме общения по E-Mail','#FORUM_NAME# - Название форума\n#AUTHOR# - Автор сообщения\n#FROM_EMAIL# - E-Mail для поля From письма\n#RECIPIENT# - Получатель сообщения\n#TOPIC_TITLE# - Тема сообщения\n#MESSAGE_TEXT# - Текст сообщения\n#PATH2FORUM# - Адрес сообщения\n#MESSAGE_DATE# - Дата сообщения\n#FORUM_EMAIL# - Е-Mail адрес для добавления сообщений на форум\n#FORUM_ID# - ID форума\n#TOPIC_ID# - ID темы \n#MESSAGE_ID# - ID сообщения\n#TAPPROVED# - Тема опубликована\n#MAPPROVED# - Сообщение опубликовано\n',100,'email'),(62,'en','FORUM_NEW_MESSAGE_MAIL','New message at the forum (e-mail messaging mode)','#FORUM_NAME# - Forum name\n#AUTHOR# - Message author\n#FROM_EMAIL# - E-Mail in the &amp;From&amp; field\n#RECIPIENT# - Message recipient\n#TOPIC_TITLE# - Message subject\n#MESSAGE_TEXT# - Message text\n#PATH2FORUM# - Message URL\n#MESSAGE_DATE# - Message date\n#FORUM_EMAIL# - E-Mail to add messages to the forum \n#FORUM_ID# - Forum ID\n#TOPIC_ID# - Topic ID \n#MESSAGE_ID# - Message ID\n#TAPPROVED# - Topic approved and published\n#MAPPROVED# - Message approved and published\n',100,'email'),(63,'ru','SALE_NEW_ORDER','Новый заказ','#ORDER_ID# - код заказа\n#ORDER_ACCOUNT_NUMBER_ENCODE# - код заказа(для ссылок)\n#ORDER_REAL_ID# - реальный ID заказа\n#ORDER_DATE# - дата заказа\n#ORDER_USER# - заказчик\n#PRICE# - сумма заказа\n#EMAIL# - E-Mail заказчика\n#BCC# - E-Mail скрытой копии\n#ORDER_LIST# - состав заказа\n#ORDER_PUBLIC_URL# - ссылка для просмотра заказа без авторизации (требуется настройка в модуле интернет-магазина)\n#SALE_EMAIL# - E-Mail отдела продаж',100,'email'),(64,'ru','SALE_NEW_ORDER_RECURRING','Новый заказ на продление подписки','#ORDER_ID# - код заказа\n#ORDER_ACCOUNT_NUMBER_ENCODE# - код заказа(для ссылок)\n#ORDER_REAL_ID# - реальный ID заказа\n#ORDER_DATE# - дата заказа\n#ORDER_USER# - заказчик\n#PRICE# - сумма заказа\n#EMAIL# - E-Mail заказчика\n#BCC# - E-Mail скрытой копии\n#ORDER_LIST# - состав заказа\n#SALE_EMAIL# - E-Mail отдела продаж',100,'email'),(65,'ru','SALE_ORDER_REMIND_PAYMENT','Напоминание об оплате заказа','#ORDER_ID# - код заказа\n#ORDER_ACCOUNT_NUMBER_ENCODE# - код заказа(для ссылок)\n#ORDER_REAL_ID# - реальный ID заказа\n#ORDER_DATE# - дата заказа\n#ORDER_USER# - заказчик\n#PRICE# - сумма заказа\n#EMAIL# - E-Mail заказчика\n#BCC# - E-Mail скрытой копии\n#ORDER_LIST# - состав заказа\n#ORDER_PUBLIC_URL# - ссылка для просмотра заказа без авторизации (требуется настройка в модуле интернет-магазина)\n#SALE_EMAIL# - E-Mail отдела продаж',100,'email'),(66,'ru','SALE_ORDER_CANCEL','Отмена заказа','#ORDER_ID# - код заказа\n#ORDER_ACCOUNT_NUMBER_ENCODE# - код заказа(для ссылок)\n#ORDER_REAL_ID# - реальный ID заказа\n#ORDER_DATE# - дата заказа\n#EMAIL# - E-Mail пользователя\n#ORDER_CANCEL_DESCRIPTION# - причина отмены\n#ORDER_PUBLIC_URL# - ссылка для просмотра заказа без авторизации (требуется настройка в модуле интернет-магазина)\n#SALE_EMAIL# - E-Mail отдела продаж',100,'email'),(67,'ru','SALE_ORDER_PAID','Заказ оплачен','#ORDER_ID# - код заказа\n#ORDER_ACCOUNT_NUMBER_ENCODE# - код заказа(для ссылок)\n#ORDER_REAL_ID# - реальный ID заказа\n#ORDER_DATE# - дата заказа\n#EMAIL# - E-Mail пользователя\n#ORDER_PUBLIC_URL# - ссылка для просмотра заказа без авторизации (требуется настройка в модуле интернет-магазина)\n#SALE_EMAIL# - E-Mail отдела продаж',100,'email'),(68,'ru','SALE_ORDER_DELIVERY','Доставка заказа разрешена','#ORDER_ID# - код заказа\n#ORDER_ACCOUNT_NUMBER_ENCODE# - код заказа(для ссылок)\n#ORDER_REAL_ID# - реальный ID заказа\n#ORDER_DATE# - дата заказа\n#EMAIL# - E-Mail пользователя\n#ORDER_PUBLIC_URL# - ссылка для просмотра заказа без авторизации (требуется настройка в модуле интернет-магазина)\n#SALE_EMAIL# - E-Mail отдела продаж',100,'email'),(69,'ru','SALE_RECURRING_CANCEL','Подписка отменена','#ORDER_ID# - код заказа\n#ORDER_ACCOUNT_NUMBER_ENCODE# - код заказа(для ссылок)\n#ORDER_REAL_ID# - реальный ID заказа\n#ORDER_DATE# - дата заказа\n#EMAIL# - E-Mail пользователя\n#CANCELED_REASON# - причина отмены\n#SALE_EMAIL# - E-Mail отдела продаж',100,'email'),(70,'ru','SALE_SUBSCRIBE_PRODUCT','Уведомление о поступлении товара','#USER_NAME# - имя пользователя\n#EMAIL# - email пользователя\n#NAME# - название товара\n#PAGE_URL# - детальная страница товара',100,'email'),(71,'ru','SALE_ORDER_TRACKING_NUMBER','Уведомление об изменении идентификатора почтового отправления','#ORDER_ID# - код заказа\n#ORDER_ACCOUNT_NUMBER_ENCODE# - код заказа(для ссылок)\n#ORDER_REAL_ID# - реальный ID заказа\n#ORDER_DATE# - дата заказа\n#ORDER_USER# - заказчик\n#ORDER_TRACKING_NUMBER# - идентификатор почтового отправления\n#ORDER_PUBLIC_URL# - ссылка для просмотра заказа без авторизации (требуется настройка в модуле интернет-магазина)\n#EMAIL# - E-Mail заказчика\n#BCC# - E-Mail скрытой копии\n#SALE_EMAIL# - E-Mail отдела продаж',100,'email'),(72,'ru','SALE_CHECK_PRINT','Уведомление о печати чека','#ORDER_ID# - код заказа\n#ORDER_DATE# - дата заказа\n#ORDER_USER# - заказчик\n#ORDER_ACCOUNT_NUMBER_ENCODE# - код заказа(для ссылок)\n#ORDER_PUBLIC_URL# - ссылка для просмотра заказа без авторизации (требуется настройка в модуле интернет-магазина)\n#CHECK_LINK# - ссылка на чек',100,'email'),(73,'ru','SALE_CHECK_PRINT_ERROR','Уведомление об ошибке при печати чека','#ORDER_ACCOUNT_NUMBER# - код заказа\n#ORDER_DATE# - дата заказа\n#ORDER_ID# - ID заказа\n#CHECK_ID# - номер чека',100,'email'),(74,'ru','SALE_ORDER_SHIPMENT_STATUS_CHANGED','Уведомление об изменении статуса почтового отправления','#SHIPMENT_NO# - номер отгрузки\n#SHIPMENT_DATE# - дата отгрузки\n#ORDER_NO# - номер заказа\n#ORDER_DATE# - дата заказа\n#STATUS_NAME# - название статуса\n#STATUS_DESCRIPTION# - описание статуса\n#TRACKING_NUMBER# - идентификатор почтового отправления\n#EMAIL# - кому будет отправлено письмо\n#BCC# - кому будет отправлена копия письма\n#ORDER_USER# - заказчик\n#DELIVERY_NAME# - наименование службы доставки\n#DELIVERY_TRACKING_URL# - ссылка на сайте службы доставке, где можно подробнее узнать о статусе отправления\n#ORDER_ACCOUNT_NUMBER_ENCODE# - код заказа(для ссылок)\n#ORDER_PUBLIC_URL# - ссылка для просмотра заказа без авторизации (требуется настройка в модуле интернет-магазина)\n#ORDER_DETAIL_URL# - ссылка для просмотра подробной информации о заказе',100,'email'),(75,'ru','SALE_STATUS_CHANGED_F','Изменение статуса заказа на  \"Выполнен\"','#ORDER_ID# - код заказа\n#ORDER_DATE# - дата заказа\n#ORDER_STATUS# - статус заказа\n#EMAIL# - E-Mail пользователя\n#ORDER_DESCRIPTION# - описание статуса заказа\n#TEXT# - текст\n#SALE_EMAIL# - E-Mail отдела продаж\n#ORDER_PUBLIC_URL# - ссылка для просмотра заказа без авторизации (требуется настройка в модуле интернет-магазина)\n',100,'email'),(76,'ru','SALE_STATUS_CHANGED_N','Изменение статуса заказа на  \"Принят, ожидается оплата\"','#ORDER_ID# - код заказа\n#ORDER_DATE# - дата заказа\n#ORDER_STATUS# - статус заказа\n#EMAIL# - E-Mail пользователя\n#ORDER_DESCRIPTION# - описание статуса заказа\n#TEXT# - текст\n#SALE_EMAIL# - E-Mail отдела продаж\n#ORDER_PUBLIC_URL# - ссылка для просмотра заказа без авторизации (требуется настройка в модуле интернет-магазина)\n',100,'email'),(77,'en','SALE_NEW_ORDER','New order','#ORDER_ID# - order ID\n#ORDER_ACCOUNT_NUMBER_ENCODE# - order ID (for URL\'s)\n#ORDER_REAL_ID# - real order ID\n#ORDER_DATE# - order date\n#ORDER_USER# - customer\n#PRICE# - order amount\n#EMAIL# - customer e-mail\n#BCC# - BCC e-mail\n#ORDER_LIST# - order contents\n#ORDER_PUBLIC_URL# - order view link for unauthorized users (requires configuration in the e-Store module settings)\n#SALE_EMAIL# - sales dept. e-mail',100,'email'),(78,'en','SALE_NEW_ORDER_RECURRING','New Order for Subscription Renewal','#ORDER_ID# - order ID\n#ORDER_ACCOUNT_NUMBER_ENCODE# - order ID (for URL\'s)\n#ORDER_REAL_ID# - real order ID\n#ORDER_DATE# - order date\n#ORDER_USER# - customer\n#PRICE# - order amount\n#EMAIL# - customer e-mail\n#BCC# - BCC e-mail\n#ORDER_LIST# - order contents\n#SALE_EMAIL# - sales dept. e-mail',100,'email'),(79,'en','SALE_ORDER_REMIND_PAYMENT','Order Payment Reminder','#ORDER_ID# - order ID\n#ORDER_ACCOUNT_NUMBER_ENCODE# - order ID (for URL\'s)\n#ORDER_REAL_ID# - real order ID\n#ORDER_DATE# - order date\n#ORDER_USER# - customer\n#PRICE# - order amount\n#EMAIL# - customer e-mail\n#BCC# - BCC e-mail\n#ORDER_LIST# - order contents\n#ORDER_PUBLIC_URL# - order view link for unauthorized users (requires configuration in the e-Store module settings)\n#SALE_EMAIL# - sales dept. e-mail',100,'email'),(80,'en','SALE_ORDER_CANCEL','Cancel order','#ORDER_ID# - order ID\n#ORDER_ACCOUNT_NUMBER_ENCODE# - order ID (for URL\'s)\n#ORDER_REAL_ID# - real order ID\n#ORDER_DATE# - order date\n#EMAIL# - customer e-mail\n#ORDER_LIST# - order contents\n#ORDER_CANCEL_DESCRIPTION# - reason for cancellation\n#ORDER_PUBLIC_URL# - order view link for unauthorized users (requires configuration in the e-Store module settings)\n#SALE_EMAIL# - sales dept. e-mail\n',100,'email'),(81,'en','SALE_ORDER_PAID','Paid order','#ORDER_ID# - order ID\n#ORDER_ACCOUNT_NUMBER_ENCODE# - order ID (for URL\'s)\n#ORDER_REAL_ID# - real order ID\n#ORDER_DATE# - order date\n#EMAIL# - customer e-mail\n#ORDER_PUBLIC_URL# - order view link for unauthorized users (requires configuration in the e-Store module settings)\n#SALE_EMAIL# - sales dept. e-mail',100,'email'),(82,'en','SALE_ORDER_DELIVERY','Order delivery allowed','#ORDER_ID# - order ID\n#ORDER_ACCOUNT_NUMBER_ENCODE# - order ID (for URL\'s)\n#ORDER_REAL_ID# - real order ID\n#ORDER_DATE# - order date\n#EMAIL# - customer e-mail\n#ORDER_PUBLIC_URL# - order view link for unauthorized users (requires configuration in the e-Store module settings)\n#SALE_EMAIL# - sales dept. e-mail',100,'email'),(83,'en','SALE_RECURRING_CANCEL','Recurring payment canceled','#ORDER_ID# - order ID\n#ORDER_ACCOUNT_NUMBER_ENCODE# - order ID (for URL\'s)\n#ORDER_REAL_ID# - real order ID\n#ORDER_DATE# - order date\n#EMAIL# - customer e-mail\n#CANCELED_REASON# - reason for cancellation\n#SALE_EMAIL# - sales dept. e-mail',100,'email'),(84,'en','SALE_SUBSCRIBE_PRODUCT','Back in stock notification','#USER_NAME# - user name\n#EMAIL# - user e-mail \n#NAME# - product name\n#PAGE_URL# - product details page',100,'email'),(85,'en','SALE_ORDER_TRACKING_NUMBER','Notification of change in tracking number ','#ORDER_ID# - order ID\n#ORDER_ACCOUNT_NUMBER_ENCODE# - order ID (for URL\'s)\n#ORDER_REAL_ID# - real order ID\n#ORDER_DATE# - order date\n#ORDER_USER# - customer\n#ORDER_TRACKING_NUMBER# - tracking number\n#ORDER_PUBLIC_URL# - order view link for unauthorized users (requires configuration in the e-Store module settings)\n#EMAIL# - customer e-mail\n#BCC# - BCC e-mail\n#SALE_EMAIL# - sales dept. e-mail',100,'email'),(86,'en','SALE_CHECK_PRINT','Receipt printout notification','#ORDER_ID# - order ID\n#ORDER_DATE# - order date\n#ORDER_USER# - customer\n#ORDER_ACCOUNT_NUMBER_ENCODE# - order Id for use in links\n#ORDER_PUBLIC_URL# - order view link for unauthorized users (requires configuration in the e-Store module settings)\n#CHECK_LINK# - receipt link',100,'email'),(87,'en','SALE_CHECK_PRINT_ERROR','Receipt printout error notification','#ORDER_ACCOUNT_NUMBER# - order id\n#ORDER_DATE# - order date\n#ORDER_ID# - order id\n#CHECK_ID# - receipt id',100,'email'),(88,'en','SALE_ORDER_SHIPMENT_STATUS_CHANGED','Package status update','#SHIPMENT_NO# - shipment ID\n#SHIPMENT_DATE# - shipped on\n#ORDER_NO# - order #\n#ORDER_DATE# - order date\n#STATUS_NAME# - status name\n#STATUS_DESCRIPTION# - status description\n#TRACKING_NUMBER# - tracking number\n#EMAIL# - notify e-mail address\n#BCC# - send copy to address\n#ORDER_USER# - customer\n#DELIVERY_NAME# - delivery service name\n#DELIVERY_TRACKING_URL# - delivery service website for more tracking details\n#ORDER_ACCOUNT_NUMBER_ENCODE# - order ID (for links)\n#ORDER_PUBLIC_URL# - order view link for unauthorized users (requires configuration in the e-Store module settings)\n#ORDER_DETAIL_URL# - order details URL',100,'email'),(89,'en','SALE_STATUS_CHANGED_F','Changing order status to \"\"','#ORDER_ID# - order ID\n#ORDER_DATE# - order date\n#ORDER_STATUS# - order status\n#EMAIL# - customer e-mail\n#ORDER_DESCRIPTION# - order status description\n#TEXT# - text\n#SALE_EMAIL# - Sales department e-mail\n#ORDER_PUBLIC_URL# - order view link for unauthorized users (requires configuration in the e-Store module settings)\n',100,'email'),(90,'en','SALE_STATUS_CHANGED_N','Changing order status to \"\"','#ORDER_ID# - order ID\n#ORDER_DATE# - order date\n#ORDER_STATUS# - order status\n#EMAIL# - customer e-mail\n#ORDER_DESCRIPTION# - order status description\n#TEXT# - text\n#SALE_EMAIL# - Sales department e-mail\n#ORDER_PUBLIC_URL# - order view link for unauthorized users (requires configuration in the e-Store module settings)\n',100,'email'),(91,'ru','VIRUS_DETECTED','Обнаружен вирус','#EMAIL# - E-Mail администратора сайта (из настроек главного модуля)',100,'email'),(92,'en','VIRUS_DETECTED','Virus detected','#EMAIL# - Site administrator\'s e-mail address (from the Kernel module settings)',100,'email'),(93,'ru','SENDER_SUBSCRIBE_CONFIRM','Подтверждение подписки','#EMAIL# - адрес подписки\n#DATE# - дата добавления/изменения адреса\n#CONFIRM_URL# - адрес подтверждения\n#MAILING_LIST# - список подписок\n',100,'email'),(94,'en','SENDER_SUBSCRIBE_CONFIRM','Confirm subscription','#EMAIL# - subscription URL\n#DATE# - the date the address was added or updated\n#CONFIRM_URL# - confirmation URL\n#MAILING_LIST# - subscriptions\n',100,'email'),(95,'ru','SUBSCRIBE_CONFIRM','Подтверждение подписки','#ID# - идентификатор подписки\n#EMAIL# - адрес подписки\n#CONFIRM_CODE# - код подтверждения\n#SUBSCR_SECTION# - раздел, где находится страница редактирования подписки (задается в настройках)\n#USER_NAME# - имя подписчика (может отсутствовать)\n#DATE_SUBSCR# - дата добавления/изменения адреса\n',100,'email'),(96,'en','SUBSCRIBE_CONFIRM','Confirmation of subscription','#ID# - subscription ID\n#EMAIL# - subscription email\n#CONFIRM_CODE# - confirmation code\n#SUBSCR_SECTION# - section with subscription edit page (specifies in the settings)\n#USER_NAME# - subscriber\'s name (optional)\n#DATE_SUBSCR# - date of adding/change of address\n',100,'email'),(97,'ru','VOTE_FOR','Новый голос','#ID# - ID результата голосования\n#TIME# - время голосования\n#VOTE_TITLE# - наименование опроса\n#VOTE_DESCRIPTION# - описание опроса\n#VOTE_ID# - ID опроса\n#CHANNEL# - наименование группы опроса\n#CHANNEL_ID# - ID группы опроса\n#VOTER_ID# - ID проголосовавшего посетителя\n#USER_NAME# - ФИО пользователя\n#LOGIN# - логин\n#USER_ID# - ID пользователя\n#STAT_GUEST_ID# - ID посетителя модуля статистики\n#SESSION_ID# - ID сессии модуля статистики\n#IP# - IP адрес\n#VOTE_STATISTIC# - Сводная статистика опроса типа ( - Вопрос - Ответ )\n#URL# - Путь к опросу\n',100,'email'),(98,'en','VOTE_FOR','New vote','#ID# - Vote result ID\n#TIME# - Time of vote\n#VOTE_TITLE# - Poll name\n#VOTE_DESCRIPTION# - Poll description\n#VOTE_ID# - Poll ID\n#CHANNEL# - Poll group name\n#CHANNEL_ID# - Poll group ID\n#VOTER_ID# - Voter\'s user ID\n#USER_NAME# - User full name\n#LOGIN# - login\n#USER_ID# - User ID\n#STAT_GUEST_ID# - Visitor ID in web analytics module\n#SESSION_ID# - Session ID in web analytics module\n#IP# - IP address\n#VOTE_STATISTIC# - Summary statistics of this poll type ( - Question - Answer)\n#URL# - Poll URL',100,'email');
/*!40000 ALTER TABLE `b_event_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_favorite`
--

DROP TABLE IF EXISTS `b_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_favorite` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  `COMMENTS` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `CODE_ID` int(18) DEFAULT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `MENU_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_favorite`
--

LOCK TABLES `b_favorite` WRITE;
/*!40000 ALTER TABLE `b_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file`
--

DROP TABLE IF EXISTS `b_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HEIGHT` int(18) DEFAULT NULL,
  `WIDTH` int(18) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'IMAGE',
  `SUBDIR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ORIGINAL_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HANDLER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FILE_EXTERNAL_ID` (`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file`
--

LOCK TABLES `b_file` WRITE;
/*!40000 ALTER TABLE `b_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_preview`
--

DROP TABLE IF EXISTS `b_file_preview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file_preview` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FILE_ID` int(18) NOT NULL,
  `PREVIEW_ID` int(18) DEFAULT NULL,
  `PREVIEW_IMAGE_ID` int(18) DEFAULT NULL,
  `CREATED_AT` datetime NOT NULL,
  `TOUCHED_AT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FILE_PL_TOUCH` (`TOUCHED_AT`),
  KEY `IX_B_FILE_PL_FILE` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_preview`
--

LOCK TABLES `b_file_preview` WRITE;
/*!40000 ALTER TABLE `b_file_preview` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file_preview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_file_search`
--

DROP TABLE IF EXISTS `b_file_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_file_search` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SESS_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `F_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_DIR` int(11) NOT NULL DEFAULT '0',
  `F_SIZE` int(11) NOT NULL DEFAULT '0',
  `F_TIME` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_file_search`
--

LOCK TABLES `b_file_search` WRITE;
/*!40000 ALTER TABLE `b_file_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_file_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_filters`
--

DROP TABLE IF EXISTS `b_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_filters` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) DEFAULT NULL,
  `FILTER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELDS` text COLLATE utf8_unicode_ci NOT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) DEFAULT NULL,
  `SORT_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_filters`
--

LOCK TABLES `b_filters` WRITE;
/*!40000 ALTER TABLE `b_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_finder_dest`
--

DROP TABLE IF EXISTS `b_finder_dest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_finder_dest` (
  `USER_ID` int(11) NOT NULL,
  `CODE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_USER_ID` int(11) DEFAULT NULL,
  `CODE_TYPE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEXT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_USE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`,`CODE`,`CONTEXT`),
  KEY `IX_FINDER_DEST` (`CODE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_finder_dest`
--

LOCK TABLES `b_finder_dest` WRITE;
/*!40000 ALTER TABLE `b_finder_dest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_finder_dest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form`
--

DROP TABLE IF EXISTS `b_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `BUTTON` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `C_SORT` int(18) DEFAULT '100',
  `FIRST_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_ID` int(18) DEFAULT NULL,
  `USE_CAPTCHA` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'html',
  `FORM_TEMPLATE` text COLLATE utf8_unicode_ci,
  `USE_DEFAULT_TEMPLATE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SHOW_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAIL_EVENT_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SHOW_RESULT_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRINT_RESULT_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_RESULT_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_RESULT_TEMPLATE` text COLLATE utf8_unicode_ci,
  `TABLE_RESULT_TEMPLATE` text COLLATE utf8_unicode_ci,
  `USE_RESTRICTIONS` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `RESTRICT_USER` int(5) DEFAULT '0',
  `RESTRICT_TIME` int(10) DEFAULT '0',
  `RESTRICT_STATUS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_EVENT1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_EVENT2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_EVENT3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SID` (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form`
--

LOCK TABLES `b_form` WRITE;
/*!40000 ALTER TABLE `b_form` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_2_group`
--

DROP TABLE IF EXISTS `b_form_2_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_2_group` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `GROUP_ID` int(18) NOT NULL DEFAULT '0',
  `PERMISSION` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `IX_FORM_ID` (`FORM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_2_group`
--

LOCK TABLES `b_form_2_group` WRITE;
/*!40000 ALTER TABLE `b_form_2_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_2_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_2_mail_template`
--

DROP TABLE IF EXISTS `b_form_2_mail_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_2_mail_template` (
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `MAIL_TEMPLATE_ID` int(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FORM_ID`,`MAIL_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_2_mail_template`
--

LOCK TABLES `b_form_2_mail_template` WRITE;
/*!40000 ALTER TABLE `b_form_2_mail_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_2_mail_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_2_site`
--

DROP TABLE IF EXISTS `b_form_2_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_2_site` (
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`FORM_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_2_site`
--

LOCK TABLES `b_form_2_site` WRITE;
/*!40000 ALTER TABLE `b_form_2_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_2_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_answer`
--

DROP TABLE IF EXISTS `b_form_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_answer` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FIELD_ID` int(18) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `FIELD_WIDTH` int(18) DEFAULT NULL,
  `FIELD_HEIGHT` int(18) DEFAULT NULL,
  `FIELD_PARAM` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_FIELD_ID` (`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_answer`
--

LOCK TABLES `b_form_answer` WRITE;
/*!40000 ALTER TABLE `b_form_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_crm`
--

DROP TABLE IF EXISTS `b_form_crm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_crm` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `AUTH_HASH` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_crm`
--

LOCK TABLES `b_form_crm` WRITE;
/*!40000 ALTER TABLE `b_form_crm` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_crm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_crm_field`
--

DROP TABLE IF EXISTS `b_form_crm_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_crm_field` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `LINK_ID` int(18) NOT NULL DEFAULT '0',
  `FIELD_ID` int(18) DEFAULT '0',
  `FIELD_ALT` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `CRM_FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `ix_b_form_crm_field_1` (`LINK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_crm_field`
--

LOCK TABLES `b_form_crm_field` WRITE;
/*!40000 ALTER TABLE `b_form_crm_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_crm_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_crm_link`
--

DROP TABLE IF EXISTS `b_form_crm_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_crm_link` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `CRM_ID` int(18) NOT NULL DEFAULT '0',
  `LINK_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_form_crm_link_1` (`FORM_ID`,`CRM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_crm_link`
--

LOCK TABLES `b_form_crm_link` WRITE;
/*!40000 ALTER TABLE `b_form_crm_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_crm_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_field`
--

DROP TABLE IF EXISTS `b_form_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_field` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TITLE` text COLLATE utf8_unicode_ci,
  `TITLE_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `ADDITIONAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `REQUIRED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IN_FILTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IN_RESULTS_TABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IN_EXCEL_TABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `FIELD_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_ID` int(18) DEFAULT NULL,
  `COMMENTS` text COLLATE utf8_unicode_ci,
  `FILTER_TITLE` text COLLATE utf8_unicode_ci,
  `RESULTS_TABLE_TITLE` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_FORM_ID` (`FORM_ID`),
  KEY `IX_SID` (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_field`
--

LOCK TABLES `b_form_field` WRITE;
/*!40000 ALTER TABLE `b_form_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_field_filter`
--

DROP TABLE IF EXISTS `b_form_field_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_field_filter` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FIELD_ID` int(18) NOT NULL DEFAULT '0',
  `PARAMETER_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FIELD_ID` (`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_field_filter`
--

LOCK TABLES `b_form_field_filter` WRITE;
/*!40000 ALTER TABLE `b_form_field_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_field_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_field_validator`
--

DROP TABLE IF EXISTS `b_form_field_validator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_field_validator` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `FIELD_ID` int(18) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'y',
  `C_SORT` int(18) DEFAULT '100',
  `VALIDATOR_SID` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `PARAMS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_FORM_ID` (`FORM_ID`),
  KEY `IX_FIELD_ID` (`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_field_validator`
--

LOCK TABLES `b_form_field_validator` WRITE;
/*!40000 ALTER TABLE `b_form_field_validator` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_field_validator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_menu`
--

DROP TABLE IF EXISTS `b_form_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_menu` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MENU` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FORM_ID` (`FORM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_menu`
--

LOCK TABLES `b_form_menu` WRITE;
/*!40000 ALTER TABLE `b_form_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_result`
--

DROP TABLE IF EXISTS `b_form_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_result` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `USER_ID` int(18) DEFAULT NULL,
  `USER_AUTH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `STAT_GUEST_ID` int(18) DEFAULT NULL,
  `STAT_SESSION_ID` int(18) DEFAULT NULL,
  `SENT_TO_CRM` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `IX_FORM_ID` (`FORM_ID`),
  KEY `IX_STATUS_ID` (`STATUS_ID`),
  KEY `IX_SENT_TO_CRM` (`SENT_TO_CRM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_result`
--

LOCK TABLES `b_form_result` WRITE;
/*!40000 ALTER TABLE `b_form_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_result_answer`
--

DROP TABLE IF EXISTS `b_form_result_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_result_answer` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `RESULT_ID` int(18) NOT NULL DEFAULT '0',
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `FIELD_ID` int(18) NOT NULL DEFAULT '0',
  `ANSWER_ID` int(18) DEFAULT NULL,
  `ANSWER_TEXT` text COLLATE utf8_unicode_ci,
  `ANSWER_TEXT_SEARCH` longtext COLLATE utf8_unicode_ci,
  `ANSWER_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ANSWER_VALUE_SEARCH` longtext COLLATE utf8_unicode_ci,
  `USER_TEXT` longtext COLLATE utf8_unicode_ci,
  `USER_TEXT_SEARCH` longtext COLLATE utf8_unicode_ci,
  `USER_DATE` datetime DEFAULT NULL,
  `USER_FILE_ID` int(18) DEFAULT NULL,
  `USER_FILE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_FILE_IS_IMAGE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_FILE_HASH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_FILE_SUFFIX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_FILE_SIZE` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RESULT_ID` (`RESULT_ID`),
  KEY `IX_FIELD_ID` (`FIELD_ID`),
  KEY `IX_ANSWER_ID` (`ANSWER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_result_answer`
--

LOCK TABLES `b_form_result_answer` WRITE;
/*!40000 ALTER TABLE `b_form_result_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_result_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_status`
--

DROP TABLE IF EXISTS `b_form_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_status` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DEFAULT_VALUE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CSS` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'statusgreen',
  `HANDLER_OUT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HANDLER_IN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAIL_EVENT_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FORM_ID` (`FORM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_status`
--

LOCK TABLES `b_form_status` WRITE;
/*!40000 ALTER TABLE `b_form_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_status_2_group`
--

DROP TABLE IF EXISTS `b_form_status_2_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_status_2_group` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `GROUP_ID` int(18) NOT NULL DEFAULT '0',
  `PERMISSION` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FORM_STATUS_GROUP` (`STATUS_ID`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_status_2_group`
--

LOCK TABLES `b_form_status_2_group` WRITE;
/*!40000 ALTER TABLE `b_form_status_2_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_status_2_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_form_status_2_mail_template`
--

DROP TABLE IF EXISTS `b_form_status_2_mail_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_form_status_2_mail_template` (
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `MAIL_TEMPLATE_ID` int(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`STATUS_ID`,`MAIL_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_form_status_2_mail_template`
--

LOCK TABLES `b_form_status_2_mail_template` WRITE;
/*!40000 ALTER TABLE `b_form_status_2_mail_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_form_status_2_mail_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum`
--

DROP TABLE IF EXISTS `b_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FORUM_GROUP_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(10) NOT NULL DEFAULT '150',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_HTML` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_ANCHOR` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_BIU` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_IMG` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_VIDEO` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_QUOTE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_CODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_FONT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_SMILES` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_UPLOAD` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_TABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_ALIGN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_UPLOAD_EXT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ALLOW_MOVE_TOPIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_TOPIC_TITLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_NL2BR` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_SIGNATURE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PATH2FORUM_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ASK_GUEST_EMAIL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USE_CAPTCHA` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `INDEXATION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DEDUPLICATION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `MODERATION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ORDER_BY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `ORDER_DIRECTION` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DESC',
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ru',
  `TOPICS` int(11) NOT NULL DEFAULT '0',
  `POSTS` int(11) NOT NULL DEFAULT '0',
  `LAST_POSTER_ID` int(11) DEFAULT NULL,
  `LAST_POSTER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_POST_DATE` datetime DEFAULT NULL,
  `LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `POSTS_UNAPPROVED` int(11) DEFAULT '0',
  `ABS_LAST_POSTER_ID` int(11) DEFAULT NULL,
  `ABS_LAST_POSTER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ABS_LAST_POST_DATE` datetime DEFAULT NULL,
  `ABS_LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `EVENT1` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'forum',
  `EVENT2` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'message',
  `EVENT3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HTML` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FORUM_SORT` (`SORT`),
  KEY `IX_FORUM_ACTIVE` (`ACTIVE`),
  KEY `IX_FORUM_GROUP_ID` (`FORUM_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum`
--

LOCK TABLES `b_forum` WRITE;
/*!40000 ALTER TABLE `b_forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum2site`
--

DROP TABLE IF EXISTS `b_forum2site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum2site` (
  `FORUM_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `PATH2FORUM_MESSAGE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FORUM_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum2site`
--

LOCK TABLES `b_forum2site` WRITE;
/*!40000 ALTER TABLE `b_forum2site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum2site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_dictionary`
--

DROP TABLE IF EXISTS `b_forum_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_dictionary` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_dictionary`
--

LOCK TABLES `b_forum_dictionary` WRITE;
/*!40000 ALTER TABLE `b_forum_dictionary` DISABLE KEYS */;
INSERT INTO `b_forum_dictionary` VALUES (1,'[ru] Словарь слов','W'),(2,'[ru] Словарь транслита','T'),(3,'[en] Bad words','W'),(4,'[en] Transliteration','T');
/*!40000 ALTER TABLE `b_forum_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_email`
--

DROP TABLE IF EXISTS `b_forum_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_email` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL_FORUM_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `FORUM_ID` int(11) NOT NULL,
  `SOCNET_GROUP_ID` int(11) DEFAULT NULL,
  `MAIL_FILTER_ID` int(11) NOT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USE_EMAIL` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL_GROUP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUBJECT_SUF` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USE_SUBJECT` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TEMPLATES_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOT_MEMBER_POST` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FORUM_EMAIL_FORUM_SOC` (`FORUM_ID`,`SOCNET_GROUP_ID`),
  KEY `IX_B_FORUM_EMAIL_FILTER_ID` (`MAIL_FILTER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_email`
--

LOCK TABLES `b_forum_email` WRITE;
/*!40000 ALTER TABLE `b_forum_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_file`
--

DROP TABLE IF EXISTS `b_forum_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_file` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FORUM_ID` int(18) DEFAULT NULL,
  `TOPIC_ID` int(20) DEFAULT NULL,
  `MESSAGE_ID` int(20) DEFAULT NULL,
  `FILE_ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `HITS` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FORUM_FILE_FILE` (`FILE_ID`),
  KEY `IX_FORUM_FILE_FORUM` (`FORUM_ID`),
  KEY `IX_FORUM_FILE_TOPIC` (`TOPIC_ID`),
  KEY `IX_FORUM_FILE_MESSAGE` (`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_file`
--

LOCK TABLES `b_forum_file` WRITE;
/*!40000 ALTER TABLE `b_forum_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_filter`
--

DROP TABLE IF EXISTS `b_forum_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_filter` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DICTIONARY_ID` int(11) DEFAULT NULL,
  `WORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PATTERN` text COLLATE utf8_unicode_ci,
  `REPLACEMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `USE_IT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PATTERN_CREATE` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FORUM_FILTER_2` (`USE_IT`),
  KEY `IX_B_FORUM_FILTER_3` (`PATTERN_CREATE`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_filter`
--

LOCK TABLES `b_forum_filter` WRITE;
/*!40000 ALTER TABLE `b_forum_filter` DISABLE KEYS */;
INSERT INTO `b_forum_filter` VALUES (1,1,'*пизд*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])([^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*([ПпPp]+)([ИиIi]+)([ЗзZz3]+)([ДдDd]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(2,1,'*пизж*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])([^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*([ПпPp]+)([ИиIi]+)([ЗзZz3]+)([ЖжGg]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(3,1,'*сра%','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])([^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*([СсCc]+)([РрPpRr]+)([АаAa]+)([[Цц]+([Аа]+|[Оо]+)]+|[[Тт]+([Ьь]+|)[Сс]+[Яя]+]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(4,1,'анобляд*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([АаAa]+)([НнNn]+)([ОоOo]+)([БбBb]+)([ЛлLl]+)([Яя]+)([ДдDd]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(5,1,'взъеб*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвVv]+)([ЗзZz3]+)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(6,1,'бля','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([БбBb]+)([ЛлLl]+)([Яя]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(7,1,'долбоеб*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ДдDd]+)([ОоOo]+)([ЛлLl]+)([БбBb]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(8,1,'дуроеб*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ДдDd]+)([УуUu]+)([РрPpRr]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(9,1,'еби','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ИиIi]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(10,1,'ебисти*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([СсCc]+)([ТтTt]+)([ИиIi]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(11,1,'ебическ*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([Чч]+)([ЁёЕеEe]+)([СсCc]+)([КкKk]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(12,1,'еблив*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([ИиIi]+)([ВвVv]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(13,1,'ебло*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([ОоOo]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(14,1,'еблыс*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([Ыы]+)([СсCc]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(15,1,'ебля','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([Яя]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(16,1,'ебс','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([СсCc]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(17,1,'ебукент*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([УуUu]+)([КкKk]+)([ЁёЕеEe]+)([НнNn]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(18,1,'ебурген*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([УуUu]+)([РрPpRr]+)([Гг]+)([ЁёЕеEe]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(19,1,'коноебит*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([КкKk]+)([ОоOo]+)([НнNn]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(20,1,'мозгоеб*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([МмMm]+)([ОоOo]+)([ЗзZz3]+)([Гг]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(21,1,'мудоеб*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([МмMm]+)([УуUu]+)([ДдDd]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(22,1,'однохуйствен*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ДдDd]+)([НнNn]+)([ОоOo]+)([ХхXx]+)([УуUu]+)([ЙйИиYy]+)([СсCc]+)([ТтTt]+)([ВвVv]+)([ЁёЕеEe]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(23,1,'охуе*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(24,1,'охуи*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ХхXx]+)([УуUu]+)([ИиIi]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(25,1,'охуя*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ХхXx]+)([УуUu]+)([Яя]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(26,1,'разъеба*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([РрPpRr]+)([АаAa]+)([ЗзZz3]+)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(27,1,'распиздон*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([РрPpRr]+)([АаAa]+)([СсCc]+)([ПпPp]+)([ИиIi]+)([ЗзZz3]+)([ДдDd]+)([ОоOo]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(28,1,'расхуюж*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([РрPpRr]+)([АаAa]+)([СсCc]+)([ХхXx]+)([УуUu]+)([Юю]+|[[Йй]+[Оо]+]+)([ЖжGg]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(29,1,'худоебин*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ДдDd]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(30,1,'хуе','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(31,1,'хуебрат*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([БбBb]+)([РрPpRr]+)([АаAa]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(32,1,'хуеглот*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([Гг]+)([ЛлLl]+)([ОоOo]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(33,1,'хуеплёт*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([ПпPp]+)([ЛлLl]+)([ЁёЕеEe]+|[[Йй]+[Оо]+]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(34,1,'хует*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(35,1,'хуила','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ИиIi]+)([ЛлLl]+)([АаAa]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(36,1,'хул?','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЛлLl]+).?)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(37,1,'хуя','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([Яя]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(38,1,'^бляд*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([БбBb]+)([ЛлLl]+)([Яя]+)([ДдDd]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(39,1,'^пидор*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ПпPp]+)([ИиIi]+)([ДдDd]+)([ОоOo]+)([РрPpRr]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(40,1,'^хуев*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([ВвVv]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(41,1,'^хуем*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([МмMm]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(42,1,'^хуй*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([ЙйИиYy]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(43,1,'^хуяк*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([КкKk]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(44,1,'^хуям*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([МмMm]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(45,1,'^хуяр*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([РрPpRr]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(46,1,'^хуяч*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([Чч]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(47,1,'^ъебал*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([ЛлLl]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(48,1,'^ъебан*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(49,1,'^ъебар*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([РрPpRr]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(50,1,'^ъебат*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(51,1,'^ъебен*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([ЁёЕеEe]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(52,1,'^ъеби','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(53,1,'^ъебис*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([СсCc]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(54,1,'^ъебит*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(55,1,'^ъёбля*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+|[[Йй]+[Оо]+]+)([БбBb]+)([ЛлLl]+)([Яя]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(56,1,'^ъёбну*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+|[[Йй]+[Оо]+]+)([БбBb]+)([НнNn]+)([УуUu]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(57,1,'^ъебу','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([УуUu]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(58,1,'^ъебуч*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([УуUu]+)([Чч]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(59,1,'^ъебыв*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([Ыы]+)([ВвVv]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(60,1,'/(?<=[s.,;:!?-#*|[]()])(?![Вв][ЕеЁё][Бб])(([ВвЗзСс]+|[Ввы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)|)([ЬьЪъ]+|)([ЁёЕеEe]+|[Йй]+[Оо]+|[Yy]+[Oo]+)([BbБб]+))(?=[s.,;:!?-#*|[]()])/is','','','','Y','PTTRN'),(61,3,'angry','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(a+n+g+r+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(62,3,'ass','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(a+s+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(63,3,'asshole','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(a+s+s+h+o+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(64,3,'banger','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+a+n+g+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(65,3,'bastard','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+a+s+t+a+r+d+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(66,3,'batter','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+a+t+t+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(67,3,'bicho','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+i+c+h+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(68,3,'bisexual','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+i+s+e+x+u+a+l+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(69,3,'bitch','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+i+t+c+h+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(70,3,'blumpkin','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+l+u+m+p+k+i+n+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(71,3,'booger','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+o+o+g+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(72,3,'bugger*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+g+g+e+r+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(73,3,'bukakke','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+k+a+k+k+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(74,3,'bull','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+l+l+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(75,3,'bulldyke','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+l+l+d+y+k+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(76,3,'bullshit','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+l+l+s+h+i+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(77,3,'bunny','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+n+n+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(78,3,'bunnyfuck','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+n+n+y+f+u+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(79,3,'chocha','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+h+o+c+h+a+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(80,3,'chode','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+h+o+d+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(81,3,'clap','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+l+a+p+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(82,3,'coconuts','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+c+o+n+u+t+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(83,3,'cohones','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+h+o+n+e+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(84,3,'cojones','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+j+o+n+e+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(85,3,'coon','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+o+n+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(86,3,'cootch','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+o+t+c+h+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(87,3,'cooter','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+o+t+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(88,3,'cornhole','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+r+n+h+o+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(89,3,'cracka','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+r+a+c+k+a+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(90,3,'crap','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+r+a+p+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(91,3,'cum','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+u+m+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(92,3,'cunnilingus','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+u+n+n+i+l+i+n+g+u+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(93,3,'cunt*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+u+n+t+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(94,3,'damn*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+a+m+n+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(95,3,'dark*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+a+r+k+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(96,3,'dick','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(97,3,'dickhead','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+c+k+h+e+a+d+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(98,3,'diddle','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+d+d+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(99,3,'dildo','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+l+d+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(100,3,'dilhole','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+l+h+o+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(101,3,'dingleberry','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+n+g+l+e+b+e+r+r+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(102,3,'doodle','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+o+o+d+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(103,3,'dork','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+o+r+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(104,3,'dumpster','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+u+m+p+s+t+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(105,3,'faggot','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+a+g+g+o+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(106,3,'fart','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+a+r+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(107,3,'frig','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+r+i+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(108,3,'fuck*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+u+c+k+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(109,3,'fucker','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+u+c+k+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(110,3,'giz','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+i+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(111,3,'goatse','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+o+a+t+s+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(112,3,'gook','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+o+o+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(113,3,'gringo','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+r+i+n+g+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(114,3,'hobo','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(h+o+b+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(115,3,'honky','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(h+o+n+k+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(116,3,'jackass','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+a+c+k+a+s+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(117,3,'jackoff','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+a+c+k+o+f+f+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(118,3,'jerkoff','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+e+r+k+o+f+f+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(119,3,'jiggaboo','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+i+g+g+a+b+o+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(120,3,'jizz','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+i+z+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(121,3,'kike','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(k+i+k+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(122,3,'mayo','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(m+a+y+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(123,3,'moose','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(m+o+o+s+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(124,3,'nigg*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(n+i+g+g+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(125,3,'paki','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+a+k+i+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(126,3,'pecker','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+e+c+k+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(127,3,'piss','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+i+s+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(128,3,'poonanni','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+o+o+n+a+n+n+i+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(129,3,'poontang','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+o+o+n+t+a+n+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(130,3,'prick','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+r+i+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(131,3,'punch','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+u+n+c+h+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(132,3,'queef','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(q+u+e+e+f+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(133,3,'rogue','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(r+o+g+u+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(134,3,'sanchez','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+a+n+c+h+e+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(135,3,'schlong','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+c+h+l+o+n+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(136,3,'shit','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+h+i+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(137,3,'skank','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+k+a+n+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(138,3,'spaz','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+p+a+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(139,3,'spic','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+p+i+c+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(140,3,'teabag*','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+e+a+b+a+g+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(141,3,'tits','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+i+t+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(142,3,'twat','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+w+a+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(143,3,'twot','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+w+o+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(144,3,'vart','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(v+a+r+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(145,3,'wanker','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+a+n+k+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(146,3,'waste','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+a+s+t+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(147,3,'wetback','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+e+t+b+a+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(148,3,'whore','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+h+o+r+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(149,3,'wigger','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+i+g+g+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(150,3,'wog','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+o+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL'),(151,3,'wop','/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+o+p+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu','','','Y','TRNSL');
/*!40000 ALTER TABLE `b_forum_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_group`
--

DROP TABLE IF EXISTS `b_forum_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SORT` int(11) NOT NULL DEFAULT '150',
  `PARENT_ID` int(11) DEFAULT NULL,
  `LEFT_MARGIN` int(11) DEFAULT NULL,
  `RIGHT_MARGIN` int(11) DEFAULT NULL,
  `DEPTH_LEVEL` int(11) DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_group`
--

LOCK TABLES `b_forum_group` WRITE;
/*!40000 ALTER TABLE `b_forum_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_group_lang`
--

DROP TABLE IF EXISTS `b_forum_group_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_group_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FORUM_GROUP_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_FORUM_GROUP` (`FORUM_GROUP_ID`,`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_group_lang`
--

LOCK TABLES `b_forum_group_lang` WRITE;
/*!40000 ALTER TABLE `b_forum_group_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_group_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_letter`
--

DROP TABLE IF EXISTS `b_forum_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_letter` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DICTIONARY_ID` int(11) DEFAULT '0',
  `LETTER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REPLACEMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_letter`
--

LOCK TABLES `b_forum_letter` WRITE;
/*!40000 ALTER TABLE `b_forum_letter` DISABLE KEYS */;
INSERT INTO `b_forum_letter` VALUES (1,2,'а','АаAa'),(2,2,'б','БбBb'),(3,2,'в','ВвVv'),(4,2,'г','Гг'),(5,2,'д','ДдDd'),(6,2,'е','ЁёЕеEe'),(7,2,'ё','ЁёЕеEe, [Йй]+[Оо]+'),(8,2,'ж','ЖжGg'),(9,2,'з','ЗзZz3'),(10,2,'и','ИиIi'),(11,2,'й','ЙйИиYy'),(12,2,'к','КкKk'),(13,2,'л','ЛлLl'),(14,2,'м','МмMm'),(15,2,'н','НнNn'),(16,2,'о','ОоOo'),(17,2,'п','ПпPp'),(18,2,'р','РрPpRr'),(19,2,'с','СсCc'),(20,2,'т','ТтTt'),(21,2,'у','УуUu'),(22,2,'ф','ФфFf'),(23,2,'х','ХхXx'),(24,2,'ц','ЦцCc'),(25,2,'ч','Чч'),(26,2,'ш','Шш'),(27,2,'щ','Щщ'),(28,2,'ь','ЪъЬь\"\','),(29,2,'ы','Ыы'),(30,2,'ъ','ЪъЬь\"\','),(31,2,'э','Ээ'),(32,2,'ю','Юю, [Йй]+[Оо]+'),(33,2,'я','Яя'),(34,2,'%','[Цц]+([Аа]+|[Оо]+), [Тт]+([Ьь]+|)[Сс]+[Яя]+'),(35,2,'^',',ВвЗзСс,ВвЫы,ДдОо,ЗзАа,ИиЗзСс,НнАа,НнЕе,ОоТт,([Пп]*[Ее]+[Рр]+[Ее]+)'),(36,2,'тся','%'),(37,2,'ться','%');
/*!40000 ALTER TABLE `b_forum_letter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_message`
--

DROP TABLE IF EXISTS `b_forum_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_message` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FORUM_ID` int(10) NOT NULL,
  `TOPIC_ID` bigint(20) NOT NULL,
  `USE_SMILES` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NEW_TOPIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `APPROVED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SOURCE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'WEB',
  `POST_DATE` datetime NOT NULL,
  `POST_MESSAGE` text COLLATE utf8_unicode_ci,
  `POST_MESSAGE_HTML` text COLLATE utf8_unicode_ci,
  `POST_MESSAGE_FILTER` text COLLATE utf8_unicode_ci,
  `POST_MESSAGE_CHECK` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ATTACH_IMG` int(11) DEFAULT NULL,
  `PARAM1` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM2` int(11) DEFAULT NULL,
  `AUTHOR_ID` int(10) DEFAULT NULL,
  `AUTHOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_REAL_IP` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GUEST_ID` int(10) DEFAULT NULL,
  `EDITOR_ID` int(10) DEFAULT NULL,
  `EDITOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDITOR_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_REASON` text COLLATE utf8_unicode_ci,
  `EDIT_DATE` datetime DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HTML` text COLLATE utf8_unicode_ci,
  `MAIL_HEADER` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_FORUM_MESSAGE_FORUM` (`FORUM_ID`,`APPROVED`),
  KEY `IX_FORUM_MESSAGE_TOPIC` (`TOPIC_ID`,`APPROVED`),
  KEY `IX_FORUM_MESSAGE_AUTHOR` (`AUTHOR_ID`,`APPROVED`,`FORUM_ID`),
  KEY `IX_FORUM_MESSAGE_APPROVED` (`APPROVED`),
  KEY `IX_FORUM_MESSAGE_PARAM2` (`PARAM2`),
  KEY `IX_FORUM_MESSAGE_XML_ID` (`XML_ID`),
  KEY `IX_FORUM_MESSAGE_DATE_AUTHOR_ID` (`POST_DATE`,`AUTHOR_ID`),
  KEY `IX_FORUM_MESSAGE_AUTHOR_TOPIC_ID` (`AUTHOR_ID`,`TOPIC_ID`),
  KEY `IX_FORUM_MESSAGE_AUTHOR_FORUM_ID` (`AUTHOR_ID`,`FORUM_ID`,`ID`,`APPROVED`,`TOPIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_message`
--

LOCK TABLES `b_forum_message` WRITE;
/*!40000 ALTER TABLE `b_forum_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_perms`
--

DROP TABLE IF EXISTS `b_forum_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_perms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FORUM_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `PERMISSION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M',
  PRIMARY KEY (`ID`),
  KEY `IX_FORUM_PERMS_FORUM` (`FORUM_ID`,`GROUP_ID`),
  KEY `IX_FORUM_PERMS_GROUP` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_perms`
--

LOCK TABLES `b_forum_perms` WRITE;
/*!40000 ALTER TABLE `b_forum_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_pm_folder`
--

DROP TABLE IF EXISTS `b_forum_pm_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_pm_folder` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SORT` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FORUM_PM_FOLDER_USER_IST` (`USER_ID`,`ID`,`SORT`,`TITLE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_pm_folder`
--

LOCK TABLES `b_forum_pm_folder` WRITE;
/*!40000 ALTER TABLE `b_forum_pm_folder` DISABLE KEYS */;
INSERT INTO `b_forum_pm_folder` VALUES (1,'SYSTEM_FOLDER_1',0,0),(2,'SYSTEM_FOLDER_2',0,0),(3,'SYSTEM_FOLDER_3',0,0),(4,'SYSTEM_FOLDER_4',0,0);
/*!40000 ALTER TABLE `b_forum_pm_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_points`
--

DROP TABLE IF EXISTS `b_forum_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_points` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MIN_POINTS` int(11) NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_FORUM_P_MP` (`MIN_POINTS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_points`
--

LOCK TABLES `b_forum_points` WRITE;
/*!40000 ALTER TABLE `b_forum_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_points2post`
--

DROP TABLE IF EXISTS `b_forum_points2post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_points2post` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MIN_NUM_POSTS` int(11) NOT NULL,
  `POINTS_PER_POST` decimal(18,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_FORUM_P2P_MNP` (`MIN_NUM_POSTS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_points2post`
--

LOCK TABLES `b_forum_points2post` WRITE;
/*!40000 ALTER TABLE `b_forum_points2post` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_points2post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_points_lang`
--

DROP TABLE IF EXISTS `b_forum_points_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_points_lang` (
  `POINTS_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`POINTS_ID`,`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_points_lang`
--

LOCK TABLES `b_forum_points_lang` WRITE;
/*!40000 ALTER TABLE `b_forum_points_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_points_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_private_message`
--

DROP TABLE IF EXISTS `b_forum_private_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_private_message` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `AUTHOR_ID` int(11) DEFAULT '0',
  `RECIPIENT_ID` int(11) DEFAULT '0',
  `POST_DATE` datetime DEFAULT NULL,
  `POST_SUBJ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POST_MESSAGE` text COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `FOLDER_ID` int(11) NOT NULL,
  `IS_READ` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_IS_READ` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USE_SMILES` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FORUM_PM_AFR` (`AUTHOR_ID`,`FOLDER_ID`,`IS_READ`),
  KEY `IX_B_FORUM_PM_UFP` (`USER_ID`,`FOLDER_ID`,`POST_DATE`),
  KEY `IX_B_FORUM_PM_POST_DATE` (`POST_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_private_message`
--

LOCK TABLES `b_forum_private_message` WRITE;
/*!40000 ALTER TABLE `b_forum_private_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_private_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_rank`
--

DROP TABLE IF EXISTS `b_forum_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_rank` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MIN_NUM_POSTS` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_rank`
--

LOCK TABLES `b_forum_rank` WRITE;
/*!40000 ALTER TABLE `b_forum_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_rank_lang`
--

DROP TABLE IF EXISTS `b_forum_rank_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_rank_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RANK_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_FORUM_RANK` (`RANK_ID`,`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_rank_lang`
--

LOCK TABLES `b_forum_rank_lang` WRITE;
/*!40000 ALTER TABLE `b_forum_rank_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_rank_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_stat`
--

DROP TABLE IF EXISTS `b_forum_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_stat` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(10) DEFAULT NULL,
  `IP_ADDRESS` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHPSESSID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORUM_ID` smallint(5) NOT NULL DEFAULT '0',
  `TOPIC_ID` int(10) DEFAULT NULL,
  `SHOW_NAME` varchar(101) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FORUM_STAT_SITE_ID` (`SITE_ID`,`LAST_VISIT`),
  KEY `IX_B_FORUM_STAT_TOPIC_ID` (`TOPIC_ID`,`LAST_VISIT`),
  KEY `IX_B_FORUM_STAT_FORUM_ID` (`FORUM_ID`,`LAST_VISIT`),
  KEY `IX_B_FORUM_STAT_PHPSESSID` (`PHPSESSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_stat`
--

LOCK TABLES `b_forum_stat` WRITE;
/*!40000 ALTER TABLE `b_forum_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_subscribe`
--

DROP TABLE IF EXISTS `b_forum_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_subscribe` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(10) NOT NULL,
  `FORUM_ID` int(10) NOT NULL,
  `TOPIC_ID` int(10) DEFAULT NULL,
  `START_DATE` datetime NOT NULL,
  `LAST_SEND` int(10) DEFAULT NULL,
  `NEW_TOPIC_ONLY` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ru',
  `SOCNET_GROUP_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_FORUM_SUBSCRIBE_USER` (`USER_ID`,`FORUM_ID`,`TOPIC_ID`,`SOCNET_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_subscribe`
--

LOCK TABLES `b_forum_subscribe` WRITE;
/*!40000 ALTER TABLE `b_forum_subscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_topic`
--

DROP TABLE IF EXISTS `b_forum_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_topic` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FORUM_ID` int(10) NOT NULL,
  `TOPIC_ID` bigint(20) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE_SEO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ICON` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `APPROVED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(10) NOT NULL DEFAULT '150',
  `VIEWS` int(10) NOT NULL DEFAULT '0',
  `USER_START_ID` int(10) DEFAULT NULL,
  `USER_START_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_DATE` datetime NOT NULL,
  `POSTS` int(10) NOT NULL DEFAULT '0',
  `LAST_POSTER_ID` int(10) DEFAULT NULL,
  `LAST_POSTER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_POST_DATE` datetime NOT NULL,
  `LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `POSTS_UNAPPROVED` int(11) DEFAULT '0',
  `ABS_LAST_POSTER_ID` int(10) DEFAULT NULL,
  `ABS_LAST_POSTER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ABS_LAST_POST_DATE` datetime DEFAULT NULL,
  `ABS_LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HTML` text COLLATE utf8_unicode_ci,
  `SOCNET_GROUP_ID` int(10) DEFAULT NULL,
  `OWNER_ID` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_FORUM_TOPIC_FORUM` (`FORUM_ID`,`APPROVED`),
  KEY `IX_FORUM_TOPIC_APPROVED` (`APPROVED`),
  KEY `IX_FORUM_TOPIC_ABS_L_POST_DATE` (`ABS_LAST_POST_DATE`),
  KEY `IX_FORUM_TOPIC_LAST_POST_DATE` (`LAST_POST_DATE`),
  KEY `IX_FORUM_TOPIC_USER_START_ID` (`USER_START_ID`),
  KEY `IX_FORUM_TOPIC_DATE_USER_START_ID` (`START_DATE`,`USER_START_ID`),
  KEY `IX_FORUM_TOPIC_XML_ID` (`XML_ID`),
  KEY `IX_FORUM_TOPIC_TITLE_SEO` (`FORUM_ID`,`TITLE_SEO`),
  KEY `IX_FORUM_TOPIC_TITLE_SEO2` (`TITLE_SEO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_topic`
--

LOCK TABLES `b_forum_topic` WRITE;
/*!40000 ALTER TABLE `b_forum_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_user`
--

DROP TABLE IF EXISTS `b_forum_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_user` (
  `ID` bigint(10) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(10) NOT NULL,
  `ALIAS` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IP_ADDRESS` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AVATAR` int(10) DEFAULT NULL,
  `NUM_POSTS` int(10) DEFAULT '0',
  `INTERESTS` text COLLATE utf8_unicode_ci,
  `LAST_POST` int(10) DEFAULT NULL,
  `ALLOW_POST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_VISIT` datetime NOT NULL,
  `DATE_REG` date NOT NULL,
  `REAL_IP_ADDRESS` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SIGNATURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SHOW_NAME` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `RANK_ID` int(11) DEFAULT NULL,
  `POINTS` int(11) NOT NULL DEFAULT '0',
  `HIDE_FROM_ONLINE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SUBSC_GROUP_MESSAGE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SUBSC_GET_MY_MESSAGE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_FORUM_USER_USER6` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_user`
--

LOCK TABLES `b_forum_user` WRITE;
/*!40000 ALTER TABLE `b_forum_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_user_forum`
--

DROP TABLE IF EXISTS `b_forum_user_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_user_forum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) DEFAULT NULL,
  `FORUM_ID` int(11) DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  `MAIN_LAST_VISIT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_FORUM_USER_FORUM_ID1` (`USER_ID`,`FORUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_user_forum`
--

LOCK TABLES `b_forum_user_forum` WRITE;
/*!40000 ALTER TABLE `b_forum_user_forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_user_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_user_points`
--

DROP TABLE IF EXISTS `b_forum_user_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_user_points` (
  `FROM_USER_ID` int(11) NOT NULL,
  `TO_USER_ID` int(11) NOT NULL,
  `POINTS` int(11) NOT NULL DEFAULT '0',
  `DATE_UPDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`FROM_USER_ID`,`TO_USER_ID`),
  KEY `IX_B_FORUM_USER_POINTS_TO_USER` (`TO_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_user_points`
--

LOCK TABLES `b_forum_user_points` WRITE;
/*!40000 ALTER TABLE `b_forum_user_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_user_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_forum_user_topic`
--

DROP TABLE IF EXISTS `b_forum_user_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_forum_user_topic` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TOPIC_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `FORUM_ID` int(11) DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  PRIMARY KEY (`TOPIC_ID`,`USER_ID`),
  KEY `ID` (`ID`),
  KEY `IX_B_FORUM_USER_FORUM_ID2` (`USER_ID`,`FORUM_ID`,`TOPIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_forum_user_topic`
--

LOCK TABLES `b_forum_user_topic` WRITE;
/*!40000 ALTER TABLE `b_forum_user_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_forum_user_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_geoip_handlers`
--

DROP TABLE IF EXISTS `b_geoip_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_geoip_handlers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SORT` int(10) NOT NULL DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `CLASS_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_geoip_handlers`
--

LOCK TABLES `b_geoip_handlers` WRITE;
/*!40000 ALTER TABLE `b_geoip_handlers` DISABLE KEYS */;
INSERT INTO `b_geoip_handlers` VALUES (1,100,'N','\\Bitrix\\Main\\Service\\GeoIp\\MaxMind',NULL),(2,110,'Y','\\Bitrix\\Main\\Service\\GeoIp\\SypexGeo',NULL);
/*!40000 ALTER TABLE `b_geoip_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group`
--

DROP TABLE IF EXISTS `b_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `ANONYMOUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_POLICY` text COLLATE utf8_unicode_ci,
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group`
--

LOCK TABLES `b_group` WRITE;
/*!40000 ALTER TABLE `b_group` DISABLE KEYS */;
INSERT INTO `b_group` VALUES (1,'2019-10-17 11:02:31','Y',1,'N','Y','Администраторы','Полный доступ к управлению сайтом.',NULL,NULL),(2,'2019-10-17 11:02:31','Y',2,'Y','Y','Все пользователи (в том числе неавторизованные)','Все пользователи, включая неавторизованных.',NULL,NULL),(3,'2019-10-17 11:02:31','Y',3,'N','Y','Пользователи, имеющие право голосовать за рейтинг','В эту группу пользователи добавляются автоматически.',NULL,'RATING_VOTE'),(4,'2019-10-17 11:02:31','Y',4,'N','Y','Пользователи имеющие право голосовать за авторитет','В эту группу пользователи добавляются автоматически.',NULL,'RATING_VOTE_AUTHORITY');
/*!40000 ALTER TABLE `b_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_collection_task`
--

DROP TABLE IF EXISTS `b_group_collection_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group_collection_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `COLLECTION_ID` int(11) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`,`COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_collection_task`
--

LOCK TABLES `b_group_collection_task` WRITE;
/*!40000 ALTER TABLE `b_group_collection_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_collection_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_subordinate`
--

DROP TABLE IF EXISTS `b_group_subordinate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group_subordinate` (
  `ID` int(18) NOT NULL,
  `AR_SUBGROUP_ID` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_subordinate`
--

LOCK TABLES `b_group_subordinate` WRITE;
/*!40000 ALTER TABLE `b_group_subordinate` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_subordinate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_group_task`
--

DROP TABLE IF EXISTS `b_group_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_group_task` (
  `GROUP_ID` int(18) NOT NULL,
  `TASK_ID` int(18) NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_group_task`
--

LOCK TABLES `b_group_task` WRITE;
/*!40000 ALTER TABLE `b_group_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_group_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hlblock_entity`
--

DROP TABLE IF EXISTS `b_hlblock_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hlblock_entity` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_NAME` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hlblock_entity`
--

LOCK TABLES `b_hlblock_entity` WRITE;
/*!40000 ALTER TABLE `b_hlblock_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hlblock_entity_lang`
--

DROP TABLE IF EXISTS `b_hlblock_entity_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hlblock_entity_lang` (
  `ID` int(11) unsigned NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hlblock_entity_lang`
--

LOCK TABLES `b_hlblock_entity_lang` WRITE;
/*!40000 ALTER TABLE `b_hlblock_entity_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hlblock_entity_rights`
--

DROP TABLE IF EXISTS `b_hlblock_entity_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hlblock_entity_rights` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `HL_ID` int(11) unsigned NOT NULL,
  `TASK_ID` int(11) unsigned NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hlblock_entity_rights`
--

LOCK TABLES `b_hlblock_entity_rights` WRITE;
/*!40000 ALTER TABLE `b_hlblock_entity_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_hlblock_entity_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hot_keys`
--

DROP TABLE IF EXISTS `b_hot_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hot_keys` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `KEYS_STRING` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_b_hot_keys_co_u` (`CODE_ID`,`USER_ID`),
  KEY `ix_hot_keys_user` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hot_keys`
--

LOCK TABLES `b_hot_keys` WRITE;
/*!40000 ALTER TABLE `b_hot_keys` DISABLE KEYS */;
INSERT INTO `b_hot_keys` VALUES (1,'Ctrl+Alt+85',139,0),(2,'Ctrl+Alt+80',17,0),(3,'Ctrl+Alt+70',120,0),(4,'Ctrl+Alt+68',117,0),(5,'Ctrl+Alt+81',3,0),(6,'Ctrl+Alt+75',106,0),(7,'Ctrl+Alt+79',133,0),(8,'Ctrl+Alt+70',121,0),(9,'Ctrl+Alt+69',118,0),(10,'Ctrl+Shift+83',87,0),(11,'Ctrl+Shift+88',88,0),(12,'Ctrl+Shift+76',89,0),(13,'Ctrl+Alt+85',139,1),(14,'Ctrl+Alt+80',17,1),(15,'Ctrl+Alt+70',120,1),(16,'Ctrl+Alt+68',117,1),(17,'Ctrl+Alt+81',3,1),(18,'Ctrl+Alt+75',106,1),(19,'Ctrl+Alt+79',133,1),(20,'Ctrl+Alt+70',121,1),(21,'Ctrl+Alt+69',118,1),(22,'Ctrl+Shift+83',87,1),(23,'Ctrl+Shift+88',88,1),(24,'Ctrl+Shift+76',89,1);
/*!40000 ALTER TABLE `b_hot_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_hot_keys_code`
--

DROP TABLE IF EXISTS `b_hot_keys_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_hot_keys_code` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CLASS_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE_OBJ` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_CUSTOM` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `ix_hot_keys_code_cn` (`CLASS_NAME`),
  KEY `ix_hot_keys_code_url` (`URL`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_hot_keys_code`
--

LOCK TABLES `b_hot_keys_code` WRITE;
/*!40000 ALTER TABLE `b_hot_keys_code` DISABLE KEYS */;
INSERT INTO `b_hot_keys_code` VALUES (3,'CAdminTabControl','NextTab();','HK_DB_CADMINTC','HK_DB_CADMINTC_C','tab-container','',0),(5,'btn_new','var d=BX (\'btn_new\'); if (d) location.href = d.href;','HK_DB_BUT_ADD','HK_DB_BUT_ADD_C','btn_new','',0),(6,'btn_excel','var d=BX(\'btn_excel\'); if (d) location.href = d.href;','HK_DB_BUT_EXL','HK_DB_BUT_EXL_C','btn_excel','',0),(7,'btn_settings','var d=BX(\'btn_settings\'); if (d) location.href = d.href;','HK_DB_BUT_OPT','HK_DB_BUT_OPT_C','btn_settings','',0),(8,'btn_list','var d=BX(\'btn_list\'); if (d) location.href = d.href;','HK_DB_BUT_LST','HK_DB_BUT_LST_C','btn_list','',0),(9,'Edit_Save_Button','var d=BX .findChild(document, {attribute: {\'name\': \'save\'}}, true );  if (d) d.click();','HK_DB_BUT_SAVE','HK_DB_BUT_SAVE_C','Edit_Save_Button','',0),(10,'btn_delete','var d=BX(\'btn_delete\'); if (d) location.href = d.href;','HK_DB_BUT_DEL','HK_DB_BUT_DEL_C','btn_delete','',0),(12,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'find\'}}, true ); if (d) d.focus();','HK_DB_FLT_FND','HK_DB_FLT_FND_C','find','',0),(13,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'set_filter\'}}, true );  if (d) d.click();','HK_DB_FLT_BUT_F','HK_DB_FLT_BUT_F_C','set_filter','',0),(14,'CAdminFilter','var d=BX .findChild(document, {attribute: {\'name\': \'del_filter\'}}, true );  if (d) d.click();','HK_DB_FLT_BUT_CNL','HK_DB_FLT_BUT_CNL_C','del_filter','',0),(15,'bx-panel-admin-button-help-icon-id','var d=BX(\'bx-panel-admin-button-help-icon-id\'); if (d) location.href = d.href;','HK_DB_BUT_HLP','HK_DB_BUT_HLP_C','bx-panel-admin-button-help-icon-id','',0),(17,'Global','BXHotKeys.ShowSettings();','HK_DB_SHW_L','HK_DB_SHW_L_C','bx-panel-hotkeys','',0),(19,'Edit_Apply_Button','var d=BX .findChild(document, {attribute: {\'name\': \'apply\'}}, true );  if (d) d.click();','HK_DB_BUT_APPL','HK_DB_BUT_APPL_C','Edit_Apply_Button','',0),(20,'Edit_Cancel_Button','var d=BX .findChild(document, {attribute: {\'name\': \'cancel\'}}, true );  if (d) d.click();','HK_DB_BUT_CANCEL','HK_DB_BUT_CANCEL_C','Edit_Cancel_Button','',0),(54,'top_panel_org_fav','','-=AUTONAME=-',NULL,'top_panel_org_fav',NULL,0),(55,'top_panel_module_settings','','-=AUTONAME=-',NULL,'top_panel_module_settings','',0),(56,'top_panel_interface_settings','','-=AUTONAME=-',NULL,'top_panel_interface_settings','',0),(57,'top_panel_help','','-=AUTONAME=-',NULL,'top_panel_help','',0),(58,'top_panel_bizproc_tasks','','-=AUTONAME=-',NULL,'top_panel_bizproc_tasks','',0),(59,'top_panel_add_fav','','-=AUTONAME=-',NULL,'top_panel_add_fav',NULL,0),(60,'top_panel_create_page','','-=AUTONAME=-',NULL,'top_panel_create_page','',0),(62,'top_panel_create_folder','','-=AUTONAME=-',NULL,'top_panel_create_folder','',0),(63,'top_panel_edit_page','','-=AUTONAME=-',NULL,'top_panel_edit_page','',0),(64,'top_panel_page_prop','','-=AUTONAME=-',NULL,'top_panel_page_prop','',0),(65,'top_panel_edit_page_html','','-=AUTONAME=-',NULL,'top_panel_edit_page_html','',0),(67,'top_panel_edit_page_php','','-=AUTONAME=-',NULL,'top_panel_edit_page_php','',0),(68,'top_panel_del_page','','-=AUTONAME=-',NULL,'top_panel_del_page','',0),(69,'top_panel_folder_prop','','-=AUTONAME=-',NULL,'top_panel_folder_prop','',0),(70,'top_panel_access_folder_new','','-=AUTONAME=-',NULL,'top_panel_access_folder_new','',0),(71,'main_top_panel_struct_panel','','-=AUTONAME=-',NULL,'main_top_panel_struct_panel','',0),(72,'top_panel_cache_page','','-=AUTONAME=-',NULL,'top_panel_cache_page','',0),(73,'top_panel_cache_comp','','-=AUTONAME=-',NULL,'top_panel_cache_comp','',0),(74,'top_panel_cache_not','','-=AUTONAME=-',NULL,'top_panel_cache_not','',0),(75,'top_panel_edit_mode','','-=AUTONAME=-',NULL,'top_panel_edit_mode','',0),(76,'top_panel_templ_site_css','','-=AUTONAME=-',NULL,'top_panel_templ_site_css','',0),(77,'top_panel_templ_templ_css','','-=AUTONAME=-',NULL,'top_panel_templ_templ_css','',0),(78,'top_panel_templ_site','','-=AUTONAME=-',NULL,'top_panel_templ_site','',0),(81,'top_panel_debug_time','','-=AUTONAME=-',NULL,'top_panel_debug_time','',0),(82,'top_panel_debug_incl','','-=AUTONAME=-',NULL,'top_panel_debug_incl','',0),(83,'top_panel_debug_sql','','-=AUTONAME=-',NULL,'top_panel_debug_sql',NULL,0),(84,'top_panel_debug_compr','','-=AUTONAME=-',NULL,'top_panel_debug_compr','',0),(85,'MTP_SHORT_URI1','','-=AUTONAME=-',NULL,'MTP_SHORT_URI1','',0),(86,'MTP_SHORT_URI_LIST','','-=AUTONAME=-',NULL,'MTP_SHORT_URI_LIST','',0),(87,'FMST_PANEL_STICKER_ADD','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKER_ADD','',0),(88,'FMST_PANEL_STICKERS_SHOW','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKERS_SHOW','',0),(89,'FMST_PANEL_CUR_STICKER_LIST','','-=AUTONAME=-',NULL,'FMST_PANEL_CUR_STICKER_LIST','',0),(90,'FMST_PANEL_ALL_STICKER_LIST','','-=AUTONAME=-',NULL,'FMST_PANEL_ALL_STICKER_LIST','',0),(91,'top_panel_menu','var d=BX(\"bx-panel-menu\"); if (d) d.click();','-=AUTONAME=-',NULL,'bx-panel-menu','',0),(92,'top_panel_admin','var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-admin-tab','',0),(93,'admin_panel_site','var d=BX(\'bx-panel-view-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-view-tab','',0),(94,'admin_panel_admin','var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;','-=AUTONAME=-',NULL,'bx-panel-admin-tab','',0),(96,'top_panel_folder_prop_new','','-=AUTONAME=-',NULL,'top_panel_folder_prop_new','',0),(97,'main_top_panel_structure','','-=AUTONAME=-',NULL,'main_top_panel_structure','',0),(98,'top_panel_clear_cache','','-=AUTONAME=-',NULL,'top_panel_clear_cache','',0),(99,'top_panel_templ','','-=AUTONAME=-',NULL,'top_panel_templ','',0),(100,'top_panel_debug','','-=AUTONAME=-',NULL,'top_panel_debug','',0),(101,'MTP_SHORT_URI','','-=AUTONAME=-',NULL,'MTP_SHORT_URI','',0),(102,'FMST_PANEL_STICKERS','','-=AUTONAME=-',NULL,'FMST_PANEL_STICKERS','',0),(103,'top_panel_settings','','-=AUTONAME=-',NULL,'top_panel_settings','',0),(104,'top_panel_fav','','-=AUTONAME=-',NULL,'top_panel_fav','',0),(106,'Global','location.href=\'/bitrix/admin/hot_keys_list.php?lang=ru\';','HK_DB_SHW_HK','','','',0),(107,'top_panel_edit_new','','-=AUTONAME=-',NULL,'top_panel_edit_new','',0),(108,'FLOW_PANEL_CREATE_WITH_WF','','-=AUTONAME=-',NULL,'FLOW_PANEL_CREATE_WITH_WF','',0),(109,'FLOW_PANEL_EDIT_WITH_WF','','-=AUTONAME=-',NULL,'FLOW_PANEL_EDIT_WITH_WF','',0),(110,'FLOW_PANEL_HISTORY','','-=AUTONAME=-',NULL,'FLOW_PANEL_HISTORY','',0),(111,'top_panel_create_new','','-=AUTONAME=-',NULL,'top_panel_create_new','',0),(112,'top_panel_create_folder_new','','-=AUTONAME=-',NULL,'top_panel_create_folder_new','',0),(116,'bx-panel-toggle','','-=AUTONAME=-',NULL,'bx-panel-toggle','',0),(117,'bx-panel-small-toggle','','-=AUTONAME=-',NULL,'bx-panel-small-toggle','',0),(118,'bx-panel-expander','var d=BX(\'bx-panel-expander\'); if (d) BX.fireEvent(d, \'click\');','-=AUTONAME=-',NULL,'bx-panel-expander','',0),(119,'bx-panel-hider','var d=BX(\'bx-panel-hider\'); if (d) d.click();','-=AUTONAME=-',NULL,'bx-panel-hider','',0),(120,'search-textbox-input','var d=BX(\'search-textbox-input\'); if (d) { d.click(); d.focus();}','-=AUTONAME=-','','search','',0),(121,'bx-search-input','var d=BX(\'bx-search-input\'); if (d) { d.click(); d.focus(); }','-=AUTONAME=-','','bx-search-input','',0),(133,'bx-panel-logout','var d=BX(\'bx-panel-logout\'); if (d) location.href = d.href;','-=AUTONAME=-','','bx-panel-logout','',0),(135,'CDialog','var d=BX(\'cancel\'); if (d) d.click();','HK_DB_D_CANCEL','','cancel','',0),(136,'CDialog','var d=BX(\'close\'); if (d) d.click();','HK_DB_D_CLOSE','','close','',0),(137,'CDialog','var d=BX(\'savebtn\'); if (d) d.click();','HK_DB_D_SAVE','','savebtn','',0),(138,'CDialog','var d=BX(\'btn_popup_save\'); if (d) d.click();','HK_DB_D_EDIT_SAVE','','btn_popup_save','',0),(139,'Global','location.href=\'/bitrix/admin/user_admin.php?lang=\'+phpVars.LANGUAGE_ID;','HK_DB_SHW_U','','','',0);
/*!40000 ALTER TABLE `b_hot_keys_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock`
--

DROP TABLE IF EXISTS `b_iblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `LIST_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CANONICAL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `RSS_TTL` int(11) NOT NULL DEFAULT '24',
  `RSS_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `RSS_FILE_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RSS_FILE_LIMIT` int(11) DEFAULT NULL,
  `RSS_FILE_DAYS` int(11) DEFAULT NULL,
  `RSS_YANDEX_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_ELEMENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INDEX_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `WORKFLOW` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `BIZPROC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SECTION_CHOOSER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RIGHTS_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PROPERTY` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_INDEX` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  `LAST_CONV_ELEMENT` int(11) NOT NULL DEFAULT '0',
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTIONS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENTS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock` (`IBLOCK_TYPE_ID`,`LID`,`ACTIVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock`
--

LOCK TABLES `b_iblock` WRITE;
/*!40000 ALTER TABLE `b_iblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_cache`
--

DROP TABLE IF EXISTS `b_iblock_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_cache` (
  `CACHE_KEY` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `CACHE` longtext COLLATE utf8_unicode_ci NOT NULL,
  `CACHE_DATE` datetime NOT NULL,
  PRIMARY KEY (`CACHE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_cache`
--

LOCK TABLES `b_iblock_cache` WRITE;
/*!40000 ALTER TABLE `b_iblock_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element`
--

DROP TABLE IF EXISTS `b_iblock_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL DEFAULT '0',
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PREVIEW_PICTURE` int(18) DEFAULT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci,
  `PREVIEW_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `DETAIL_TEXT` longtext COLLATE utf8_unicode_ci,
  `DETAIL_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  `WF_STATUS_ID` int(18) DEFAULT '1',
  `WF_PARENT_ELEMENT_ID` int(11) DEFAULT NULL,
  `WF_NEW` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LOCKED_BY` int(18) DEFAULT NULL,
  `WF_DATE_LOCK` datetime DEFAULT NULL,
  `WF_COMMENTS` text COLLATE utf8_unicode_ci,
  `IN_SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LAST_HISTORY_ID` int(11) DEFAULT NULL,
  `SHOW_COUNTER` int(18) DEFAULT NULL,
  `SHOW_COUNTER_START` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_element_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_element_4` (`IBLOCK_ID`,`XML_ID`,`WF_PARENT_ELEMENT_ID`),
  KEY `ix_iblock_element_3` (`WF_PARENT_ELEMENT_ID`),
  KEY `ix_iblock_element_code` (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element`
--

LOCK TABLES `b_iblock_element` WRITE;
/*!40000 ALTER TABLE `b_iblock_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_iprop`
--

DROP TABLE IF EXISTS `b_iblock_element_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ELEMENT_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_element_iprop_0` (`IPROP_ID`),
  KEY `ix_b_iblock_element_iprop_1` (`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_iprop`
--

LOCK TABLES `b_iblock_element_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_lock`
--

DROP TABLE IF EXISTS `b_iblock_element_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_lock` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `DATE_LOCK` datetime DEFAULT NULL,
  `LOCKED_BY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_lock`
--

LOCK TABLES `b_iblock_element_lock` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_property`
--

DROP TABLE IF EXISTS `b_iblock_element_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_property` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_element_property_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_property_2` (`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_enum` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`),
  KEY `ix_iblock_element_prop_num` (`VALUE_NUM`,`IBLOCK_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_property`
--

LOCK TABLES `b_iblock_element_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_element_right`
--

DROP TABLE IF EXISTS `b_iblock_element_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_element_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RIGHT_ID`,`ELEMENT_ID`,`SECTION_ID`),
  KEY `ix_b_iblock_element_right_1` (`ELEMENT_ID`,`IBLOCK_ID`),
  KEY `ix_b_iblock_element_right_2` (`IBLOCK_ID`,`RIGHT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_element_right`
--

LOCK TABLES `b_iblock_element_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_element_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_element_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_fields`
--

DROP TABLE IF EXISTS `b_iblock_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_fields` (
  `IBLOCK_ID` int(18) NOT NULL,
  `FIELD_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`IBLOCK_ID`,`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_fields`
--

LOCK TABLES `b_iblock_fields` WRITE;
/*!40000 ALTER TABLE `b_iblock_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_group`
--

DROP TABLE IF EXISTS `b_iblock_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_group` (
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `PERMISSION` char(1) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `ux_iblock_group_1` (`IBLOCK_ID`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_group`
--

LOCK TABLES `b_iblock_group` WRITE;
/*!40000 ALTER TABLE `b_iblock_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_iblock_iprop`
--

DROP TABLE IF EXISTS `b_iblock_iblock_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_iblock_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_iblock_iprop_0` (`IPROP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_iblock_iprop`
--

LOCK TABLES `b_iblock_iblock_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_iblock_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_iblock_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_iproperty`
--

DROP TABLE IF EXISTS `b_iblock_iproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_iproperty` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `TEMPLATE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_iblock_iprop_0` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_iproperty`
--

LOCK TABLES `b_iblock_iproperty` WRITE;
/*!40000 ALTER TABLE `b_iblock_iproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_iproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_messages`
--

DROP TABLE IF EXISTS `b_iblock_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_messages` (
  `IBLOCK_ID` int(18) NOT NULL,
  `MESSAGE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_TEXT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_messages`
--

LOCK TABLES `b_iblock_messages` WRITE;
/*!40000 ALTER TABLE `b_iblock_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_offers_tmp`
--

DROP TABLE IF EXISTS `b_iblock_offers_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_offers_tmp` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `PRODUCT_IBLOCK_ID` int(11) unsigned NOT NULL,
  `OFFERS_IBLOCK_ID` int(11) unsigned NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_offers_tmp`
--

LOCK TABLES `b_iblock_offers_tmp` WRITE;
/*!40000 ALTER TABLE `b_iblock_offers_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_offers_tmp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property`
--

DROP TABLE IF EXISTS `b_iblock_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_property` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IBLOCK_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` text COLLATE utf8_unicode_ci,
  `PROPERTY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `ROW_COUNT` int(11) NOT NULL DEFAULT '1',
  `COL_COUNT` int(11) NOT NULL DEFAULT '30',
  `LIST_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'L',
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_TYPE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MULTIPLE_CNT` int(11) DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_IBLOCK_ID` int(18) DEFAULT NULL,
  `WITH_DESCRIPTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FILTRABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  `USER_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_SETTINGS` text COLLATE utf8_unicode_ci,
  `HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_property_1` (`IBLOCK_ID`),
  KEY `ix_iblock_property_3` (`LINK_IBLOCK_ID`),
  KEY `ix_iblock_property_2` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property`
--

LOCK TABLES `b_iblock_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property_enum`
--

DROP TABLE IF EXISTS `b_iblock_property_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_property_enum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROPERTY_ID` int(11) NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `XML_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_iblock_property_enum` (`PROPERTY_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property_enum`
--

LOCK TABLES `b_iblock_property_enum` WRITE;
/*!40000 ALTER TABLE `b_iblock_property_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_property_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_property_feature`
--

DROP TABLE IF EXISTS `b_iblock_property_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_property_feature` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROPERTY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FEATURE_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `IS_ENABLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_iblock_property_feature` (`PROPERTY_ID`,`MODULE_ID`,`FEATURE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_property_feature`
--

LOCK TABLES `b_iblock_property_feature` WRITE;
/*!40000 ALTER TABLE `b_iblock_property_feature` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_property_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_right`
--

DROP TABLE IF EXISTS `b_iblock_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_right` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `DO_INHERIT` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `OP_SREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `OP_EREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_iblock_right_iblock_id` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`),
  KEY `ix_b_iblock_right_group_code` (`GROUP_CODE`,`IBLOCK_ID`),
  KEY `ix_b_iblock_right_entity` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `ix_b_iblock_right_op_eread` (`ID`,`OP_EREAD`,`GROUP_CODE`),
  KEY `ix_b_iblock_right_op_sread` (`ID`,`OP_SREAD`,`GROUP_CODE`),
  KEY `ix_b_iblock_right_task_id` (`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_right`
--

LOCK TABLES `b_iblock_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_rss`
--

DROP TABLE IF EXISTS `b_iblock_rss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_rss` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `NODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NODE_VALUE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_rss`
--

LOCK TABLES `b_iblock_rss` WRITE;
/*!40000 ALTER TABLE `b_iblock_rss` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_rss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section`
--

DROP TABLE IF EXISTS `b_iblock_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `GLOBAL_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `LEFT_MARGIN` int(18) DEFAULT NULL,
  `RIGHT_MARGIN` int(18) DEFAULT NULL,
  `DEPTH_LEVEL` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_iblock_section_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  KEY `ix_iblock_section_depth_level` (`IBLOCK_ID`,`DEPTH_LEVEL`),
  KEY `ix_iblock_section_left_margin` (`IBLOCK_ID`,`LEFT_MARGIN`,`RIGHT_MARGIN`),
  KEY `ix_iblock_section_right_margin` (`IBLOCK_ID`,`RIGHT_MARGIN`,`LEFT_MARGIN`),
  KEY `ix_iblock_section_code` (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section`
--

LOCK TABLES `b_iblock_section` WRITE;
/*!40000 ALTER TABLE `b_iblock_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_element`
--

DROP TABLE IF EXISTS `b_iblock_section_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_element` (
  `IBLOCK_SECTION_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `ADDITIONAL_PROPERTY_ID` int(18) DEFAULT NULL,
  UNIQUE KEY `ux_iblock_section_element` (`IBLOCK_SECTION_ID`,`IBLOCK_ELEMENT_ID`,`ADDITIONAL_PROPERTY_ID`),
  KEY `UX_IBLOCK_SECTION_ELEMENT2` (`IBLOCK_ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_element`
--

LOCK TABLES `b_iblock_section_element` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_iprop`
--

DROP TABLE IF EXISTS `b_iblock_section_iprop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`SECTION_ID`,`IPROP_ID`),
  KEY `ix_b_iblock_section_iprop_0` (`IPROP_ID`),
  KEY `ix_b_iblock_section_iprop_1` (`IBLOCK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_iprop`
--

LOCK TABLES `b_iblock_section_iprop` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_iprop` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_iprop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_property`
--

DROP TABLE IF EXISTS `b_iblock_section_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_property` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `SMART_FILTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_EXPANDED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`SECTION_ID`,`PROPERTY_ID`),
  KEY `ix_b_iblock_section_property_1` (`PROPERTY_ID`),
  KEY `ix_b_iblock_section_property_2` (`SECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_property`
--

LOCK TABLES `b_iblock_section_property` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_section_right`
--

DROP TABLE IF EXISTS `b_iblock_section_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_section_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`RIGHT_ID`,`SECTION_ID`),
  KEY `ix_b_iblock_section_right_1` (`SECTION_ID`,`IBLOCK_ID`),
  KEY `ix_b_iblock_section_right_2` (`IBLOCK_ID`,`RIGHT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_section_right`
--

LOCK TABLES `b_iblock_section_right` WRITE;
/*!40000 ALTER TABLE `b_iblock_section_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_section_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_sequence`
--

DROP TABLE IF EXISTS `b_iblock_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_sequence` (
  `IBLOCK_ID` int(18) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SEQ_VALUE` int(11) DEFAULT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_sequence`
--

LOCK TABLES `b_iblock_sequence` WRITE;
/*!40000 ALTER TABLE `b_iblock_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_site`
--

DROP TABLE IF EXISTS `b_iblock_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_site` (
  `IBLOCK_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IBLOCK_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_site`
--

LOCK TABLES `b_iblock_site` WRITE;
/*!40000 ALTER TABLE `b_iblock_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_iblock_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_type`
--

DROP TABLE IF EXISTS `b_iblock_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_type` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_RSS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(18) NOT NULL DEFAULT '500',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_type`
--

LOCK TABLES `b_iblock_type` WRITE;
/*!40000 ALTER TABLE `b_iblock_type` DISABLE KEYS */;
INSERT INTO `b_iblock_type` VALUES ('rest_entity','Y',NULL,NULL,'N',1000);
/*!40000 ALTER TABLE `b_iblock_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_iblock_type_lang`
--

DROP TABLE IF EXISTS `b_iblock_type_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_iblock_type_lang` (
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_iblock_type_lang`
--

LOCK TABLES `b_iblock_type_lang` WRITE;
/*!40000 ALTER TABLE `b_iblock_type_lang` DISABLE KEYS */;
INSERT INTO `b_iblock_type_lang` VALUES ('rest_entity','ru','Хранилище данных для приложений Маркетплейс24','Разделы','Элементы');
/*!40000 ALTER TABLE `b_iblock_type_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_entity_rights`
--

DROP TABLE IF EXISTS `b_landing_entity_rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_entity_rights` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ROLE_ID` int(18) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_ROLE` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_entity_rights`
--

LOCK TABLES `b_landing_entity_rights` WRITE;
/*!40000 ALTER TABLE `b_landing_entity_rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_entity_rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_file`
--

DROP TABLE IF EXISTS `b_landing_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_file` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  KEY `IX_FILE` (`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_file`
--

LOCK TABLES `b_landing_file` WRITE;
/*!40000 ALTER TABLE `b_landing_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_filter_block`
--

DROP TABLE IF EXISTS `b_landing_filter_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_filter_block` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `FILTER_ID` int(18) NOT NULL,
  `BLOCK_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_FILTER_BLOCK` (`FILTER_ID`,`BLOCK_ID`),
  KEY `IX_B_FILTER_ID` (`FILTER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_filter_block`
--

LOCK TABLES `b_landing_filter_block` WRITE;
/*!40000 ALTER TABLE `b_landing_filter_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_filter_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_hook_data`
--

DROP TABLE IF EXISTS `b_landing_hook_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_hook_data` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `HOOK` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_hook_data`
--

LOCK TABLES `b_landing_hook_data` WRITE;
/*!40000 ALTER TABLE `b_landing_hook_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_hook_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_syspage`
--

DROP TABLE IF EXISTS `b_landing_syspage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_syspage` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `SITE_ID` int(18) NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SITE_ID` (`SITE_ID`),
  KEY `IX_LANDING_ID` (`LANDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_syspage`
--

LOCK TABLES `b_landing_syspage` WRITE;
/*!40000 ALTER TABLE `b_landing_syspage` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_syspage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_landing_template_ref`
--

DROP TABLE IF EXISTS `b_landing_template_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_landing_template_ref` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `AREA` int(2) NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `K_LANDING_ID` (`LANDING_ID`),
  KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_landing_template_ref`
--

LOCK TABLES `b_landing_template_ref` WRITE;
/*!40000 ALTER TABLE `b_landing_template_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_landing_template_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_lang`
--

DROP TABLE IF EXISTS `b_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_lang` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DIR` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOC_ROOT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOMAIN_LIMITED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SERVER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_lang`
--

LOCK TABLES `b_lang` WRITE;
/*!40000 ALTER TABLE `b_lang` DISABLE KEYS */;
INSERT INTO `b_lang` VALUES ('s1',1,'Y','Y','Сайт по умолчанию','/',NULL,NULL,NULL,NULL,NULL,'ru',NULL,'N',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `b_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_lang_domain`
--

DROP TABLE IF EXISTS `b_lang_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_lang_domain` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`LID`,`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_lang_domain`
--

LOCK TABLES `b_lang_domain` WRITE;
/*!40000 ALTER TABLE `b_lang_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_lang_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_language`
--

DROP TABLE IF EXISTS `b_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_language` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_language`
--

LOCK TABLES `b_language` WRITE;
/*!40000 ALTER TABLE `b_language` DISABLE KEYS */;
INSERT INTO `b_language` VALUES ('en',2,'N','Y','English',NULL,NULL,NULL,NULL,NULL,NULL,2),('ru',1,'Y','Y','Russian',NULL,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `b_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_list_rubric`
--

DROP TABLE IF EXISTS `b_list_rubric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_list_rubric` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `AUTO` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DAYS_OF_MONTH` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DAYS_OF_WEEK` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMES_OF_DAY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_EXECUTED` datetime DEFAULT NULL,
  `VISIBLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `FROM_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_list_rubric`
--

LOCK TABLES `b_list_rubric` WRITE;
/*!40000 ALTER TABLE `b_list_rubric` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_list_rubric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_log_notification`
--

DROP TABLE IF EXISTS `b_log_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_log_notification` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECK_INTERVAL` int(11) DEFAULT NULL,
  `ALERT_COUNT` int(11) DEFAULT NULL,
  `DATE_CHECKED` datetime DEFAULT NULL,
  `NOTIFY_EMAIL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL_TEXT` text COLLATE utf8_unicode_ci,
  `NOTIFY_SMS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `PHONE_NUMBER` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SMS_TEXT` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_log_notification`
--

LOCK TABLES `b_log_notification` WRITE;
/*!40000 ALTER TABLE `b_log_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_log_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_main_mail_blacklist`
--

DROP TABLE IF EXISTS `b_main_mail_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_main_mail_blacklist` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `CATEGORY_ID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_B_MAIN_MAIL_BLACKLIST_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_main_mail_blacklist`
--

LOCK TABLES `b_main_mail_blacklist` WRITE;
/*!40000 ALTER TABLE `b_main_mail_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_main_mail_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_main_mail_sender`
--

DROP TABLE IF EXISTS `b_main_mail_sender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_main_mail_sender` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `IS_CONFIRMED` tinyint(4) NOT NULL DEFAULT '0',
  `IS_PUBLIC` tinyint(4) NOT NULL DEFAULT '0',
  `OPTIONS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_B_MAIN_MAIL_SENDER_USER_ID` (`USER_ID`,`IS_CONFIRMED`,`IS_PUBLIC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_main_mail_sender`
--

LOCK TABLES `b_main_mail_sender` WRITE;
/*!40000 ALTER TABLE `b_main_mail_sender` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_main_mail_sender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_collection`
--

DROP TABLE IF EXISTS `b_medialib_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_collection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DATE_UPDATE` datetime NOT NULL,
  `OWNER_ID` int(11) DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEMS_COUNT` int(11) DEFAULT NULL,
  `ML_TYPE` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_collection`
--

LOCK TABLES `b_medialib_collection` WRITE;
/*!40000 ALTER TABLE `b_medialib_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_collection_item`
--

DROP TABLE IF EXISTS `b_medialib_collection_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_collection_item` (
  `COLLECTION_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  PRIMARY KEY (`ITEM_ID`,`COLLECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_collection_item`
--

LOCK TABLES `b_medialib_collection_item` WRITE;
/*!40000 ALTER TABLE `b_medialib_collection_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_collection_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_item`
--

DROP TABLE IF EXISTS `b_medialib_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_item` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_TYPE` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `SOURCE_ID` int(11) NOT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_item`
--

LOCK TABLES `b_medialib_item` WRITE;
/*!40000 ALTER TABLE `b_medialib_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_medialib_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_medialib_type`
--

DROP TABLE IF EXISTS `b_medialib_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_medialib_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_medialib_type`
--

LOCK TABLES `b_medialib_type` WRITE;
/*!40000 ALTER TABLE `b_medialib_type` DISABLE KEYS */;
INSERT INTO `b_medialib_type` VALUES (1,'image_name','image','jpg,jpeg,gif,png','Y','image_desc'),(2,'video_name','video','flv,mp4,wmv','Y','video_desc'),(3,'sound_name','sound','mp3,wma,aac','Y','sound_desc');
/*!40000 ALTER TABLE `b_medialib_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_message`
--

DROP TABLE IF EXISTS `b_messageservice_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_messageservice_message` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SENDER_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT '0',
  `MESSAGE_FROM` varchar(260) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE_TO` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_HEADERS` longtext COLLATE utf8_unicode_ci,
  `MESSAGE_BODY` longtext COLLATE utf8_unicode_ci NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `EXEC_ERROR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `EXTERNAL_ID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `B_MESSAGESERVICE_MESSAGE_1` (`DATE_EXEC`),
  KEY `B_MESSAGESERVICE_MESSAGE_2` (`SUCCESS_EXEC`),
  KEY `B_MESSAGESERVICE_MESSAGE_3` (`SENDER_ID`,`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_message`
--

LOCK TABLES `b_messageservice_message` WRITE;
/*!40000 ALTER TABLE `b_messageservice_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_rest_app`
--

DROP TABLE IF EXISTS `b_messageservice_rest_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_messageservice_rest_app` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `APP_ID` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `HANDLER` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ADD` datetime DEFAULT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `B_MESSAGESERVICE_REST_APP_1` (`APP_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_rest_app`
--

LOCK TABLES `b_messageservice_rest_app` WRITE;
/*!40000 ALTER TABLE `b_messageservice_rest_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_rest_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_messageservice_rest_app_lang`
--

DROP TABLE IF EXISTS `b_messageservice_rest_app_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_messageservice_rest_app_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(18) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_messageservice_rest_app_lang`
--

LOCK TABLES `b_messageservice_rest_app_lang` WRITE;
/*!40000 ALTER TABLE `b_messageservice_rest_app_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_messageservice_rest_app_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_mobileapp_app`
--

DROP TABLE IF EXISTS `b_mobileapp_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_mobileapp_app` (
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SHORT_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci NOT NULL,
  `FILES` text COLLATE utf8_unicode_ci NOT NULL,
  `LAUNCH_ICONS` text COLLATE utf8_unicode_ci NOT NULL,
  `LAUNCH_SCREENS` text COLLATE utf8_unicode_ci NOT NULL,
  `FOLDER` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_mobileapp_app`
--

LOCK TABLES `b_mobileapp_app` WRITE;
/*!40000 ALTER TABLE `b_mobileapp_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_mobileapp_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_mobileapp_config`
--

DROP TABLE IF EXISTS `b_mobileapp_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_mobileapp_config` (
  `APP_CODE` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PLATFORM` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  PRIMARY KEY (`APP_CODE`,`PLATFORM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_mobileapp_config`
--

LOCK TABLES `b_mobileapp_config` WRITE;
/*!40000 ALTER TABLE `b_mobileapp_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_mobileapp_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module`
--

DROP TABLE IF EXISTS `b_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_module` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ACTIVE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module`
--

LOCK TABLES `b_module` WRITE;
/*!40000 ALTER TABLE `b_module` DISABLE KEYS */;
INSERT INTO `b_module` VALUES ('abtest','2019-10-17 11:02:38'),('b24connector','2019-10-17 11:02:39'),('bitrix.eshop','2019-10-17 11:02:41'),('bitrix.sitecorporate','2019-10-17 11:02:42'),('bitrixcloud','2019-10-17 11:02:43'),('blog','2019-10-17 11:02:46'),('catalog','2019-10-17 11:02:54'),('clouds','2019-10-17 11:02:58'),('compression','2019-10-17 11:03:00'),('conversion','2019-10-17 11:03:04'),('currency','2019-10-17 11:03:07'),('fileman','2019-10-17 11:03:10'),('form','2019-10-17 11:03:15'),('forum','2019-10-17 11:03:19'),('highloadblock','2019-10-17 11:03:27'),('iblock','2019-10-17 11:03:31'),('main','2019-10-17 11:02:32'),('messageservice','2019-10-17 11:03:39'),('mobileapp','2019-10-17 11:03:42'),('perfmon','2019-10-17 11:03:46'),('photogallery','2019-10-17 11:03:48'),('pull','2019-10-17 11:03:52'),('report','2019-10-17 11:03:56'),('rest','2019-10-17 11:03:59'),('sale','2019-10-17 11:04:13'),('scale','2019-10-17 11:04:21'),('search','2019-10-17 11:04:24'),('security','2019-10-17 11:04:29'),('sender','2019-10-17 11:04:34'),('seo','2019-10-17 11:04:40'),('socialservices','2019-10-17 11:04:44'),('storeassist','2019-10-17 11:04:47'),('subscribe','2019-10-17 11:04:50'),('translate','2019-10-17 11:04:54'),('ui','2019-10-17 11:04:57'),('vote','2019-10-17 11:05:00');
/*!40000 ALTER TABLE `b_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module_group`
--

DROP TABLE IF EXISTS `b_module_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_module_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `G_ACCESS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_GROUP_MODULE` (`MODULE_ID`,`GROUP_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module_group`
--

LOCK TABLES `b_module_group` WRITE;
/*!40000 ALTER TABLE `b_module_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_module_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_module_to_module`
--

DROP TABLE IF EXISTS `b_module_to_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_module_to_module` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `FROM_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TO_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TO_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_CLASS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD_ARG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(18) DEFAULT NULL,
  `UNIQUE_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_module_to_module_unique_id` (`UNIQUE_ID`),
  KEY `ix_module_to_module` (`FROM_MODULE_ID`(20),`MESSAGE_ID`(20),`TO_MODULE_ID`(20),`TO_CLASS`(20),`TO_METHOD`(20))
) ENGINE=InnoDB AUTO_INCREMENT=490 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_module_to_module`
--

LOCK TABLES `b_module_to_module` WRITE;
/*!40000 ALTER TABLE `b_module_to_module` DISABLE KEYS */;
INSERT INTO `b_module_to_module` VALUES (1,'2019-10-17 11:02:32',100,'iblock','OnIBlockPropertyBuildList','main','/modules/main/tools/prop_userid.php','CIBlockPropertyUserID','GetUserTypeDescription','',1,'2b30c309bf87645959b9bfbed51b49c6'),(2,'2019-10-17 11:02:32',100,'main','OnUserDelete','main','/modules/main/classes/mysql/favorites.php','CFavorites','OnUserDelete','',1,'f437e170e4daf957766b0b0579f08fb4'),(3,'2019-10-17 11:02:32',100,'main','OnLanguageDelete','main','/modules/main/classes/mysql/favorites.php','CFavorites','OnLanguageDelete','',1,'9211999c5cfc3a4d374e4f957d5079f6'),(4,'2019-10-17 11:02:32',100,'main','OnUserDelete','main','','CUserOptions','OnUserDelete','',1,'9ef4e969f975b6425c7113444d210a90'),(5,'2019-10-17 11:02:32',100,'main','OnChangeFile','main','','CMain','OnChangeFileComponent','',1,'332179402f77c4d41c6c2e524acde4d0'),(6,'2019-10-17 11:02:32',100,'main','OnUserTypeRightsCheck','main','','CUser','UserTypeRightsCheck','',1,'e1aae03ea8eb08e7bbb6d8d42cbc2ebe'),(7,'2019-10-17 11:02:32',100,'main','OnUserLogin','main','','UpdateTools','CheckUpdates','',1,'a2986b9f6e9a99c0351c2ba858dafc85'),(8,'2019-10-17 11:02:32',100,'main','OnModuleUpdate','main','','UpdateTools','SetUpdateResult','',1,'f9b70c6a75b6341063b23bde5d32e582'),(9,'2019-10-17 11:02:32',100,'main','OnUpdateCheck','main','','UpdateTools','SetUpdateError','',1,'a0aecef95a192ec3dd134f71f0f4f175'),(10,'2019-10-17 11:02:32',100,'main','OnPanelCreate','main','','CUndo','CheckNotifyMessage','',1,'6476f96ffba6ab2b4a7dbe644f42edf6'),(11,'2019-10-17 11:02:32',100,'main','OnAfterAddRating','main','','CRatingsComponentsMain','OnAfterAddRating','',1,'6122bee2ad083f8f72e35655cee48859'),(12,'2019-10-17 11:02:32',100,'main','OnAfterUpdateRating','main','','CRatingsComponentsMain','OnAfterUpdateRating','',1,'f8f806e33dc35737bdbe6b9bc42626a4'),(13,'2019-10-17 11:02:32',100,'main','OnSetRatingsConfigs','main','','CRatingsComponentsMain','OnSetRatingConfigs','',1,'9244ca7fd6964757ca191c9407cb1218'),(14,'2019-10-17 11:02:32',100,'main','OnGetRatingsConfigs','main','','CRatingsComponentsMain','OnGetRatingConfigs','',1,'d8ae8e1f8889b1fbb6af276fb14c8411'),(15,'2019-10-17 11:02:32',100,'main','OnGetRatingsObjects','main','','CRatingsComponentsMain','OnGetRatingObject','',1,'129315715250c195ee115002b445a156'),(16,'2019-10-17 11:02:32',100,'main','OnGetRatingContentOwner','main','','CRatingsComponentsMain','OnGetRatingContentOwner','',1,'bf1f5deaa1532fe9a28acd6d19d23a80'),(17,'2019-10-17 11:02:32',100,'main','OnAfterAddRatingRule','main','','CRatingRulesMain','OnAfterAddRatingRule','',1,'298e763431f7f7d6c3af9798663f410d'),(18,'2019-10-17 11:02:32',100,'main','OnAfterUpdateRatingRule','main','','CRatingRulesMain','OnAfterUpdateRatingRule','',1,'4ecdc4a15e24c49f0fa8f44064bf1511'),(19,'2019-10-17 11:02:32',100,'main','OnGetRatingRuleObjects','main','','CRatingRulesMain','OnGetRatingRuleObjects','',1,'6ac10928b76183004ba0e88ace0a1b5b'),(20,'2019-10-17 11:02:32',100,'main','OnGetRatingRuleConfigs','main','','CRatingRulesMain','OnGetRatingRuleConfigs','',1,'06769c4f6bbba4fad79c1619a874ee97'),(21,'2019-10-17 11:02:32',100,'main','OnAfterUserAdd','main','','CRatings','OnAfterUserRegister','',1,'ecb9ae0476db69da6c95b06bcb3aebbb'),(22,'2019-10-17 11:02:32',100,'main','OnUserDelete','main','','CRatings','OnUserDelete','',1,'9fe6984fd29b7ab9508ac02c23690094'),(23,'2019-10-17 11:02:32',100,'main','OnUserDelete','main','','CAccess','OnUserDelete','',1,'71909f221d70fa277429e80412f97f41'),(24,'2019-10-17 11:02:32',100,'main','OnAfterGroupAdd','main','','CGroupAuthProvider','OnAfterGroupAdd','',1,'02f2fe70b9068a6b307192321fe74430'),(25,'2019-10-17 11:02:32',100,'main','OnBeforeGroupUpdate','main','','CGroupAuthProvider','OnBeforeGroupUpdate','',1,'ef0f2e4d0ae7bbf59d0798e8078143f9'),(26,'2019-10-17 11:02:32',100,'main','OnBeforeGroupDelete','main','','CGroupAuthProvider','OnBeforeGroupDelete','',1,'d3ec9527c0e77709402a05ae4249afca'),(27,'2019-10-17 11:02:32',100,'main','OnAfterSetUserGroup','main','','CGroupAuthProvider','OnAfterSetUserGroup','',1,'0de6c5b48e9382f6e857d79f76d95f25'),(28,'2019-10-17 11:02:32',100,'main','OnUserLogin','main','','CGroupAuthProvider','OnUserLogin','',1,'954e2c4ca8624f90f1aee6f40183d5fc'),(29,'2019-10-17 11:02:32',100,'main','OnEventLogGetAuditTypes','main','','CEventMain','GetAuditTypes','',1,'ac0b8b7a5e703131a3bd41b4399bc032'),(30,'2019-10-17 11:02:32',100,'main','OnEventLogGetAuditHandlers','main','','CEventMain','MakeMainObject','',1,'1ddb38ccf35a8a9da5d3b2bc80591ad6'),(31,'2019-10-17 11:02:32',100,'perfmon','OnGetTableSchema','main','','CTableSchema','OnGetTableSchema','',1,'c1f65f88d449e8b8a3b7af9d54ef3f50'),(32,'2019-10-17 11:02:32',100,'sender','OnConnectorList','main','','\\Bitrix\\Main\\SenderEventHandler','onConnectorListUser','',1,'8af99568465a1ccdb6a84e868cf5aad8'),(33,'2019-10-17 11:02:32',110,'main','OnUserTypeBuildList','main','','CUserTypeString','GetUserTypeDescription','',1,'09f8200652932044934bd3c522e920c5'),(34,'2019-10-17 11:02:32',120,'main','OnUserTypeBuildList','main','','CUserTypeInteger','GetUserTypeDescription','',1,'71ef247b3eb3b07e4bd6940791b89497'),(35,'2019-10-17 11:02:32',130,'main','OnUserTypeBuildList','main','','CUserTypeDouble','GetUserTypeDescription','',1,'4fe2008255fe567423cc0c2f080ca741'),(36,'2019-10-17 11:02:32',140,'main','OnUserTypeBuildList','main','','CUserTypeDateTime','GetUserTypeDescription','',1,'686c0679e60bee52dbcc27f5502277b6'),(37,'2019-10-17 11:02:32',145,'main','OnUserTypeBuildList','main','','CUserTypeDate','GetUserTypeDescription','',1,'7e19b5fc5fc48b1cd317a6ac44d84236'),(38,'2019-10-17 11:02:32',150,'main','OnUserTypeBuildList','main','','CUserTypeBoolean','GetUserTypeDescription','',1,'4d5e1dd2369089f2db9480549241205f'),(39,'2019-10-17 11:02:32',155,'main','OnUserTypeBuildList','main','','CUserTypeUrl','GetUserTypeDescription','',1,'79fcd650625b296abf13216cd5af2428'),(40,'2019-10-17 11:02:32',160,'main','OnUserTypeBuildList','main','','CUserTypeFile','GetUserTypeDescription','',1,'67b9a4fbc45240a7887b73e3a246eba0'),(41,'2019-10-17 11:02:32',170,'main','OnUserTypeBuildList','main','','CUserTypeEnum','GetUserTypeDescription','',1,'fbebdb289fe38c1fbfeda4d3d8ee43ef'),(42,'2019-10-17 11:02:32',180,'main','OnUserTypeBuildList','main','','CUserTypeIBlockSection','GetUserTypeDescription','',1,'2065f8305645790970bac0b99f127f47'),(43,'2019-10-17 11:02:32',190,'main','OnUserTypeBuildList','main','','CUserTypeIBlockElement','GetUserTypeDescription','',1,'65bda5818e3545f1683a3ff5271cc891'),(44,'2019-10-17 11:02:32',200,'main','OnUserTypeBuildList','main','','CUserTypeStringFormatted','GetUserTypeDescription','',1,'47e3cf1c280e01dbaed43f9989a6747b'),(45,'2019-10-17 11:02:32',210,'main','OnUserTypeBuildList','main','','\\Bitrix\\Main\\UrlPreview\\UrlPreviewUserType','getUserTypeDescription','',1,'719d15ee5f60f6348d2bd6a8911aeed1'),(46,'2019-10-17 11:02:32',100,'main','OnBeforeEndBufferContent','main','','\\Bitrix\\Main\\Analytics\\Counter','onBeforeEndBufferContent','',1,'ff5eb984fe6ce3e8d769bf3ba646b902'),(47,'2019-10-17 11:02:32',100,'main','OnBeforeRestartBuffer','main','','\\Bitrix\\Main\\Analytics\\Counter','onBeforeRestartBuffer','',1,'0782f5a6df6dd52d834caea88c3ba3a7'),(48,'2019-10-17 11:02:32',100,'main','OnFileDelete','main','','\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable','onFileDelete','',1,'54c80cd94412db221338aeb59902f059'),(49,'2019-10-17 11:02:32',100,'disk','onAfterAjaxActionCreateFolderWithSharing','main','','\\Bitrix\\Main\\FinderDestTable','onAfterDiskAjaxAction','',1,'bfd508b9d33aff2527add538ca8ce0da'),(50,'2019-10-17 11:02:32',100,'disk','onAfterAjaxActionAppendSharing','main','','\\Bitrix\\Main\\FinderDestTable','onAfterDiskAjaxAction','',1,'a98030c3e6d284d10916eadb1153cb68'),(51,'2019-10-17 11:02:32',100,'disk','onAfterAjaxActionChangeSharingAndRights','main','','\\Bitrix\\Main\\FinderDestTable','onAfterDiskAjaxAction','',1,'6787372096415bcfe93bd50d8b24f608'),(52,'2019-10-17 11:02:32',100,'socialnetwork','OnSocNetLogDelete','main','','CUserCounter','OnSocNetLogDelete','',1,'33e603755a0bc07abd51a1f8ed52966e'),(53,'2019-10-17 11:02:32',100,'socialnetwork','OnSocNetLogCommentDelete','main','','CUserCounter','OnSocNetLogCommentDelete','',1,'51ee2214895be904a880046f43e84138'),(54,'2019-10-17 11:02:32',100,'main','OnAdminInformerInsertItems','main','','CMpNotifications','OnAdminInformerInsertItemsHandlerMP','',1,'c89c0e94ac1110c334a24c70e1773daa'),(55,'2019-10-17 11:02:32',100,'rest','OnRestServiceBuildDescription','main','','\\Bitrix\\Main\\Rest\\Handlers','onRestServiceBuildDescription','',1,'c0b0c358a21b648d4f9c5d29d17a5ab2'),(56,'2019-10-17 11:02:32',100,'sale','OnSaleBasketItemSaved','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogBasket','',2,'fa4fc3924ff2585e92f8bdabaf287864'),(57,'2019-10-17 11:02:32',100,'sale','OnSaleOrderSaved','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogOrder','',2,'6b358bb17b30da91b105fb1451ed9aaa'),(58,'2019-10-17 11:02:32',100,'sale','OnSaleOrderPaid','main','','\\Bitrix\\Main\\Analytics\\Catalog','catchCatalogOrderPayment','',2,'8f5ca6e1c5136cb4bbf30474f0ff4183'),(59,'2019-10-17 11:02:32',1000,'sale','onBuildDiscountConditionInterfaceControls','main','','\\Bitrix\\Main\\Discount\\UserConditionControl','onBuildDiscountConditionInterfaceControls','',1,'9f0d91c081704e52b52f540b3acaf52e'),(60,'2019-10-17 11:02:32',100,'main','OnBeforePhpMail','main','','\\Bitrix\\Main\\Mail\\Sender','applyCustomSmtp','',2,'10fbf5b8dec05a02d8d7010e594f16ec'),(61,'2019-10-17 11:02:32',100,'main','OnBuildFilterFactoryMethods','main','','\\Bitrix\\Main\\Filter\\FactoryMain','onBuildFilterFactoryMethods','',2,'19f10c2686a955bd8b8116ea1f1ad829'),(62,'2019-10-17 11:02:38',100,'main','OnGetCurrentSiteTemplate','abtest','','\\Bitrix\\ABTest\\EventHandler','onGetCurrentSiteTemplate','',2,'60d538ac3cd74b48090c03bc66abd140'),(63,'2019-10-17 11:02:38',100,'main','OnFileRewrite','abtest','','\\Bitrix\\ABTest\\EventHandler','onFileRewrite','',2,'aa8cc0e27725772a1d4e6b918153df5b'),(64,'2019-10-17 11:02:38',100,'main','OnPageStart','abtest','','\\Bitrix\\ABTest\\EventHandler','onPageStart','',1,'5306ab7d79c018f275a2532408edd681'),(65,'2019-10-17 11:02:38',100,'main','OnPanelCreate','abtest','','\\Bitrix\\ABTest\\EventHandler','onPanelCreate','',1,'6dcaad114976a562ed063610737fbc47'),(66,'2019-10-17 11:02:38',100,'conversion','OnGetAttributeTypes','abtest','','\\Bitrix\\ABTest\\EventHandler','onGetAttributeTypes','',1,'661d636871147c62f9765e2e0e62b61d'),(67,'2019-10-17 11:02:38',100,'conversion','OnSetDayContextAttributes','abtest','','\\Bitrix\\ABTest\\EventHandler','onConversionSetContextAttributes','',1,'e11e780040f6e6e1fd5a648ed28d5d98'),(68,'2019-10-17 11:02:39',100,'main','OnBuildGlobalMenu','b24connector','','\\Bitrix\\B24Connector\\Helper','onBuildGlobalMenu','',1,'9c4452a442bacc2d4d70635962485be1'),(69,'2019-10-17 11:02:39',100,'main','OnBeforeProlog','b24connector','','\\Bitrix\\B24Connector\\Helper','onBeforeProlog','',1,'641053ff6ee8ff57518d7c30724530e5'),(70,'2019-10-17 11:02:41',100,'main','OnBeforeProlog','bitrix.eshop','','CEShop','ShowPanel','',1,'248b97b3af12fc019148a95482208075'),(71,'2019-10-17 11:02:42',100,'main','OnBeforeProlog','bitrix.sitecorporate','','CSiteCorporate','ShowPanel','',1,'bc7c322534797a9ed3493c40e1b8fdac'),(72,'2019-10-17 11:02:43',100,'main','OnAdminInformerInsertItems','bitrixcloud','','CBitrixCloudBackup','OnAdminInformerInsertItems','',1,'5499039afdd0fdb38d4b245c8b886dcb'),(73,'2019-10-17 11:02:43',100,'mobileapp','OnBeforeAdminMobileMenuBuild','bitrixcloud','','CBitrixCloudMobile','OnBeforeAdminMobileMenuBuild','',1,'5828a8cdb2cc45e2724ef1c76139df88'),(74,'2019-10-17 11:02:46',100,'search','OnReindex','blog','','CBlogSearch','OnSearchReindex','',1,'6c23ebfcdfc99d14541ad083b0ee7430'),(75,'2019-10-17 11:02:46',100,'main','OnUserDelete','blog','','CBlogUser','Delete','',1,'9e7cb3d757ecbfea5e1a218afcf30589'),(76,'2019-10-17 11:02:46',100,'main','OnSiteDelete','blog','','CBlogSitePath','DeleteBySiteID','',1,'33b1b3449b56990b745b251f3976521d'),(77,'2019-10-17 11:02:46',100,'socialnetwork','OnSocNetGroupDelete','blog','','CBlogSoNetPost','OnGroupDelete','',1,'4fa06723b7108652d8f6846f17c4bfda'),(78,'2019-10-17 11:02:46',100,'socialnetwork','OnSocNetFeaturesAdd','blog','','CBlogSearch','SetSoNetFeatureIndexSearch','',1,'5e642b195637a47eda278a2f769d72ae'),(79,'2019-10-17 11:02:46',100,'socialnetwork','OnSocNetFeaturesUpdate','blog','','CBlogSearch','SetSoNetFeatureIndexSearch','',1,'94116bd773c35830e32cabd264e1deac'),(80,'2019-10-17 11:02:46',100,'socialnetwork','OnBeforeSocNetFeaturesPermsAdd','blog','','CBlogSearch','OnBeforeSocNetFeaturesPermsAdd','',1,'ef99702762ccf8958b3bd05a0bc2bd21'),(81,'2019-10-17 11:02:46',100,'socialnetwork','OnSocNetFeaturesPermsAdd','blog','','CBlogSearch','SetSoNetFeaturePermIndexSearch','',1,'7e78a43487928787ac0665eb1eade0d5'),(82,'2019-10-17 11:02:46',100,'socialnetwork','OnBeforeSocNetFeaturesPermsUpdate','blog','','CBlogSearch','OnBeforeSocNetFeaturesPermsUpdate','',1,'13116dc44040b680c93a2b7f60ff2845'),(83,'2019-10-17 11:02:46',100,'socialnetwork','OnSocNetFeaturesPermsUpdate','blog','','CBlogSearch','SetSoNetFeaturePermIndexSearch','',1,'06ae1cde11216c73393f8720c0f31ea9'),(84,'2019-10-17 11:02:46',200,'main','OnAfterAddRating','blog','','CRatingsComponentsBlog','OnAfterAddRating','',1,'6dd70a97fa5c2f15e619721007813bd0'),(85,'2019-10-17 11:02:46',200,'main','OnAfterUpdateRating','blog','','CRatingsComponentsBlog','OnAfterUpdateRating','',1,'a2f4b906bc5e1e984c28ef37728d7007'),(86,'2019-10-17 11:02:46',200,'main','OnSetRatingsConfigs','blog','','CRatingsComponentsBlog','OnSetRatingConfigs','',1,'4461c77de3ca9dec12cd66c9554555a0'),(87,'2019-10-17 11:02:46',200,'main','OnGetRatingsConfigs','blog','','CRatingsComponentsBlog','OnGetRatingConfigs','',1,'6708964800c60ed28bb3ac095494d0f8'),(88,'2019-10-17 11:02:46',200,'main','OnGetRatingsObjects','blog','','CRatingsComponentsBlog','OnGetRatingObject','',1,'29df09132203259924e883921fed0971'),(89,'2019-10-17 11:02:46',200,'main','OnGetRatingContentOwner','blog','','CRatingsComponentsBlog','OnGetRatingContentOwner','',1,'a47b921e59710bdca16e2284d11e8aa0'),(90,'2019-10-17 11:02:46',100,'im','OnGetNotifySchema','blog','','CBlogNotifySchema','OnGetNotifySchema','',1,'cd6910b2ee2dd66f257a68a6406b9f79'),(91,'2019-10-17 11:02:46',100,'im','OnAnswerNotify','blog','','CBlogNotifySchema','CBlogEventsIMCallback','',1,'890d3be770eab6025cc54e120d3b51f5'),(92,'2019-10-17 11:02:46',100,'main','OnAfterRegisterModule','main','/modules/blog/install/index.php','blog','installUserFields','',1,'bfd07861166a9d51c1d21d18b291a1dc'),(93,'2019-10-17 11:02:46',100,'conversion','OnGetCounterTypes','blog','','\\Bitrix\\Blog\\Internals\\ConversionHandlers','onGetCounterTypes','',1,'e5df84e19828b3b95901e7b2a5d55cb1'),(94,'2019-10-17 11:02:46',100,'conversion','OnGetRateTypes','blog','','\\Bitrix\\Blog\\Internals\\ConversionHandlers','onGetRateTypes','',1,'75028a7a2551f7c677c09c367ed1a54c'),(95,'2019-10-17 11:02:46',100,'blog','OnPostAdd','blog','','\\Bitrix\\Blog\\Internals\\ConversionHandlers','onPostAdd','',1,'a3b637f0c0945089c95d5c08e1166938'),(96,'2019-10-17 11:02:46',100,'mail','onReplyReceivedBLOG_POST','blog','','\\Bitrix\\Blog\\Internals\\MailHandler','handleReplyReceivedBlogPost','',2,'5e3d8ad3f14c5b994981074e43a02cd7'),(97,'2019-10-17 11:02:46',100,'mail','onForwardReceivedBLOG_POST','blog','','\\Bitrix\\Blog\\Internals\\MailHandler','handleForwardReceivedBlogPost','',2,'6002badd4ffa13790a43d45c5c29fca3'),(98,'2019-10-17 11:02:46',100,'socialnetwork','onLogIndexGetContent','blog','','\\Bitrix\\Blog\\Integration\\Socialnetwork\\Log','onIndexGetContent','',2,'3fba13b74a731f896448388c082c24a4'),(99,'2019-10-17 11:02:46',100,'socialnetwork','onLogCommentIndexGetContent','blog','','\\Bitrix\\Blog\\Integration\\Socialnetwork\\LogComment','onIndexGetContent','',2,'57ce8e76c004b1447554d8ec64c48783'),(100,'2019-10-17 11:02:46',100,'socialnetwork','onContentViewed','blog','','\\Bitrix\\Blog\\Integration\\Socialnetwork\\ContentViewHandler','onContentViewed','',2,'d33a4b2ae579a2c9b5ddcea17bc62806'),(101,'2019-10-17 11:02:54',100,'sale','onBuildCouponProviders','catalog','','\\Bitrix\\Catalog\\DiscountCouponTable','couponManager','',2,'149987dca659cf0a46b8865379984e84'),(102,'2019-10-17 11:02:54',100,'sale','onBuildDiscountProviders','catalog','','\\Bitrix\\Catalog\\Discount\\DiscountManager','catalogDiscountManager','',2,'a79cb3305680338de199bdf06abb3180'),(103,'2019-10-17 11:02:54',100,'sale','onExtendOrderData','catalog','','\\Bitrix\\Catalog\\Discount\\DiscountManager','extendOrderData','',2,'2e6a5dca7c032410c247b458d46ad1a7'),(104,'2019-10-17 11:02:54',100,'currency','onAfterUpdateCurrencyBaseRate','catalog','','\\Bitrix\\Catalog\\Product\\Price','handlerAfterUpdateCurrencyBaseRate','',2,'2a27b8caf40ba22982116e32a677acb4'),(105,'2019-10-17 11:02:54',100,'iblock','Bitrix\\Iblock\\Model\\PropertyFeature::OnPropertyFeatureBuildList','catalog','','\\Bitrix\\Catalog\\Product\\PropertyCatalogFeature','handlerPropertyFeatureBuildList','',2,'b8d021ca1e770efee714313eeb0f395d'),(106,'2019-10-17 11:02:54',100,'main','onUserDelete','catalog','','\\Bitrix\\Catalog\\SubscribeTable','onUserDelete','',1,'d41d574baa35df8135453b6259370ab8'),(107,'2019-10-17 11:02:54',100,'catalog','onAddContactType','catalog','','\\Bitrix\\Catalog\\SubscribeTable','onAddContactType','',1,'5c357fdd782545c0d783b8cb5f69944e'),(108,'2019-10-17 11:02:54',100,'sale','OnSaleOrderSaved','catalog','','\\Bitrix\\Catalog\\SubscribeTable','onSaleOrderSaved','',2,'af377df5e882b2060677fe888e46708d'),(109,'2019-10-17 11:02:54',100,'iblock','OnBeforeIBlockUpdate','catalog','','CCatalog','OnBeforeIBlockUpdate','',1,'20473d108fa3453bdd23e83b4042fa6c'),(110,'2019-10-17 11:02:54',100,'iblock','OnAfterIBlockUpdate','catalog','','CCatalog','OnAfterIBlockUpdate','',1,'8a3510d500cd5f992df052dad4364351'),(111,'2019-10-17 11:02:54',100,'iblock','OnIBlockDelete','catalog','','CCatalog','OnIBlockDelete','',1,'5e967a8d54f1450c517271a242af9798'),(112,'2019-10-17 11:02:54',100,'iblock','OnIBlockElementDelete','catalog','','CCatalogProduct','OnIBlockElementDelete','',1,'7059003f9a69613a543217c843165806'),(113,'2019-10-17 11:02:54',100,'iblock','OnIBlockElementDelete','catalog','','CCatalogDocs','OnIBlockElementDelete','',1,'473e9ba98fd404232fbd4eaa6047b2e6'),(114,'2019-10-17 11:02:54',100,'iblock','OnBeforeIBlockElementDelete','catalog','','CCatalogDocs','OnBeforeIBlockElementDelete','',1,'0a2aa7b2cd035c519edb3b97f469659e'),(115,'2019-10-17 11:02:54',100,'currency','OnCurrencyDelete','catalog','','CPrice','OnCurrencyDelete','',1,'b1d8db27be88d8db06e2ca5cdb70d292'),(116,'2019-10-17 11:02:54',100,'main','OnGroupDelete','catalog','','CCatalogProductGroups','OnGroupDelete','',1,'f9a572224763e4f8a43d20e46ef3d42c'),(117,'2019-10-17 11:02:54',100,'currency','OnModuleUnInstall','catalog','','','CurrencyModuleUnInstallCatalog','',1,'d543b7b2808a90ee928b3fe064da3a3a'),(118,'2019-10-17 11:02:54',300,'iblock','OnBeforeIBlockDelete','catalog','','CCatalog','OnBeforeCatalogDelete','',1,'f800402b228a381afd80de0b08fbb74c'),(119,'2019-10-17 11:02:54',10000,'iblock','OnBeforeIBlockElementDelete','catalog','','CCatalog','OnBeforeIBlockElementDelete','',1,'c0b6450dbcf9d705d9dc58cc341b7764'),(120,'2019-10-17 11:02:54',100,'main','OnEventLogGetAuditTypes','catalog','','CCatalogEvent','GetAuditTypes','',1,'8c1b1ae868470a010947cfa9f4a94728'),(121,'2019-10-17 11:02:54',100,'main','OnBuildGlobalMenu','catalog','','CCatalogAdmin','OnBuildGlobalMenu','',1,'61985a8f756cd4ffc76d49f2c5847325'),(122,'2019-10-17 11:02:54',100,'main','OnAdminListDisplay','catalog','','CCatalogAdmin','OnAdminListDisplay','',1,'0598c76c5a6edce7a381fe0a00b6c14c'),(123,'2019-10-17 11:02:54',100,'main','OnBuildGlobalMenu','catalog','','CCatalogAdmin','OnBuildSaleMenu','',1,'82d8c99ecb0e9fa7a1ccde1159970ec0'),(124,'2019-10-17 11:02:54',100,'catalog','OnCondCatControlBuildList','catalog','','CCatalogCondCtrlGroup','GetControlDescr','',1,'5d91bdca64d0012fa2fe1436d06128b8'),(125,'2019-10-17 11:02:54',200,'catalog','OnCondCatControlBuildList','catalog','','CCatalogCondCtrlIBlockFields','GetControlDescr','',1,'438174b14c7b3e740a9c87aecb5000ff'),(126,'2019-10-17 11:02:54',300,'catalog','OnCondCatControlBuildList','catalog','','CCatalogCondCtrlIBlockProps','GetControlDescr','',1,'b84976e3ea98a89000a0ad48f940d954'),(127,'2019-10-17 11:02:54',100,'catalog','OnDocumentBarcodeDelete','catalog','','CCatalogStoreDocsElement','OnDocumentBarcodeDelete','',1,'6e1cbc640f4f96509fbe848236f4cd7e'),(128,'2019-10-17 11:02:54',100,'catalog','OnBeforeDocumentDelete','catalog','','CCatalogStoreDocsBarcode','OnBeforeDocumentDelete','',1,'2f3d49c7cdb6c6438f1de52a8e549e9f'),(129,'2019-10-17 11:02:54',100,'catalog','OnCatalogStoreDelete','catalog','','CCatalogDocs','OnCatalogStoreDelete','',1,'124e8e2d8f0119f76f27b7e2db942b03'),(130,'2019-10-17 11:02:54',100,'iblock','OnBeforeIBlockPropertyUpdate','catalog','','CCatalog','OnBeforeIBlockPropertyUpdate','',1,'3dfd37e5cbbc409c71590b637ee8e78f'),(131,'2019-10-17 11:02:54',100,'iblock','OnBeforeIBlockPropertyDelete','catalog','','CCatalog','OnBeforeIBlockPropertyDelete','',1,'10b5a82b111e7e6bfe85c5c9b41a20f9'),(132,'2019-10-17 11:02:54',1100,'sale','OnCondSaleControlBuildList','catalog','','CCatalogCondCtrlBasketProductFields','GetControlDescr','',1,'cf95069fe89b4889202838dfc207e221'),(133,'2019-10-17 11:02:54',1200,'sale','OnCondSaleControlBuildList','catalog','','CCatalogCondCtrlBasketProductProps','GetControlDescr','',1,'23f57eb479bb8b422d83907ad482c330'),(134,'2019-10-17 11:02:54',1200,'sale','OnCondSaleActionsControlBuildList','catalog','','CCatalogActionCtrlBasketProductFields','GetControlDescr','',1,'f7044eb787ef0bfe1863c19510e35eda'),(135,'2019-10-17 11:02:54',1300,'sale','OnCondSaleActionsControlBuildList','catalog','','CCatalogActionCtrlBasketProductProps','GetControlDescr','',1,'f82ea413fd04192063853f349184b14c'),(136,'2019-10-17 11:02:54',200,'sale','OnCondSaleActionsControlBuildList','catalog','','CCatalogGifterProduct','GetControlDescr','',1,'500f3bcdb2eb16b07afb49f728f14e0b'),(137,'2019-10-17 11:02:54',100,'sale','OnExtendBasketItems','catalog','','CCatalogDiscount','ExtendBasketItems','',1,'0d9379e11c541ae3937f6c8a2aa4d9cb'),(138,'2019-10-17 11:02:54',100,'iblock','OnModuleUnInstall','catalog','','CCatalog','OnIBlockModuleUnInstall','',1,'404386acb545579801ea359031480b8a'),(139,'2019-10-17 11:02:54',100,'iblock','OnIBlockElementAdd','catalog','','\\Bitrix\\Catalog\\Product\\Sku','handlerIblockElementAdd','',1,'0bc066519a069f3c7e8a9b1a924cbd93'),(140,'2019-10-17 11:02:54',100,'iblock','OnAfterIBlockElementAdd','catalog','','\\Bitrix\\Catalog\\Product\\Sku','handlerAfterIblockElementAdd','',1,'2bdbadf32a2739ca74207b5b6a3c57b4'),(141,'2019-10-17 11:02:54',100,'iblock','OnIBlockElementUpdate','catalog','','\\Bitrix\\Catalog\\Product\\Sku','handlerIblockElementUpdate','',1,'4d7b2e7645a78c0e811227dd0ad17196'),(142,'2019-10-17 11:02:55',100,'iblock','OnAfterIBlockElementUpdate','catalog','','\\Bitrix\\Catalog\\Product\\Sku','handlerAfterIblockElementUpdate','',1,'b4d8f2e66a6d0339464d06313d2a12e1'),(143,'2019-10-17 11:02:55',100,'iblock','OnIBlockElementDelete','catalog','','\\Bitrix\\Catalog\\Product\\Sku','handlerIblockElementDelete','',1,'a36bb73947c2bbcee47e99eeea6a7a9d'),(144,'2019-10-17 11:02:55',100,'iblock','OnAfterIBlockElementDelete','catalog','','\\Bitrix\\Catalog\\Product\\Sku','handlerAfterIblockElementDelete','',1,'710bc6d1d6caeebe07236d8ae7b13947'),(145,'2019-10-17 11:02:55',100,'iblock','OnIBlockElementSetPropertyValues','catalog','','\\Bitrix\\Catalog\\Product\\Sku','handlerIblockElementSetPropertyValues','',1,'736bc258d570c9e9f8c22f487aa2f5b2'),(146,'2019-10-17 11:02:55',100,'iblock','OnAfterIBlockElementSetPropertyValues','catalog','','\\Bitrix\\Catalog\\Product\\Sku','handlerAfterIBlockElementSetPropertyValues','',1,'eb62701827bbf2142607673287f40eba'),(147,'2019-10-17 11:02:55',100,'iblock','OnIBlockElementSetPropertyValuesEx','catalog','','\\Bitrix\\Catalog\\Product\\Sku','handlerIblockElementSetPropertyValuesEx','',1,'2406edbb8ef039316d6d74a6f8730339'),(148,'2019-10-17 11:02:55',100,'iblock','OnAfterIBlockElementSetPropertyValuesEx','catalog','','\\Bitrix\\Catalog\\Product\\Sku','handlerAfterIblockElementSetPropertyValuesEx','',1,'b74bcb119ced25572957202ee6fe4bb8'),(149,'2019-10-17 11:02:55',100,'perfmon','OnGetTableSchema','catalog','','catalog','getTableSchema','',1,'b4dab8df207b4cba0a73960116bf41be'),(150,'2019-10-17 11:02:58',100,'main','OnEventLogGetAuditTypes','clouds','','CCloudStorage','GetAuditTypes','',1,'da69722ba95497cf263381b46e24df40'),(151,'2019-10-17 11:02:58',90,'main','OnBeforeProlog','clouds','','CCloudStorage','OnBeforeProlog','',1,'f8c39ff182ad873715f10a7091f928a4'),(152,'2019-10-17 11:02:58',100,'main','OnAdminListDisplay','clouds','','CCloudStorage','OnAdminListDisplay','',1,'8ddf4f578e7229a63cba4d2124c7643c'),(153,'2019-10-17 11:02:58',100,'main','OnBuildGlobalMenu','clouds','','CCloudStorage','OnBuildGlobalMenu','',1,'d6d308843a6521ad50bfa230a2fcef8f'),(154,'2019-10-17 11:02:58',100,'main','OnFileSave','clouds','','CCloudStorage','OnFileSave','',1,'1e4f94a842d6166359ed1789a6f21245'),(155,'2019-10-17 11:02:58',100,'main','OnGetFileSRC','clouds','','CCloudStorage','OnGetFileSRC','',1,'7ec03b3b7ad3f2f54c1e438a1172e5a8'),(156,'2019-10-17 11:02:58',100,'main','OnFileCopy','clouds','','CCloudStorage','OnFileCopy','',1,'6880b56c76f7d3c5d09f887fca6341ca'),(157,'2019-10-17 11:02:58',100,'main','OnFileDelete','clouds','','CCloudStorage','OnFileDelete','',1,'fefe695dc9f0e579e949c2dfcbe90d9d'),(158,'2019-10-17 11:02:58',100,'main','OnMakeFileArray','clouds','','CCloudStorage','OnMakeFileArray','',1,'713ea8a7a25764b1af60f7a1ec3032d5'),(159,'2019-10-17 11:02:58',100,'main','OnBeforeResizeImage','clouds','','CCloudStorage','OnBeforeResizeImage','',1,'705cd310c52f9c7e8e0c8a0578a22667'),(160,'2019-10-17 11:02:58',100,'main','OnAfterResizeImage','clouds','','CCloudStorage','OnAfterResizeImage','',1,'a403ad2328227153475df0c478a465cc'),(161,'2019-10-17 11:02:58',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_AmazonS3','GetObjectInstance','',1,'a4eb7ed1f50b5931474c565f448a4069'),(162,'2019-10-17 11:02:58',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_GoogleStorage','GetObjectInstance','',1,'1e559e2225608e8d40eeede5b7526f2a'),(163,'2019-10-17 11:02:58',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_OpenStackStorage','GetObjectInstance','',1,'5ad09feff5dab28ab571ad034ccdf2ea'),(164,'2019-10-17 11:02:58',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_RackSpaceCloudFiles','GetObjectInstance','',1,'cc976773610cf809bb56871ac7dd9f01'),(165,'2019-10-17 11:02:58',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_ClodoRU','GetObjectInstance','',1,'faadad31436e94c420ed787e4424714b'),(166,'2019-10-17 11:02:58',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_Selectel','GetObjectInstance','',1,'5e63a8eebed42bd099b4a9ef62e8d52b'),(167,'2019-10-17 11:02:58',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_HotBox','GetObjectInstance','',1,'1913169adcd6d6f3b7fb5f3b70ba1fd8'),(168,'2019-10-17 11:02:58',100,'clouds','OnGetStorageService','clouds','','CCloudStorageService_Yandex','GetObjectInstance','',1,'12bd1d4f0d145d5b1681955612fe61c8'),(169,'2019-10-17 11:02:58',100,'perfmon','OnGetTableSchema','clouds','','clouds','OnGetTableSchema','',1,'d31a1f80f07441976eb1711db4902a71'),(170,'2019-10-17 11:03:00',1,'main','OnPageStart','compression','','CCompress','OnPageStart','',1,'b5b3b05c97cb867ae7494ab99fa9a119'),(171,'2019-10-17 11:03:01',10000,'main','OnAfterEpilog','compression','','CCompress','OnAfterEpilog','',1,'397a459912acd1c78fc9129065807860'),(172,'2019-10-17 11:03:04',100,'conversion','OnGetCounterTypes','conversion','','\\Bitrix\\Conversion\\Internals\\Handlers','onGetCounterTypes','',1,'de0c5305804499432c6cfe04f196d253'),(173,'2019-10-17 11:03:04',100,'conversion','OnGetAttributeTypes','conversion','','\\Bitrix\\Conversion\\Internals\\Handlers','onGetAttributeTypes','',1,'4315a9aa889ec27c69b846ae15121863'),(174,'2019-10-17 11:03:04',100,'conversion','OnGetAttributeGroupTypes','conversion','','\\Bitrix\\Conversion\\Internals\\Handlers','onGetAttributeGroupTypes','',1,'79466c29772530a40940cae056779af5'),(175,'2019-10-17 11:03:04',100,'conversion','OnSetDayContextAttributes','conversion','','\\Bitrix\\Conversion\\Internals\\Handlers','onSetDayContextAttributes','',1,'25facb7847c091eadeefef8ac4ea55f9'),(176,'2019-10-17 11:03:04',100,'main','OnProlog','conversion','','\\Bitrix\\Conversion\\Internals\\Handlers','onProlog','',1,'b47ab3ab76f0aa0632597e3097373bf7'),(177,'2019-10-17 11:03:07',100,'iblock','OnIBlockPropertyBuildList','currency','','\\Bitrix\\Currency\\Integration\\IblockMoneyProperty','getUserTypeDescription','',1,'610afb33335371bcc2e0d46b613d5bad'),(178,'2019-10-17 11:03:07',100,'main','OnUserTypeBuildList','currency','','\\Bitrix\\Currency\\UserField\\Money','getUserTypeDescription','',1,'24103a8cc99e412ed1e690c24300d973'),(179,'2019-10-17 11:03:10',100,'main','OnGroupDelete','fileman','','CFileman','OnGroupDelete','',1,'d10f791d422ba0e7551ab267db50404c'),(180,'2019-10-17 11:03:10',100,'main','OnPanelCreate','fileman','','CFileman','OnPanelCreate','',1,'b00a6174fb1763684c299ccf5e054c65'),(181,'2019-10-17 11:03:10',100,'main','OnModuleUpdate','fileman','','CFileman','OnModuleUpdate','',1,'58ae853e2b7c230b5cdb51129efd8a05'),(182,'2019-10-17 11:03:10',100,'main','OnModuleInstalled','fileman','','CFileman','ClearComponentsListCache','',1,'7bdbd354eab11f376fa257a998587277'),(183,'2019-10-17 11:03:10',100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyMapGoogle','GetUserTypeDescription','',1,'d9d06fd05f80b33379359ebd8e36e655'),(184,'2019-10-17 11:03:10',100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyMapYandex','GetUserTypeDescription','',1,'20ca1d02998884b5abec68b32fdb561d'),(185,'2019-10-17 11:03:10',100,'iblock','OnIBlockPropertyBuildList','fileman','','CIBlockPropertyVideo','GetUserTypeDescription','',1,'991c32062e05844708a5cf7aba37bf9a'),(186,'2019-10-17 11:03:10',100,'main','OnUserTypeBuildList','fileman','','CUserTypeVideo','GetUserTypeDescription','',1,'41bc5efb49ebf8d165acd4e4d556f60c'),(187,'2019-10-17 11:03:10',100,'main','OnEventLogGetAuditTypes','fileman','','CEventFileman','GetAuditTypes','',1,'e0a610651ffec1fbddb2f261223fb2e9'),(188,'2019-10-17 11:03:10',100,'main','OnEventLogGetAuditHandlers','fileman','','CEventFileman','MakeFilemanObject','',1,'fbfef1ef99530f6eae191da293f9566c'),(189,'2019-10-17 11:03:10',154,'main','OnUserTypeBuildList','fileman','','\\Bitrix\\Fileman\\UserField\\Address','getUserTypeDescription','',1,'f0583a376e38d3d2675513b1a367ed3c'),(190,'2019-10-17 11:03:15',100,'sender','OnConnectorList','form','','\\Bitrix\\Form\\SenderEventHandler','onConnectorListForm','',1,'182217f1803d20e2899086e379ada21c'),(191,'2019-10-17 11:03:20',100,'main','OnAfterUserUpdate','forum','','CForumUser','OnAfterUserUpdate','',1,'18ca0a9757a229b6290603235dfff0d1'),(192,'2019-10-17 11:03:20',100,'main','OnGroupDelete','forum','','CForumNew','OnGroupDelete','',1,'63f10ce39f269a9f1add6a0600aa05b9'),(193,'2019-10-17 11:03:20',100,'main','OnBeforeLangDelete','forum','','CForumNew','OnBeforeLangDelete','',1,'201c2a343960654a90382521e253328f'),(194,'2019-10-17 11:03:20',100,'main','OnFileDelete','forum','','CForumFiles','OnFileDelete','',1,'a00aa95408b2665018cb63e21cef4684'),(195,'2019-10-17 11:03:20',100,'search','OnReindex','forum','','CForumNew','OnReindex','',1,'3fe2c3077963069fee2360611d840816'),(196,'2019-10-17 11:03:20',100,'main','OnUserDelete','forum','','CForumUser','OnUserDelete','',1,'eb0cb7958d708be629eba740bcabd8c4'),(197,'2019-10-17 11:03:20',100,'iblock','OnIBlockPropertyBuildList','main','/modules/forum/tools/prop_topicid.php','CIBlockPropertyTopicID','GetUserTypeDescription','',1,'d5b04b52654500981293dbcf10ca1ef9'),(198,'2019-10-17 11:03:20',100,'iblock','OnBeforeIBlockElementDelete','forum','','CForumTopic','OnBeforeIBlockElementDelete','',1,'929cf569dd703b922e4a96a0a023f120'),(199,'2019-10-17 11:03:20',100,'main','OnEventLogGetAuditTypes','forum','','CForumEventLog','GetAuditTypes','',1,'30a759001702af8052ea65e700c519c7'),(200,'2019-10-17 11:03:20',100,'main','OnEventLogGetAuditHandlers','forum','','CEventForum','MakeForumObject','',1,'78ecc0524ac5d4fb0545c8a3fa28b3bd'),(201,'2019-10-17 11:03:20',100,'socialnetwork','OnSocNetGroupDelete','forum','','CForumUser','OnSocNetGroupDelete','',1,'94cfb4cf5460746b7b31a5b93a3805f6'),(202,'2019-10-17 11:03:20',100,'socialnetwork','OnSocNetLogFormatEvent','forum','','CForumMessage','OnSocNetLogFormatEvent','',1,'28c7a91a467c1190a064f597487abd5c'),(203,'2019-10-17 11:03:20',100,'mail','OnGetFilterList','forum','','CForumEMail','OnGetSocNetFilterList','',1,'e42fc61795fed0c5f397259bb6f1f6b9'),(204,'2019-10-17 11:03:20',100,'main','OnAfterAddRating','forum','','CRatingsComponentsForum','OnAfterAddRating','',1,'db966e6ee1f8b98f83e57411f4757858'),(205,'2019-10-17 11:03:20',100,'main','OnAfterUpdateRating','forum','','CRatingsComponentsForum','OnAfterUpdateRating','',1,'f5f6a93c1fe6d7dc61fbb5bf25f9965f'),(206,'2019-10-17 11:03:20',100,'main','OnSetRatingsConfigs','forum','','CRatingsComponentsForum','OnSetRatingConfigs','',1,'84556c2f1f7f23189f90603f45ad3942'),(207,'2019-10-17 11:03:20',100,'main','OnGetRatingsConfigs','forum','','CRatingsComponentsForum','OnGetRatingConfigs','',1,'7ead6be47d7bb2e297a2af57f85dc7ee'),(208,'2019-10-17 11:03:20',100,'main','OnGetRatingsObjects','forum','','CRatingsComponentsForum','OnGetRatingObject','',1,'99f4b68c8e6c1598377e0016b31234bb'),(209,'2019-10-17 11:03:20',100,'main','OnGetRatingContentOwner','forum','','CRatingsComponentsForum','OnGetRatingContentOwner','',1,'5ef51ecf36931b3a32f4fea00dc49c8c'),(210,'2019-10-17 11:03:20',100,'im','OnGetNotifySchema','forum','','CForumNotifySchema','OnGetNotifySchema','',1,'ad425ff862192078c050ea34d60f8d63'),(211,'2019-10-17 11:03:20',100,'main','OnAfterRegisterModule','main','/modules/forum/install/index.php','forum','InstallUserFields','',1,'205fd3e33648d7e1ed6f4b7f0298f603'),(212,'2019-10-17 11:03:20',100,'rest','OnRestServiceBuildDescription','forum','','CForumRestService','OnRestServiceBuildDescription','',1,'506b2a93cea64d73c9e7c187fdde2840'),(213,'2019-10-17 11:03:20',100,'conversion','OnGetCounterTypes','forum','','\\Bitrix\\Forum\\Internals\\ConversionHandlers','onGetCounterTypes','',1,'fa69bf6ff10a0fb9b2e91098f0c0bab3'),(214,'2019-10-17 11:03:20',100,'conversion','OnGetRateTypes','forum','','\\Bitrix\\Forum\\Internals\\ConversionHandlers','onGetRateTypes','',1,'9eb2b6d8edde63385655c1001d9e0c31'),(215,'2019-10-17 11:03:20',100,'forum','onAfterTopicAdd','forum','','\\Bitrix\\Forum\\Internals\\ConversionHandlers','onTopicAdd','',1,'ea61a319e93c2c3a9bfc9a63840b2155'),(216,'2019-10-17 11:03:20',100,'forum','onAfterMessageAdd','forum','','\\Bitrix\\Forum\\Internals\\ConversionHandlers','onMessageAdd','',1,'3cc5f27501dad77acdecb1c8a4e978de'),(217,'2019-10-17 11:03:20',100,'socialnetwork','onLogIndexGetContent','forum','','\\Bitrix\\Forum\\Integration\\Socialnetwork\\Log','onIndexGetContent','',2,'909a8b84bf80774a6a89bfbbd2258ce8'),(218,'2019-10-17 11:03:20',100,'socialnetwork','onLogCommentIndexGetContent','forum','','\\Bitrix\\Forum\\Integration\\Socialnetwork\\LogComment','onIndexGetContent','',2,'e6aaa86c7daeae2bc002e513f06ccffa'),(219,'2019-10-17 11:03:20',100,'socialnetwork','onContentViewed','forum','','\\Bitrix\\Forum\\Integration\\Socialnetwork\\ContentViewHandler','onContentViewed','',2,'5db6b373f6612f36c2ff6783dd4d6154'),(220,'2019-10-17 11:03:27',100,'main','OnBeforeUserTypeAdd','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','OnBeforeUserTypeAdd','',1,'f9dcff287cf7753e5c56974d37975507'),(221,'2019-10-17 11:03:27',100,'main','OnAfterUserTypeAdd','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','onAfterUserTypeAdd','',1,'d1fa2865e72eca144b964b6fb1eefc15'),(222,'2019-10-17 11:03:27',100,'main','OnBeforeUserTypeDelete','highloadblock','','\\Bitrix\\Highloadblock\\HighloadBlockTable','OnBeforeUserTypeDelete','',1,'1bf13707e1a45b8320c2ecd35534cbb4'),(223,'2019-10-17 11:03:27',100,'main','OnUserTypeBuildList','highloadblock','','CUserTypeHlblock','GetUserTypeDescription','',1,'2ac4a2154f4fd85d67b50f412ed5ed48'),(224,'2019-10-17 11:03:27',100,'iblock','OnIBlockPropertyBuildList','highloadblock','','CIBlockPropertyDirectory','GetUserTypeDescription','',1,'a6f7df502db8a04590e43188d7cbfc99'),(225,'2019-10-17 11:03:31',100,'main','OnGroupDelete','iblock','','CIBlock','OnGroupDelete','',1,'f2320df213f38adf32364d3169d5b197'),(226,'2019-10-17 11:03:32',100,'main','OnBeforeLangDelete','iblock','','CIBlock','OnBeforeLangDelete','',1,'46aef774958db327c1170a12d3a70ee5'),(227,'2019-10-17 11:03:32',100,'main','OnLangDelete','iblock','','CIBlock','OnLangDelete','',1,'861f6ee2ca56bf63c3af07db0553606b'),(228,'2019-10-17 11:03:32',100,'main','OnUserTypeRightsCheck','iblock','','CIBlockSection','UserTypeRightsCheck','',1,'2a6d446893d46f04f2c151f458d2908c'),(229,'2019-10-17 11:03:32',100,'search','OnReindex','iblock','','CIBlock','OnSearchReindex','',1,'c6c8111f129e0eb19e558106e354e6f6'),(230,'2019-10-17 11:03:32',100,'search','OnSearchGetURL','iblock','','CIBlock','OnSearchGetURL','',1,'0ae9fc756bfb1273309240cd8f535672'),(231,'2019-10-17 11:03:32',100,'main','OnEventLogGetAuditTypes','iblock','','CIBlock','GetAuditTypes','',1,'182d19c163e3a5a965bca170c3fb0e83'),(232,'2019-10-17 11:03:32',100,'main','OnEventLogGetAuditHandlers','iblock','','CEventIBlock','MakeIBlockObject','',1,'f7a182e8d9b204970d111e4703b9f523'),(233,'2019-10-17 11:03:32',200,'main','OnGetRatingContentOwner','iblock','','CRatingsComponentsIBlock','OnGetRatingContentOwner','',1,'6da245944e376d586a3fa2aaee02c70b'),(234,'2019-10-17 11:03:32',100,'main','OnTaskOperationsChanged','iblock','','CIBlockRightsStorage','OnTaskOperationsChanged','',1,'01b3f9984fa07b1dfb4bc35d107d5672'),(235,'2019-10-17 11:03:32',100,'main','OnGroupDelete','iblock','','CIBlockRightsStorage','OnGroupDelete','',1,'2dbbccdee3f2e7bd86446bec02be1d54'),(236,'2019-10-17 11:03:32',100,'main','OnUserDelete','iblock','','CIBlockRightsStorage','OnUserDelete','',1,'78f090ee29030c54788098b0782d28f9'),(237,'2019-10-17 11:03:32',100,'perfmon','OnGetTableSchema','iblock','','iblock','OnGetTableSchema','',1,'4b71a345c136beed338aa7137943d80b'),(238,'2019-10-17 11:03:32',100,'sender','OnConnectorList','iblock','','\\Bitrix\\Iblock\\SenderEventHandler','onConnectorListIblock','',1,'3de75587a47352dd3cb6d10866f69385'),(239,'2019-10-17 11:03:32',10,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyDate','GetUserTypeDescription','',1,'fa608e2c397b6793c54ad296619a22e2'),(240,'2019-10-17 11:03:32',20,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyDateTime','GetUserTypeDescription','',1,'78554c9e3c38ac383d51f0ee4d013120'),(241,'2019-10-17 11:03:32',30,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyXmlID','GetUserTypeDescription','',1,'952fe5f2ea67493fb9f9b924ce1b992b'),(242,'2019-10-17 11:03:32',40,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyFileMan','GetUserTypeDescription','',1,'fd688441d5e8203751fb47374931e011'),(243,'2019-10-17 11:03:32',50,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyHTML','GetUserTypeDescription','',1,'27645f81ce5d6d9f19a47cc171860beb'),(244,'2019-10-17 11:03:32',60,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyElementList','GetUserTypeDescription','',1,'c53e9314ae43c30267b32310a02d7df4'),(245,'2019-10-17 11:03:32',70,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertySequence','GetUserTypeDescription','',1,'3ff9528d1264fc77697248957aafdab5'),(246,'2019-10-17 11:03:32',80,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertyElementAutoComplete','GetUserTypeDescription','',1,'0d233a1e7a0d6a52a52e13df88291024'),(247,'2019-10-17 11:03:32',90,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertySKU','GetUserTypeDescription','',1,'8678bc826ced4f66640fba3775b18516'),(248,'2019-10-17 11:03:32',100,'iblock','OnIBlockPropertyBuildList','iblock','','CIBlockPropertySectionAutoComplete','GetUserTypeDescription','',1,'26ff6f651cb94a1fe4ce9827566f0730'),(249,'2019-10-17 11:03:39',100,'main','OnAfterEpilog','messageservice','','\\Bitrix\\MessageService\\Queue','run','',1,'6bcb21b0ccc5ac89d9531ddf8b94683c'),(250,'2019-10-17 11:03:39',100,'rest','OnRestServiceBuildDescription','messageservice','','\\Bitrix\\MessageService\\RestService','onRestServiceBuildDescription','',1,'7524628243223e572590eea87cc03f73'),(251,'2019-10-17 11:03:39',100,'rest','OnRestAppDelete','messageservice','','\\Bitrix\\MessageService\\RestService','onRestAppDelete','',1,'5febc41cd526ecba95dbb4843dd9c134'),(252,'2019-10-17 11:03:39',100,'rest','OnRestAppUpdate','messageservice','','\\Bitrix\\MessageService\\RestService','onRestAppUpdate','',1,'7e77b4d550c200a4ec06872af7857ee6'),(253,'2019-10-17 11:03:42',100,'pull','OnGetDependentModule','mobileapp','','CMobileAppPullSchema','OnGetDependentModule','',1,'4833278dbe60d476fbccbaa54545cffa'),(254,'2019-10-17 11:03:46',100,'perfmon','OnGetTableSchema','perfmon','','perfmon','OnGetTableSchema','',1,'3a4da255b44f05899b64e66a40c12662'),(255,'2019-10-17 11:03:49',100,'iblock','OnBeforeIBlockElementDelete','photogallery','','CPhotogalleryElement','OnBeforeIBlockElementDelete','',1,'dc9ea0b8411dfa54929a022d44bc5b1a'),(256,'2019-10-17 11:03:49',100,'iblock','OnAfterIBlockElementAdd','photogallery','','CPhotogalleryElement','OnAfterIBlockElementAdd','',1,'7fc7f3cc71ad3188022388365d446ed2'),(257,'2019-10-17 11:03:49',100,'search','BeforeIndex','photogallery','','CRatingsComponentsPhotogallery','BeforeIndex','',1,'06e2330d56c3b972e67707d665383704'),(258,'2019-10-17 11:03:49',100,'im','OnGetNotifySchema','photogallery','','CPhotogalleryNotifySchema','OnGetNotifySchema','',1,'7ca75249042a033e858d90dc2473adac'),(259,'2019-10-17 11:03:49',100,'socialnetwork','OnSocNetGroupDelete','photogallery','','\\Bitrix\\Photogallery\\Integration\\Socialnetwork\\Group','onSocNetGroupDelete','',1,'bded61c39d768685fa7dd112c63c702b'),(260,'2019-10-17 11:03:52',50,'main','OnBeforeProlog','main','/modules/pull/ajax_hit_before.php','','','',1,'35432b5b287c5a9622e7ae248e0a242b'),(261,'2019-10-17 11:03:52',3,'main','OnProlog','main','/modules/pull/ajax_hit.php','','','',1,'1b433c8d8bb5e601f0987220031b2341'),(262,'2019-10-17 11:03:52',100,'main','OnEpilog','pull','','CPullOptions','OnEpilog','',1,'bb7e0fc082d756f249e671ad08855887'),(263,'2019-10-17 11:03:52',100,'main','OnAfterEpilog','pull','','\\Bitrix\\Pull\\Event','onAfterEpilog','',1,'b445d8564947a0a2dea040409e1a2d0e'),(264,'2019-10-17 11:03:52',100,'main','OnAfterEpilog','pull','','CPullWatch','DeferredSql','',1,'db06c5093078d22ca5da72f098aa24af'),(265,'2019-10-17 11:03:52',100,'perfmon','OnGetTableSchema','pull','','CPullTableSchema','OnGetTableSchema','',1,'9f818aba7cd2aa64ac9ff03429d135b9'),(266,'2019-10-17 11:03:52',100,'main','OnAfterRegisterModule','pull','','CPullOptions','ClearCheckCache','',1,'58b6710b583cd4138b6f917a062671a1'),(267,'2019-10-17 11:03:52',100,'main','OnAfterUnRegisterModule','pull','','CPullOptions','ClearCheckCache','',1,'e9004239eefab3942ab4dae8a06a429e'),(268,'2019-10-17 11:03:52',100,'socialnetwork','OnSonetLogCounterClear','pull','','\\Bitrix\\Pull\\MobileCounter','onSonetLogCounterClear','',1,'6977001fca2d9918bfcefc23e982048b'),(269,'2019-10-17 11:03:52',100,'rest','OnRestServiceBuildDescription','pull','','\\Bitrix\\Pull\\Rest','onRestServiceBuildDescription','',2,'88027baf05397dff4e3c9495143016a5'),(270,'2019-10-17 11:03:52',100,'rest','onRestCheckAuth','pull','','\\Bitrix\\Pull\\Rest\\GuestAuth','onRestCheckAuth','',2,'2ce8bc7027cb755d726ff410e5f62e26'),(271,'2019-10-17 11:03:56',100,'report','OnReportDelete','report','','\\Bitrix\\Report\\Sharing','OnReportDelete','',1,'0af86ddca38f06c21b79b407bf833070'),(272,'2019-10-17 11:03:56',100,'report','onReportCategoryCollect','report','','\\Bitrix\\Report\\VisualConstructor\\EventHandler','onCategoriesCollect','',2,'9e290dec0378c52950f3efe004b6948e'),(273,'2019-10-17 11:03:56',100,'report','onReportsCollect','report','','\\Bitrix\\Report\\VisualConstructor\\EventHandler','onReportsCollect','',2,'dcf1b3486cd9f68a1dc1217fe8f8d145'),(274,'2019-10-17 11:03:56',100,'report','onReportViewCollect','report','','\\Bitrix\\Report\\VisualConstructor\\EventHandler','onViewsCollect','',2,'f3e9eddd1d5b6bcf56fdcfcea32d60ae'),(275,'2019-10-17 11:03:56',100,'report','onWidgetCollect','report','','\\Bitrix\\Report\\VisualConstructor\\EventHandler','onWidgetCollect','',2,'60610767602e8878ddf24620bb80560f'),(276,'2019-10-17 11:03:59',49,'main','OnBeforeProlog','rest','','CRestEventHandlers','OnBeforeProlog','',2,'395c9c42c3cc9392de1e5887617afe6d'),(277,'2019-10-17 11:03:59',100,'rest','OnRestServiceBuildDescription','rest','','CBitrixRestEntity','OnRestServiceBuildDescription','',2,'f63068b1eb62c36219518206e1e2827c'),(278,'2019-10-17 11:03:59',100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\User','onRestServiceBuildDescription','',2,'c9a03e9019564649e55f5409b661e050'),(279,'2019-10-17 11:03:59',100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\Placement','onRestServiceBuildDescription','',2,'9751a266c2b6f6be5c34b1541bf7c194'),(280,'2019-10-17 11:03:59',100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\Event','onRestServiceBuildDescription','',2,'842ad63f19aff6d810059c7e56739aae'),(281,'2019-10-17 11:03:59',100,'rest','OnRestServiceBuildDescription','rest','','\\Bitrix\\Rest\\Api\\UserFieldType','onRestServiceBuildDescription','',2,'4caf68a5256aabe4abef37f24562e59b'),(282,'2019-10-17 11:03:59',100,'rest','onFindMethodDescription','rest','','\\Bitrix\\Rest\\Engine\\RestManager','onFindMethodDescription','',2,'4d0614f880674af333326dd5ba9b2828'),(283,'2019-10-17 11:03:59',100,'main','OnApplicationsBuildList','main','modules/rest/lib/apauth/application.php','\\Bitrix\\Rest\\APAuth\\Application','onApplicationsBuildList','',2,'9c39129872987f8dcc8baacc0c446ed7'),(284,'2019-10-17 11:03:59',100,'im','OnAfterConfirmNotify','rest','','\\Bitrix\\Rest\\NotifyIm','receive','',2,'2ac9c19fe69d4e106deaa6f4a7a4371b'),(285,'2019-10-17 11:03:59',100,'rest','\\Bitrix\\Rest\\APAuth\\Password::OnDelete','rest','','\\Bitrix\\Rest\\APAuth\\PermissionTable','onPasswordDelete','',2,'f04447ca635f045ec1a64e593964fc90'),(286,'2019-10-17 11:03:59',100,'perfmon','OnGetTableSchema','rest','','rest','OnGetTableSchema','',2,'47a76003c8f9f2d8c820f446e084ff39'),(287,'2019-10-17 11:03:59',100,'rest','onRestCheckAuth','rest','','\\Bitrix\\Rest\\OAuth\\Auth','onRestCheckAuth','',2,'70e923729089b8cba69bb3b4311da11e'),(288,'2019-10-17 11:03:59',100,'rest','onRestCheckAuth','rest','','\\Bitrix\\Rest\\APAuth\\Auth','onRestCheckAuth','',2,'3550e6c95772564101770e0c9cb54470'),(289,'2019-10-17 11:04:00',100,'rest','onRestCheckAuth','rest','','\\Bitrix\\Rest\\SessionAuth\\Auth','onRestCheckAuth','',2,'8e33ae5a47b59d21df7d26f916d19e38'),(290,'2019-10-17 11:04:13',100,'main','OnUserLogout','sale','','\\Bitrix\\Sale\\DiscountCouponsManager','logout','',1,'f3b6f5a5983b0eb0813d05ab748e785c'),(291,'2019-10-17 11:04:13',100,'sale','OnSaleBasketItemRefreshData','sale','','\\Bitrix\\Sale\\Compatible\\DiscountCompatibility','OnSaleBasketItemRefreshData','',2,'422ac4f8d74803b148cac31bc967a851'),(292,'2019-10-17 11:04:13',100,'main','OnUserLogin','sale','','CSaleUser','OnUserLogin','',1,'0b9bdef4c3fa642374b8f3c82e52996b'),(293,'2019-10-17 11:04:13',100,'main','OnUserLogout','sale','','CSaleUser','OnUserLogout','',1,'a03aa5beb1c735fb2fc1fb5effe3ab26'),(294,'2019-10-17 11:04:13',100,'main','OnBeforeLangDelete','sale','','CSalePersonType','OnBeforeLangDelete','',1,'d3b3451b0ef1548263a45daf4d036f94'),(295,'2019-10-17 11:04:13',100,'main','OnLanguageDelete','sale','','CSaleLocation','OnLangDelete','',1,'93831dacf128b944396641a8c6fc867c'),(296,'2019-10-17 11:04:13',100,'main','OnLanguageDelete','sale','','CSaleLocationGroup','OnLangDelete','',1,'8d268fc5817d505c90a2203aa1e869e2'),(297,'2019-10-17 11:04:13',100,'main','OnUserDelete','sale','','CSaleOrderUserProps','OnUserDelete','',1,'a88042b0299509cc87f80716721a98b0'),(298,'2019-10-17 11:04:13',100,'main','OnUserDelete','sale','','CSaleUserAccount','OnUserDelete','',1,'8fcdf8d19c3a0eecacc8fa386b3e7d1e'),(299,'2019-10-17 11:04:13',100,'main','OnUserDelete','sale','','CSaleAuxiliary','OnUserDelete','',1,'81a3632cc005f2013f5bf3a0a5e25064'),(300,'2019-10-17 11:04:13',100,'main','OnUserDelete','sale','','CSaleUser','OnUserDelete','',1,'fd45c818ce346a62411434aa9de11184'),(301,'2019-10-17 11:04:13',100,'main','OnUserDelete','sale','','CSaleRecurring','OnUserDelete','',1,'74a5d488290b7b742db92d65056be8fe'),(302,'2019-10-17 11:04:13',100,'main','OnUserDelete','sale','','CSaleUserCards','OnUserDelete','',1,'5c30a886d8fc023396add7d228463866'),(303,'2019-10-17 11:04:13',100,'main','OnBeforeUserDelete','sale','','CSaleOrder','OnBeforeUserDelete','',1,'7c0632f0e53b7c7fa1e6bf52990d38de'),(304,'2019-10-17 11:04:13',100,'main','OnBeforeUserDelete','sale','','CSaleAffiliate','OnBeforeUserDelete','',1,'10564f34a76cd38c6dac9505e82b36b6'),(305,'2019-10-17 11:04:13',100,'main','OnBeforeUserDelete','sale','','CSaleUserAccount','OnBeforeUserDelete','',1,'fd7c207d58968cc98f81ab73ba8bacec'),(306,'2019-10-17 11:04:13',100,'main','OnBeforeProlog','main','/modules/sale/affiliate.php','','','',1,'bc20f3b5d6e0b729ef03147550bbca34'),(307,'2019-10-17 11:04:13',100,'main','OnEventLogGetAuditTypes','sale','','CSaleYMHandler','OnEventLogGetAuditTypes','',1,'a477cb3196e795663c24579dc3dabcb7'),(308,'2019-10-17 11:04:13',100,'main','OnEventLogGetAuditTypes','sale','','CSalePaySystemAction','OnEventLogGetAuditTypes','',1,'51144ac684c167b2a1a69be99ce5e9fd'),(309,'2019-10-17 11:04:13',100,'main','OnUserConsentProviderList','sale','','\\Bitrix\\Sale\\UserConsent','onProviderList','',1,'0e6cc9303769b80726918ec57a482a3b'),(310,'2019-10-17 11:04:13',100,'main','OnUserConsentDataProviderList','sale','','\\Bitrix\\Sale\\UserConsent','onDataProviderList','',1,'fd2c045cd3d413f1cd72c8212d0a3be5'),(311,'2019-10-17 11:04:13',100,'currency','OnBeforeCurrencyDelete','sale','','CSaleOrder','OnBeforeCurrencyDelete','',1,'43357684dca62b87766e2520897cc846'),(312,'2019-10-17 11:04:13',100,'currency','OnBeforeCurrencyDelete','sale','','CSaleLang','OnBeforeCurrencyDelete','',1,'6a894cb7f1238391705580372e1c02ed'),(313,'2019-10-17 11:04:13',100,'currency','OnModuleUnInstall','sale','','','CurrencyModuleUnInstallSale','',1,'4721b58c6a82c4a527a69ee4be5c53da'),(314,'2019-10-17 11:04:13',100,'catalog','OnSaleOrderSumm','sale','','CSaleOrder','__SaleOrderCount','',1,'4513000ebefe0bf698cc1f2b6621d869'),(315,'2019-10-17 11:04:13',100,'mobileapp','OnBeforeAdminMobileMenuBuild','sale','','CSaleMobileOrderUtils','buildSaleAdminMobileMenu','',1,'13a60b3ac8ad675f4da59230584b1e29'),(316,'2019-10-17 11:04:13',100,'sender','OnConnectorList','sale','','\\Bitrix\\Sale\\SenderEventHandler','onConnectorListBuyer','',1,'cc939d09a3ab294a111aa3fdc87f0e65'),(317,'2019-10-17 11:04:13',100,'sender','OnTriggerList','sale','','\\Bitrix\\Sale\\Sender\\EventHandler','onTriggerList','',1,'1ebc8fda63fc8d296b291c35ac5d408a'),(318,'2019-10-17 11:04:13',100,'sender','OnPresetMailingList','sale','','\\Bitrix\\Sale\\Sender\\EventHandler','onPresetMailingList','',1,'9aa9afbbf3d48dc058d418ae2d171f15'),(319,'2019-10-17 11:04:13',100,'sender','OnPresetTemplateList','sale','','\\Bitrix\\Sale\\Sender\\EventHandler','onPresetTemplateList','',1,'93d6f5d699b7761784c15d83ad3af026'),(320,'2019-10-17 11:04:13',100,'sender','OnConnectorList','sale','','Bitrix\\Sale\\Bigdata\\TargetSaleMailConnector','onConnectorList','',1,'8f2d8ee9b15da1a5b5dad688d21c264d'),(321,'2019-10-17 11:04:13',100,'sale','OnCondSaleControlBuildList','sale','','CSaleCondCtrlGroup','GetControlDescr','',1,'296ebcd61f919a6b82fcf3f5a127ef6a'),(322,'2019-10-17 11:04:13',200,'sale','OnCondSaleControlBuildList','sale','','CSaleCondCtrlBasketGroup','GetControlDescr','',1,'de1d757c37518b3143bba2f428e2e6a6'),(323,'2019-10-17 11:04:13',200,'sale','OnCondSaleActionsControlBuildList','sale','','CSaleActionGiftCtrlGroup','GetControlDescr','',1,'942abbd683115d308f25ff42985c8593'),(324,'2019-10-17 11:04:13',300,'sale','OnCondSaleControlBuildList','sale','','CSaleCondCtrlBasketFields','GetControlDescr','',1,'996070c5552ecca49e760126f7195bd4'),(325,'2019-10-17 11:04:13',1000,'sale','OnCondSaleControlBuildList','sale','','CSaleCondCtrlOrderFields','GetControlDescr','',1,'a1240fa3d2550434c0051526df614be5'),(326,'2019-10-17 11:04:13',1000,'sale','onBuildDiscountConditionInterfaceControls','sale','','CSaleCondCtrlPastOrder','onBuildDiscountConditionInterfaceControls','',1,'53a2a7b3be748c41b73ded0df7a3d2dc'),(327,'2019-10-17 11:04:13',1000,'sale','onBuildDiscountConditionInterfaceControls','sale','','CSaleCondCumulativeCtrl','onBuildDiscountConditionInterfaceControls','',1,'8bc639075919676f9e46f732debab26c'),(328,'2019-10-17 11:04:13',10000,'sale','OnCondSaleControlBuildList','sale','','CSaleCondCtrlCommon','GetControlDescr','',1,'2ce888cd7080ab5fd8b1a3961be06da7'),(329,'2019-10-17 11:04:13',100,'sale','OnCondSaleActionsControlBuildList','sale','','CSaleActionCtrlGroup','GetControlDescr','',1,'8bac88f4470a7272820165d8772c3811'),(330,'2019-10-17 11:04:13',200,'sale','OnCondSaleActionsControlBuildList','sale','','CSaleActionCtrlDelivery','GetControlDescr','',1,'99baf553cfad6c18ac20f1369dfa99d9'),(331,'2019-10-17 11:04:13',300,'sale','OnCondSaleActionsControlBuildList','sale','','CSaleActionCtrlBasketGroup','GetControlDescr','',1,'466e951d4006531a4e91cb9a09d3b326'),(332,'2019-10-17 11:04:13',1000,'sale','OnCondSaleActionsControlBuildList','sale','','CSaleActionCtrlSubGroup','GetControlDescr','',1,'6cad62059d56f54fde1db1713417062f'),(333,'2019-10-17 11:04:13',1100,'sale','OnCondSaleActionsControlBuildList','sale','','CSaleActionCondCtrlBasketFields','GetControlDescr','',1,'f70e8a86d473a6270174c4dd343b2950'),(334,'2019-10-17 11:04:13',1000,'sale','onBuildDiscountActionInterfaceControls','sale','','CSaleCumulativeAction','onBuildDiscountActionInterfaceControls','',1,'0fa84d452d74f2c4b44f7f29fc2c3639'),(335,'2019-10-17 11:04:13',100,'sale','OnOrderDelete','sale','','CSaleMobileOrderPull','onOrderDelete','',1,'2db07e311fd07d56998b741b0f162939'),(336,'2019-10-17 11:04:13',100,'sale','OnOrderAdd','sale','','CSaleMobileOrderPull','onOrderAdd','',1,'5c15a74863f008664f09699fc9d9d0e8'),(337,'2019-10-17 11:04:13',100,'sale','OnOrderUpdate','sale','','CSaleMobileOrderPull','onOrderUpdate','',1,'95cddfd1bc5484de204f2d9c8483e121'),(338,'2019-10-17 11:04:13',100,'sale','OnBasketOrder','sale','','\\Bitrix\\Sale\\Product2ProductTable','onSaleOrderAdd','',1,'1cc1c5d7ef050fd2d6070dd14491d715'),(339,'2019-10-17 11:04:13',100,'sale','OnSaleStatusOrder','sale','','\\Bitrix\\Sale\\Product2ProductTable','onSaleStatusOrderHandler','',1,'f5c1b31d3c2fd7068b7b6f745f53f9f4'),(340,'2019-10-17 11:04:13',100,'sale','OnSaleDeliveryOrder','sale','','\\Bitrix\\Sale\\Product2ProductTable','onSaleDeliveryOrderHandler','',1,'c2903054f58ca673b723a3999dbcd88b'),(341,'2019-10-17 11:04:13',100,'sale','OnSaleDeductOrder','sale','','\\Bitrix\\Sale\\Product2ProductTable','onSaleDeductOrderHandler','',1,'1f1f9143640be1dad9b04fd201ab4687'),(342,'2019-10-17 11:04:13',100,'sale','OnSaleCancelOrder','sale','','\\Bitrix\\Sale\\Product2ProductTable','onSaleCancelOrderHandler','',1,'590d07e68853906060ecc33973fe66b7'),(343,'2019-10-17 11:04:13',100,'sale','OnSalePayOrder','sale','','\\Bitrix\\Sale\\Product2ProductTable','onSalePayOrderHandler','',1,'dc4204dd3a382cb2b76bb7c38a8905c6'),(344,'2019-10-17 11:04:14',100,'conversion','OnGetCounterTypes','sale','','\\Bitrix\\Sale\\Internals\\ConversionHandlers','onGetCounterTypes','',1,'5a2f8d96b831b4c7fca6a2e1df66d2d2'),(345,'2019-10-17 11:04:14',100,'conversion','OnGetRateTypes','sale','','\\Bitrix\\Sale\\Internals\\ConversionHandlers','onGetRateTypes','',1,'c0229632674c536720d26bae1aa5f257'),(346,'2019-10-17 11:04:14',100,'conversion','OnGenerateInitialData','sale','','\\Bitrix\\Sale\\Internals\\ConversionHandlers','onGenerateInitialData','',1,'6279d15bcac076fa09f210c1194dcef7'),(347,'2019-10-17 11:04:14',100,'sale','OnBeforeBasketAdd','sale','','\\Bitrix\\Sale\\Internals\\ConversionHandlers','onBeforeBasketAdd','',1,'20bb277d56c9cf36b45ef071ae20f6fe'),(348,'2019-10-17 11:04:14',100,'sale','OnBasketAdd','sale','','\\Bitrix\\Sale\\Internals\\ConversionHandlers','onBasketAdd','',1,'ddb7ea6af53fec4af453855b666c77de'),(349,'2019-10-17 11:04:14',100,'sale','OnBeforeBasketUpdate','sale','','\\Bitrix\\Sale\\Internals\\ConversionHandlers','onBeforeBasketUpdate','',1,'484b91f62c25eec31167571a0aeeb2a6'),(350,'2019-10-17 11:04:14',100,'sale','OnBasketUpdate','sale','','\\Bitrix\\Sale\\Internals\\ConversionHandlers','onBasketUpdate','',1,'aa0b2781b3777c3668f2e8866ffc8c1d'),(351,'2019-10-17 11:04:14',100,'sale','OnBeforeBasketDelete','sale','','\\Bitrix\\Sale\\Internals\\ConversionHandlers','onBeforeBasketDelete','',1,'ffcd526a1ddacc9c3caf0486f54b939f'),(352,'2019-10-17 11:04:14',100,'sale','OnBasketDelete','sale','','\\Bitrix\\Sale\\Internals\\ConversionHandlers','onBasketDelete','',1,'b47b268dada924f01486a01eb1005ff4'),(353,'2019-10-17 11:04:14',100,'sale','OnOrderAdd','sale','','\\Bitrix\\Sale\\Internals\\ConversionHandlers','onOrderAdd','',1,'6ef955519ebcb4e88c7a7844e21bc01d'),(354,'2019-10-17 11:04:14',100,'sale','OnSalePayOrder','sale','','\\Bitrix\\Sale\\Internals\\ConversionHandlers','onSalePayOrder','',1,'d537062b14b373a4da3fcf3e7a81d2ce'),(355,'2019-10-17 11:04:14',100,'sale','OnGetBusinessValueGroups','sale','','\\Bitrix\\Sale\\PaySystem\\Manager','getBusValueGroups','',1,'1705ec5b3e07732aac14de24ab4af16f'),(356,'2019-10-17 11:04:14',100,'sale','OnGetBusinessValueConsumers','sale','','\\Bitrix\\Sale\\PaySystem\\Manager','getConsumersList','',1,'e0368b7180e00e7a14391f5a5bc4c0e6'),(357,'2019-10-17 11:04:14',100,'sale','OnGetBusinessValueGroups','sale','','\\Bitrix\\Sale\\Delivery\\Services\\Manager','onGetBusinessValueGroups','',1,'77ce66f46264dd8337aebdb21ca53f71'),(358,'2019-10-17 11:04:14',100,'sale','OnGetBusinessValueConsumers','sale','','\\Bitrix\\Sale\\Delivery\\Services\\Manager','onGetBusinessValueConsumers','',1,'14ade708ce6361ecf9c012cb22d67be8'),(359,'2019-10-17 11:04:14',100,'perfmon','OnGetTableSchema','sale','','sale','OnGetTableSchema','',1,'9936d730ab3c8c517df2c36b3a972479'),(360,'2019-10-17 11:04:14',100,'rest','OnRestServiceBuildDescription','sale','','\\Bitrix\\Sale\\PaySystem\\RestService','onRestServiceBuildDescription','',1,'8a80c7a16c92e0d1f9ff8bef114fb385'),(361,'2019-10-17 11:04:14',100,'main','onNumberGeneratorsClassesCollect','sale','','\\Bitrix\\Sale\\Integration\\Numerator\\OrderIdNumberGenerator','onGeneratorClassesCollect','',2,'256ff053109ceb4617b33f439dcd5d97'),(362,'2019-10-17 11:04:14',100,'main','onNumberGeneratorsClassesCollect','sale','','\\Bitrix\\Sale\\Integration\\Numerator\\OrderUserOrdersNumberGenerator','onGeneratorClassesCollect','',2,'9dc83ff561c43ccb14f2fd040c7fa466'),(363,'2019-10-17 11:04:14',100,'main','onBuildNumeratorTemplateWordsList','sale','','\\Bitrix\\Sale\\Integration\\Numerator\\AccountNumberCompatibilityManager','onBuildNumeratorTemplateWordsList','',2,'5f3b4e8c655f9045f49e4a9f66f3ba04'),(364,'2019-10-17 11:04:14',100,'main','\\Bitrix\\Main\\Numerator\\Model\\Numerator::OnAfterAdd','sale','','\\Bitrix\\Sale\\Integration\\Numerator\\AccountNumberCompatibilityManager','updateAccountNumberType','',2,'fcb8d9f3218f74cc4e7c5ca7fd4f1fcd'),(365,'2019-10-17 11:04:14',100,'main','\\Bitrix\\Main\\Numerator\\Model\\Numerator::OnAfterUpdate','sale','','\\Bitrix\\Sale\\Integration\\Numerator\\AccountNumberCompatibilityManager','updateAccountNumberType','',2,'44bc4351479b3061d1528f1e6b72bca6'),(366,'2019-10-17 11:04:14',100,'main','\\Bitrix\\Main\\Numerator\\Model\\Numerator::OnAfterDelete','sale','','\\Bitrix\\Sale\\Integration\\Numerator\\AccountNumberCompatibilityManager','resetAccountNumberType','',2,'abc9a028c4af6eabe411dcc6cc1b8612'),(367,'2019-10-17 11:04:14',100,'landing','\\Bitrix\\Landing\\Internals\\Site::OnAfterAdd','sale','','\\Bitrix\\Sale\\TradingPlatform\\Landing\\Landing','onLandingSiteAdd','',2,'3579225cef4481d1701e1795109f97f0'),(368,'2019-10-17 11:04:14',100,'landing','\\Bitrix\\Landing\\Internals\\Site::OnAfterDelete','sale','','\\Bitrix\\Sale\\TradingPlatform\\Landing\\Landing','onLandingSiteDelete','',2,'db9720307ded8d73485dd1b0d7ebcda9'),(369,'2019-10-17 11:04:14',100,'landing','onBeforeSiteRecycle','sale','','\\Bitrix\\Sale\\TradingPlatform\\Landing\\Landing','onLandingBeforeSiteRecycle','',2,'96214984567ac01f9d1f0c1f68a02cd5'),(370,'2019-10-17 11:04:14',100,'sale','OnSaleBasketItemEntitySaved','sale','','\\Bitrix\\Sale\\Internals\\Events','onSaleBasketItemEntitySaved','',2,'aa7396e90f202976598ed413d294a0bf'),(371,'2019-10-17 11:04:14',100,'sale','OnSaleBasketItemDeleted','sale','','\\Bitrix\\Sale\\Internals\\Events','onSaleBasketItemDeleted','',2,'9e1bcbc9929835522be6ccad34ba6bd0'),(372,'2019-10-17 11:04:15',100,'sale','OnSaleOrderPaid','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onSalePayOrder','',2,'404a61e031d7e64913dc7af1173ddd68'),(373,'2019-10-17 11:04:15',100,'sale','OnSaleOrderBeforeSaved','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onOrderBeforeSaved','',2,'ce6190944ef0658fff3ebca03847843c'),(374,'2019-10-17 11:04:15',100,'sale','OnSaleBeforeOrderDelete','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onBeforeOrderDelete','',2,'2ca7b7688dbc84dc39fee9463eb34ceb'),(375,'2019-10-17 11:04:15',100,'sale','OnSaleOrderDeleted','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onOrderDelete','',2,'1b5c90f772b51373f4a028bbaa433ed5'),(376,'2019-10-17 11:04:15',100,'sale','OnShipmentAllowDelivery','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onSaleDeliveryOrder','',2,'ad1a0e35e34f4627cd53de4eb34c4923'),(377,'2019-10-17 11:04:15',100,'sale','OnSaleBeforeOrderCanceled','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onSaleBeforeCancelOrder','',2,'3c30672b91e260ad4e7349f2dbe7b1fe'),(378,'2019-10-17 11:04:15',100,'sale','OnSaleOrderCanceled','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onSaleCancelOrder','',2,'fcc270505f16796cfd8abd2f4da4a034'),(379,'2019-10-17 11:04:15',500,'sale','OnSaleOrderPaidSendMail','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onSaleOrderPaidSendMail','',2,'34dd55a7ad6e7a7ab0cf97432224a8b9'),(380,'2019-10-17 11:04:15',500,'sale','OnSaleOrderCancelSendEmail','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onSaleOrderCancelSendEmail','',2,'f5d9c84017de8930323ff7514bcc4fbf'),(381,'2019-10-17 11:04:15',100,'sale','OnSaleOrderEntitySaved','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onOrderSave','',2,'02970339a219465944475e857aa0e10e'),(382,'2019-10-17 11:04:15',100,'sale','OnSaleOrderSaved','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onOrderSaved','',2,'c11acfd9099c4d6daa6ccbfb287a46d5'),(383,'2019-10-17 11:04:15',100,'sale','OnSaleBasketItemBeforeSaved','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onBasketItemBeforeChange','',2,'04ce367b2c90007c1a0e24c6c091dd35'),(384,'2019-10-17 11:04:15',100,'sale','OnSaleBasketItemEntitySaved','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onBasketItemChange','',2,'2591db198abf3234dbd6f296f5838a8e'),(385,'2019-10-17 11:04:15',100,'sale','OnShipmentTrackingNumberChange','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onShipmentTrackingNumberChange','',2,'96625412ef9b00c79fd2231988dc66ed'),(386,'2019-10-17 11:04:15',100,'sale','OnSaleBeforeStatusOrderChange','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onSaleBeforeStatusOrderChange','',2,'ab2683aa31831111d969dab169bb375b'),(387,'2019-10-17 11:04:15',100,'sale','OnSaleStatusOrderChange','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onSaleStatusOrderChange','',2,'6821dbbeaed6a06ffedc622ec3e2aa34'),(388,'2019-10-17 11:04:15',500,'sale','OnSaleOrderStatusChangeSendEmail','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onSaleOrderStatusChangeSendEmail','',2,'40471b5ebc8aba52365897ea49caa989'),(389,'2019-10-17 11:04:15',500,'sale','OnSaleOrderSaved','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onOrderNewSendEmail','',2,'793c28e6a64ce885aef509b6ffa2dda0'),(390,'2019-10-17 11:04:15',500,'sale','OnOrderNewSendEmail','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onCallOrderNewSendEmail','',1,'3b3d85660240e7754bab8e73eb70c1de'),(391,'2019-10-17 11:04:15',100,'sale','OnBeforeSaleBasketItemEntityDeleted','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','OnBeforeBasketDelete','',2,'446a0977617852417a690dbe4ed1c777'),(392,'2019-10-17 11:04:15',100,'sale','OnSaleBasketItemDeleted','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','OnBasketDelete','',2,'a1b50cb053479a69ce78536bc4b0ef80'),(393,'2019-10-17 11:04:15',100,'sale','OnShipmentAllowDelivery','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onShipmentAllowDelivery','',2,'c6a8e069d60fbf848e7583b5ddb5ffb6'),(394,'2019-10-17 11:04:15',500,'sale','OnOrderCancelSendEmail','sale','','\\Bitrix\\Sale\\Compatible\\EventCompatibility','onCallOrderCancelSendEmail','',1,'b6ed6599515cba8f9b04619ee9e3c24f'),(395,'2019-10-17 11:04:15',100,'sale','OnSaleOrderSaved','sale','','\\Bitrix\\Sale\\Product2ProductTable','onSaleOrderAddEvent','',2,'2d06ef28f6bf716b75381e1af7eb644d'),(396,'2019-10-17 11:04:15',100,'sale','OnSaleStatusOrderChange','sale','','\\Bitrix\\Sale\\Product2ProductTable','onSaleStatusOrderHandlerEvent','',2,'15bda58e8c57500dbe7d70c0071065da'),(397,'2019-10-17 11:04:15',100,'sale','OnShipmentAllowDelivery','sale','','\\Bitrix\\Sale\\Product2ProductTable','onSaleDeliveryOrderHandlerEvent','',2,'cfe91e8c12575af526153234cba388b5'),(398,'2019-10-17 11:04:15',100,'sale','OnShipmentDeducted','sale','','\\Bitrix\\Sale\\Product2ProductTable','onSaleDeductOrderHandlerEvent','',2,'a0c8700eda9efe6c2df2fc1d8bb9c3f7'),(399,'2019-10-17 11:04:15',100,'sale','OnSaleOrderCanceled','sale','','\\Bitrix\\Sale\\Product2ProductTable','onSaleCancelOrderHandlerEvent','',2,'822ed61755449ab6a02a1b74021ee610'),(400,'2019-10-17 11:04:15',100,'sale','OnSaleOrderPaid','sale','','\\Bitrix\\Sale\\Product2ProductTable','onSalePayOrderHandlerEvent','',2,'7126e3a49875de2688d7178410705f00'),(401,'2019-10-17 11:04:21',100,'main','OnEventLogGetAuditTypes','scale','','\\Bitrix\\Scale\\Logger','onEventLogGetAuditTypes','',1,'d8192b7113f1652bdf8a37bcd4e38dea'),(402,'2019-10-17 11:04:25',100,'main','OnChangePermissions','search','','CSearch','OnChangeFilePermissions','',1,'1c37aedc2ec89f94624291d097fe7adf'),(403,'2019-10-17 11:04:25',100,'main','OnChangeFile','search','','CSearch','OnChangeFile','',1,'d51170fc3433fde7eab8edc1c2b933a0'),(404,'2019-10-17 11:04:25',100,'main','OnGroupDelete','search','','CSearch','OnGroupDelete','',1,'05382d7448b1ba259b89bf9e87e4eb44'),(405,'2019-10-17 11:04:25',100,'main','OnLangDelete','search','','CSearch','OnLangDelete','',1,'15ebda82514af5a966b3466cd26992a4'),(406,'2019-10-17 11:04:25',100,'main','OnAfterUserUpdate','search','','CSearchUser','OnAfterUserUpdate','',1,'9e0cea5039973193afc706ec8978d674'),(407,'2019-10-17 11:04:25',100,'main','OnUserDelete','search','','CSearchUser','DeleteByUserID','',1,'524a910f381ba144bf50caa152222ed6'),(408,'2019-10-17 11:04:25',100,'cluster','OnGetTableList','search','','search','OnGetTableList','',1,'a40ffd36df151e2c0294b5639e81d665'),(409,'2019-10-17 11:04:25',100,'perfmon','OnGetTableSchema','search','','search','OnGetTableSchema','',1,'9c8df2577e0cb80c68afa2030e193efb'),(410,'2019-10-17 11:04:25',90,'main','OnEpilog','search','','CSearchStatistic','OnEpilog','',1,'6b3591ad78ac2a3ce6ad411f0aff47fe'),(411,'2019-10-17 11:04:29',100,'main','OnUserDelete','security','','CSecurityUser','OnUserDelete','',1,'450a1c7509f5363a9bf7d1472f22f9cf'),(412,'2019-10-17 11:04:29',100,'main','OnEventLogGetAuditTypes','security','','CSecurityFilter','GetAuditTypes','',1,'893bc94df887141b4f3579561ea37454'),(413,'2019-10-17 11:04:29',100,'main','OnEventLogGetAuditTypes','security','','CSecurityAntiVirus','GetAuditTypes','',1,'9ba919b0537aa25fe47e438c2428b4d9'),(414,'2019-10-17 11:04:29',100,'main','OnAdminInformerInsertItems','security','','CSecurityFilter','OnAdminInformerInsertItems','',1,'c751923f396ccc4e102ed17e97cb8afb'),(415,'2019-10-17 11:04:29',100,'main','OnAdminInformerInsertItems','security','','CSecuritySiteChecker','OnAdminInformerInsertItems','',1,'0c7cea553d58a72f7c5521d282898bc7'),(416,'2019-10-17 11:04:29',5,'main','OnBeforeProlog','security','','CSecurityFilter','OnBeforeProlog','',1,'bb70fedd18267b1c5290068ae80dbc4d'),(417,'2019-10-17 11:04:29',9999,'main','OnEndBufferContent','security','','CSecurityXSSDetect','OnEndBufferContent','',1,'d1886589ecd51b020420e6c1415edeaf'),(418,'2019-10-17 11:04:29',1,'main','OnBeforeLocalRedirect','security','','CSecurityRedirect','BeforeLocalRedirect','',1,'2dbeb7fa7a8bec4d90e8940616976b3d'),(419,'2019-10-17 11:04:29',1,'main','OnEndBufferContent','security','','CSecurityRedirect','EndBufferContent','',1,'099871646b4df8c1263e26f9bd91f3bd'),(420,'2019-10-17 11:04:35',100,'main','OnMailEventMailRead','sender','','bitrix\\sender\\postingmanager','onMailEventMailRead','',1,'a302db7a7359f29def28e355f29f96f4'),(421,'2019-10-17 11:04:35',100,'main','OnMailEventMailClick','sender','','bitrix\\sender\\postingmanager','onMailEventMailClick','',1,'a80da54a2cd733c1adf4dbc683dd59a0'),(422,'2019-10-17 11:04:35',100,'main','OnMailEventSubscriptionDisable','sender','','Bitrix\\Sender\\Subscription','onMailEventSubscriptionDisable','',1,'5be80a355741c2d8921fceed9c125663'),(423,'2019-10-17 11:04:35',100,'main','OnMailEventSubscriptionEnable','sender','','Bitrix\\Sender\\Subscription','onMailEventSubscriptionEnable','',1,'ece0e5a0ae0b0a7cee733fdd6f18d971'),(424,'2019-10-17 11:04:35',100,'main','OnMailEventSubscriptionList','sender','','Bitrix\\Sender\\Subscription','onMailEventSubscriptionList','',1,'d941d7661683a3bea10eb48d23d77761'),(425,'2019-10-17 11:04:35',100,'main','OnMailEventMailChangeStatus','sender','','Bitrix\\Sender\\Integration\\EventHandler','onMailEventMailChangeStatus','',1,'2f5e7cf45b8b7d30edb46bd6bdad3a50'),(426,'2019-10-17 11:04:35',100,'sender','OnConnectorList','sender','','bitrix\\sender\\connectormanager','onConnectorListContact','',1,'3c6595f0bbc51244dff5f075b46bd066'),(427,'2019-10-17 11:04:35',100,'sender','OnConnectorList','sender','','bitrix\\sender\\connectormanager','onConnectorListRecipient','',1,'2e9d1255520f3863f1737442782f28a6'),(428,'2019-10-17 11:04:35',100,'sender','OnConnectorList','sender','','bitrix\\sender\\connectormanager','onConnectorList','',1,'c954cc6187ea48a82079b3e03693abd8'),(429,'2019-10-17 11:04:35',100,'sender','OnPresetTemplateList','sender','','Bitrix\\Sender\\Preset\\TemplateBase','onPresetTemplateList','',1,'1df99c747e7794f811410df57404836e'),(430,'2019-10-17 11:04:35',100,'sender','OnPresetTemplateList','sender','','Bitrix\\Sender\\TemplateTable','onPresetTemplateList','',1,'a6b93f66594654c65978a9b9299b1bb4'),(431,'2019-10-17 11:04:35',100,'sender','OnPresetMailBlockList','sender','','Bitrix\\Sender\\Preset\\MailBlockBase','OnPresetMailBlockList','',1,'d083b8ef9a32243fbf3df1e642146397'),(432,'2019-10-17 11:04:35',100,'sender','OnPresetTemplateList','sender','','Bitrix\\Sender\\Preset\\TemplateBase','onPresetTemplateListSite','',1,'c434f45cc9380e7de8dc636b48095caa'),(433,'2019-10-17 11:04:35',100,'sender','OnTriggerList','sender','','bitrix\\sender\\triggermanager','onTriggerList','',1,'a1b055daf8c721818afa6702226dee8d'),(434,'2019-10-17 11:04:35',100,'sender','OnAfterRecipientUnsub','sender','','Bitrix\\Sender\\TriggerManager','onAfterRecipientUnsub','',1,'23435551b6eb1a73c2de20de551e9f4d'),(435,'2019-10-17 11:04:35',100,'sender','OnAfterRecipientClick','sender','','Bitrix\\Sender\\Internals\\ConversionHandler','onAfterRecipientClick','',1,'b6cbf511e5fba2f85be2281447c43f82'),(436,'2019-10-17 11:04:35',100,'conversion','OnSetDayContextAttributes','sender','','Bitrix\\Sender\\Internals\\ConversionHandler','onSetDayContextAttributes','',1,'d597cbef84c88e9cc5bd127531034aa7'),(437,'2019-10-17 11:04:35',100,'main','OnBeforeProlog','sender','','Bitrix\\Sender\\Internals\\ConversionHandler','onBeforeProlog','',1,'4c5ff692bd48611c395ad84ce3a8477b'),(438,'2019-10-17 11:04:35',100,'conversion','OnGetAttributeTypes','sender','','Bitrix\\Sender\\Internals\\ConversionHandler','onGetAttributeTypes','',1,'23465bf12ffd96198f1ee02e46d989c6'),(439,'2019-10-17 11:04:35',100,'voximplant','OnInfoCallResult','sender','','Bitrix\\Sender\\Integration\\VoxImplant\\Service','onInfoCallResult','',1,'4fec3d1812baa0316165bb01c35cfc3d'),(440,'2019-10-17 11:04:35',100,'sender','OnAfterMailingChainSend','sender','','Bitrix\\Sender\\Trigger\\Manager','onAfterMailingChainSend','',2,'3d507265a6707d8e6bf510fdefcfcb67'),(441,'2019-10-17 11:04:35',100,'sender','OnAfterPostingSendRecipient','sender','','Bitrix\\Sender\\Trigger\\Manager','onAfterPostingSendRecipient','',2,'6ff2cb8915576312ea4085801d6f067c'),(442,'2019-10-17 11:04:40',100,'main','OnPanelCreate','seo','','CSeoEventHandlers','SeoOnPanelCreate','',2,'79688b0b4a106b805d09e63ffe88f580'),(443,'2019-10-17 11:04:40',100,'fileman','OnIncludeHTMLEditorScript','seo','','CSeoEventHandlers','OnIncludeHTMLEditorScript','',2,'7995eac5813e40f6b3e82b146631397e'),(444,'2019-10-17 11:04:40',100,'fileman','OnBeforeHTMLEditorScriptRuns','seo','','CSeoEventHandlers','OnBeforeHTMLEditorScriptRuns','',2,'313b34609f1fa34d34cde1c2103c09ff'),(445,'2019-10-17 11:04:40',100,'iblock','OnAfterIBlockSectionAdd','seo','','\\Bitrix\\Seo\\SitemapIblock','addSection','',2,'c61de21b0b0873525fa5c39427324664'),(446,'2019-10-17 11:04:40',100,'iblock','OnAfterIBlockElementAdd','seo','','\\Bitrix\\Seo\\SitemapIblock','addElement','',2,'1b167ab85d6d744bba456e559546f13e'),(447,'2019-10-17 11:04:40',100,'iblock','OnBeforeIBlockSectionDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeDeleteSection','',2,'148ce014df9dd9f99f17ebfc5d766e8a'),(448,'2019-10-17 11:04:40',100,'iblock','OnBeforeIBlockElementDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeDeleteElement','',2,'4b1e9896d9f0aa37a7039a321f25f9a5'),(449,'2019-10-17 11:04:40',100,'iblock','OnAfterIBlockSectionDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','deleteSection','',2,'b699c1c0d6665f9cffe7ff76ab108a24'),(450,'2019-10-17 11:04:40',100,'iblock','OnAfterIBlockElementDelete','seo','','\\Bitrix\\Seo\\SitemapIblock','deleteElement','',2,'ff3a36654015c53890f4cf2204b030c4'),(451,'2019-10-17 11:04:40',100,'iblock','OnBeforeIBlockSectionUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeUpdateSection','',2,'aa5f8c360ed88eb5e2884c57b6f1f2f3'),(452,'2019-10-17 11:04:40',100,'iblock','OnBeforeIBlockElementUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','beforeUpdateElement','',2,'a1022e0619263c0e91139fb3f9837085'),(453,'2019-10-17 11:04:40',100,'iblock','OnAfterIBlockSectionUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','updateSection','',2,'27930cffcd40b84666d0a22e1a953c41'),(454,'2019-10-17 11:04:40',100,'iblock','OnAfterIBlockElementUpdate','seo','','\\Bitrix\\Seo\\SitemapIblock','updateElement','',2,'f0151e07363564774d45acba4100aebe'),(455,'2019-10-17 11:04:40',100,'forum','onAfterTopicAdd','seo','','\\Bitrix\\Seo\\SitemapForum','addTopic','',2,'d4d54756116942c9ee0bda9b31e9d0e7'),(456,'2019-10-17 11:04:40',100,'forum','onAfterTopicUpdate','seo','','\\Bitrix\\Seo\\SitemapForum','updateTopic','',2,'3e0a8569016a4c941f3eb4aa9fca6e8b'),(457,'2019-10-17 11:04:40',100,'forum','onAfterTopicDelete','seo','','\\Bitrix\\Seo\\SitemapForum','deleteTopic','',2,'7f4379c818231561b41589d3de41e36b'),(458,'2019-10-17 11:04:40',100,'main','OnAdminIBlockElementEdit','seo','','\\Bitrix\\Seo\\AdvTabEngine','eventHandler','',2,'c894d167ef03c35375b8eb8f2551a798'),(459,'2019-10-17 11:04:40',100,'main','OnBeforeProlog','seo','','\\Bitrix\\Seo\\AdvSession','checkSession','',2,'5fdf8dd9fd70719e442efcb589175bf0'),(460,'2019-10-17 11:04:40',100,'sale','OnOrderSave','seo','','\\Bitrix\\Seo\\AdvSession','onOrderSave','',2,'07d4ab0b1aa0aa130a0cbc06403f6eae'),(461,'2019-10-17 11:04:40',100,'sale','OnBasketOrder','seo','','\\Bitrix\\Seo\\AdvSession','onBasketOrder','',2,'cf6298b090e92e955b32c358c1d14b25'),(462,'2019-10-17 11:04:40',100,'sale','onSalePayOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSalePayOrder','',2,'745afed820778e33d5cd3e91cbd622f1'),(463,'2019-10-17 11:04:40',100,'sale','onSaleDeductOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleDeductOrder','',2,'12861bd5c6c27ffa2abe5cac90ea58d8'),(464,'2019-10-17 11:04:40',100,'sale','onSaleDeliveryOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleDeliveryOrder','',2,'ead8fb64fece572d1fabd3d6fd27af27'),(465,'2019-10-17 11:04:40',100,'sale','onSaleStatusOrder','seo','','\\Bitrix\\Seo\\AdvSession','onSaleStatusOrder','',2,'b7b9ac4bbf458d433e1cf3835ff4cb6c'),(466,'2019-10-17 11:04:40',100,'conversion','OnSetDayContextAttributes','seo','','\\Bitrix\\Seo\\ConversionHandler','onSetDayContextAttributes','',2,'c19eb7659342fabc34b953f69e8b9eee'),(467,'2019-10-17 11:04:40',100,'conversion','OnGetAttributeTypes','seo','','\\Bitrix\\Seo\\ConversionHandler','onGetAttributeTypes','',2,'379294eefad289e474bf0c5ce2a281d8'),(468,'2019-10-17 11:04:40',100,'catalog','OnProductUpdate','seo','','\\Bitrix\\Seo\\Adv\\Auto','checkQuantity','',2,'0f4deda4d57adb4389d85a19e5bbcf2b'),(469,'2019-10-17 11:04:40',100,'catalog','OnProductSetAvailableUpdate','seo','','\\Bitrix\\Seo\\Adv\\Auto','checkQuantity','',2,'3d040ae51f0f6a4b2a08be0e6e1494d4'),(470,'2019-10-17 11:04:44',100,'main','OnUserDelete','socialservices','','CSocServAuthDB','OnUserDelete','',1,'1f5b8fc024dfdf83952d6c723466cdf5'),(471,'2019-10-17 11:04:44',100,'timeman','OnAfterTMReportDailyAdd','socialservices','','CSocServAuthDB','OnAfterTMReportDailyAdd','',1,'a16159f6a90f1b67cb9ec15b0c1bab3a'),(472,'2019-10-17 11:04:44',100,'timeman','OnAfterTMDayStart','socialservices','','CSocServAuthDB','OnAfterTMDayStart','',1,'9567feb38890d6581a3204dc5e65e8b6'),(473,'2019-10-17 11:04:44',100,'timeman','OnTimeManShow','socialservices','','CSocServEventHandlers','OnTimeManShow','',1,'b728f3cea11d374f7638c29f84e8e15e'),(474,'2019-10-17 11:04:44',100,'main','OnFindExternalUser','socialservices','','CSocServAuthDB','OnFindExternalUser','',1,'1ab251d15efc87c5b5cfe6396f5dec1b'),(475,'2019-10-17 11:04:44',100,'socialservices','OnFindSocialservicesUser','socialservices','','CSocServAuthManager','checkOldUser','',1,'c3d7460e4ef694f5bc53b6a6ad902407'),(476,'2019-10-17 11:04:44',100,'socialservices','OnFindSocialservicesUser','socialservices','','CSocServAuthManager','checkAbandonedUser','',1,'331f99f0b265544c33777c299eab16f6'),(477,'2019-10-17 11:04:47',100,'main','OnPrologAdminTitle','storeassist','','CStoreAssist','onPrologAdminTitle','',1,'c8c32bd6c5f8cfa2c09ca7e64b8570cc'),(478,'2019-10-17 11:04:47',100,'main','OnBuildGlobalMenu','storeassist','','CStoreAssist','onBuildGlobalMenu','',1,'6279fb5f980eb4c26f4ac5f232ca50aa'),(479,'2019-10-17 11:04:50',100,'main','OnBeforeLangDelete','subscribe','','CRubric','OnBeforeLangDelete','',1,'ee539731a3e52fe65cb52596ce0856d2'),(480,'2019-10-17 11:04:50',100,'main','OnUserDelete','subscribe','','CSubscription','OnUserDelete','',1,'88c6e57a6f0f18341332db1879c0005b'),(481,'2019-10-17 11:04:50',100,'main','OnUserLogout','subscribe','','CSubscription','OnUserLogout','',1,'f4fa3b156b00fb4415c8612f8439f278'),(482,'2019-10-17 11:04:50',100,'main','OnGroupDelete','subscribe','','CPosting','OnGroupDelete','',1,'990d63845f75e93e670ed85f1aa15152'),(483,'2019-10-17 11:04:50',100,'sender','OnConnectorList','subscribe','','Bitrix\\Subscribe\\SenderEventHandler','onConnectorListSubscriber','',1,'8a1cffe1bd46a72108e48656a1bae99b'),(484,'2019-10-17 11:04:54',100,'main','OnPanelCreate','translate','','CTranslateEventHandlers','TranslatOnPanelCreate','',1,'38070e5e7a0aa6ff4876ffc7f3feb94b'),(485,'2019-10-17 11:05:00',10,'main','OnBeforeProlog','main','/modules/vote/keepvoting.php','','','',1,'251d4d100c1545ca5847d8d6d626dea9'),(486,'2019-10-17 11:05:00',200,'main','OnUserTypeBuildList','vote','','Bitrix\\Vote\\Uf\\VoteUserType','getUserTypeDescription','',1,'e30dd2d26df22ce2dcffef84256cf160'),(487,'2019-10-17 11:05:00',200,'main','OnUserLogin','vote','','Bitrix\\Vote\\User','onUserLogin','',1,'5047b245af7aede3f2474b40dfbc65be'),(488,'2019-10-17 11:05:00',100,'im','OnGetNotifySchema','vote','','CVoteNotifySchema','OnGetNotifySchema','',1,'97ffe9642e64dc7d68f9ec9bc789be47'),(489,'2019-10-17 11:06:51',100,'main','OnBeforeProlog','main','/modules/main/install/wizard_sol/panel_button.php','CWizardSolPanel','ShowPanel','',1,'bbd7b8c1e518a0b3eae815eb91a95c11');
/*!40000 ALTER TABLE `b_module_to_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_numerator`
--

DROP TABLE IF EXISTS `b_numerator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_numerator` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CREATED_AT` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_numerator`
--

LOCK TABLES `b_numerator` WRITE;
/*!40000 ALTER TABLE `b_numerator` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_numerator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_numerator_sequence`
--

DROP TABLE IF EXISTS `b_numerator_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_numerator_sequence` (
  `NUMERATOR_ID` int(11) NOT NULL DEFAULT '0',
  `KEY` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `TEXT_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NEXT_NUMBER` int(11) DEFAULT NULL,
  `LAST_INVOCATION_TIME` int(11) DEFAULT NULL,
  PRIMARY KEY (`NUMERATOR_ID`,`KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_numerator_sequence`
--

LOCK TABLES `b_numerator_sequence` WRITE;
/*!40000 ALTER TABLE `b_numerator_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_numerator_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_operation`
--

DROP TABLE IF EXISTS `b_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_operation` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_operation`
--

LOCK TABLES `b_operation` WRITE;
/*!40000 ALTER TABLE `b_operation` DISABLE KEYS */;
INSERT INTO `b_operation` VALUES (1,'edit_php','main',NULL,'module'),(2,'view_own_profile','main',NULL,'module'),(3,'edit_own_profile','main',NULL,'module'),(4,'view_all_users','main',NULL,'module'),(5,'view_groups','main',NULL,'module'),(6,'view_tasks','main',NULL,'module'),(7,'view_other_settings','main',NULL,'module'),(8,'view_subordinate_users','main',NULL,'module'),(9,'edit_subordinate_users','main',NULL,'module'),(10,'edit_all_users','main',NULL,'module'),(11,'edit_groups','main',NULL,'module'),(12,'edit_tasks','main',NULL,'module'),(13,'edit_other_settings','main',NULL,'module'),(14,'cache_control','main',NULL,'module'),(15,'lpa_template_edit','main',NULL,'module'),(16,'view_event_log','main',NULL,'module'),(17,'edit_ratings','main',NULL,'module'),(18,'manage_short_uri','main',NULL,'module'),(19,'fm_view_permission','main',NULL,'file'),(20,'fm_view_file','main',NULL,'file'),(21,'fm_view_listing','main',NULL,'file'),(22,'fm_edit_existent_folder','main',NULL,'file'),(23,'fm_create_new_file','main',NULL,'file'),(24,'fm_edit_existent_file','main',NULL,'file'),(25,'fm_create_new_folder','main',NULL,'file'),(26,'fm_delete_file','main',NULL,'file'),(27,'fm_delete_folder','main',NULL,'file'),(28,'fm_edit_in_workflow','main',NULL,'file'),(29,'fm_rename_file','main',NULL,'file'),(30,'fm_rename_folder','main',NULL,'file'),(31,'fm_upload_file','main',NULL,'file'),(32,'fm_add_to_menu','main',NULL,'file'),(33,'fm_download_file','main',NULL,'file'),(34,'fm_lpa','main',NULL,'file'),(35,'fm_edit_permission','main',NULL,'file'),(36,'bitrixcloud_monitoring','bitrixcloud',NULL,'module'),(37,'bitrixcloud_backup','bitrixcloud',NULL,'module'),(38,'bitrixcloud_cdn','bitrixcloud',NULL,'module'),(39,'catalog_view','catalog',NULL,'module'),(40,'catalog_read','catalog',NULL,'module'),(41,'catalog_price','catalog',NULL,'module'),(42,'catalog_group','catalog',NULL,'module'),(43,'catalog_discount','catalog',NULL,'module'),(44,'catalog_vat','catalog',NULL,'module'),(45,'catalog_extra','catalog',NULL,'module'),(46,'catalog_store','catalog',NULL,'module'),(47,'catalog_purchas_info','catalog',NULL,'module'),(48,'catalog_export_edit','catalog',NULL,'module'),(49,'catalog_export_exec','catalog',NULL,'module'),(50,'catalog_import_edit','catalog',NULL,'module'),(51,'catalog_import_exec','catalog',NULL,'module'),(52,'catalog_measure','catalog',NULL,'module'),(53,'catalog_settings','catalog',NULL,'module'),(54,'clouds_browse','clouds',NULL,'module'),(55,'clouds_upload','clouds',NULL,'module'),(56,'clouds_config','clouds',NULL,'module'),(57,'fileman_view_all_settings','fileman','','module'),(58,'fileman_edit_menu_types','fileman','','module'),(59,'fileman_add_element_to_menu','fileman','','module'),(60,'fileman_edit_menu_elements','fileman','','module'),(61,'fileman_edit_existent_files','fileman','','module'),(62,'fileman_edit_existent_folders','fileman','','module'),(63,'fileman_admin_files','fileman','','module'),(64,'fileman_admin_folders','fileman','','module'),(65,'fileman_view_permissions','fileman','','module'),(66,'fileman_edit_all_settings','fileman','','module'),(67,'fileman_upload_files','fileman','','module'),(68,'fileman_view_file_structure','fileman','','module'),(69,'fileman_install_control','fileman','','module'),(70,'medialib_view_collection','fileman','','medialib'),(71,'medialib_new_collection','fileman','','medialib'),(72,'medialib_edit_collection','fileman','','medialib'),(73,'medialib_del_collection','fileman','','medialib'),(74,'medialib_access','fileman','','medialib'),(75,'medialib_new_item','fileman','','medialib'),(76,'medialib_edit_item','fileman','','medialib'),(77,'medialib_del_item','fileman','','medialib'),(78,'sticker_view','fileman','','stickers'),(79,'sticker_edit','fileman','','stickers'),(80,'sticker_new','fileman','','stickers'),(81,'sticker_del','fileman','','stickers'),(82,'hl_element_read','highloadblock',NULL,'module'),(83,'hl_element_write','highloadblock',NULL,'module'),(84,'hl_element_delete','highloadblock',NULL,'module'),(85,'section_read','iblock',NULL,'iblock'),(86,'element_read','iblock',NULL,'iblock'),(87,'section_element_bind','iblock',NULL,'iblock'),(88,'iblock_admin_display','iblock',NULL,'iblock'),(89,'element_edit','iblock',NULL,'iblock'),(90,'element_edit_price','iblock',NULL,'iblock'),(91,'element_delete','iblock',NULL,'iblock'),(92,'element_bizproc_start','iblock',NULL,'iblock'),(93,'section_edit','iblock',NULL,'iblock'),(94,'section_delete','iblock',NULL,'iblock'),(95,'section_section_bind','iblock',NULL,'iblock'),(96,'element_edit_any_wf_status','iblock',NULL,'iblock'),(97,'iblock_edit','iblock',NULL,'iblock'),(98,'iblock_delete','iblock',NULL,'iblock'),(99,'iblock_rights_edit','iblock',NULL,'iblock'),(100,'iblock_export','iblock',NULL,'iblock'),(101,'section_rights_edit','iblock',NULL,'iblock'),(102,'element_rights_edit','iblock',NULL,'iblock'),(103,'sale_status_view','sale',NULL,'status'),(104,'sale_status_cancel','sale',NULL,'status'),(105,'sale_status_mark','sale',NULL,'status'),(106,'sale_status_delivery','sale',NULL,'status'),(107,'sale_status_deduction','sale',NULL,'status'),(108,'sale_status_payment','sale',NULL,'status'),(109,'sale_status_to','sale',NULL,'status'),(110,'sale_status_update','sale',NULL,'status'),(111,'sale_status_delete','sale',NULL,'status'),(112,'sale_status_from','sale',NULL,'status'),(113,'security_filter_bypass','security',NULL,'module'),(114,'security_edit_user_otp','security',NULL,'module'),(115,'security_module_settings_read','security',NULL,'module'),(116,'security_panel_view','security',NULL,'module'),(117,'security_filter_settings_read','security',NULL,'module'),(118,'security_otp_settings_read','security',NULL,'module'),(119,'security_iprule_admin_settings_read','security',NULL,'module'),(120,'security_session_settings_read','security',NULL,'module'),(121,'security_redirect_settings_read','security',NULL,'module'),(122,'security_stat_activity_settings_read','security',NULL,'module'),(123,'security_iprule_settings_read','security',NULL,'module'),(124,'security_antivirus_settings_read','security',NULL,'module'),(125,'security_frame_settings_read','security',NULL,'module'),(126,'security_module_settings_write','security',NULL,'module'),(127,'security_filter_settings_write','security',NULL,'module'),(128,'security_otp_settings_write','security',NULL,'module'),(129,'security_iprule_admin_settings_write','security',NULL,'module'),(130,'security_session_settings_write','security',NULL,'module'),(131,'security_redirect_settings_write','security',NULL,'module'),(132,'security_stat_activity_settings_write','security',NULL,'module'),(133,'security_iprule_settings_write','security',NULL,'module'),(134,'security_file_verifier_sign','security',NULL,'module'),(135,'security_file_verifier_collect','security',NULL,'module'),(136,'security_file_verifier_verify','security',NULL,'module'),(137,'security_antivirus_settings_write','security',NULL,'module'),(138,'security_frame_settings_write','security',NULL,'module'),(139,'seo_settings','seo','','module'),(140,'seo_tools','seo','','module');
/*!40000 ALTER TABLE `b_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_option`
--

DROP TABLE IF EXISTS `b_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_option` (
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MODULE_ID`,`NAME`),
  KEY `ix_option_name` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_option`
--

LOCK TABLES `b_option` WRITE;
/*!40000 ALTER TABLE `b_option` DISABLE KEYS */;
INSERT INTO `b_option` VALUES ('blog','socNetNewPerms','Y',NULL,NULL),('catalog','subscribe_repeated_notify','Y',NULL,NULL),('conversion','GENERATE_INITIAL_DATA','generated',NULL,NULL),('conversion','START_DATE_TIME','2019-10-17 11:03:04',NULL,NULL),('currency','installed_currencies','RUB,USD,EUR,UAH,BYN',NULL,NULL),('fileman','stickers_use_hotkeys','N',NULL,NULL),('fileman','use_editor_3','Y',NULL,NULL),('forum','FILTER','N',NULL,NULL),('main','~crypto_b_user_phone_auth','a:1:{s:10:\"OTP_SECRET\";b:1;}',NULL,NULL),('main','~ft_b_sale_order','a:1:{s:14:\"SEARCH_CONTENT\";b:1;}',NULL,NULL),('main','~ft_b_sender_mailing_chain','a:1:{s:14:\"SEARCH_CONTENT\";b:1;}',NULL,NULL),('main','~ft_b_user_index','a:3:{s:19:\"SEARCH_USER_CONTENT\";b:1;s:25:\"SEARCH_DEPARTMENT_CONTENT\";b:1;s:20:\"SEARCH_ADMIN_CONTENT\";b:1;}',NULL,NULL),('main','~ft_b_user_index_selector','a:1:{s:23:\"SEARCH_SELECTOR_CONTENT\";b:1;}',NULL,NULL),('main','~new_license11_sign','Y',NULL,NULL),('main','~sale_converted_15','Y',NULL,NULL),('main','~sale_paysystem_converted','Y',NULL,NULL),('main','admin_lid','ru',NULL,NULL),('main','admin_passwordh','FVkQeWYUBwYtCUVcDhcBCgsTAQ==',NULL,NULL),('main','distributive6','Y',NULL,NULL),('main','email_from','admin@example.com',NULL,NULL),('main','GROUP_DEFAULT_TASK','1',NULL,NULL),('main','LAST_DB_OPTIMIZATION_TIME','1571310545',NULL,NULL),('main','optimize_css_files','Y',NULL,NULL),('main','optimize_js_files','Y',NULL,NULL),('main','PARAM_MAX_SITES','2',NULL,NULL),('main','PARAM_MAX_USERS','0',NULL,NULL),('main','rating_assign_authority_group','4',NULL,NULL),('main','rating_assign_authority_group_add','2',NULL,NULL),('main','rating_assign_authority_group_delete','2',NULL,NULL),('main','rating_assign_rating_group','3',NULL,NULL),('main','rating_assign_rating_group_add','1',NULL,NULL),('main','rating_assign_rating_group_delete','1',NULL,NULL),('main','rating_assign_type','auto',NULL,NULL),('main','rating_authority_rating','4',NULL,NULL),('main','rating_authority_weight_formula','Y',NULL,NULL),('main','rating_community_authority',NULL,NULL,NULL),('main','rating_community_last_visit','90',NULL,NULL),('main','rating_community_size','0',NULL,NULL),('main','rating_count_vote','10',NULL,NULL),('main','rating_normalization','10',NULL,NULL),('main','rating_normalization_type','auto',NULL,NULL),('main','rating_self_vote','Y',NULL,NULL),('main','rating_start_authority','3',NULL,NULL),('main','rating_text_like_d','Это нравится',NULL,NULL),('main','rating_text_like_n','Не нравится',NULL,NULL),('main','rating_text_like_y','Нравится',NULL,NULL),('main','rating_vote_show','Y',NULL,NULL),('main','rating_vote_template','like',NULL,NULL),('main','rating_vote_type','standart',NULL,NULL),('main','rating_vote_weight','1',NULL,NULL),('main','server_name','localhost',NULL,NULL),('main','server_uniq_id','99b772676bb177ede70578d6e864ed11',NULL,NULL),('main','site_name','Моя компания',NULL,NULL),('main','update_site','www.bitrixsoft.com',NULL,NULL),('main','update_site_ns','Y',NULL,NULL),('main','vendor','1c_bitrix',NULL,NULL),('main','wizard_company_slogan','Быстро. Просто. Эффективно',NULL,NULL),('main','wizard_site_logo',NULL,NULL,NULL),('messageservice','clean_up_period','14',NULL,NULL),('rest','entity_iblock_type','rest_entity',NULL,NULL),('rest','server_path','/rest',NULL,NULL),('sale','basket_discount_converted','Y',NULL,NULL),('sale','expiration_processing_events','Y',NULL,NULL),('sale','p2p_status_list','a:7:{i:0;s:1:\"N\";i:1;s:1:\"P\";i:2;s:1:\"F\";i:3;s:10:\"F_CANCELED\";i:4;s:10:\"F_DELIVERY\";i:5;s:5:\"F_PAY\";i:6;s:5:\"F_OUT\";}',NULL,NULL),('sale','product_reserve_clear_period','3',NULL,NULL),('sale','product_viewed_save','N',NULL,NULL),('sale','sale_locationpro_enabled','Y',NULL,NULL),('sale','sale_locationpro_import_performed','Y',NULL,NULL),('sale','sale_locationpro_migrated','Y',NULL,NULL),('sale','use_sale_discount_only','Y',NULL,NULL),('sale','viewed_capability','N',NULL,NULL),('sale','viewed_count','10',NULL,NULL),('sale','viewed_time','5',NULL,NULL),('search','dbnode_id','N',NULL,NULL),('search','dbnode_status','ok',NULL,NULL),('search','exclude_mask','/bitrix/*;/404.php;/upload/*;/auth*;*/search*;*/tags*;/personal/*;/e-store/affiliates/*;/content/*/my/*;/examples/*;/map.php;*/detail.php;/communication/voting/*;/club/index.php',NULL,NULL),('search','use_social_rating','Y',NULL,NULL),('search','use_stemming','Y',NULL,NULL),('search','use_tf_cache','Y',NULL,NULL),('search','use_word_distance','Y',NULL,NULL),('search','version','v2.0',NULL,NULL),('security','ipcheck_disable_file','/bitrix/modules/ipcheck_disable_65f82c51d523b8fa6b6bf12e2bcc40fb',NULL,NULL),('security','redirect_sid','9fehifay2cmhz294kg28hhd7ltr3kh8c',NULL,NULL),('vote','VOTE_COMPATIBLE_OLD_TEMPLATE','N',NULL,NULL),('vote','VOTE_DIR','',NULL,NULL);
/*!40000 ALTER TABLE `b_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_option_site`
--

DROP TABLE IF EXISTS `b_option_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_option_site` (
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`MODULE_ID`,`NAME`,`SITE_ID`),
  KEY `ix_option_site_module_site` (`MODULE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_option_site`
--

LOCK TABLES `b_option_site` WRITE;
/*!40000 ALTER TABLE `b_option_site` DISABLE KEYS */;
INSERT INTO `b_option_site` VALUES ('forum','FILTER_DICT_T','en','4'),('forum','FILTER_DICT_T','ru','2'),('forum','FILTER_DICT_W','en','3'),('forum','FILTER_DICT_W','ru','1');
/*!40000 ALTER TABLE `b_option_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_cache`
--

DROP TABLE IF EXISTS `b_perf_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_cache` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_SIZE` float DEFAULT NULL,
  `OP_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  `BASE_DIR` text COLLATE utf8_unicode_ci,
  `INIT_DIR` text COLLATE utf8_unicode_ci,
  `FILE_NAME` text COLLATE utf8_unicode_ci,
  `FILE_PATH` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_CACHE_0` (`HIT_ID`,`NN`),
  KEY `IX_B_PERF_CACHE_1` (`COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_cache`
--

LOCK TABLES `b_perf_cache` WRITE;
/*!40000 ALTER TABLE `b_perf_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_cluster`
--

DROP TABLE IF EXISTS `b_perf_cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_cluster` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `THREADS` int(11) DEFAULT NULL,
  `HITS` int(11) DEFAULT NULL,
  `ERRORS` int(11) DEFAULT NULL,
  `PAGES_PER_SECOND` float DEFAULT NULL,
  `PAGE_EXEC_TIME` float DEFAULT NULL,
  `PAGE_RESP_TIME` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_cluster`
--

LOCK TABLES `b_perf_cluster` WRITE;
/*!40000 ALTER TABLE `b_perf_cluster` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_cluster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_component`
--

DROP TABLE IF EXISTS `b_perf_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_component` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `COMPONENT_TIME` float DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_COMPONENT_0` (`HIT_ID`,`NN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_component`
--

LOCK TABLES `b_perf_component` WRITE;
/*!40000 ALTER TABLE `b_perf_component` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_error`
--

DROP TABLE IF EXISTS `b_perf_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_error` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `ERRNO` int(18) DEFAULT NULL,
  `ERRSTR` text COLLATE utf8_unicode_ci,
  `ERRFILE` text COLLATE utf8_unicode_ci,
  `ERRLINE` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_ERROR_0` (`HIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_error`
--

LOCK TABLES `b_perf_error` WRITE;
/*!40000 ALTER TABLE `b_perf_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_history`
--

DROP TABLE IF EXISTS `b_perf_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_history` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TOTAL_MARK` float DEFAULT NULL,
  `ACCELERATOR_ENABLED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_history`
--

LOCK TABLES `b_perf_history` WRITE;
/*!40000 ALTER TABLE `b_perf_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_hit`
--

DROP TABLE IF EXISTS `b_perf_hit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_hit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_HIT` datetime DEFAULT NULL,
  `IS_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_PORT` int(11) DEFAULT NULL,
  `SCRIPT_NAME` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `INCLUDED_FILES` int(11) DEFAULT NULL,
  `MEMORY_PEAK_USAGE` int(11) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENTS` int(11) DEFAULT NULL,
  `COMPONENTS_TIME` float DEFAULT NULL,
  `SQL_LOG` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_TIME` float DEFAULT NULL,
  `PROLOG_TIME` float DEFAULT NULL,
  `PROLOG_BEFORE_TIME` float DEFAULT NULL,
  `AGENTS_TIME` float DEFAULT NULL,
  `PROLOG_AFTER_TIME` float DEFAULT NULL,
  `WORK_AREA_TIME` float DEFAULT NULL,
  `EPILOG_TIME` float DEFAULT NULL,
  `EPILOG_BEFORE_TIME` float DEFAULT NULL,
  `EVENTS_TIME` float DEFAULT NULL,
  `EPILOG_AFTER_TIME` float DEFAULT NULL,
  `MENU_RECALC` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_HIT_0` (`DATE_HIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_hit`
--

LOCK TABLES `b_perf_hit` WRITE;
/*!40000 ALTER TABLE `b_perf_hit` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_hit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_ban`
--

DROP TABLE IF EXISTS `b_perf_index_ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_ban` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BAN_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_ban`
--

LOCK TABLES `b_perf_index_ban` WRITE;
/*!40000 ALTER TABLE `b_perf_index_ban` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_ban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_complete`
--

DROP TABLE IF EXISTS `b_perf_index_complete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_complete` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BANNED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_index_complete_0` (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_complete`
--

LOCK TABLES `b_perf_index_complete` WRITE;
/*!40000 ALTER TABLE `b_perf_index_complete` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_complete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_suggest`
--

DROP TABLE IF EXISTS `b_perf_index_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_suggest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SQL_MD5` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_COUNT` int(11) DEFAULT NULL,
  `SQL_TIME` float DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ALIAS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_TEXT` text COLLATE utf8_unicode_ci,
  `SQL_EXPLAIN` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_index_suggest_0` (`SQL_MD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_suggest`
--

LOCK TABLES `b_perf_index_suggest` WRITE;
/*!40000 ALTER TABLE `b_perf_index_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_index_suggest_sql`
--

DROP TABLE IF EXISTS `b_perf_index_suggest_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_index_suggest_sql` (
  `SUGGEST_ID` int(11) NOT NULL,
  `SQL_ID` int(11) NOT NULL,
  PRIMARY KEY (`SUGGEST_ID`,`SQL_ID`),
  KEY `ix_b_perf_index_suggest_sql_0` (`SQL_ID`,`SUGGEST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_index_suggest_sql`
--

LOCK TABLES `b_perf_index_suggest_sql` WRITE;
/*!40000 ALTER TABLE `b_perf_index_suggest_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_index_suggest_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_sql`
--

DROP TABLE IF EXISTS `b_perf_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_sql` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `QUERY_TIME` float DEFAULT NULL,
  `NODE_ID` int(18) DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  `SQL_TEXT` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_PERF_SQL_0` (`HIT_ID`,`NN`),
  KEY `IX_B_PERF_SQL_1` (`COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_sql`
--

LOCK TABLES `b_perf_sql` WRITE;
/*!40000 ALTER TABLE `b_perf_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_sql_backtrace`
--

DROP TABLE IF EXISTS `b_perf_sql_backtrace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_sql_backtrace` (
  `SQL_ID` int(18) NOT NULL,
  `NN` int(18) NOT NULL,
  `FILE_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINE_NO` int(18) DEFAULT NULL,
  `CLASS_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FUNCTION_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SQL_ID`,`NN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_sql_backtrace`
--

LOCK TABLES `b_perf_sql_backtrace` WRITE;
/*!40000 ALTER TABLE `b_perf_sql_backtrace` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_sql_backtrace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_tab_column_stat`
--

DROP TABLE IF EXISTS `b_perf_tab_column_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_tab_column_stat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  `COLUMN_ROWS` float DEFAULT NULL,
  `VALUE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_perf_tab_column_stat` (`TABLE_NAME`,`COLUMN_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_tab_column_stat`
--

LOCK TABLES `b_perf_tab_column_stat` WRITE;
/*!40000 ALTER TABLE `b_perf_tab_column_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_tab_column_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_tab_stat`
--

DROP TABLE IF EXISTS `b_perf_tab_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_tab_stat` (
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_SIZE` float DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  PRIMARY KEY (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_tab_stat`
--

LOCK TABLES `b_perf_tab_stat` WRITE;
/*!40000 ALTER TABLE `b_perf_tab_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_tab_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_perf_test`
--

DROP TABLE IF EXISTS `b_perf_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_perf_test` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `REFERENCE_ID` int(18) DEFAULT NULL,
  `NAME` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_PERF_TEST_0` (`REFERENCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_perf_test`
--

LOCK TABLES `b_perf_test` WRITE;
/*!40000 ALTER TABLE `b_perf_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_perf_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_posting`
--

DROP TABLE IF EXISTS `b_posting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_posting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `VERSION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_SENT` datetime DEFAULT NULL,
  `SENT_BCC` mediumtext COLLATE utf8_unicode_ci,
  `FROM_FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TO_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BCC_FIELD` mediumtext COLLATE utf8_unicode_ci,
  `EMAIL_FILTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUBJECT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BODY_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `BODY` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `DIRECT_SEND` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CHARSET` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MSG_CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUBSCR_FORMAT` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERROR_EMAIL` mediumtext COLLATE utf8_unicode_ci,
  `AUTO_SEND_TIME` datetime DEFAULT NULL,
  `BCC_TO_SEND` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_posting`
--

LOCK TABLES `b_posting` WRITE;
/*!40000 ALTER TABLE `b_posting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_posting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_posting_email`
--

DROP TABLE IF EXISTS `b_posting_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_posting_email` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `POSTING_ID` int(11) NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SUBSCRIPTION_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_posting_email_status` (`POSTING_ID`,`STATUS`),
  KEY `ix_posting_email_email` (`POSTING_ID`,`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_posting_email`
--

LOCK TABLES `b_posting_email` WRITE;
/*!40000 ALTER TABLE `b_posting_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_posting_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_posting_file`
--

DROP TABLE IF EXISTS `b_posting_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_posting_file` (
  `POSTING_ID` int(11) NOT NULL,
  `FILE_ID` int(11) NOT NULL,
  UNIQUE KEY `UK_POSTING_POSTING_FILE` (`POSTING_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_posting_file`
--

LOCK TABLES `b_posting_file` WRITE;
/*!40000 ALTER TABLE `b_posting_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_posting_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_posting_group`
--

DROP TABLE IF EXISTS `b_posting_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_posting_group` (
  `POSTING_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  UNIQUE KEY `UK_POSTING_POSTING_GROUP` (`POSTING_ID`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_posting_group`
--

LOCK TABLES `b_posting_group` WRITE;
/*!40000 ALTER TABLE `b_posting_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_posting_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_posting_rubric`
--

DROP TABLE IF EXISTS `b_posting_rubric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_posting_rubric` (
  `POSTING_ID` int(11) NOT NULL,
  `LIST_RUBRIC_ID` int(11) NOT NULL,
  UNIQUE KEY `UK_POSTING_POSTING_RUBRIC` (`POSTING_ID`,`LIST_RUBRIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_posting_rubric`
--

LOCK TABLES `b_posting_rubric` WRITE;
/*!40000 ALTER TABLE `b_posting_rubric` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_posting_rubric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_pull_channel`
--

DROP TABLE IF EXISTS `b_pull_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_pull_channel` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `CHANNEL_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHANNEL_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CHANNEL_PUBLIC_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_ID` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_PULL_CN_UID` (`USER_ID`,`CHANNEL_TYPE`),
  KEY `IX_PULL_CN_CID` (`CHANNEL_ID`),
  KEY `IX_PULL_CN_CPID` (`CHANNEL_PUBLIC_ID`),
  KEY `IX_PULL_CN_D` (`DATE_CREATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_pull_channel`
--

LOCK TABLES `b_pull_channel` WRITE;
/*!40000 ALTER TABLE `b_pull_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_pull_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_pull_push`
--

DROP TABLE IF EXISTS `b_pull_push`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_pull_push` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `DEVICE_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNIQUE_HASH` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEVICE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEVICE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEVICE_TOKEN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_AUTH` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_PULL_PSH_UID` (`USER_ID`),
  KEY `IX_PULL_PSH_UH` (`UNIQUE_HASH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_pull_push`
--

LOCK TABLES `b_pull_push` WRITE;
/*!40000 ALTER TABLE `b_pull_push` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_pull_push` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_pull_push_queue`
--

DROP TABLE IF EXISTS `b_pull_push_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_pull_push_queue` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUB_TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `ADVANCED_PARAMS` text COLLATE utf8_unicode_ci,
  `BADGE` int(11) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `APP_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_PULL_PSHQ_UT` (`USER_ID`,`TAG`),
  KEY `IX_PULL_PSHQ_UST` (`USER_ID`,`SUB_TAG`),
  KEY `IX_PULL_PSHQ_DC` (`DATE_CREATE`),
  KEY `IX_PULL_PSHQ_AID` (`APP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_pull_push_queue`
--

LOCK TABLES `b_pull_push_queue` WRITE;
/*!40000 ALTER TABLE `b_pull_push_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_pull_push_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_pull_stack`
--

DROP TABLE IF EXISTS `b_pull_stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_pull_stack` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CHANNEL_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_PULL_STACK_CID` (`CHANNEL_ID`),
  KEY `IX_PULL_STACK_D` (`DATE_CREATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_pull_stack`
--

LOCK TABLES `b_pull_stack` WRITE;
/*!40000 ALTER TABLE `b_pull_stack` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_pull_stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_pull_watch`
--

DROP TABLE IF EXISTS `b_pull_watch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_pull_watch` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `CHANNEL_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_PULL_W_UT` (`USER_ID`,`TAG`),
  KEY `IX_PULL_W_D` (`DATE_CREATE`),
  KEY `IX_PULL_W_T` (`TAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_pull_watch`
--

LOCK TABLES `b_pull_watch` WRITE;
/*!40000 ALTER TABLE `b_pull_watch` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_pull_watch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating`
--

DROP TABLE IF EXISTS `b_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALCULATION_METHOD` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SUM',
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `POSITION` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTHORITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `CALCULATED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONFIGS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating`
--

LOCK TABLES `b_rating` WRITE;
/*!40000 ALTER TABLE `b_rating` DISABLE KEYS */;
INSERT INTO `b_rating` VALUES (3,'Y','Рейтинг','USER','SUM','2019-10-17 11:07:16','2019-10-17 11:07:16','2019-10-17 11:08:35','Y','N','Y','a:3:{s:4:\"MAIN\";a:1:{s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:16:\"TODAY_TOPIC_COEF\";s:3:\"0.4\";s:15:\"WEEK_TOPIC_COEF\";s:3:\"0.2\";s:16:\"MONTH_TOPIC_COEF\";s:3:\"0.1\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.2\";s:14:\"WEEK_POST_COEF\";s:3:\"0.1\";s:15:\"MONTH_POST_COEF\";s:4:\"0.05\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}'),(4,'Y','Авторитет','USER','SUM','2019-10-17 11:07:16','2019-10-17 11:07:16','2019-10-17 11:08:35','Y','Y','Y','a:3:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";N;s:4:\"BLOG\";N;}');
/*!40000 ALTER TABLE `b_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_component`
--

DROP TABLE IF EXISTS `b_rating_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_component` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CALC_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXCEPTION_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `NEXT_CALCULATION` datetime DEFAULT NULL,
  `REFRESH_INTERVAL` int(11) NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_ID_1` (`RATING_ID`,`ACTIVE`,`NEXT_CALCULATION`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_component`
--

LOCK TABLES `b_rating_component` WRITE;
/*!40000 ALTER TABLE `b_rating_component` DISABLE KEYS */;
INSERT INTO `b_rating_component` VALUES (1,3,'Y','USER','MAIN','RATING','BONUS','USER_MAIN_RATING_BONUS','CRatingsComponentsMain','CalcUserBonus',NULL,'2019-10-17 11:07:16','2019-10-17 11:08:35','2019-10-17 12:08:35',3600,'a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}'),(2,3,'Y','USER','FORUM','VOTE','TOPIC','USER_FORUM_VOTE_TOPIC','CRatingsComponentsForum','CalcUserVoteForumTopic',NULL,'2019-10-17 11:07:16','2019-10-17 11:08:35','2019-10-17 12:08:35',3600,'a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}'),(3,3,'Y','USER','FORUM','VOTE','POST','USER_FORUM_VOTE_POST','CRatingsComponentsForum','CalcUserVoteForumPost',NULL,'2019-10-17 11:07:16','2019-10-17 11:08:35','2019-10-17 12:08:35',3600,'a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}'),(4,3,'Y','USER','FORUM','RATING','ACTIVITY','USER_FORUM_RATING_ACTIVITY','CRatingsComponentsForum','CalcUserRatingForumActivity','ExceptionUserRatingForumActivity','2019-10-17 11:07:16','2019-10-17 11:08:35','2019-10-17 13:08:35',7200,'a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:16:\"TODAY_TOPIC_COEF\";s:3:\"0.4\";s:15:\"WEEK_TOPIC_COEF\";s:3:\"0.2\";s:16:\"MONTH_TOPIC_COEF\";s:3:\"0.1\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.2\";s:14:\"WEEK_POST_COEF\";s:3:\"0.1\";s:15:\"MONTH_POST_COEF\";s:4:\"0.05\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}'),(5,3,'Y','USER','BLOG','VOTE','POST','USER_BLOG_VOTE_POST','CRatingsComponentsBlog','CalcPost',NULL,'2019-10-17 11:07:16','2019-10-17 11:08:35','2019-10-17 12:08:35',3600,'a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}'),(6,3,'Y','USER','BLOG','VOTE','COMMENT','USER_BLOG_VOTE_COMMENT','CRatingsComponentsBlog','CalcComment',NULL,'2019-10-17 11:07:16','2019-10-17 11:08:35','2019-10-17 12:08:35',3600,'a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}'),(7,3,'Y','USER','BLOG','RATING','ACTIVITY','USER_BLOG_RATING_ACTIVITY','CRatingsComponentsBlog','CalcActivity',NULL,'2019-10-17 11:07:16','2019-10-17 11:08:35','2019-10-17 13:08:35',7200,'a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}'),(8,4,'Y','USER','MAIN','VOTE','USER','USER_MAIN_VOTE_USER','CRatingsComponentsMain','CalcVoteUser',NULL,'2019-10-17 11:07:16','2019-10-17 11:08:34','2019-10-17 12:08:34',3600,'a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}'),(9,4,'Y','USER','MAIN','RATING','BONUS','USER_MAIN_RATING_BONUS','CRatingsComponentsMain','CalcUserBonus',NULL,'2019-10-17 11:07:16','2019-10-17 11:08:34','2019-10-17 12:08:34',3600,'a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}');
/*!40000 ALTER TABLE `b_rating_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_component_results`
--

DROP TABLE IF EXISTS `b_rating_component_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_component_results` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY_TYPE_ID` (`ENTITY_TYPE_ID`),
  KEY `IX_COMPLEX_NAME` (`COMPLEX_NAME`),
  KEY `IX_RATING_ID_2` (`RATING_ID`,`COMPLEX_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_component_results`
--

LOCK TABLES `b_rating_component_results` WRITE;
/*!40000 ALTER TABLE `b_rating_component_results` DISABLE KEYS */;
INSERT INTO `b_rating_component_results` VALUES (4,4,'USER',1,'MAIN','RATING','BONUS','USER_MAIN_RATING_BONUS',30.0000),(5,3,'USER',1,'MAIN','RATING','BONUS','USER_MAIN_RATING_BONUS',3.0000);
/*!40000 ALTER TABLE `b_rating_component_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_prepare`
--

DROP TABLE IF EXISTS `b_rating_prepare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_prepare` (
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_prepare`
--

LOCK TABLES `b_rating_prepare` WRITE;
/*!40000 ALTER TABLE `b_rating_prepare` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_prepare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_results`
--

DROP TABLE IF EXISTS `b_rating_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_results` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  `PREVIOUS_VALUE` decimal(18,4) DEFAULT NULL,
  `CURRENT_POSITION` int(11) DEFAULT '0',
  `PREVIOUS_POSITION` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_3` (`RATING_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`),
  KEY `IX_RATING_4` (`RATING_ID`,`ENTITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_results`
--

LOCK TABLES `b_rating_results` WRITE;
/*!40000 ALTER TABLE `b_rating_results` DISABLE KEYS */;
INSERT INTO `b_rating_results` VALUES (1,4,'USER',1,30.0000,0.0000,1,0),(2,3,'USER',1,3.0000,0.0000,1,0);
/*!40000 ALTER TABLE `b_rating_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_rule`
--

DROP TABLE IF EXISTS `b_rating_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_rule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_MODULE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONDITION_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_CONFIG` text COLLATE utf8_unicode_ci,
  `ACTION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION_CONFIG` text COLLATE utf8_unicode_ci,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_APPLIED` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_rule`
--

LOCK TABLES `b_rating_rule` WRITE;
/*!40000 ALTER TABLE `b_rating_rule` DISABLE KEYS */;
INSERT INTO `b_rating_rule` VALUES (1,'N','Добавление в группу пользователей, имеющих право голосовать за рейтинг','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:1;}}','ADD_TO_GROUP','a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}','N','CRatingRulesMain','addToGroup','N','CRatingRulesMain ','addToGroup','2019-10-17 11:02:31','2019-10-17 11:02:31',NULL),(2,'N','Удаление из группы пользователей, не имеющих права голосовать за рейтинг','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:1;}}','REMOVE_FROM_GROUP','a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}','N','CRatingRulesMain','removeFromGroup','N','CRatingRulesMain ','removeFromGroup','2019-10-17 11:02:31','2019-10-17 11:02:31',NULL),(3,'N','Добавление в группу пользователей, имеющих право голосовать за авторитет','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:2;}}','ADD_TO_GROUP','a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}','N','CRatingRulesMain','addToGroup','N','CRatingRulesMain ','addToGroup','2019-10-17 11:02:31','2019-10-17 11:02:31',NULL),(4,'N','Удаление из группы пользователей, не имеющих права голосовать за авторитет','USER','AUTHORITY',NULL,'CRatingRulesMain','ratingCheck','a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:2;}}','REMOVE_FROM_GROUP','a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}','N','CRatingRulesMain','removeFromGroup','N','CRatingRulesMain ','removeFromGroup','2019-10-17 11:02:31','2019-10-17 11:02:31',NULL),(5,'Y','Автоматическое голосование за авторитет пользователя','USER','VOTE',NULL,'CRatingRulesMain','voteCheck','a:1:{s:4:\"VOTE\";a:6:{s:10:\"VOTE_LIMIT\";i:90;s:11:\"VOTE_RESULT\";i:10;s:16:\"VOTE_FORUM_TOPIC\";d:0.5;s:15:\"VOTE_FORUM_POST\";d:0.10000000000000001;s:14:\"VOTE_BLOG_POST\";d:0.5;s:17:\"VOTE_BLOG_COMMENT\";d:0.10000000000000001;}}','empty','a:0:{}','N','empty','empty','N','empty ','empty','2019-10-17 11:02:31','2019-10-17 11:02:31',NULL);
/*!40000 ALTER TABLE `b_rating_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_rule_vetting`
--

DROP TABLE IF EXISTS `b_rating_rule_vetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_rule_vetting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RULE_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `RULE_ID` (`RULE_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_rule_vetting`
--

LOCK TABLES `b_rating_rule_vetting` WRITE;
/*!40000 ALTER TABLE `b_rating_rule_vetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_rule_vetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_user`
--

DROP TABLE IF EXISTS `b_rating_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `BONUS` decimal(18,4) DEFAULT '0.0000',
  `VOTE_WEIGHT` decimal(18,4) DEFAULT '0.0000',
  `VOTE_COUNT` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RATING_ID` (`RATING_ID`,`ENTITY_ID`),
  KEY `IX_B_RAT_USER_2` (`ENTITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_user`
--

LOCK TABLES `b_rating_user` WRITE;
/*!40000 ALTER TABLE `b_rating_user` DISABLE KEYS */;
INSERT INTO `b_rating_user` VALUES (2,4,1,3.0000,30.0000,40),(3,3,1,3.0000,0.0000,0);
/*!40000 ALTER TABLE `b_rating_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_vote`
--

DROP TABLE IF EXISTS `b_rating_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_vote` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `VALUE` decimal(18,4) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_IP` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `REACTION` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RAT_VOTE_ID` (`RATING_VOTING_ID`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`USER_ID`),
  KEY `IX_RAT_VOTE_ID_3` (`OWNER_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_4` (`USER_ID`),
  KEY `IX_RAT_VOTE_ID_5` (`CREATED`,`VALUE`),
  KEY `IX_RAT_VOTE_ID_6` (`ACTIVE`),
  KEY `IX_RAT_VOTE_ID_7` (`RATING_VOTING_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_8` (`ENTITY_TYPE_ID`,`CREATED`),
  KEY `IX_RAT_VOTE_ID_9` (`CREATED`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_vote`
--

LOCK TABLES `b_rating_vote` WRITE;
/*!40000 ALTER TABLE `b_rating_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_vote_group`
--

DROP TABLE IF EXISTS `b_rating_vote_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_vote_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_ID` int(11) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `RATING_ID` (`GROUP_ID`,`TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_vote_group`
--

LOCK TABLES `b_rating_vote_group` WRITE;
/*!40000 ALTER TABLE `b_rating_vote_group` DISABLE KEYS */;
INSERT INTO `b_rating_vote_group` VALUES (5,1,'A'),(1,1,'R'),(3,1,'R'),(2,3,'R'),(4,3,'R'),(6,4,'A');
/*!40000 ALTER TABLE `b_rating_vote_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting`
--

DROP TABLE IF EXISTS `b_rating_voting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_voting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY_TYPE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`ACTIVE`),
  KEY `IX_ENTITY_TYPE_ID_4` (`TOTAL_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting`
--

LOCK TABLES `b_rating_voting` WRITE;
/*!40000 ALTER TABLE `b_rating_voting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting_prepare`
--

DROP TABLE IF EXISTS `b_rating_voting_prepare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_voting_prepare` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_RATING_VOTING_ID` (`RATING_VOTING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting_prepare`
--

LOCK TABLES `b_rating_voting_prepare` WRITE;
/*!40000 ALTER TABLE `b_rating_voting_prepare` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting_prepare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_voting_reaction`
--

DROP TABLE IF EXISTS `b_rating_voting_reaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_voting_reaction` (
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `REACTION` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TOTAL_VOTES` int(11) NOT NULL,
  PRIMARY KEY (`ENTITY_TYPE_ID`,`ENTITY_ID`,`REACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_voting_reaction`
--

LOCK TABLES `b_rating_voting_reaction` WRITE;
/*!40000 ALTER TABLE `b_rating_voting_reaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rating_voting_reaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rating_weight`
--

DROP TABLE IF EXISTS `b_rating_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rating_weight` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RATING_FROM` decimal(18,4) NOT NULL,
  `RATING_TO` decimal(18,4) NOT NULL,
  `WEIGHT` decimal(18,4) DEFAULT '0.0000',
  `COUNT` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rating_weight`
--

LOCK TABLES `b_rating_weight` WRITE;
/*!40000 ALTER TABLE `b_rating_weight` DISABLE KEYS */;
INSERT INTO `b_rating_weight` VALUES (1,-1000000.0000,1000000.0000,1.0000,10);
/*!40000 ALTER TABLE `b_rating_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_report`
--

DROP TABLE IF EXISTS `b_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_report` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `OWNER_ID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` int(11) unsigned NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `MARK_DEFAULT` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `OWNER_ID` (`OWNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_report`
--

LOCK TABLES `b_report` WRITE;
/*!40000 ALTER TABLE `b_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_report_sharing`
--

DROP TABLE IF EXISTS `b_report_sharing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_report_sharing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REPORT_ID` int(11) NOT NULL DEFAULT '0',
  `ENTITY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RIGHTS` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ENTITY` (`ENTITY`),
  KEY `IX_REPORT_ID` (`REPORT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_report_sharing`
--

LOCK TABLES `b_report_sharing` WRITE;
/*!40000 ALTER TABLE `b_report_sharing` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_report_sharing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_report_visual_report_configuration`
--

DROP TABLE IF EXISTS `b_report_visual_report_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_report_visual_report_configuration` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `WEIGHT` int(4) NOT NULL DEFAULT '0',
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `UKEY` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIGURATION_FIELD_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_report_visual_report_configuration`
--

LOCK TABLES `b_report_visual_report_configuration` WRITE;
/*!40000 ALTER TABLE `b_report_visual_report_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_report_visual_report_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_report_visual_report_dashboard`
--

DROP TABLE IF EXISTS `b_report_visual_report_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_report_visual_report_dashboard` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VERSION` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `BOARD_KEY` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL DEFAULT '0',
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_report_visual_report_dashboard`
--

LOCK TABLES `b_report_visual_report_dashboard` WRITE;
/*!40000 ALTER TABLE `b_report_visual_report_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_report_visual_report_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_report_visual_report_dashboard_row`
--

DROP TABLE IF EXISTS `b_report_visual_report_dashboard_row`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_report_visual_report_dashboard_row` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BOARD_ID` int(11) NOT NULL,
  `WEIGHT` int(4) NOT NULL DEFAULT '0',
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `LAYOUT_MAP` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_report_visual_report_dashboard_row`
--

LOCK TABLES `b_report_visual_report_dashboard_row` WRITE;
/*!40000 ALTER TABLE `b_report_visual_report_dashboard_row` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_report_visual_report_dashboard_row` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_report_visual_report_entity`
--

DROP TABLE IF EXISTS `b_report_visual_report_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_report_visual_report_entity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `WIDGET_ID` int(11) NOT NULL,
  `WEIGHT` int(4) NOT NULL DEFAULT '0',
  `REPORT_CLASS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_WIDGET_ID` (`WIDGET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_report_visual_report_entity`
--

LOCK TABLES `b_report_visual_report_entity` WRITE;
/*!40000 ALTER TABLE `b_report_visual_report_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_report_visual_report_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_report_visual_report_entity_config`
--

DROP TABLE IF EXISTS `b_report_visual_report_entity_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_report_visual_report_entity_config` (
  `REPORT_ID` int(11) NOT NULL,
  `CONFIGURATION_ID` int(11) NOT NULL,
  PRIMARY KEY (`REPORT_ID`,`CONFIGURATION_ID`),
  KEY `IX_REPORT_CONFIG` (`REPORT_ID`,`CONFIGURATION_ID`),
  KEY `IX_CONFIG_REPORT` (`CONFIGURATION_ID`,`REPORT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_report_visual_report_entity_config`
--

LOCK TABLES `b_report_visual_report_entity_config` WRITE;
/*!40000 ALTER TABLE `b_report_visual_report_entity_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_report_visual_report_entity_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_report_visual_report_widget`
--

DROP TABLE IF EXISTS `b_report_visual_report_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_report_visual_report_widget` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VIEW_KEY` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `WIDGET_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BOARD_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DASHBOARD_ROW_ID` int(11) NOT NULL,
  `WEIGHT` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CATEGORY_KEY` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `OWNER_ID` int(11) NOT NULL DEFAULT '0',
  `IS_PATTERN` tinyint(1) DEFAULT '0',
  `PARENT_WIDGET_ID` int(11) NOT NULL DEFAULT '0',
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BOARD_ID` (`BOARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_report_visual_report_widget`
--

LOCK TABLES `b_report_visual_report_widget` WRITE;
/*!40000 ALTER TABLE `b_report_visual_report_widget` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_report_visual_report_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_report_visual_report_widget_config`
--

DROP TABLE IF EXISTS `b_report_visual_report_widget_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_report_visual_report_widget_config` (
  `WIDGET_ID` int(11) NOT NULL,
  `CONFIGURATION_ID` int(11) NOT NULL,
  PRIMARY KEY (`WIDGET_ID`,`CONFIGURATION_ID`),
  KEY `IX_WIDGET_CONFIG` (`WIDGET_ID`,`CONFIGURATION_ID`),
  KEY `IX_CONFIG_WIDGET` (`CONFIGURATION_ID`,`WIDGET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_report_visual_report_widget_config`
--

LOCK TABLES `b_report_visual_report_widget_config` WRITE;
/*!40000 ALTER TABLE `b_report_visual_report_widget_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_report_visual_report_widget_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_ap`
--

DROP TABLE IF EXISTS `b_rest_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_ap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_rest_ap` (`USER_ID`,`PASSWORD`,`ACTIVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_ap`
--

LOCK TABLES `b_rest_ap` WRITE;
/*!40000 ALTER TABLE `b_rest_ap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_ap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_ap_permission`
--

DROP TABLE IF EXISTS `b_rest_ap_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_ap_permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PASSWORD_ID` int(11) NOT NULL,
  `PERM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_ap_perm1` (`PASSWORD_ID`,`PERM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_ap_permission`
--

LOCK TABLES `b_rest_ap_permission` WRITE;
/*!40000 ALTER TABLE `b_rest_ap_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_ap_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_app`
--

DROP TABLE IF EXISTS `b_rest_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_app` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CLIENT_ID` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INSTALLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `URL` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `URL_DEMO` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_INSTALL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` varchar(4) COLLATE utf8_unicode_ci DEFAULT '1',
  `SCOPE` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'F',
  `DATE_FINISH` date DEFAULT NULL,
  `IS_TRIALED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SHARED_KEY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT '',
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `MOBILE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `USER_INSTALL` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_app1` (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_app`
--

LOCK TABLES `b_rest_app` WRITE;
/*!40000 ALTER TABLE `b_rest_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_app_lang`
--

DROP TABLE IF EXISTS `b_rest_app_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_app_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MENU_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_app_lang1` (`APP_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_app_lang`
--

LOCK TABLES `b_rest_app_lang` WRITE;
/*!40000 ALTER TABLE `b_rest_app_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_app_log`
--

DROP TABLE IF EXISTS `b_rest_app_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_app_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `APP_ID` int(11) NOT NULL,
  `ACTION_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_b_rest_app_log1` (`APP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_app_log`
--

LOCK TABLES `b_rest_app_log` WRITE;
/*!40000 ALTER TABLE `b_rest_app_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_app_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_event`
--

DROP TABLE IF EXISTS `b_rest_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_event` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) DEFAULT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) DEFAULT '0',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_event_app_event` (`APP_ID`,`EVENT_NAME`(50),`EVENT_HANDLER`(180),`USER_ID`,`CONNECTOR_ID`(70)),
  KEY `ix_b_rest_event_app_id` (`APP_ID`),
  KEY `ix_b_rest_event_event_name` (`EVENT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_event`
--

LOCK TABLES `b_rest_event` WRITE;
/*!40000 ALTER TABLE `b_rest_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_event_offline`
--

DROP TABLE IF EXISTS `b_rest_event_offline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_event_offline` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `MESSAGE_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_DATA` text COLLATE utf8_unicode_ci,
  `EVENT_ADDITIONAL` text COLLATE utf8_unicode_ci,
  `PROCESS_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `ERROR` int(3) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_event_offline1` (`MESSAGE_ID`(50),`APP_ID`,`CONNECTOR_ID`(100),`PROCESS_ID`(50)),
  KEY `ix_b_rest_event_offline2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_event_offline`
--

LOCK TABLES `b_rest_event_offline` WRITE;
/*!40000 ALTER TABLE `b_rest_event_offline` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_event_offline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_log`
--

DROP TABLE IF EXISTS `b_rest_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CLIENT_ID` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD_ID` int(11) DEFAULT NULL,
  `SCOPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_AUTH` text COLLATE utf8_unicode_ci,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci,
  `RESPONSE_STATUS` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPONSE_DATA` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_log`
--

LOCK TABLES `b_rest_log` WRITE;
/*!40000 ALTER TABLE `b_rest_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_placement`
--

DROP TABLE IF EXISTS `b_rest_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_placement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APP_ID` int(11) DEFAULT NULL,
  `PLACEMENT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `GROUP_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `ADDITIONAL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_placement1` (`APP_ID`,`PLACEMENT`(100),`PLACEMENT_HANDLER`(200)),
  KEY `ix_b_rest_placement3` (`PLACEMENT`(100),`ADDITIONAL`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_placement`
--

LOCK TABLES `b_rest_placement` WRITE;
/*!40000 ALTER TABLE `b_rest_placement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_placement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_stat`
--

DROP TABLE IF EXISTS `b_rest_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_stat` (
  `STAT_DATE` date NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `METHOD_ID` int(11) NOT NULL,
  `HOUR_0` int(11) NOT NULL DEFAULT '0',
  `HOUR_1` int(11) NOT NULL DEFAULT '0',
  `HOUR_2` int(11) NOT NULL DEFAULT '0',
  `HOUR_3` int(11) NOT NULL DEFAULT '0',
  `HOUR_4` int(11) NOT NULL DEFAULT '0',
  `HOUR_5` int(11) NOT NULL DEFAULT '0',
  `HOUR_6` int(11) NOT NULL DEFAULT '0',
  `HOUR_7` int(11) NOT NULL DEFAULT '0',
  `HOUR_8` int(11) NOT NULL DEFAULT '0',
  `HOUR_9` int(11) NOT NULL DEFAULT '0',
  `HOUR_10` int(11) NOT NULL DEFAULT '0',
  `HOUR_11` int(11) NOT NULL DEFAULT '0',
  `HOUR_12` int(11) NOT NULL DEFAULT '0',
  `HOUR_13` int(11) NOT NULL DEFAULT '0',
  `HOUR_14` int(11) NOT NULL DEFAULT '0',
  `HOUR_15` int(11) NOT NULL DEFAULT '0',
  `HOUR_16` int(11) NOT NULL DEFAULT '0',
  `HOUR_17` int(11) NOT NULL DEFAULT '0',
  `HOUR_18` int(11) NOT NULL DEFAULT '0',
  `HOUR_19` int(11) NOT NULL DEFAULT '0',
  `HOUR_20` int(11) NOT NULL DEFAULT '0',
  `HOUR_21` int(11) NOT NULL DEFAULT '0',
  `HOUR_22` int(11) NOT NULL DEFAULT '0',
  `HOUR_23` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`APP_ID`,`STAT_DATE`,`METHOD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_stat`
--

LOCK TABLES `b_rest_stat` WRITE;
/*!40000 ALTER TABLE `b_rest_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_rest_stat_method`
--

DROP TABLE IF EXISTS `b_rest_stat_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_rest_stat_method` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `METHOD_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'M',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_rest_stat_method` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_rest_stat_method`
--

LOCK TABLES `b_rest_stat_method` WRITE;
/*!40000 ALTER TABLE `b_rest_stat_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_rest_stat_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_affiliate`
--

DROP TABLE IF EXISTS `b_sale_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_affiliate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `AFFILIATE_ID` int(11) DEFAULT NULL,
  `PLAN_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DATE_CREATE` datetime NOT NULL,
  `PAID_SUM` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `APPROVED_SUM` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `PENDING_SUM` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `ITEMS_NUMBER` int(11) NOT NULL DEFAULT '0',
  `ITEMS_SUM` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `LAST_CALCULATE` datetime DEFAULT NULL,
  `AFF_SITE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AFF_DESCRIPTION` text COLLATE utf8_unicode_ci,
  `FIX_PLAN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_SAA_USER_ID` (`USER_ID`,`SITE_ID`),
  KEY `IX_SAA_AFFILIATE_ID` (`AFFILIATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_affiliate`
--

LOCK TABLES `b_sale_affiliate` WRITE;
/*!40000 ALTER TABLE `b_sale_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_affiliate_plan`
--

DROP TABLE IF EXISTS `b_sale_affiliate_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_affiliate_plan` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `BASE_RATE` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `BASE_RATE_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `BASE_RATE_CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MIN_PAY` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `MIN_PLAN_VALUE` decimal(18,4) DEFAULT NULL,
  `VALUE_CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_affiliate_plan`
--

LOCK TABLES `b_sale_affiliate_plan` WRITE;
/*!40000 ALTER TABLE `b_sale_affiliate_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_affiliate_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_affiliate_plan_section`
--

DROP TABLE IF EXISTS `b_sale_affiliate_plan_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_affiliate_plan_section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PLAN_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'catalog',
  `SECTION_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `RATE` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `RATE_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `RATE_CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_SAP_PLAN_ID` (`PLAN_ID`,`MODULE_ID`,`SECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_affiliate_plan_section`
--

LOCK TABLES `b_sale_affiliate_plan_section` WRITE;
/*!40000 ALTER TABLE `b_sale_affiliate_plan_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_affiliate_plan_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_affiliate_tier`
--

DROP TABLE IF EXISTS `b_sale_affiliate_tier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_affiliate_tier` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `RATE1` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `RATE2` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `RATE3` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `RATE4` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `RATE5` decimal(18,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_SAT_SITE_ID` (`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_affiliate_tier`
--

LOCK TABLES `b_sale_affiliate_tier` WRITE;
/*!40000 ALTER TABLE `b_sale_affiliate_tier` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_affiliate_tier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_affiliate_transact`
--

DROP TABLE IF EXISTS `b_sale_affiliate_transact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_affiliate_transact` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AFFILIATE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TRANSACT_DATE` datetime NOT NULL,
  `AMOUNT` decimal(18,4) NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `DEBIT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DESCRIPTION` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SAT_AFFILIATE_ID` (`AFFILIATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_affiliate_transact`
--

LOCK TABLES `b_sale_affiliate_transact` WRITE;
/*!40000 ALTER TABLE `b_sale_affiliate_transact` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_affiliate_transact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_auxiliary`
--

DROP TABLE IF EXISTS `b_sale_auxiliary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_auxiliary` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ITEM` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_MD5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_STT_USER_ITEM` (`USER_ID`,`ITEM_MD5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_auxiliary`
--

LOCK TABLES `b_sale_auxiliary` WRITE;
/*!40000 ALTER TABLE `b_sale_auxiliary` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_auxiliary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_basket`
--

DROP TABLE IF EXISTS `b_sale_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_basket` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FUSER_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) DEFAULT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_PRICE_ID` int(11) DEFAULT NULL,
  `PRICE_TYPE_ID` int(11) DEFAULT NULL,
  `PRICE` decimal(18,4) NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `BASE_PRICE` decimal(18,4) DEFAULT NULL,
  `VAT_INCLUDED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DATE_INSERT` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `DATE_REFRESH` datetime DEFAULT NULL,
  `WEIGHT` double(18,2) DEFAULT NULL,
  `QUANTITY` double(18,4) NOT NULL DEFAULT '0.0000',
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DELAY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CAN_BUY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `MODULE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CALLBACK_FUNC` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOTES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORDER_CALLBACK_FUNC` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PAGE_URL` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISCOUNT_PRICE` decimal(18,4) NOT NULL,
  `CANCEL_CALLBACK_FUNC` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAY_CALLBACK_FUNC` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRODUCT_PROVIDER_CLASS` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CATALOG_XML_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRODUCT_XML_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISCOUNT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISCOUNT_VALUE` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISCOUNT_COUPON` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VAT_RATE` decimal(18,4) DEFAULT '0.0000',
  `SUBSCRIBE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEDUCTED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RESERVED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `BARCODE_MULTI` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RESERVE_QUANTITY` double DEFAULT NULL,
  `CUSTOM_PRICE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DIMENSIONS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `SET_PARENT_ID` int(11) DEFAULT NULL,
  `MEASURE_CODE` int(11) DEFAULT NULL,
  `MEASURE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RECOMMENDATION` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`ID`),
  KEY `IXS_BASKET_LID` (`LID`),
  KEY `IXS_BASKET_USER_ID` (`FUSER_ID`),
  KEY `IXS_BASKET_ORDER_ID` (`ORDER_ID`),
  KEY `IXS_BASKET_PRODUCT_ID` (`PRODUCT_ID`),
  KEY `IXS_BASKET_PRODUCT_PRICE_ID` (`PRODUCT_PRICE_ID`),
  KEY `IXS_SBAS_XML_ID` (`PRODUCT_XML_ID`,`CATALOG_XML_ID`),
  KEY `IXS_BASKET_DATE_INSERT` (`DATE_INSERT`),
  KEY `IXS_BASKET_SET_PARENT_ID` (`SET_PARENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_basket`
--

LOCK TABLES `b_sale_basket` WRITE;
/*!40000 ALTER TABLE `b_sale_basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_basket_archive`
--

DROP TABLE IF EXISTS `b_sale_basket_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_basket_archive` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ARCHIVE_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_PRICE_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PRICE` decimal(18,4) DEFAULT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `QUANTITY` double(18,4) DEFAULT NULL,
  `WEIGHT` double(18,4) DEFAULT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `MODULE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRODUCT_XML_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  `SET_PARENT_ID` int(11) DEFAULT NULL,
  `MEASURE_CODE` int(11) DEFAULT NULL,
  `MEASURE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BASKET_DATA` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IXS_PRODUCT_ID` (`PRODUCT_ID`),
  KEY `IXS_ARCHIVE_ID` (`ARCHIVE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_basket_archive`
--

LOCK TABLES `b_sale_basket_archive` WRITE;
/*!40000 ALTER TABLE `b_sale_basket_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_basket_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_basket_archive_packed`
--

DROP TABLE IF EXISTS `b_sale_basket_archive_packed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_basket_archive_packed` (
  `BASKET_ARCHIVE_ID` int(11) NOT NULL,
  `BASKET_DATA` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`BASKET_ARCHIVE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_basket_archive_packed`
--

LOCK TABLES `b_sale_basket_archive_packed` WRITE;
/*!40000 ALTER TABLE `b_sale_basket_archive_packed` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_basket_archive_packed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_basket_props`
--

DROP TABLE IF EXISTS `b_sale_basket_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_basket_props` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BASKET_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IXS_BASKET_PROPS_BASKET` (`BASKET_ID`),
  KEY `IXS_BASKET_PROPS_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_basket_props`
--

LOCK TABLES `b_sale_basket_props` WRITE;
/*!40000 ALTER TABLE `b_sale_basket_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_basket_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_bizval`
--

DROP TABLE IF EXISTS `b_sale_bizval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_bizval` (
  `CODE_KEY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CONSUMER_KEY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PERSON_TYPE_ID` int(11) NOT NULL,
  `PROVIDER_KEY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PROVIDER_VALUE` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`CODE_KEY`,`CONSUMER_KEY`,`PERSON_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_bizval`
--

LOCK TABLES `b_sale_bizval` WRITE;
/*!40000 ALTER TABLE `b_sale_bizval` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_bizval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_bizval_code_1c`
--

DROP TABLE IF EXISTS `b_sale_bizval_code_1c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_bizval_code_1c` (
  `PERSON_TYPE_ID` int(11) NOT NULL,
  `CODE_INDEX` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`PERSON_TYPE_ID`,`CODE_INDEX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_bizval_code_1c`
--

LOCK TABLES `b_sale_bizval_code_1c` WRITE;
/*!40000 ALTER TABLE `b_sale_bizval_code_1c` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_bizval_code_1c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_bizval_persondomain`
--

DROP TABLE IF EXISTS `b_sale_bizval_persondomain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_bizval_persondomain` (
  `PERSON_TYPE_ID` int(11) NOT NULL,
  `DOMAIN` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`PERSON_TYPE_ID`,`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_bizval_persondomain`
--

LOCK TABLES `b_sale_bizval_persondomain` WRITE;
/*!40000 ALTER TABLE `b_sale_bizval_persondomain` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_bizval_persondomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_buyer_stat`
--

DROP TABLE IF EXISTS `b_sale_buyer_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_buyer_stat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_ORDER_DATE` datetime NOT NULL,
  `COUNT_FULL_PAID_ORDER` int(11) DEFAULT NULL,
  `COUNT_PART_PAID_ORDER` int(11) DEFAULT NULL,
  `SUM_PAID` decimal(18,4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IXS_CURRENCY_LID_SELECTOR` (`CURRENCY`,`LID`,`USER_ID`),
  KEY `IXS_ORDER_USER_ID` (`USER_ID`),
  KEY `IXS_LAST_ORDER_DATE` (`LAST_ORDER_DATE`),
  KEY `IXS_COUNT_FULL_PAID_ORDER` (`COUNT_FULL_PAID_ORDER`),
  KEY `IXS_COUNT_PART_PAID_ORDER` (`COUNT_PART_PAID_ORDER`),
  KEY `IXS_SUM_PAID` (`SUM_PAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_buyer_stat`
--

LOCK TABLES `b_sale_buyer_stat` WRITE;
/*!40000 ALTER TABLE `b_sale_buyer_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_buyer_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_cashbox`
--

DROP TABLE IF EXISTS `b_sale_cashbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_cashbox` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_LAST_CHECK` datetime DEFAULT NULL,
  `SORT` int(11) DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `USE_OFFLINE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENABLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `KKM_ID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OFD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OFD_SETTINGS` text COLLATE utf8_unicode_ci,
  `NUMBER_KKM` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_cashbox`
--

LOCK TABLES `b_sale_cashbox` WRITE;
/*!40000 ALTER TABLE `b_sale_cashbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_cashbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_cashbox_check`
--

DROP TABLE IF EXISTS `b_sale_cashbox_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_cashbox_check` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CASHBOX_ID` int(11) DEFAULT NULL,
  `EXTERNAL_UUID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAYMENT_ID` int(11) DEFAULT NULL,
  `SHIPMENT_ID` int(11) DEFAULT NULL,
  `CNT_FAIL_PRINT` int(11) DEFAULT '0',
  `ORDER_ID` int(11) DEFAULT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_PRINT_START` datetime DEFAULT NULL,
  `DATE_PRINT_END` datetime DEFAULT NULL,
  `SUM` decimal(18,4) DEFAULT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_REGISTRY_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_PARAMS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_SALE_CHECK_ORDER_ID` (`ORDER_ID`),
  KEY `IX_SALE_CHECK_PAYMENT_ID` (`PAYMENT_ID`),
  KEY `IX_SALE_CHECK_SHIPMENT_ID` (`SHIPMENT_ID`),
  KEY `IX_SALE_CHECK_STATUS` (`STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_cashbox_check`
--

LOCK TABLES `b_sale_cashbox_check` WRITE;
/*!40000 ALTER TABLE `b_sale_cashbox_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_cashbox_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_cashbox_connect`
--

DROP TABLE IF EXISTS `b_sale_cashbox_connect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_cashbox_connect` (
  `HASH` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DATE_CREATE` datetime NOT NULL,
  PRIMARY KEY (`HASH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_cashbox_connect`
--

LOCK TABLES `b_sale_cashbox_connect` WRITE;
/*!40000 ALTER TABLE `b_sale_cashbox_connect` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_cashbox_connect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_cashbox_err_log`
--

DROP TABLE IF EXISTS `b_sale_cashbox_err_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_cashbox_err_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CASHBOX_ID` int(11) DEFAULT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_cashbox_err_log`
--

LOCK TABLES `b_sale_cashbox_err_log` WRITE;
/*!40000 ALTER TABLE `b_sale_cashbox_err_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_cashbox_err_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_cashbox_z_report`
--

DROP TABLE IF EXISTS `b_sale_cashbox_z_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_cashbox_z_report` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CASHBOX_ID` int(11) NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_PRINT_START` datetime DEFAULT NULL,
  `DATE_PRINT_END` datetime DEFAULT NULL,
  `CASH_SUM` decimal(18,4) DEFAULT NULL,
  `CASHLESS_SUM` decimal(18,4) DEFAULT NULL,
  `CUMULATIVE_SUM` decimal(18,4) DEFAULT NULL,
  `RETURNED_SUM` decimal(18,4) DEFAULT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CNT_FAIL_PRINT` int(11) DEFAULT '0',
  `LINK_PARAMS` text COLLATE utf8_unicode_ci,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SALE_Z_REPORT_CASHBOX_ID` (`CASHBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_cashbox_z_report`
--

LOCK TABLES `b_sale_cashbox_z_report` WRITE;
/*!40000 ALTER TABLE `b_sale_cashbox_z_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_cashbox_z_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_check2cashbox`
--

DROP TABLE IF EXISTS `b_sale_check2cashbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_check2cashbox` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CHECK_ID` int(11) NOT NULL,
  `CASHBOX_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_SALE_CHECK2CB_UNI` (`CHECK_ID`,`CASHBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_check2cashbox`
--

LOCK TABLES `b_sale_check2cashbox` WRITE;
/*!40000 ALTER TABLE `b_sale_check2cashbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_check2cashbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_check_related_entities`
--

DROP TABLE IF EXISTS `b_sale_check_related_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_check_related_entities` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CHECK_ID` int(11) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_CHECK_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_check_related_entities`
--

LOCK TABLES `b_sale_check_related_entities` WRITE;
/*!40000 ALTER TABLE `b_sale_check_related_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_check_related_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_company`
--

DROP TABLE IF EXISTS `b_sale_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_company` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `LOCATION_ID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) DEFAULT '100',
  `XML_ID` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_MODIFY` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `MODIFIED_BY` int(11) DEFAULT NULL,
  `ADDRESS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_company`
--

LOCK TABLES `b_sale_company` WRITE;
/*!40000 ALTER TABLE `b_sale_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_company2location`
--

DROP TABLE IF EXISTS `b_sale_company2location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_company2location` (
  `COMPANY_ID` int(11) NOT NULL,
  `LOCATION_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LOCATION_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'L',
  PRIMARY KEY (`COMPANY_ID`,`LOCATION_CODE`,`LOCATION_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_company2location`
--

LOCK TABLES `b_sale_company2location` WRITE;
/*!40000 ALTER TABLE `b_sale_company2location` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_company2location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_company2service`
--

DROP TABLE IF EXISTS `b_sale_company2service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_company2service` (
  `COMPANY_ID` int(11) NOT NULL,
  `SERVICE_ID` int(11) NOT NULL,
  `SERVICE_TYPE` int(11) NOT NULL,
  PRIMARY KEY (`COMPANY_ID`,`SERVICE_ID`,`SERVICE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_company2service`
--

LOCK TABLES `b_sale_company2service` WRITE;
/*!40000 ALTER TABLE `b_sale_company2service` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_company2service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_company_group`
--

DROP TABLE IF EXISTS `b_sale_company_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_company_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPANY_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SALE_COMP_GRP_CMP_ID` (`COMPANY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_company_group`
--

LOCK TABLES `b_sale_company_group` WRITE;
/*!40000 ALTER TABLE `b_sale_company_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_company_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_company_resp_grp`
--

DROP TABLE IF EXISTS `b_sale_company_resp_grp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_company_resp_grp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPANY_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SALE_COMP_RESP_GRP_CMP_ID` (`COMPANY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_company_resp_grp`
--

LOCK TABLES `b_sale_company_resp_grp` WRITE;
/*!40000 ALTER TABLE `b_sale_company_resp_grp` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_company_resp_grp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_d_ix_element`
--

DROP TABLE IF EXISTS `b_sale_d_ix_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_d_ix_element` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_S_DIXE_O_1` (`ELEMENT_ID`,`DISCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_d_ix_element`
--

LOCK TABLES `b_sale_d_ix_element` WRITE;
/*!40000 ALTER TABLE `b_sale_d_ix_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_d_ix_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_d_ix_section`
--

DROP TABLE IF EXISTS `b_sale_d_ix_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_d_ix_section` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_S_DIXS_O_1` (`SECTION_ID`,`DISCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_d_ix_section`
--

LOCK TABLES `b_sale_d_ix_section` WRITE;
/*!40000 ALTER TABLE `b_sale_d_ix_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_d_ix_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_delivery2location`
--

DROP TABLE IF EXISTS `b_sale_delivery2location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_delivery2location` (
  `DELIVERY_ID` int(11) NOT NULL,
  `LOCATION_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LOCATION_TYPE` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'L',
  PRIMARY KEY (`DELIVERY_ID`,`LOCATION_CODE`,`LOCATION_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_delivery2location`
--

LOCK TABLES `b_sale_delivery2location` WRITE;
/*!40000 ALTER TABLE `b_sale_delivery2location` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_delivery2location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_delivery2paysystem`
--

DROP TABLE IF EXISTS `b_sale_delivery2paysystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_delivery2paysystem` (
  `DELIVERY_ID` int(11) NOT NULL,
  `LINK_DIRECTION` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `PAYSYSTEM_ID` int(11) NOT NULL,
  KEY `IX_DELIVERY` (`DELIVERY_ID`),
  KEY `IX_PAYSYSTEM` (`PAYSYSTEM_ID`),
  KEY `LINK_DIRECTION` (`LINK_DIRECTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_delivery2paysystem`
--

LOCK TABLES `b_sale_delivery2paysystem` WRITE;
/*!40000 ALTER TABLE `b_sale_delivery2paysystem` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_delivery2paysystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_delivery_es`
--

DROP TABLE IF EXISTS `b_sale_delivery_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_delivery_es` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLASS_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `RIGHTS` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `DELIVERY_ID` int(11) NOT NULL,
  `INIT_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) DEFAULT '100',
  PRIMARY KEY (`ID`),
  KEY `IX_BSD_ES_DELIVERY_ID` (`DELIVERY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_delivery_es`
--

LOCK TABLES `b_sale_delivery_es` WRITE;
/*!40000 ALTER TABLE `b_sale_delivery_es` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_delivery_es` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_delivery_req`
--

DROP TABLE IF EXISTS `b_sale_delivery_req`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_delivery_req` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DELIVERY_ID` int(11) NOT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `EXTERNAL_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_delivery_req`
--

LOCK TABLES `b_sale_delivery_req` WRITE;
/*!40000 ALTER TABLE `b_sale_delivery_req` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_delivery_req` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_delivery_req_shp`
--

DROP TABLE IF EXISTS `b_sale_delivery_req_shp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_delivery_req_shp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SHIPMENT_ID` int(11) NOT NULL,
  `REQUEST_ID` int(11) DEFAULT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERROR_DESCRIPTION` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_delivery_req_shp`
--

LOCK TABLES `b_sale_delivery_req_shp` WRITE;
/*!40000 ALTER TABLE `b_sale_delivery_req_shp` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_delivery_req_shp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_delivery_srv`
--

DROP TABLE IF EXISTS `b_sale_delivery_srv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_delivery_srv` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(11) NOT NULL,
  `LOGOTIP` int(11) DEFAULT NULL,
  `CONFIG` longtext COLLATE utf8_unicode_ci,
  `CLASS_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `TRACKING_PARAMS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ALLOW_EDIT_SHIPMENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `VAT_ID` int(11) DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BSD_SRV_CODE` (`CODE`),
  KEY `IX_BSD_SRV_PARENT_ID` (`PARENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_delivery_srv`
--

LOCK TABLES `b_sale_delivery_srv` WRITE;
/*!40000 ALTER TABLE `b_sale_delivery_srv` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_delivery_srv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_discount`
--

DROP TABLE IF EXISTS `b_sale_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_discount` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRICE_FROM` decimal(18,2) DEFAULT NULL,
  `PRICE_TO` decimal(18,2) DEFAULT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISCOUNT_VALUE` decimal(18,2) NOT NULL,
  `DISCOUNT_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '100',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `PRIORITY` int(18) NOT NULL DEFAULT '1',
  `LAST_DISCOUNT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_LEVEL_DISCOUNT` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `VERSION` int(11) NOT NULL DEFAULT '1',
  `CONDITIONS` mediumtext COLLATE utf8_unicode_ci,
  `UNPACK` mediumtext COLLATE utf8_unicode_ci,
  `ACTIONS` mediumtext COLLATE utf8_unicode_ci,
  `APPLICATION` mediumtext COLLATE utf8_unicode_ci,
  `PREDICTION_TEXT` text COLLATE utf8_unicode_ci,
  `PREDICTIONS` mediumtext COLLATE utf8_unicode_ci,
  `PREDICTIONS_APP` mediumtext COLLATE utf8_unicode_ci,
  `USE_COUPONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `EXECUTE_MODULE` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `EXECUTE_MODE` int(11) DEFAULT '0',
  `HAS_INDEX` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `PRESET_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SHORT_DESCRIPTION` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IXS_DISCOUNT_LID` (`LID`),
  KEY `IX_SSD_ACTIVE_DATE` (`ACTIVE_FROM`,`ACTIVE_TO`),
  KEY `IX_PRESET_ID` (`PRESET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_discount`
--

LOCK TABLES `b_sale_discount` WRITE;
/*!40000 ALTER TABLE `b_sale_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_discount_coupon`
--

DROP TABLE IF EXISTS `b_sale_discount_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_discount_coupon` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `COUPON` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` int(11) NOT NULL DEFAULT '0',
  `MAX_USE` int(11) NOT NULL DEFAULT '0',
  `USE_COUNT` int(11) NOT NULL DEFAULT '0',
  `USER_ID` int(11) NOT NULL DEFAULT '0',
  `DATE_APPLY` datetime DEFAULT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_S_D_COUPON` (`COUPON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_discount_coupon`
--

LOCK TABLES `b_sale_discount_coupon` WRITE;
/*!40000 ALTER TABLE `b_sale_discount_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_discount_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_discount_entities`
--

DROP TABLE IF EXISTS `b_sale_discount_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_discount_entities` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELD_ENTITY` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELD_TABLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SALE_DSC_ENT_DISCOUNT_ID` (`DISCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_discount_entities`
--

LOCK TABLES `b_sale_discount_entities` WRITE;
/*!40000 ALTER TABLE `b_sale_discount_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_discount_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_discount_group`
--

DROP TABLE IF EXISTS `b_sale_discount_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_discount_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GROUP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_S_DISGRP` (`DISCOUNT_ID`,`GROUP_ID`),
  UNIQUE KEY `IX_S_DISGRP_G` (`GROUP_ID`,`DISCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_discount_group`
--

LOCK TABLES `b_sale_discount_group` WRITE;
/*!40000 ALTER TABLE `b_sale_discount_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_discount_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_discount_module`
--

DROP TABLE IF EXISTS `b_sale_discount_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_discount_module` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SALE_DSC_MOD` (`DISCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_discount_module`
--

LOCK TABLES `b_sale_discount_module` WRITE;
/*!40000 ALTER TABLE `b_sale_discount_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_discount_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_documentgenerator_callback_registry`
--

DROP TABLE IF EXISTS `b_sale_documentgenerator_callback_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_documentgenerator_callback_registry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `MODULE_ID` int(11) NOT NULL,
  `DOCUMENT_ID` int(11) NOT NULL,
  `CALLBACK_CLASS` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CALLBACK_METHOD` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_documentgenerator_callback_registry`
--

LOCK TABLES `b_sale_documentgenerator_callback_registry` WRITE;
/*!40000 ALTER TABLE `b_sale_documentgenerator_callback_registry` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_documentgenerator_callback_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_entity_marker`
--

DROP TABLE IF EXISTS `b_sale_entity_marker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_entity_marker` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int(11) NOT NULL,
  `ENTITY_TYPE` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `COMMENT` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_UPDATE` datetime DEFAULT NULL,
  `SUCCESS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `IX_BSEM_TYPE` (`TYPE`),
  KEY `IX_BSEM_ENTITY_TYPE` (`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_entity_marker`
--

LOCK TABLES `b_sale_entity_marker` WRITE;
/*!40000 ALTER TABLE `b_sale_entity_marker` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_entity_marker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_exchange_log`
--

DROP TABLE IF EXISTS `b_sale_exchange_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_exchange_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` int(11) NOT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `OWNER_ENTITY_ID` int(11) DEFAULT NULL,
  `ENTITY_DATE_UPDATE` datetime DEFAULT NULL,
  `XML_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MARKED` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DIRECTION` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_EXCHANGE_LOG1` (`ENTITY_ID`,`ENTITY_TYPE_ID`),
  KEY `IX_EXCHANGE_LOG2` (`ENTITY_DATE_UPDATE`),
  KEY `IX_EXCHANGE_LOG3` (`DATE_INSERT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_exchange_log`
--

LOCK TABLES `b_sale_exchange_log` WRITE;
/*!40000 ALTER TABLE `b_sale_exchange_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_exchange_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_export`
--

DROP TABLE IF EXISTS `b_sale_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_export` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERSON_TYPE_ID` int(11) NOT NULL,
  `VARS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_export`
--

LOCK TABLES `b_sale_export` WRITE;
/*!40000 ALTER TABLE `b_sale_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_fuser`
--

DROP TABLE IF EXISTS `b_sale_fuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_fuser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `CODE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_USER_ID` (`USER_ID`),
  KEY `IX_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_fuser`
--

LOCK TABLES `b_sale_fuser` WRITE;
/*!40000 ALTER TABLE `b_sale_fuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_fuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_gift_related_data`
--

DROP TABLE IF EXISTS `b_sale_gift_related_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_gift_related_data` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISCOUNT_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) DEFAULT NULL,
  `SECTION_ID` int(11) DEFAULT NULL,
  `MAIN_PRODUCT_SECTION_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_S_GRD_O_1` (`DISCOUNT_ID`),
  KEY `IX_S_GRD_O_2` (`MAIN_PRODUCT_SECTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_gift_related_data`
--

LOCK TABLES `b_sale_gift_related_data` WRITE;
/*!40000 ALTER TABLE `b_sale_gift_related_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_gift_related_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_hdaln`
--

DROP TABLE IF EXISTS `b_sale_hdaln`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_hdaln` (
  `LOCATION_ID` int(11) NOT NULL,
  `LEFT_MARGIN` int(11) NOT NULL,
  `RIGHT_MARGIN` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`LOCATION_ID`),
  KEY `IX_BSHDALN_NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_hdaln`
--

LOCK TABLES `b_sale_hdaln` WRITE;
/*!40000 ALTER TABLE `b_sale_hdaln` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_hdaln` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_lang`
--

DROP TABLE IF EXISTS `b_sale_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_lang` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_lang`
--

LOCK TABLES `b_sale_lang` WRITE;
/*!40000 ALTER TABLE `b_sale_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_loc_2site`
--

DROP TABLE IF EXISTS `b_sale_loc_2site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_loc_2site` (
  `LOCATION_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `LOCATION_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'L',
  PRIMARY KEY (`SITE_ID`,`LOCATION_ID`,`LOCATION_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_loc_2site`
--

LOCK TABLES `b_sale_loc_2site` WRITE;
/*!40000 ALTER TABLE `b_sale_loc_2site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_loc_2site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_loc_def2site`
--

DROP TABLE IF EXISTS `b_sale_loc_def2site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_loc_def2site` (
  `LOCATION_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) DEFAULT '100',
  PRIMARY KEY (`LOCATION_CODE`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_loc_def2site`
--

LOCK TABLES `b_sale_loc_def2site` WRITE;
/*!40000 ALTER TABLE `b_sale_loc_def2site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_loc_def2site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_loc_ext`
--

DROP TABLE IF EXISTS `b_sale_loc_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_loc_ext` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERVICE_ID` int(11) NOT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SALE_LOC_EXT_LID_SID` (`LOCATION_ID`,`SERVICE_ID`),
  KEY `IX_B_SALE_LOC_EXT_XML_SID` (`XML_ID`,`SERVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_loc_ext`
--

LOCK TABLES `b_sale_loc_ext` WRITE;
/*!40000 ALTER TABLE `b_sale_loc_ext` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_loc_ext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_loc_ext_srv`
--

DROP TABLE IF EXISTS `b_sale_loc_ext_srv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_loc_ext_srv` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_loc_ext_srv`
--

LOCK TABLES `b_sale_loc_ext_srv` WRITE;
/*!40000 ALTER TABLE `b_sale_loc_ext_srv` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_loc_ext_srv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_loc_name`
--

DROP TABLE IF EXISTS `b_sale_loc_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_loc_name` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `LOCATION_ID` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NAME_UPPER` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NAME_NORM` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SHORT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SALE_L_NAME_NAME_UPPER` (`NAME_UPPER`),
  KEY `IX_SALE_L_NAME_NAME_NORM` (`NAME_NORM`),
  KEY `IX_SALE_L_NAME_LID_LID` (`LOCATION_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_loc_name`
--

LOCK TABLES `b_sale_loc_name` WRITE;
/*!40000 ALTER TABLE `b_sale_loc_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_loc_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_loc_type`
--

DROP TABLE IF EXISTS `b_sale_loc_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_loc_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) DEFAULT '100',
  `DISPLAY_SORT` int(11) DEFAULT '100',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_loc_type`
--

LOCK TABLES `b_sale_loc_type` WRITE;
/*!40000 ALTER TABLE `b_sale_loc_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_loc_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_loc_type_name`
--

DROP TABLE IF EXISTS `b_sale_loc_type_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_loc_type_name` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SALE_L_TYPE_NAME_TID_LID` (`TYPE_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_loc_type_name`
--

LOCK TABLES `b_sale_loc_type_name` WRITE;
/*!40000 ALTER TABLE `b_sale_loc_type_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_loc_type_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_location`
--

DROP TABLE IF EXISTS `b_sale_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_location` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LEFT_MARGIN` int(11) DEFAULT NULL,
  `RIGHT_MARGIN` int(11) DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT '0',
  `DEPTH_LEVEL` int(11) DEFAULT '1',
  `TYPE_ID` int(11) DEFAULT NULL,
  `LATITUDE` decimal(8,6) DEFAULT NULL,
  `LONGITUDE` decimal(9,6) DEFAULT NULL,
  `COUNTRY_ID` int(11) DEFAULT NULL,
  `REGION_ID` int(11) DEFAULT NULL,
  `CITY_ID` int(11) DEFAULT NULL,
  `LOC_DEFAULT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_SALE_LOCATION_CODE` (`CODE`),
  KEY `IX_SALE_LOCATION_MARGINS` (`LEFT_MARGIN`,`RIGHT_MARGIN`),
  KEY `IX_SALE_LOCATION_MARGINS_REV` (`RIGHT_MARGIN`,`LEFT_MARGIN`),
  KEY `IX_SALE_LOCATION_PARENT` (`PARENT_ID`),
  KEY `IX_SALE_LOCATION_DL` (`DEPTH_LEVEL`),
  KEY `IX_SALE_LOCATION_TYPE` (`TYPE_ID`),
  KEY `IXS_LOCATION_COUNTRY_ID` (`COUNTRY_ID`),
  KEY `IXS_LOCATION_REGION_ID` (`REGION_ID`),
  KEY `IXS_LOCATION_CITY_ID` (`CITY_ID`),
  KEY `IXS_LOCATION_SORT` (`SORT`),
  KEY `IX_SALE_LOCATION_TYPE_MARGIN` (`TYPE_ID`,`LEFT_MARGIN`,`RIGHT_MARGIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_location`
--

LOCK TABLES `b_sale_location` WRITE;
/*!40000 ALTER TABLE `b_sale_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_location2location_group`
--

DROP TABLE IF EXISTS `b_sale_location2location_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_location2location_group` (
  `LOCATION_ID` int(11) NOT NULL,
  `LOCATION_GROUP_ID` int(11) NOT NULL,
  PRIMARY KEY (`LOCATION_ID`,`LOCATION_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_location2location_group`
--

LOCK TABLES `b_sale_location2location_group` WRITE;
/*!40000 ALTER TABLE `b_sale_location2location_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_location2location_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_location_city`
--

DROP TABLE IF EXISTS `b_sale_location_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_location_city` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SHORT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REGION_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IXS_LOCAT_REGION_ID` (`REGION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_location_city`
--

LOCK TABLES `b_sale_location_city` WRITE;
/*!40000 ALTER TABLE `b_sale_location_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_location_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_location_city_lang`
--

DROP TABLE IF EXISTS `b_sale_location_city_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_location_city_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SHORT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IXS_LOCAT_CITY_LID` (`CITY_ID`,`LID`),
  KEY `IX_NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_location_city_lang`
--

LOCK TABLES `b_sale_location_city_lang` WRITE;
/*!40000 ALTER TABLE `b_sale_location_city_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_location_city_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_location_country`
--

DROP TABLE IF EXISTS `b_sale_location_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_location_country` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SHORT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_location_country`
--

LOCK TABLES `b_sale_location_country` WRITE;
/*!40000 ALTER TABLE `b_sale_location_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_location_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_location_country_lang`
--

DROP TABLE IF EXISTS `b_sale_location_country_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_location_country_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COUNTRY_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SHORT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IXS_LOCAT_CNTR_LID` (`COUNTRY_ID`,`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_location_country_lang`
--

LOCK TABLES `b_sale_location_country_lang` WRITE;
/*!40000 ALTER TABLE `b_sale_location_country_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_location_country_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_location_group`
--

DROP TABLE IF EXISTS `b_sale_location_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_location_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_SALE_LOCATION_GROUP_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_location_group`
--

LOCK TABLES `b_sale_location_group` WRITE;
/*!40000 ALTER TABLE `b_sale_location_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_location_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_location_group_lang`
--

DROP TABLE IF EXISTS `b_sale_location_group_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_location_group_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOCATION_GROUP_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_LOCATION_GROUP_LID` (`LOCATION_GROUP_ID`,`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_location_group_lang`
--

LOCK TABLES `b_sale_location_group_lang` WRITE;
/*!40000 ALTER TABLE `b_sale_location_group_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_location_group_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_location_region`
--

DROP TABLE IF EXISTS `b_sale_location_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_location_region` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SHORT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_location_region`
--

LOCK TABLES `b_sale_location_region` WRITE;
/*!40000 ALTER TABLE `b_sale_location_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_location_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_location_region_lang`
--

DROP TABLE IF EXISTS `b_sale_location_region_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_location_region_lang` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `REGION_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SHORT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IXS_LOCAT_REGION_LID` (`REGION_ID`,`LID`),
  KEY `IXS_NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_location_region_lang`
--

LOCK TABLES `b_sale_location_region_lang` WRITE;
/*!40000 ALTER TABLE `b_sale_location_region_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_location_region_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_location_zip`
--

DROP TABLE IF EXISTS `b_sale_location_zip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_location_zip` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOCATION_ID` int(11) NOT NULL DEFAULT '0',
  `ZIP` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `IX_LOCATION_ID` (`LOCATION_ID`),
  KEY `IX_ZIP` (`ZIP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_location_zip`
--

LOCK TABLES `b_sale_location_zip` WRITE;
/*!40000 ALTER TABLE `b_sale_location_zip` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_location_zip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order`
--

DROP TABLE IF EXISTS `b_sale_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `PERSON_TYPE_ID` int(11) NOT NULL,
  `PAYED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DATE_PAYED` datetime DEFAULT NULL,
  `EMP_PAYED_ID` int(11) DEFAULT NULL,
  `CANCELED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DATE_CANCELED` datetime DEFAULT NULL,
  `EMP_CANCELED_ID` int(11) DEFAULT NULL,
  `REASON_CANCELED` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS_ID` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_STATUS` datetime NOT NULL,
  `EMP_STATUS_ID` int(11) DEFAULT NULL,
  `PRICE_DELIVERY` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `PRICE_PAYMENT` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `ALLOW_DELIVERY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DATE_ALLOW_DELIVERY` datetime DEFAULT NULL,
  `EMP_ALLOW_DELIVERY_ID` int(11) DEFAULT NULL,
  `DEDUCTED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DATE_DEDUCTED` datetime DEFAULT NULL,
  `EMP_DEDUCTED_ID` int(11) DEFAULT NULL,
  `REASON_UNDO_DEDUCTED` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MARKED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DATE_MARKED` datetime DEFAULT NULL,
  `EMP_MARKED_ID` int(11) DEFAULT NULL,
  `REASON_MARKED` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESERVED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `PRICE` decimal(18,4) NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `DISCOUNT_VALUE` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `USER_ID` int(11) NOT NULL,
  `PAY_SYSTEM_ID` int(11) DEFAULT NULL,
  `DELIVERY_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `USER_DESCRIPTION` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_INFO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_STATUS` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_STATUS_CODE` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_STATUS_DESCRIPTION` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_STATUS_MESSAGE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_SUM` decimal(18,2) DEFAULT NULL,
  `PS_CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_RESPONSE_DATE` datetime DEFAULT NULL,
  `COMMENTS` text COLLATE utf8_unicode_ci,
  `TAX_VALUE` decimal(18,2) NOT NULL DEFAULT '0.00',
  `STAT_GID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUM_PAID` decimal(18,2) NOT NULL DEFAULT '0.00',
  `IS_RECURRING` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RECURRING_ID` int(11) DEFAULT NULL,
  `PAY_VOUCHER_NUM` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAY_VOUCHER_DATE` date DEFAULT NULL,
  `LOCKED_BY` int(11) DEFAULT NULL,
  `DATE_LOCK` datetime DEFAULT NULL,
  `RECOUNT_FLAG` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `AFFILIATE_ID` int(11) DEFAULT NULL,
  `DELIVERY_DOC_NUM` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DELIVERY_DOC_DATE` date DEFAULT NULL,
  `UPDATED_1C` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `STORE_ID` int(11) DEFAULT NULL,
  `ORDER_TOPIC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `RESPONSIBLE_ID` int(11) DEFAULT NULL,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `DATE_PAY_BEFORE` datetime DEFAULT NULL,
  `DATE_BILL` datetime DEFAULT NULL,
  `ACCOUNT_NUMBER` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TRACKING_NUMBER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID_1C` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION_1C` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '0',
  `EXTERNAL_ORDER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RUNNING` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `BX_USER_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCH_CONTENT` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IXS_ACCOUNT_NUMBER` (`ACCOUNT_NUMBER`),
  KEY `IXS_ORDER_PERSON_TYPE_ID` (`PERSON_TYPE_ID`),
  KEY `IXS_ORDER_STATUS_ID` (`STATUS_ID`),
  KEY `IXS_ORDER_REC_ID` (`RECURRING_ID`),
  KEY `IX_SOO_AFFILIATE_ID` (`AFFILIATE_ID`),
  KEY `IXS_ORDER_UPDATED_1C` (`UPDATED_1C`),
  KEY `IXS_SALE_COUNT` (`USER_ID`,`LID`,`PAYED`,`CANCELED`),
  KEY `IXS_DATE_UPDATE` (`DATE_UPDATE`),
  KEY `IXS_XML_ID` (`XML_ID`),
  KEY `IXS_ID_1C` (`ID_1C`),
  KEY `IX_BSO_DATE_ALLOW_DELIVERY` (`DATE_ALLOW_DELIVERY`),
  KEY `IX_BSO_ALLOW_DELIVERY` (`ALLOW_DELIVERY`),
  KEY `IX_BSO_DATE_CANCELED` (`DATE_CANCELED`),
  KEY `IX_BSO_CANCELED` (`CANCELED`),
  KEY `IX_BSO_DATE_PAYED` (`DATE_PAYED`),
  KEY `IX_BSO_DATE_INSERT` (`DATE_INSERT`),
  KEY `IX_BSO_DATE_PAY_BEFORE` (`DATE_PAY_BEFORE`),
  FULLTEXT KEY `IX_B_SALE_ORDER_SEARCH` (`SEARCH_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order`
--

LOCK TABLES `b_sale_order` WRITE;
/*!40000 ALTER TABLE `b_sale_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_archive`
--

DROP TABLE IF EXISTS `b_sale_order_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_archive` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `ACCOUNT_NUMBER` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `PERSON_TYPE_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `STATUS_ID` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `PAYED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEDUCTED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CANCELED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `PRICE` decimal(18,4) NOT NULL,
  `SUM_PAID` decimal(18,2) DEFAULT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID_1C` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORDER_DATA` mediumtext COLLATE utf8_unicode_ci,
  `RESPONSIBLE_ID` int(11) DEFAULT NULL,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `VERSION` int(11) NOT NULL,
  `DATE_ARCHIVED` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IXS_USER_ID` (`USER_ID`),
  KEY `IXS_STATUS_ID` (`STATUS_ID`),
  KEY `IXS_DATE_INSERT` (`DATE_INSERT`),
  KEY `IXS_DATE_ARCHIVED` (`DATE_ARCHIVED`),
  KEY `IXS_XML_ID` (`XML_ID`),
  KEY `IXS_ID_1C` (`ID_1C`),
  KEY `IXS_RESPONSIBLE_ID` (`RESPONSIBLE_ID`),
  KEY `IXS_COMPANY_ID` (`COMPANY_ID`),
  KEY `IXS_ORDER_ID` (`ORDER_ID`),
  KEY `IXS_ACCOUNT_NUMBER` (`ACCOUNT_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_archive`
--

LOCK TABLES `b_sale_order_archive` WRITE;
/*!40000 ALTER TABLE `b_sale_order_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_archive_packed`
--

DROP TABLE IF EXISTS `b_sale_order_archive_packed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_archive_packed` (
  `ORDER_ARCHIVE_ID` int(11) NOT NULL,
  `ORDER_DATA` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ORDER_ARCHIVE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_archive_packed`
--

LOCK TABLES `b_sale_order_archive_packed` WRITE;
/*!40000 ALTER TABLE `b_sale_order_archive_packed` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_archive_packed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_change`
--

DROP TABLE IF EXISTS `b_sale_order_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_change` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int(11) NOT NULL,
  `TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATA` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_MODIFY` datetime NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ENTITY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENTITY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IXS_ORDER_ID_CHANGE` (`ORDER_ID`),
  KEY `IXS_TYPE_CHANGE` (`TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_change`
--

LOCK TABLES `b_sale_order_change` WRITE;
/*!40000 ALTER TABLE `b_sale_order_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_converter_crm_error`
--

DROP TABLE IF EXISTS `b_sale_order_converter_crm_error`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_converter_crm_error` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int(11) NOT NULL,
  `ERROR` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_converter_crm_error`
--

LOCK TABLES `b_sale_order_converter_crm_error` WRITE;
/*!40000 ALTER TABLE `b_sale_order_converter_crm_error` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_converter_crm_error` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_coupons`
--

DROP TABLE IF EXISTS `b_sale_order_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_coupons` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int(11) NOT NULL,
  `ORDER_DISCOUNT_ID` int(11) NOT NULL,
  `COUPON` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` int(11) NOT NULL,
  `COUPON_ID` int(11) NOT NULL,
  `DATA` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_SALE_ORDER_CPN_ORDER` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_coupons`
--

LOCK TABLES `b_sale_order_coupons` WRITE;
/*!40000 ALTER TABLE `b_sale_order_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_delivery`
--

DROP TABLE IF EXISTS `b_sale_order_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_delivery` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int(11) NOT NULL,
  `ACCOUNT_NUMBER` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `DATE_REQUEST` datetime DEFAULT NULL,
  `DATE_UPDATE` datetime DEFAULT NULL,
  `DELIVERY_LOCATION` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `STATUS_ID` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `PRICE_DELIVERY` decimal(18,4) DEFAULT NULL,
  `DISCOUNT_PRICE` decimal(18,4) DEFAULT NULL,
  `BASE_PRICE_DELIVERY` decimal(18,4) DEFAULT NULL,
  `CUSTOM_PRICE_DELIVERY` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ALLOW_DELIVERY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `DATE_ALLOW_DELIVERY` datetime DEFAULT NULL,
  `EMP_ALLOW_DELIVERY_ID` int(11) DEFAULT NULL,
  `DEDUCTED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `DATE_DEDUCTED` datetime DEFAULT NULL,
  `EMP_DEDUCTED_ID` int(11) DEFAULT NULL,
  `REASON_UNDO_DEDUCTED` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESERVED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DELIVERY_ID` int(11) NOT NULL,
  `DELIVERY_DOC_NUM` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DELIVERY_DOC_DATE` datetime DEFAULT NULL,
  `TRACKING_NUMBER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DELIVERY_NAME` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CANCELED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `DATE_CANCELED` datetime DEFAULT NULL,
  `EMP_CANCELED_ID` int(11) DEFAULT NULL,
  `REASON_CANCELED` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `MARKED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_MARKED` datetime DEFAULT NULL,
  `EMP_MARKED_ID` int(11) DEFAULT NULL,
  `REASON_MARKED` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CURRENCY` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RESPONSIBLE_ID` int(11) DEFAULT NULL,
  `EMP_RESPONSIBLE_ID` int(11) DEFAULT NULL,
  `DATE_RESPONSIBLE_ID` datetime DEFAULT NULL,
  `COMMENTS` text COLLATE utf8_unicode_ci,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `TRACKING_STATUS` int(11) DEFAULT NULL,
  `TRACKING_DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TRACKING_LAST_CHECK` datetime DEFAULT NULL,
  `TRACKING_LAST_CHANGE` datetime DEFAULT NULL,
  `ID_1C` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION_1C` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTERNAL_DELIVERY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `UPDATED_1C` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IXS_DLV_ACCOUNT_NUMBER` (`ACCOUNT_NUMBER`),
  KEY `IX_BSOD_ORDER_ID` (`ORDER_ID`),
  KEY `IX_BSOD_DATE_ALLOW_DELIVERY` (`DATE_ALLOW_DELIVERY`),
  KEY `IX_BSOD_ALLOW_DELIVERY` (`ALLOW_DELIVERY`),
  KEY `IX_BSOD_DATE_CANCELED` (`DATE_CANCELED`),
  KEY `IX_BSOD_CANCELED` (`CANCELED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_delivery`
--

LOCK TABLES `b_sale_order_delivery` WRITE;
/*!40000 ALTER TABLE `b_sale_order_delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_delivery_es`
--

DROP TABLE IF EXISTS `b_sale_order_delivery_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_delivery_es` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SHIPMENT_ID` int(11) NOT NULL,
  `EXTRA_SERVICE_ID` int(11) NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BSOD_ES_SHIPMENT_ID` (`SHIPMENT_ID`),
  KEY `IX_BSOD_ES_EXTRA_SERVICE_ID` (`EXTRA_SERVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_delivery_es`
--

LOCK TABLES `b_sale_order_delivery_es` WRITE;
/*!40000 ALTER TABLE `b_sale_order_delivery_es` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_delivery_es` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_delivery_req`
--

DROP TABLE IF EXISTS `b_sale_order_delivery_req`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_delivery_req` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int(11) NOT NULL,
  `DATE_REQUEST` datetime DEFAULT NULL,
  `DELIVERY_LOCATION` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `SHIPMENT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ORDER_ID` (`ORDER_ID`),
  KEY `IX_SHIPMENT_ID` (`SHIPMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_delivery_req`
--

LOCK TABLES `b_sale_order_delivery_req` WRITE;
/*!40000 ALTER TABLE `b_sale_order_delivery_req` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_delivery_req` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_discount`
--

DROP TABLE IF EXISTS `b_sale_order_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_discount` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DISCOUNT_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DISCOUNT_HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITIONS` mediumtext COLLATE utf8_unicode_ci,
  `UNPACK` mediumtext COLLATE utf8_unicode_ci,
  `ACTIONS` mediumtext COLLATE utf8_unicode_ci,
  `APPLICATION` mediumtext COLLATE utf8_unicode_ci,
  `USE_COUPONS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `LAST_DISCOUNT` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIONS_DESCR` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_SALE_ORDER_DSC_HASH` (`DISCOUNT_HASH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_discount`
--

LOCK TABLES `b_sale_order_discount` WRITE;
/*!40000 ALTER TABLE `b_sale_order_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_discount_data`
--

DROP TABLE IF EXISTS `b_sale_order_discount_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_discount_data` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int(11) NOT NULL,
  `ENTITY_TYPE` int(11) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ENTITY_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENTITY_DATA` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SALE_DSC_DATA_CMX` (`ORDER_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_discount_data`
--

LOCK TABLES `b_sale_order_discount_data` WRITE;
/*!40000 ALTER TABLE `b_sale_order_discount_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_discount_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_dlv_basket`
--

DROP TABLE IF EXISTS `b_sale_order_dlv_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_dlv_basket` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_DELIVERY_ID` int(11) NOT NULL,
  `BASKET_ID` int(11) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `QUANTITY` decimal(18,4) NOT NULL,
  `RESERVED_QUANTITY` decimal(18,4) NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BSODB_ORDER_DELIVERY_ID` (`ORDER_DELIVERY_ID`),
  KEY `IX_S_O_DB_BASKET_ID` (`BASKET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_dlv_basket`
--

LOCK TABLES `b_sale_order_dlv_basket` WRITE;
/*!40000 ALTER TABLE `b_sale_order_dlv_basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_dlv_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_flags2group`
--

DROP TABLE IF EXISTS `b_sale_order_flags2group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_flags2group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_ID` int(11) NOT NULL,
  `ORDER_FLAG` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_sale_ordfla2group` (`GROUP_ID`,`ORDER_FLAG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_flags2group`
--

LOCK TABLES `b_sale_order_flags2group` WRITE;
/*!40000 ALTER TABLE `b_sale_order_flags2group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_flags2group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_history`
--

DROP TABLE IF EXISTS `b_sale_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_history` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `H_USER_ID` int(11) unsigned NOT NULL,
  `H_DATE_INSERT` datetime NOT NULL,
  `H_ORDER_ID` int(11) unsigned NOT NULL,
  `H_CURRENCY` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `PERSON_TYPE_ID` int(11) unsigned DEFAULT NULL,
  `PAYED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_PAYED` datetime DEFAULT NULL,
  `EMP_PAYED_ID` int(11) unsigned DEFAULT NULL,
  `CANCELED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_CANCELED` datetime DEFAULT NULL,
  `REASON_CANCELED` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS_ID` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_STATUS` datetime DEFAULT NULL,
  `PRICE_DELIVERY` decimal(18,2) DEFAULT NULL,
  `ALLOW_DELIVERY` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_ALLOW_DELIVERY` datetime DEFAULT NULL,
  `RESERVED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEDUCTED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_DEDUCTED` datetime DEFAULT NULL,
  `REASON_UNDO_DEDUCTED` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MARKED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_MARKED` datetime DEFAULT NULL,
  `REASON_MARKED` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRICE` decimal(18,2) DEFAULT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISCOUNT_VALUE` decimal(18,2) DEFAULT NULL,
  `USER_ID` int(11) unsigned DEFAULT NULL,
  `PAY_SYSTEM_ID` int(11) unsigned DEFAULT NULL,
  `DELIVERY_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_STATUS` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_STATUS_CODE` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_STATUS_DESCRIPTION` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_STATUS_MESSAGE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_SUM` decimal(18,2) DEFAULT NULL,
  `PS_CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_RESPONSE_DATE` datetime DEFAULT NULL,
  `TAX_VALUE` decimal(18,2) DEFAULT NULL,
  `STAT_GID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUM_PAID` decimal(18,2) DEFAULT NULL,
  `PAY_VOUCHER_NUM` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAY_VOUCHER_DATE` date DEFAULT NULL,
  `AFFILIATE_ID` int(11) unsigned DEFAULT NULL,
  `DELIVERY_DOC_NUM` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DELIVERY_DOC_DATE` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ixH_ORDER_ID` (`H_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_history`
--

LOCK TABLES `b_sale_order_history` WRITE;
/*!40000 ALTER TABLE `b_sale_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_modules`
--

DROP TABLE IF EXISTS `b_sale_order_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_modules` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_DISCOUNT_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SALE_ORDER_MDL_DSC` (`ORDER_DISCOUNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_modules`
--

LOCK TABLES `b_sale_order_modules` WRITE;
/*!40000 ALTER TABLE `b_sale_order_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_payment`
--

DROP TABLE IF EXISTS `b_sale_order_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_payment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int(11) NOT NULL,
  `ACCOUNT_NUMBER` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAID` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DATE_PAID` datetime DEFAULT NULL,
  `EMP_PAID_ID` int(11) DEFAULT NULL,
  `PAY_SYSTEM_ID` int(11) NOT NULL,
  `PS_STATUS` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_INVOICE_ID` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_STATUS_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_STATUS_DESCRIPTION` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_STATUS_MESSAGE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_SUM` decimal(18,4) DEFAULT NULL,
  `PS_CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PS_RESPONSE_DATE` datetime DEFAULT NULL,
  `PAY_VOUCHER_NUM` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAY_VOUCHER_DATE` date DEFAULT NULL,
  `DATE_PAY_BEFORE` datetime DEFAULT NULL,
  `DATE_BILL` datetime DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUM` decimal(18,4) NOT NULL,
  `PRICE_COD` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `CURRENCY` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `PAY_SYSTEM_NAME` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `RESPONSIBLE_ID` int(11) DEFAULT NULL,
  `DATE_RESPONSIBLE_ID` datetime DEFAULT NULL,
  `EMP_RESPONSIBLE_ID` int(11) DEFAULT NULL,
  `COMMENTS` text COLLATE utf8_unicode_ci,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `PAY_RETURN_DATE` date DEFAULT NULL,
  `EMP_RETURN_ID` int(11) DEFAULT NULL,
  `PAY_RETURN_NUM` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAY_RETURN_COMMENT` text COLLATE utf8_unicode_ci,
  `IS_RETURN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MARKED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_MARKED` datetime DEFAULT NULL,
  `EMP_MARKED_ID` int(11) DEFAULT NULL,
  `REASON_MARKED` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ID_1C` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION_1C` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTERNAL_PAYMENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `UPDATED_1C` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IXS_PAY_ACCOUNT_NUMBER` (`ACCOUNT_NUMBER`),
  KEY `IX_BSOP_ORDER_ID` (`ORDER_ID`),
  KEY `IX_BSOP_DATE_PAID` (`DATE_PAID`),
  KEY `IX_BSOP_PAID` (`PAID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_payment`
--

LOCK TABLES `b_sale_order_payment` WRITE;
/*!40000 ALTER TABLE `b_sale_order_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_processing`
--

DROP TABLE IF EXISTS `b_sale_order_processing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_processing` (
  `ORDER_ID` int(11) DEFAULT '0',
  `PRODUCTS_ADDED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `PRODUCTS_REMOVED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  KEY `IX_ORDER_ID` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_processing`
--

LOCK TABLES `b_sale_order_processing` WRITE;
/*!40000 ALTER TABLE `b_sale_order_processing` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_processing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_product_stat`
--

DROP TABLE IF EXISTS `b_sale_order_product_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_product_stat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int(11) NOT NULL,
  `RELATED_PRODUCT_ID` int(11) NOT NULL,
  `ORDER_DATE` datetime NOT NULL,
  `CNT` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IXS_PRODUCT2PRODUCT_ON_DATE` (`PRODUCT_ID`,`RELATED_PRODUCT_ID`,`ORDER_DATE`),
  KEY `IXS_ORDER_DATE` (`ORDER_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_product_stat`
--

LOCK TABLES `b_sale_order_product_stat` WRITE;
/*!40000 ALTER TABLE `b_sale_order_product_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_product_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_props`
--

DROP TABLE IF EXISTS `b_sale_order_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_props` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERSON_TYPE_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `REQUIRED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEFAULT_VALUE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `USER_PROPS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_LOCATION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `PROPS_GROUP_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_EMAIL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_PROFILE_NAME` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_PAYER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_LOCATION4TAX` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_FILTERED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_ZIP` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_PHONE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `UTIL` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `INPUT_FIELD_LOCATION` int(11) NOT NULL DEFAULT '0',
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_ADDRESS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SETTINGS` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENTITY_REGISTRY_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IXS_ORDER_PROPS_PERSON_TYPE_ID` (`PERSON_TYPE_ID`),
  KEY `IXS_CODE_OPP` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_props`
--

LOCK TABLES `b_sale_order_props` WRITE;
/*!40000 ALTER TABLE `b_sale_order_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_props_group`
--

DROP TABLE IF EXISTS `b_sale_order_props_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_props_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERSON_TYPE_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`ID`),
  KEY `IXS_ORDER_PROPS_GROUP_PERSON_TYPE_ID` (`PERSON_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_props_group`
--

LOCK TABLES `b_sale_order_props_group` WRITE;
/*!40000 ALTER TABLE `b_sale_order_props_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_props_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_props_relation`
--

DROP TABLE IF EXISTS `b_sale_order_props_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_props_relation` (
  `PROPERTY_ID` int(11) NOT NULL,
  `ENTITY_ID` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`PROPERTY_ID`,`ENTITY_ID`,`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_props_relation`
--

LOCK TABLES `b_sale_order_props_relation` WRITE;
/*!40000 ALTER TABLE `b_sale_order_props_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_props_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_props_value`
--

DROP TABLE IF EXISTS `b_sale_order_props_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_props_value` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int(11) NOT NULL,
  `ORDER_PROPS_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_SOPV_ORD_PROP_UNI` (`ORDER_ID`,`ORDER_PROPS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_props_value`
--

LOCK TABLES `b_sale_order_props_value` WRITE;
/*!40000 ALTER TABLE `b_sale_order_props_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_props_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_props_variant`
--

DROP TABLE IF EXISTS `b_sale_order_props_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_props_variant` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_PROPS_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IXS_ORDER_PROPS_VARIANT_ORDER_PROPS_ID` (`ORDER_PROPS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_props_variant`
--

LOCK TABLES `b_sale_order_props_variant` WRITE;
/*!40000 ALTER TABLE `b_sale_order_props_variant` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_props_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_round`
--

DROP TABLE IF EXISTS `b_sale_order_round`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_round` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int(11) NOT NULL,
  `APPLY_BLOCK_COUNTER` int(11) NOT NULL DEFAULT '0',
  `ORDER_ROUND` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` int(11) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ENTITY_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APPLY` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ROUND_RULE` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SALE_ORDER_ROUND_ORD` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_round`
--

LOCK TABLES `b_sale_order_round` WRITE;
/*!40000 ALTER TABLE `b_sale_order_round` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_round` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_rules`
--

DROP TABLE IF EXISTS `b_sale_order_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_rules` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ORDER_DISCOUNT_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `ENTITY_TYPE` int(11) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ENTITY_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COUPON_ID` int(11) NOT NULL,
  `APPLY` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION_BLOCK_LIST` text COLLATE utf8_unicode_ci,
  `APPLY_BLOCK_COUNTER` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_SALE_ORDER_RULES_ORD` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_rules`
--

LOCK TABLES `b_sale_order_rules` WRITE;
/*!40000 ALTER TABLE `b_sale_order_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_rules_descr`
--

DROP TABLE IF EXISTS `b_sale_order_rules_descr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_rules_descr` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ORDER_DISCOUNT_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `RULE_ID` int(11) NOT NULL,
  `DESCR` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SALE_ORDER_RULES_DS_ORD` (`ORDER_ID`),
  KEY `IX_SALE_ORDER_RULES_DS_RULE` (`RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_rules_descr`
--

LOCK TABLES `b_sale_order_rules_descr` WRITE;
/*!40000 ALTER TABLE `b_sale_order_rules_descr` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_rules_descr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_order_tax`
--

DROP TABLE IF EXISTS `b_sale_order_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_order_tax` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int(11) NOT NULL,
  `TAX_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` decimal(18,4) DEFAULT NULL,
  `VALUE_MONEY` decimal(18,4) NOT NULL,
  `APPLY_ORDER` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_PERCENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `IS_IN_PRICE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ixs_sot_order_id` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_order_tax`
--

LOCK TABLES `b_sale_order_tax` WRITE;
/*!40000 ALTER TABLE `b_sale_order_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_order_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_pay_system_action`
--

DROP TABLE IF EXISTS `b_sale_pay_system_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_pay_system_action` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PAY_SYSTEM_ID` int(11) DEFAULT NULL,
  `PERSON_TYPE_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PSA_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `DESCRIPTION` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTION_FILE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESULT_FILE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NEW_WINDOW` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PS_MODE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `TARIF` text COLLATE utf8_unicode_ci,
  `HAVE_PAYMENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `HAVE_ACTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `AUTO_CHANGE_1C` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `HAVE_RESULT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `HAVE_PRICE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `HAVE_PREPAY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `HAVE_RESULT_RECEIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_EDIT_PAYMENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ENCODING` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGOTIP` int(11) DEFAULT NULL,
  `IS_CASH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CAN_PRINT_CHECK` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENTITY_REGISTRY_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_pay_system_action`
--

LOCK TABLES `b_sale_pay_system_action` WRITE;
/*!40000 ALTER TABLE `b_sale_pay_system_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_pay_system_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_pay_system_err_log`
--

DROP TABLE IF EXISTS `b_sale_pay_system_err_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_pay_system_err_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MESSAGE` text COLLATE utf8_unicode_ci NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_pay_system_err_log`
--

LOCK TABLES `b_sale_pay_system_err_log` WRITE;
/*!40000 ALTER TABLE `b_sale_pay_system_err_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_pay_system_err_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_pay_system_rest_handlers`
--

DROP TABLE IF EXISTS `b_sale_pay_system_rest_handlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_pay_system_rest_handlers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `SETTINGS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_SALE_PS_HANDLER_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_pay_system_rest_handlers`
--

LOCK TABLES `b_sale_pay_system_rest_handlers` WRITE;
/*!40000 ALTER TABLE `b_sale_pay_system_rest_handlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_pay_system_rest_handlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_person_type`
--

DROP TABLE IF EXISTS `b_sale_person_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_person_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '150',
  `ACTIVE` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ENTITY_REGISTRY_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IXS_PERSON_TYPE_LID` (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_person_type`
--

LOCK TABLES `b_sale_person_type` WRITE;
/*!40000 ALTER TABLE `b_sale_person_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_person_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_person_type_site`
--

DROP TABLE IF EXISTS `b_sale_person_type_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_person_type_site` (
  `PERSON_TYPE_ID` int(18) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`PERSON_TYPE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_person_type_site`
--

LOCK TABLES `b_sale_person_type_site` WRITE;
/*!40000 ALTER TABLE `b_sale_person_type_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_person_type_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_product2product`
--

DROP TABLE IF EXISTS `b_sale_product2product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_product2product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int(11) NOT NULL,
  `PARENT_PRODUCT_ID` int(11) NOT NULL,
  `CNT` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IXS_PRODUCT2PRODUCT_PRODUCT_ID` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_product2product`
--

LOCK TABLES `b_sale_product2product` WRITE;
/*!40000 ALTER TABLE `b_sale_product2product` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_product2product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_recurring`
--

DROP TABLE IF EXISTS `b_sale_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_recurring` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODULE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRODUCT_ID` int(11) DEFAULT NULL,
  `PRODUCT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRODUCT_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRODUCT_PRICE_ID` int(11) DEFAULT NULL,
  `PRICE_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'R',
  `RECUR_SCHEME_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M',
  `RECUR_SCHEME_LENGTH` int(11) NOT NULL DEFAULT '0',
  `WITHOUT_ORDER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `PRICE` decimal(10,0) NOT NULL DEFAULT '0',
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CANCELED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DATE_CANCELED` datetime DEFAULT NULL,
  `PRIOR_DATE` datetime DEFAULT NULL,
  `NEXT_DATE` datetime NOT NULL,
  `CALLBACK_FUNC` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRODUCT_PROVIDER_CLASS` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CANCELED_REASON` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `REMAINING_ATTEMPTS` int(11) NOT NULL DEFAULT '0',
  `SUCCESS_PAYMENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `IX_S_R_USER_ID` (`USER_ID`),
  KEY `IX_S_R_NEXT_DATE` (`NEXT_DATE`,`CANCELED`,`REMAINING_ATTEMPTS`),
  KEY `IX_S_R_PRODUCT_ID` (`MODULE`,`PRODUCT_ID`,`PRODUCT_PRICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_recurring`
--

LOCK TABLES `b_sale_recurring` WRITE;
/*!40000 ALTER TABLE `b_sale_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_service_rstr`
--

DROP TABLE IF EXISTS `b_sale_service_rstr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_service_rstr` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERVICE_ID` int(11) NOT NULL,
  `SERVICE_TYPE` int(11) NOT NULL,
  `SORT` int(11) DEFAULT '100',
  `CLASS_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_BSSR_SERVICE_ID` (`SERVICE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_service_rstr`
--

LOCK TABLES `b_sale_service_rstr` WRITE;
/*!40000 ALTER TABLE `b_sale_service_rstr` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_service_rstr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_site2group`
--

DROP TABLE IF EXISTS `b_sale_site2group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_site2group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GROUP_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_sale_site2group` (`GROUP_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_site2group`
--

LOCK TABLES `b_sale_site2group` WRITE;
/*!40000 ALTER TABLE `b_sale_site2group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_site2group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_status`
--

DROP TABLE IF EXISTS `b_sale_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_status` (
  `ID` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'O',
  `SORT` int(11) NOT NULL DEFAULT '100',
  `NOTIFY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `COLOR` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_status`
--

LOCK TABLES `b_sale_status` WRITE;
/*!40000 ALTER TABLE `b_sale_status` DISABLE KEYS */;
INSERT INTO `b_sale_status` VALUES ('DF','D',400,'Y','Y',NULL),('DN','D',300,'Y','Y',NULL),('F','O',200,'Y','Y',NULL),('N','O',100,'Y','Y',NULL);
/*!40000 ALTER TABLE `b_sale_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_status_group_task`
--

DROP TABLE IF EXISTS `b_sale_status_group_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_status_group_task` (
  `STATUS_ID` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` int(18) NOT NULL,
  `TASK_ID` int(18) NOT NULL,
  PRIMARY KEY (`STATUS_ID`,`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_status_group_task`
--

LOCK TABLES `b_sale_status_group_task` WRITE;
/*!40000 ALTER TABLE `b_sale_status_group_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_status_group_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_status_lang`
--

DROP TABLE IF EXISTS `b_sale_status_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_status_lang` (
  `STATUS_ID` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`STATUS_ID`,`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_status_lang`
--

LOCK TABLES `b_sale_status_lang` WRITE;
/*!40000 ALTER TABLE `b_sale_status_lang` DISABLE KEYS */;
INSERT INTO `b_sale_status_lang` VALUES ('DF','ru','Отгружен','Отгружен'),('DN','ru','Ожидает обработки','Ожидает обработки'),('F','ru','Выполнен','Заказ доставлен и оплачен'),('N','ru','Принят, ожидается оплата','Заказ принят, но пока не обрабатывается (например, заказ только что создан или ожидается оплата заказа)');
/*!40000 ALTER TABLE `b_sale_status_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_store_barcode`
--

DROP TABLE IF EXISTS `b_sale_store_barcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_store_barcode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BASKET_ID` int(11) NOT NULL,
  `BARCODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STORE_ID` int(11) DEFAULT NULL,
  `QUANTITY` double NOT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_MODIFY` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `MODIFIED_BY` int(11) DEFAULT NULL,
  `ORDER_DELIVERY_BASKET_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_BSSB_O_DLV_BASKET_ID` (`ORDER_DELIVERY_BASKET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_store_barcode`
--

LOCK TABLES `b_sale_store_barcode` WRITE;
/*!40000 ALTER TABLE `b_sale_store_barcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_store_barcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_synchronizer_log`
--

DROP TABLE IF EXISTS `b_sale_synchronizer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_synchronizer_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MESSAGE_ID` text COLLATE utf8_unicode_ci,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  `DATE_INSERT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SYNCHRONIZER_LOG1` (`DATE_INSERT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_synchronizer_log`
--

LOCK TABLES `b_sale_synchronizer_log` WRITE;
/*!40000 ALTER TABLE `b_sale_synchronizer_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_synchronizer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_tax`
--

DROP TABLE IF EXISTS `b_sale_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_tax` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `itax_lid` (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_tax`
--

LOCK TABLES `b_sale_tax` WRITE;
/*!40000 ALTER TABLE `b_sale_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_tax2location`
--

DROP TABLE IF EXISTS `b_sale_tax2location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_tax2location` (
  `TAX_RATE_ID` int(11) NOT NULL,
  `LOCATION_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LOCATION_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'L',
  PRIMARY KEY (`TAX_RATE_ID`,`LOCATION_CODE`,`LOCATION_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_tax2location`
--

LOCK TABLES `b_sale_tax2location` WRITE;
/*!40000 ALTER TABLE `b_sale_tax2location` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_tax2location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_tax_exempt2group`
--

DROP TABLE IF EXISTS `b_sale_tax_exempt2group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_tax_exempt2group` (
  `GROUP_ID` int(11) NOT NULL,
  `TAX_ID` int(11) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TAX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_tax_exempt2group`
--

LOCK TABLES `b_sale_tax_exempt2group` WRITE;
/*!40000 ALTER TABLE `b_sale_tax_exempt2group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_tax_exempt2group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_tax_rate`
--

DROP TABLE IF EXISTS `b_sale_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_tax_rate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TAX_ID` int(11) NOT NULL,
  `PERSON_TYPE_ID` int(11) DEFAULT NULL,
  `VALUE` decimal(18,4) NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_PERCENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `IS_IN_PRICE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `APPLY_ORDER` int(11) NOT NULL DEFAULT '100',
  `TIMESTAMP_X` datetime NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `itax_pers_type` (`PERSON_TYPE_ID`),
  KEY `itax_lid` (`TAX_ID`),
  KEY `itax_inprice` (`IS_IN_PRICE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_tax_rate`
--

LOCK TABLES `b_sale_tax_rate` WRITE;
/*!40000 ALTER TABLE `b_sale_tax_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_tp`
--

DROP TABLE IF EXISTS `b_sale_tp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_tp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CATALOG_SECTION_TAB_CLASS_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLASS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_CODE` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_tp`
--

LOCK TABLES `b_sale_tp` WRITE;
/*!40000 ALTER TABLE `b_sale_tp` DISABLE KEYS */;
INSERT INTO `b_sale_tp` VALUES (1,'ymarket','N','Покупки на Яндекс-Маркете','Интеграция магазина с программой Яндекса \"Покупка на Маркете\"','s:0:\"\";',NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_sale_tp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_tp_ebay_cat`
--

DROP TABLE IF EXISTS `b_sale_tp_ebay_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_tp_ebay_cat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CATEGORY_ID` int(11) NOT NULL,
  `PARENT_ID` int(11) NOT NULL,
  `LEVEL` int(11) NOT NULL,
  `LAST_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_tp_ebay_cat`
--

LOCK TABLES `b_sale_tp_ebay_cat` WRITE;
/*!40000 ALTER TABLE `b_sale_tp_ebay_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_tp_ebay_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_tp_ebay_cat_var`
--

DROP TABLE IF EXISTS `b_sale_tp_ebay_cat_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_tp_ebay_cat_var` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `REQUIRED` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `MIN_VALUES` int(11) NOT NULL,
  `MAX_VALUES` int(11) NOT NULL,
  `SELECTION_MODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ALLOWED_AS_VARIATION` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `HELP_URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_tp_ebay_cat_var`
--

LOCK TABLES `b_sale_tp_ebay_cat_var` WRITE;
/*!40000 ALTER TABLE `b_sale_tp_ebay_cat_var` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_tp_ebay_cat_var` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_tp_ebay_fq`
--

DROP TABLE IF EXISTS `b_sale_tp_ebay_fq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_tp_ebay_fq` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FEED_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DATA` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_tp_ebay_fq`
--

LOCK TABLES `b_sale_tp_ebay_fq` WRITE;
/*!40000 ALTER TABLE `b_sale_tp_ebay_fq` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_tp_ebay_fq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_tp_ebay_fr`
--

DROP TABLE IF EXISTS `b_sale_tp_ebay_fr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_tp_ebay_fr` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILENAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FEED_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UPLOAD_TIME` datetime NOT NULL,
  `PROCESSING_REQUEST_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROCESSING_RESULT` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESULTS` longtext COLLATE utf8_unicode_ci,
  `IS_SUCCESS` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_tp_ebay_fr`
--

LOCK TABLES `b_sale_tp_ebay_fr` WRITE;
/*!40000 ALTER TABLE `b_sale_tp_ebay_fr` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_tp_ebay_fr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_tp_map`
--

DROP TABLE IF EXISTS `b_sale_tp_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_tp_map` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(11) NOT NULL,
  `VALUE_EXTERNAL` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_INTERNAL` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BSTPM_E_V_V` (`ENTITY_ID`,`VALUE_EXTERNAL`,`VALUE_INTERNAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_tp_map`
--

LOCK TABLES `b_sale_tp_map` WRITE;
/*!40000 ALTER TABLE `b_sale_tp_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_tp_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_tp_map_entity`
--

DROP TABLE IF EXISTS `b_sale_tp_map_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_tp_map_entity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TRADING_PLATFORM_ID` int(11) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_CODE_TRADING_PLATFORM_ID` (`TRADING_PLATFORM_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_tp_map_entity`
--

LOCK TABLES `b_sale_tp_map_entity` WRITE;
/*!40000 ALTER TABLE `b_sale_tp_map_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_tp_map_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_tp_order`
--

DROP TABLE IF EXISTS `b_sale_tp_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_tp_order` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_ID` int(11) NOT NULL,
  `TRADING_PLATFORM_ID` int(11) NOT NULL,
  `EXTERNAL_ORDER_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_UNIQ_NUMBERS` (`ORDER_ID`,`TRADING_PLATFORM_ID`,`EXTERNAL_ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_tp_order`
--

LOCK TABLES `b_sale_tp_order` WRITE;
/*!40000 ALTER TABLE `b_sale_tp_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_tp_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_tp_vk_log`
--

DROP TABLE IF EXISTS `b_sale_tp_vk_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_tp_vk_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EXPORT_ID` int(11) NOT NULL,
  `ERROR_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME` datetime DEFAULT NULL,
  `ERROR_PARAMS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_BSTPVKL_I_E_E` (`ID`,`EXPORT_ID`,`ERROR_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_tp_vk_log`
--

LOCK TABLES `b_sale_tp_vk_log` WRITE;
/*!40000 ALTER TABLE `b_sale_tp_vk_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_tp_vk_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_tp_vk_profile`
--

DROP TABLE IF EXISTS `b_sale_tp_vk_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_tp_vk_profile` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PLATFORM_ID` int(11) NOT NULL,
  `VK_SETTINGS` text COLLATE utf8_unicode_ci,
  `EXPORT_SETTINGS` text COLLATE utf8_unicode_ci,
  `OAUTH` text COLLATE utf8_unicode_ci,
  `PROCESS` text COLLATE utf8_unicode_ci,
  `JOURNAL` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_tp_vk_profile`
--

LOCK TABLES `b_sale_tp_vk_profile` WRITE;
/*!40000 ALTER TABLE `b_sale_tp_vk_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_tp_vk_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_user_account`
--

DROP TABLE IF EXISTS `b_sale_user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_user_account` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CURRENT_BUDGET` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `CURRENCY` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `LOCKED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DATE_LOCKED` datetime DEFAULT NULL,
  `NOTES` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_S_U_USER_ID` (`USER_ID`,`CURRENCY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_user_account`
--

LOCK TABLES `b_sale_user_account` WRITE;
/*!40000 ALTER TABLE `b_sale_user_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_user_cards`
--

DROP TABLE IF EXISTS `b_sale_user_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_user_cards` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '100',
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PAY_SYSTEM_ACTION_ID` int(11) NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CARD_TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CARD_NUM` text COLLATE utf8_unicode_ci NOT NULL,
  `CARD_CODE` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CARD_EXP_MONTH` int(11) NOT NULL,
  `CARD_EXP_YEAR` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUM_MIN` decimal(18,4) DEFAULT NULL,
  `SUM_MAX` decimal(18,4) DEFAULT NULL,
  `SUM_CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_STATUS` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_STATUS_CODE` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_STATUS_DESCRIPTION` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_STATUS_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_SUM` decimal(18,4) DEFAULT NULL,
  `LAST_CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_S_U_C_USER_ID` (`USER_ID`,`ACTIVE`,`CURRENCY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_user_cards`
--

LOCK TABLES `b_sale_user_cards` WRITE;
/*!40000 ALTER TABLE `b_sale_user_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_user_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_user_props`
--

DROP TABLE IF EXISTS `b_sale_user_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_user_props` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PERSON_TYPE_ID` int(11) NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `XML_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION_1C` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IXS_USER_PROPS_USER_ID` (`USER_ID`),
  KEY `IXS_USER_PROPS_PERSON_TYPE_ID` (`PERSON_TYPE_ID`),
  KEY `IXS_USER_PROPS_XML_ID` (`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_user_props`
--

LOCK TABLES `b_sale_user_props` WRITE;
/*!40000 ALTER TABLE `b_sale_user_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_user_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_user_props_value`
--

DROP TABLE IF EXISTS `b_sale_user_props_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_user_props_value` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_PROPS_ID` int(11) NOT NULL,
  `ORDER_PROPS_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IXS_USER_PROPS_VALUE_USER_PROPS_ID` (`USER_PROPS_ID`),
  KEY `IXS_USER_PROPS_VALUE_ORDER_PROPS_ID` (`ORDER_PROPS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_user_props_value`
--

LOCK TABLES `b_sale_user_props_value` WRITE;
/*!40000 ALTER TABLE `b_sale_user_props_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_user_props_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_user_transact`
--

DROP TABLE IF EXISTS `b_sale_user_transact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_user_transact` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TRANSACT_DATE` datetime NOT NULL,
  `AMOUNT` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `CURRENCY` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `DEBIT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ORDER_ID` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NOTES` text COLLATE utf8_unicode_ci,
  `PAYMENT_ID` int(11) DEFAULT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_S_U_T_USER_ID_CURRENCY` (`USER_ID`,`CURRENCY`),
  KEY `IX_S_U_T_ORDER_ID` (`ORDER_ID`),
  KEY `IX_S_U_T_PAYMENT_ID` (`PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_user_transact`
--

LOCK TABLES `b_sale_user_transact` WRITE;
/*!40000 ALTER TABLE `b_sale_user_transact` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_user_transact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_usergroup_restr`
--

DROP TABLE IF EXISTS `b_sale_usergroup_restr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_usergroup_restr` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_BSUG_ETI_EI_GI` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_usergroup_restr`
--

LOCK TABLES `b_sale_usergroup_restr` WRITE;
/*!40000 ALTER TABLE `b_sale_usergroup_restr` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_usergroup_restr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_viewed_product`
--

DROP TABLE IF EXISTS `b_sale_viewed_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_viewed_product` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `FUSER_ID` int(11) unsigned NOT NULL DEFAULT '0',
  `DATE_VISIT` datetime NOT NULL,
  `PRODUCT_ID` int(11) unsigned NOT NULL DEFAULT '0',
  `MODULE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DETAIL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRICE` decimal(18,2) NOT NULL DEFAULT '0.00',
  `NOTES` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW_PICTURE` int(11) DEFAULT NULL,
  `DETAIL_PICTURE` int(11) DEFAULT NULL,
  `CALLBACK_FUNC` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRODUCT_PROVIDER_CLASS` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ixLID` (`FUSER_ID`,`LID`),
  KEY `ixPRODUCT_ID` (`PRODUCT_ID`),
  KEY `ixDATE_VISIT` (`DATE_VISIT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_viewed_product`
--

LOCK TABLES `b_sale_viewed_product` WRITE;
/*!40000 ALTER TABLE `b_sale_viewed_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_viewed_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sale_yandex_settings`
--

DROP TABLE IF EXISTS `b_sale_yandex_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sale_yandex_settings` (
  `SHOP_ID` int(11) NOT NULL,
  `CSR` text COLLATE utf8_unicode_ci,
  `SIGN` text COLLATE utf8_unicode_ci,
  `CERT` text COLLATE utf8_unicode_ci,
  `PKEY` text COLLATE utf8_unicode_ci,
  `PUB_KEY` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sale_yandex_settings`
--

LOCK TABLES `b_sale_yandex_settings` WRITE;
/*!40000 ALTER TABLE `b_sale_yandex_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sale_yandex_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content`
--

DROP TABLE IF EXISTS `b_search_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_CHANGE` datetime NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CUSTOM_RANK` int(11) NOT NULL DEFAULT '0',
  `USER_ID` int(11) DEFAULT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENTITY_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  `TITLE` text COLLATE utf8_unicode_ci,
  `BODY` longtext COLLATE utf8_unicode_ci,
  `TAGS` text COLLATE utf8_unicode_ci,
  `PARAM1` text COLLATE utf8_unicode_ci,
  `PARAM2` text COLLATE utf8_unicode_ci,
  `UPD` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_FROM` datetime DEFAULT NULL,
  `DATE_TO` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SEARCH_CONTENT` (`MODULE_ID`,`ITEM_ID`),
  KEY `IX_B_SEARCH_CONTENT_1` (`MODULE_ID`,`PARAM1`(50),`PARAM2`(50)),
  KEY `IX_B_SEARCH_CONTENT_2` (`ENTITY_ID`(50),`ENTITY_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content`
--

LOCK TABLES `b_search_content` WRITE;
/*!40000 ALTER TABLE `b_search_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_freq`
--

DROP TABLE IF EXISTS `b_search_content_freq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_freq` (
  `STEM` int(11) NOT NULL DEFAULT '0',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FREQ` float DEFAULT NULL,
  `TF` float DEFAULT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_FREQ` (`STEM`,`LANGUAGE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_freq`
--

LOCK TABLES `b_search_content_freq` WRITE;
/*!40000 ALTER TABLE `b_search_content_freq` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_freq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_param`
--

DROP TABLE IF EXISTS `b_search_content_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_param` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `PARAM_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM_VALUE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  KEY `IX_B_SEARCH_CONTENT_PARAM` (`SEARCH_CONTENT_ID`,`PARAM_NAME`),
  KEY `IX_B_SEARCH_CONTENT_PARAM_1` (`PARAM_NAME`,`PARAM_VALUE`(50),`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_param`
--

LOCK TABLES `b_search_content_param` WRITE;
/*!40000 ALTER TABLE `b_search_content_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_right`
--

DROP TABLE IF EXISTS `b_search_content_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_right` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_RIGHT` (`SEARCH_CONTENT_ID`,`GROUP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_right`
--

LOCK TABLES `b_search_content_right` WRITE;
/*!40000 ALTER TABLE `b_search_content_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_site`
--

DROP TABLE IF EXISTS `b_search_content_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_site` (
  `SEARCH_CONTENT_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_site`
--

LOCK TABLES `b_search_content_site` WRITE;
/*!40000 ALTER TABLE `b_search_content_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_stem`
--

DROP TABLE IF EXISTS `b_search_content_stem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_stem` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `STEM` int(11) NOT NULL,
  `TF` float NOT NULL,
  `PS` float NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_STEM` (`STEM`,`LANGUAGE_ID`,`TF`,`PS`,`SEARCH_CONTENT_ID`),
  KEY `IND_B_SEARCH_CONTENT_STEM` (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_stem`
--

LOCK TABLES `b_search_content_stem` WRITE;
/*!40000 ALTER TABLE `b_search_content_stem` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_stem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_text`
--

DROP TABLE IF EXISTS `b_search_content_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_text` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SEARCH_CONTENT_MD5` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `SEARCHABLE_CONTENT` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_text`
--

LOCK TABLES `b_search_content_text` WRITE;
/*!40000 ALTER TABLE `b_search_content_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_content_title`
--

DROP TABLE IF EXISTS `b_search_content_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_content_title` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `POS` int(11) NOT NULL,
  `WORD` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_CONTENT_TITLE` (`SITE_ID`,`WORD`,`SEARCH_CONTENT_ID`,`POS`),
  KEY `IND_B_SEARCH_CONTENT_TITLE` (`SEARCH_CONTENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_content_title`
--

LOCK TABLES `b_search_content_title` WRITE;
/*!40000 ALTER TABLE `b_search_content_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_content_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_custom_rank`
--

DROP TABLE IF EXISTS `b_search_custom_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_custom_rank` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RANK` int(11) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM1` text COLLATE utf8_unicode_ci,
  `PARAM2` text COLLATE utf8_unicode_ci,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_B_SEARCH_CUSTOM_RANK` (`SITE_ID`,`MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_custom_rank`
--

LOCK TABLES `b_search_custom_rank` WRITE;
/*!40000 ALTER TABLE `b_search_custom_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_custom_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_phrase`
--

DROP TABLE IF EXISTS `b_search_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_phrase` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  `PAGES` int(11) NOT NULL,
  `SESSION_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO` text COLLATE utf8_unicode_ci,
  `URL_TO_404` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_SESS_ID` int(18) DEFAULT NULL,
  `EVENT1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_PK_B_SEARCH_PHRASE_SESS_PH` (`SESSION_ID`,`PHRASE`(50)),
  KEY `IND_PK_B_SEARCH_PHRASE_SESS_TG` (`SESSION_ID`,`TAGS`(50)),
  KEY `IND_PK_B_SEARCH_PHRASE_TIME` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_phrase`
--

LOCK TABLES `b_search_phrase` WRITE;
/*!40000 ALTER TABLE `b_search_phrase` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_stem`
--

DROP TABLE IF EXISTS `b_search_stem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_stem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_B_SEARCH_STEM` (`STEM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_stem`
--

LOCK TABLES `b_search_stem` WRITE;
/*!40000 ALTER TABLE `b_search_stem` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_stem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_suggest`
--

DROP TABLE IF EXISTS `b_search_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_suggest` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_MD5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `RATE` float NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IND_B_SEARCH_SUGGEST` (`FILTER_MD5`,`PHRASE`(50),`RATE`),
  KEY `IND_B_SEARCH_SUGGEST_PHRASE` (`PHRASE`(50),`RATE`),
  KEY `IND_B_SEARCH_SUGGEST_TIME` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_suggest`
--

LOCK TABLES `b_search_suggest` WRITE;
/*!40000 ALTER TABLE `b_search_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_tags`
--

DROP TABLE IF EXISTS `b_search_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_tags` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`,`NAME`),
  KEY `IX_B_SEARCH_TAGS_0` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_tags`
--

LOCK TABLES `b_search_tags` WRITE;
/*!40000 ALTER TABLE `b_search_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_search_user_right`
--

DROP TABLE IF EXISTS `b_search_user_right`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_search_user_right` (
  `USER_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `UX_B_SEARCH_USER_RIGHT` (`USER_ID`,`GROUP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_search_user_right`
--

LOCK TABLES `b_search_user_right` WRITE;
/*!40000 ALTER TABLE `b_search_user_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_search_user_right` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_filter_mask`
--

DROP TABLE IF EXISTS `b_sec_filter_mask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_filter_mask` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SORT` int(11) NOT NULL DEFAULT '10',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIKE_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREG_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_filter_mask`
--

LOCK TABLES `b_sec_filter_mask` WRITE;
/*!40000 ALTER TABLE `b_sec_filter_mask` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_filter_mask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_frame_mask`
--

DROP TABLE IF EXISTS `b_sec_frame_mask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_frame_mask` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SORT` int(11) NOT NULL DEFAULT '10',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FRAME_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIKE_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREG_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_frame_mask`
--

LOCK TABLES `b_sec_frame_mask` WRITE;
/*!40000 ALTER TABLE `b_sec_frame_mask` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_frame_mask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_iprule`
--

DROP TABLE IF EXISTS `b_sec_iprule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_iprule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RULE_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ADMIN_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_FROM_TIMESTAMP` int(11) DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `ACTIVE_TO_TIMESTAMP` int(11) DEFAULT NULL,
  `NAME` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_sec_iprule_active_to` (`ACTIVE_TO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_iprule`
--

LOCK TABLES `b_sec_iprule` WRITE;
/*!40000 ALTER TABLE `b_sec_iprule` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_iprule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_iprule_excl_ip`
--

DROP TABLE IF EXISTS `b_sec_iprule_excl_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_iprule_excl_ip` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_IP` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `IP_START` bigint(18) DEFAULT NULL,
  `IP_END` bigint(18) DEFAULT NULL,
  PRIMARY KEY (`IPRULE_ID`,`RULE_IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_iprule_excl_ip`
--

LOCK TABLES `b_sec_iprule_excl_ip` WRITE;
/*!40000 ALTER TABLE `b_sec_iprule_excl_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_iprule_excl_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_iprule_excl_mask`
--

DROP TABLE IF EXISTS `b_sec_iprule_excl_mask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_iprule_excl_mask` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_MASK` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `LIKE_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREG_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IPRULE_ID`,`RULE_MASK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_iprule_excl_mask`
--

LOCK TABLES `b_sec_iprule_excl_mask` WRITE;
/*!40000 ALTER TABLE `b_sec_iprule_excl_mask` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_iprule_excl_mask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_iprule_incl_ip`
--

DROP TABLE IF EXISTS `b_sec_iprule_incl_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_iprule_incl_ip` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_IP` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `IP_START` bigint(18) DEFAULT NULL,
  `IP_END` bigint(18) DEFAULT NULL,
  PRIMARY KEY (`IPRULE_ID`,`RULE_IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_iprule_incl_ip`
--

LOCK TABLES `b_sec_iprule_incl_ip` WRITE;
/*!40000 ALTER TABLE `b_sec_iprule_incl_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_iprule_incl_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_iprule_incl_mask`
--

DROP TABLE IF EXISTS `b_sec_iprule_incl_mask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_iprule_incl_mask` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_MASK` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `LIKE_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREG_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IPRULE_ID`,`RULE_MASK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_iprule_incl_mask`
--

LOCK TABLES `b_sec_iprule_incl_mask` WRITE;
/*!40000 ALTER TABLE `b_sec_iprule_incl_mask` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_iprule_incl_mask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_recovery_codes`
--

DROP TABLE IF EXISTS `b_sec_recovery_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_recovery_codes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USED` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USING_DATE` datetime DEFAULT NULL,
  `USING_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_sec_recovery_codes_user_id` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_recovery_codes`
--

LOCK TABLES `b_sec_recovery_codes` WRITE;
/*!40000 ALTER TABLE `b_sec_recovery_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_recovery_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_redirect_url`
--

DROP TABLE IF EXISTS `b_sec_redirect_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_redirect_url` (
  `IS_SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `URL` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMETER_NAME` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_redirect_url`
--

LOCK TABLES `b_sec_redirect_url` WRITE;
/*!40000 ALTER TABLE `b_sec_redirect_url` DISABLE KEYS */;
INSERT INTO `b_sec_redirect_url` VALUES ('Y',10,'/bitrix/redirect.php','goto'),('Y',20,'/bitrix/rk.php','goto'),('Y',30,'/bitrix/click.php','goto');
/*!40000 ALTER TABLE `b_sec_redirect_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_session`
--

DROP TABLE IF EXISTS `b_sec_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_session` (
  `SESSION_ID` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SESSION_DATA` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`SESSION_ID`),
  KEY `ix_b_sec_session_time` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_session`
--

LOCK TABLES `b_sec_session` WRITE;
/*!40000 ALTER TABLE `b_sec_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_user`
--

DROP TABLE IF EXISTS `b_sec_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_user` (
  `USER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SECRET` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `ATTEMPTS` int(18) DEFAULT NULL,
  `INITIAL_DATE` datetime DEFAULT NULL,
  `SKIP_MANDATORY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEACTIVATE_UNTIL` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_user`
--

LOCK TABLES `b_sec_user` WRITE;
/*!40000 ALTER TABLE `b_sec_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_virus`
--

DROP TABLE IF EXISTS `b_sec_virus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_virus` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `INFO` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_virus`
--

LOCK TABLES `b_sec_virus` WRITE;
/*!40000 ALTER TABLE `b_sec_virus` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_virus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sec_white_list`
--

DROP TABLE IF EXISTS `b_sec_white_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sec_white_list` (
  `ID` int(11) NOT NULL,
  `WHITE_SUBSTR` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sec_white_list`
--

LOCK TABLES `b_sec_white_list` WRITE;
/*!40000 ALTER TABLE `b_sec_white_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sec_white_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_security_sitecheck`
--

DROP TABLE IF EXISTS `b_security_sitecheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_security_sitecheck` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEST_DATE` datetime DEFAULT NULL,
  `RESULTS` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_security_sitecheck`
--

LOCK TABLES `b_security_sitecheck` WRITE;
/*!40000 ALTER TABLE `b_security_sitecheck` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_security_sitecheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_abuse`
--

DROP TABLE IF EXISTS `b_sender_abuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_abuse` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEXT` text COLLATE utf8_unicode_ci,
  `CONTACT_ID` int(11) unsigned DEFAULT NULL,
  `CONTACT_TYPE_ID` int(11) unsigned DEFAULT NULL,
  `CONTACT_CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SENDER_ABUSE_DATE_INSERT` (`DATE_INSERT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_abuse`
--

LOCK TABLES `b_sender_abuse` WRITE;
/*!40000 ALTER TABLE `b_sender_abuse` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_abuse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_agreement`
--

DROP TABLE IF EXISTS `b_sender_agreement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_agreement` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(10) unsigned NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE` datetime NOT NULL,
  `IP_ADDRESS` varchar(39) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ipv4 or ipv6',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_agreement`
--

LOCK TABLES `b_sender_agreement` WRITE;
/*!40000 ALTER TABLE `b_sender_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_agreement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_call_log`
--

DROP TABLE IF EXISTS `b_sender_call_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_call_log` (
  `CALL_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `RECIPIENT_ID` int(11) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  PRIMARY KEY (`CALL_ID`,`RECIPIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_call_log`
--

LOCK TABLES `b_sender_call_log` WRITE;
/*!40000 ALTER TABLE `b_sender_call_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_call_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_contact`
--

DROP TABLE IF EXISTS `b_sender_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_contact` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `DATE_UPDATE` datetime DEFAULT NULL,
  `TYPE_ID` int(11) NOT NULL DEFAULT '1',
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `BLACKLISTED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_READ` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_CLICK` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_UNSUB` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_SEND_SUCCESS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IP` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AGENT` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_B_SENDER_CONTACT_TYPE_CODE` (`TYPE_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_contact`
--

LOCK TABLES `b_sender_contact` WRITE;
/*!40000 ALTER TABLE `b_sender_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_contact_list`
--

DROP TABLE IF EXISTS `b_sender_contact_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_contact_list` (
  `CONTACT_ID` int(11) NOT NULL,
  `LIST_ID` int(11) NOT NULL,
  UNIQUE KEY `UK_SENDER_CONTACT_LIST` (`CONTACT_ID`,`LIST_ID`),
  KEY `IX_SENDER_CONTACT_LIST_LST_ID` (`LIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_contact_list`
--

LOCK TABLES `b_sender_contact_list` WRITE;
/*!40000 ALTER TABLE `b_sender_contact_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_contact_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_counter`
--

DROP TABLE IF EXISTS `b_sender_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_counter` (
  `CODE` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` int(11) NOT NULL DEFAULT '0',
  `DATE_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_counter`
--

LOCK TABLES `b_sender_counter` WRITE;
/*!40000 ALTER TABLE `b_sender_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_counter_daily`
--

DROP TABLE IF EXISTS `b_sender_counter_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_counter_daily` (
  `DATE_STAT` date NOT NULL,
  `SENT_CNT` int(11) NOT NULL DEFAULT '0',
  `TEST_SENT_CNT` int(11) NOT NULL DEFAULT '0',
  `ERROR_CNT` int(11) NOT NULL DEFAULT '0',
  `ABUSE_CNT` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DATE_STAT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_counter_daily`
--

LOCK TABLES `b_sender_counter_daily` WRITE;
/*!40000 ALTER TABLE `b_sender_counter_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_counter_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_group`
--

DROP TABLE IF EXISTS `b_sender_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ADDRESS_COUNT` int(11) NOT NULL DEFAULT '0',
  `USE_COUNT` int(11) NOT NULL DEFAULT '0',
  `USE_COUNT_EXCLUDE` int(11) NOT NULL DEFAULT '0',
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_USE` datetime DEFAULT NULL,
  `DATE_USE_EXCLUDE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_SENDER_GROUP_CODE` (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_group`
--

LOCK TABLES `b_sender_group` WRITE;
/*!40000 ALTER TABLE `b_sender_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_group_connector`
--

DROP TABLE IF EXISTS `b_sender_group_connector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_group_connector` (
  `GROUP_ID` int(11) NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENDPOINT` longtext COLLATE utf8_unicode_ci,
  `ADDRESS_COUNT` int(11) NOT NULL DEFAULT '0',
  KEY `IX_SENDER_GROUP_CONNECTOR` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_group_connector`
--

LOCK TABLES `b_sender_group_connector` WRITE;
/*!40000 ALTER TABLE `b_sender_group_connector` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_group_connector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_group_counter`
--

DROP TABLE IF EXISTS `b_sender_group_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_group_counter` (
  `GROUP_ID` int(11) NOT NULL,
  `TYPE_ID` int(11) NOT NULL,
  `CNT` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `UK_SENDER_GROUP_COUNTER` (`GROUP_ID`,`TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_group_counter`
--

LOCK TABLES `b_sender_group_counter` WRITE;
/*!40000 ALTER TABLE `b_sender_group_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_group_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_list`
--

DROP TABLE IF EXISTS `b_sender_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_list` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_list`
--

LOCK TABLES `b_sender_list` WRITE;
/*!40000 ALTER TABLE `b_sender_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_mailing`
--

DROP TABLE IF EXISTS `b_sender_mailing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_mailing` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `IS_PUBLIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TRACK_CLICK` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TRIGGER_FIELDS` text COLLATE utf8_unicode_ci,
  `EMAIL_FROM` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_TRIGGER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_mailing`
--

LOCK TABLES `b_sender_mailing` WRITE;
/*!40000 ALTER TABLE `b_sender_mailing` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_mailing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_mailing_attachment`
--

DROP TABLE IF EXISTS `b_sender_mailing_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_mailing_attachment` (
  `CHAIN_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  PRIMARY KEY (`CHAIN_ID`,`FILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_mailing_attachment`
--

LOCK TABLES `b_sender_mailing_attachment` WRITE;
/*!40000 ALTER TABLE `b_sender_mailing_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_mailing_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_mailing_chain`
--

DROP TABLE IF EXISTS `b_sender_mailing_chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_mailing_chain` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MAILING_ID` int(11) NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `POSTING_ID` int(11) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `MESSAGE_CODE` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'mail',
  `MESSAGE_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `IS_TRIGGER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_ADS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DATE_INSERT` datetime DEFAULT NULL,
  `TIME_SHIFT` int(11) NOT NULL DEFAULT '0',
  `LAST_EXECUTED` datetime DEFAULT NULL,
  `AUTO_SEND_TIME` datetime DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL_FROM` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUBJECT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  `PRIORITY` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_PARAMS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE_TYPE` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE_ID` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REITERATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MONTHS_OF_YEAR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DAYS_OF_MONTH` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DAYS_OF_WEEK` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMES_OF_DAY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCH_CONTENT` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_SENDER_MAILING_CHAIN_MAILING` (`MAILING_ID`,`STATUS`),
  KEY `IX_SENDER_MAILING_CHAIN_REITERATE` (`REITERATE`,`STATUS`),
  FULLTEXT KEY `IXF_B_SENDER_MAILING_CHAIN_1` (`SEARCH_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_mailing_chain`
--

LOCK TABLES `b_sender_mailing_chain` WRITE;
/*!40000 ALTER TABLE `b_sender_mailing_chain` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_mailing_chain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_mailing_chain_group`
--

DROP TABLE IF EXISTS `b_sender_mailing_chain_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_mailing_chain_group` (
  `CHAIN_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `INCLUDE` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `UK_SENDER_MAILING_CH_GROUP` (`CHAIN_ID`,`GROUP_ID`,`INCLUDE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_mailing_chain_group`
--

LOCK TABLES `b_sender_mailing_chain_group` WRITE;
/*!40000 ALTER TABLE `b_sender_mailing_chain_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_mailing_chain_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_mailing_group`
--

DROP TABLE IF EXISTS `b_sender_mailing_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_mailing_group` (
  `MAILING_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `INCLUDE` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `UK_SENDER_MAILING_GROUP` (`MAILING_ID`,`GROUP_ID`,`INCLUDE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_mailing_group`
--

LOCK TABLES `b_sender_mailing_group` WRITE;
/*!40000 ALTER TABLE `b_sender_mailing_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_mailing_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_mailing_subscription`
--

DROP TABLE IF EXISTS `b_sender_mailing_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_mailing_subscription` (
  `MAILING_ID` int(11) NOT NULL,
  `CONTACT_ID` int(11) NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `IS_UNSUB` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`MAILING_ID`,`CONTACT_ID`,`IS_UNSUB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_mailing_subscription`
--

LOCK TABLES `b_sender_mailing_subscription` WRITE;
/*!40000 ALTER TABLE `b_sender_mailing_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_mailing_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_mailing_trigger`
--

DROP TABLE IF EXISTS `b_sender_mailing_trigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_mailing_trigger` (
  `MAILING_CHAIN_ID` int(11) NOT NULL,
  `IS_TYPE_START` int(1) NOT NULL DEFAULT '1',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EVENT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENDPOINT` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_mailing_trigger`
--

LOCK TABLES `b_sender_mailing_trigger` WRITE;
/*!40000 ALTER TABLE `b_sender_mailing_trigger` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_mailing_trigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_message`
--

DROP TABLE IF EXISTS `b_sender_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_message`
--

LOCK TABLES `b_sender_message` WRITE;
/*!40000 ALTER TABLE `b_sender_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_message_field`
--

DROP TABLE IF EXISTS `b_sender_message_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_message_field` (
  `MESSAGE_ID` int(11) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`MESSAGE_ID`,`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_message_field`
--

LOCK TABLES `b_sender_message_field` WRITE;
/*!40000 ALTER TABLE `b_sender_message_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_message_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_posting`
--

DROP TABLE IF EXISTS `b_sender_posting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_posting` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_UPDATE` datetime DEFAULT NULL,
  `MAILING_ID` int(11) NOT NULL,
  `MAILING_CHAIN_ID` int(11) NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `DATE_SEND` datetime DEFAULT NULL,
  `DATE_PAUSE` datetime DEFAULT NULL,
  `DATE_SENT` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `COUNT_SEND_ALL` int(11) NOT NULL DEFAULT '0',
  `COUNT_SEND_NONE` int(11) NOT NULL DEFAULT '0',
  `COUNT_SEND_ERROR` int(11) NOT NULL DEFAULT '0',
  `COUNT_SEND_SUCCESS` int(11) NOT NULL DEFAULT '0',
  `COUNT_SEND_DENY` int(11) NOT NULL DEFAULT '0',
  `COUNT_READ` int(11) NOT NULL DEFAULT '0',
  `COUNT_CLICK` int(11) NOT NULL DEFAULT '0',
  `COUNT_UNSUB` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_SENDER_POSTING_MAILING_CHAIN` (`MAILING_ID`,`STATUS`),
  KEY `IX_SENDER_POSTING_MAILING` (`MAILING_CHAIN_ID`,`STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_posting`
--

LOCK TABLES `b_sender_posting` WRITE;
/*!40000 ALTER TABLE `b_sender_posting` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_posting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_posting_click`
--

DROP TABLE IF EXISTS `b_sender_posting_click`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_posting_click` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `POSTING_ID` int(11) NOT NULL,
  `RECIPIENT_ID` int(11) DEFAULT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `URL` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SENDER_POSTING_CLICK` (`POSTING_ID`,`RECIPIENT_ID`),
  KEY `IX_SENDER_POSTING_CLICK_RCPID` (`RECIPIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_posting_click`
--

LOCK TABLES `b_sender_posting_click` WRITE;
/*!40000 ALTER TABLE `b_sender_posting_click` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_posting_click` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_posting_read`
--

DROP TABLE IF EXISTS `b_sender_posting_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_posting_read` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `POSTING_ID` int(11) NOT NULL,
  `RECIPIENT_ID` int(11) DEFAULT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SENDER_POSTING_READ` (`POSTING_ID`,`RECIPIENT_ID`),
  KEY `ix_b_sender_posting_read_recip_id` (`RECIPIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_posting_read`
--

LOCK TABLES `b_sender_posting_read` WRITE;
/*!40000 ALTER TABLE `b_sender_posting_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_posting_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_posting_recipient`
--

DROP TABLE IF EXISTS `b_sender_posting_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_posting_recipient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `POSTING_ID` int(11) NOT NULL,
  `CONTACT_ID` int(11) NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_SENT` datetime DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `DATE_DENY` datetime DEFAULT NULL,
  `FIELDS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ROOT_ID` int(11) DEFAULT NULL,
  `IS_READ` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_CLICK` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_UNSUB` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_SENDER_POSTING_RCPNT` (`POSTING_ID`,`CONTACT_ID`),
  KEY `IX_SENDER_POSTING_RECIP_1` (`POSTING_ID`,`STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_posting_recipient`
--

LOCK TABLES `b_sender_posting_recipient` WRITE;
/*!40000 ALTER TABLE `b_sender_posting_recipient` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_posting_recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_posting_unsub`
--

DROP TABLE IF EXISTS `b_sender_posting_unsub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_posting_unsub` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RECIPIENT_ID` int(11) NOT NULL,
  `POSTING_ID` int(11) NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SENDER_POSTING_UNSUB` (`POSTING_ID`,`RECIPIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_posting_unsub`
--

LOCK TABLES `b_sender_posting_unsub` WRITE;
/*!40000 ALTER TABLE `b_sender_posting_unsub` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_posting_unsub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_preset_template`
--

DROP TABLE IF EXISTS `b_sender_preset_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_preset_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONTENT` longtext COLLATE utf8_unicode_ci,
  `USE_COUNT` int(11) NOT NULL DEFAULT '0',
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_USE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_preset_template`
--

LOCK TABLES `b_sender_preset_template` WRITE;
/*!40000 ALTER TABLE `b_sender_preset_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_preset_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_queue`
--

DROP TABLE IF EXISTS `b_sender_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_queue` (
  `ENTITY_TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_ITEM` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ENTITY_TYPE`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_queue`
--

LOCK TABLES `b_sender_queue` WRITE;
/*!40000 ALTER TABLE `b_sender_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sender_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_role`
--

DROP TABLE IF EXISTS `b_sender_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SENDER_ROLE_XML_ID` (`XML_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_role`
--

LOCK TABLES `b_sender_role` WRITE;
/*!40000 ALTER TABLE `b_sender_role` DISABLE KEYS */;
INSERT INTO `b_sender_role` VALUES (1,'Администратор','ADMIN'),(2,'Менеджер','MANAGER');
/*!40000 ALTER TABLE `b_sender_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_role_access`
--

DROP TABLE IF EXISTS `b_sender_role_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_role_access` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int(11) NOT NULL,
  `ACCESS_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SENDER_ROLE_ACC_ROLE_ID` (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_role_access`
--

LOCK TABLES `b_sender_role_access` WRITE;
/*!40000 ALTER TABLE `b_sender_role_access` DISABLE KEYS */;
INSERT INTO `b_sender_role_access` VALUES (1,1,'G1');
/*!40000 ALTER TABLE `b_sender_role_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sender_role_permission`
--

DROP TABLE IF EXISTS `b_sender_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sender_role_permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int(11) NOT NULL,
  `ENTITY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PERMISSION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_SENDER_ROLE_PERM_ROLE_ID` (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sender_role_permission`
--

LOCK TABLES `b_sender_role_permission` WRITE;
/*!40000 ALTER TABLE `b_sender_role_permission` DISABLE KEYS */;
INSERT INTO `b_sender_role_permission` VALUES (1,1,'LETTER','VIEW','X'),(2,1,'LETTER','MODIFY','X'),(3,1,'AD','VIEW','X'),(4,1,'AD','MODIFY','X'),(5,1,'RC','VIEW','X'),(6,1,'RC','MODIFY','X'),(7,1,'SEGMENT','VIEW','X'),(8,1,'SEGMENT','MODIFY','X'),(9,1,'BLACKLIST','VIEW','X'),(10,1,'BLACKLIST','MODIFY','X'),(11,1,'SETTINGS','MODIFY','X'),(12,2,'LETTER','VIEW','X'),(13,2,'LETTER','MODIFY','X'),(14,2,'AD','VIEW','X'),(15,2,'AD','MODIFY','X'),(16,2,'RC','VIEW','X'),(17,2,'RC','MODIFY','X'),(18,2,'SEGMENT','VIEW','X'),(19,2,'SEGMENT','MODIFY',''),(20,2,'BLACKLIST','VIEW','X'),(21,2,'BLACKLIST','MODIFY','X'),(22,2,'SETTINGS','MODIFY','');
/*!40000 ALTER TABLE `b_sender_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_autolog`
--

DROP TABLE IF EXISTS `b_seo_adv_autolog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_autolog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `CAMPAIGN_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `BANNER_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CAUSE_CODE` int(11) DEFAULT '0',
  `SUCCESS` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_adv_autolog1` (`ENGINE_ID`),
  KEY `ix_b_seo_adv_autolog2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_autolog`
--

LOCK TABLES `b_seo_adv_autolog` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_autolog` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_autolog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_banner`
--

DROP TABLE IF EXISTS `b_seo_adv_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_banner` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) DEFAULT NULL,
  `AUTO_QUANTITY_OFF` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTO_QUANTITY_ON` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_banner` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_banner1` (`CAMPAIGN_ID`),
  KEY `ix_b_seo_adv_banner2` (`AUTO_QUANTITY_OFF`,`AUTO_QUANTITY_ON`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_banner`
--

LOCK TABLES `b_seo_adv_banner` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_campaign`
--

DROP TABLE IF EXISTS `b_seo_adv_campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_campaign` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `SETTINGS` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_campaign` (`ENGINE_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_campaign`
--

LOCK TABLES `b_seo_adv_campaign` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_group`
--

DROP TABLE IF EXISTS `b_seo_adv_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CAMPAIGN_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_group` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_group1` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_group`
--

LOCK TABLES `b_seo_adv_group` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_link`
--

DROP TABLE IF EXISTS `b_seo_adv_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_link` (
  `LINK_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_ID` int(18) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  PRIMARY KEY (`LINK_TYPE`,`LINK_ID`,`BANNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_link`
--

LOCK TABLES `b_seo_adv_link` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_log`
--

DROP TABLE IF EXISTS `b_seo_adv_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REQUEST_URI` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci,
  `RESPONSE_TIME` float NOT NULL,
  `RESPONSE_STATUS` int(5) DEFAULT NULL,
  `RESPONSE_DATA` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_adv_log1` (`ENGINE_ID`),
  KEY `ix_b_seo_adv_log2` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_log`
--

LOCK TABLES `b_seo_adv_log` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_order`
--

DROP TABLE IF EXISTS `b_seo_adv_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_order` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `SUM` float DEFAULT '0',
  `PROCESSED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_order` (`ENGINE_ID`,`CAMPAIGN_ID`,`BANNER_ID`,`ORDER_ID`),
  KEY `ix_b_seo_adv_order1` (`ORDER_ID`,`PROCESSED`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_order`
--

LOCK TABLES `b_seo_adv_order` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_adv_region`
--

DROP TABLE IF EXISTS `b_seo_adv_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_adv_region` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `PARENT_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_adv_region` (`ENGINE_ID`,`XML_ID`),
  KEY `ix_b_seo_adv_region1` (`PARENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_adv_region`
--

LOCK TABLES `b_seo_adv_region` WRITE;
/*!40000 ALTER TABLE `b_seo_adv_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_adv_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_keywords`
--

DROP TABLE IF EXISTS `b_seo_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_keywords` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_keywords_url` (`URL`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_keywords`
--

LOCK TABLES `b_seo_keywords` WRITE;
/*!40000 ALTER TABLE `b_seo_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_search_engine`
--

DROP TABLE IF EXISTS `b_seo_search_engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_search_engine` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(5) DEFAULT '100',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REDIRECT_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_b_seo_search_engine_code` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_search_engine`
--

LOCK TABLES `b_seo_search_engine` WRITE;
/*!40000 ALTER TABLE `b_seo_search_engine` DISABLE KEYS */;
INSERT INTO `b_seo_search_engine` VALUES (1,'google','Y',200,'Google','868942902147-qrrd6ce1ajfkpse8ieq4gkpdeanvtnno.apps.googleusercontent.com','EItMlJpZLC2WRPKB6QsA5bV9','urn:ietf:wg:oauth:2.0:oob',NULL),(2,'yandex','Y',300,'Yandex','f848c7bfc1d34a94ba6d05439f81bbd7','da0e73b2d9cc4e809f3170e49cb9df01','https://oauth.yandex.ru/verification_code',NULL),(3,'yandex_direct','Y',400,'Yandex.Direct','','','https://oauth.yandex.ru/verification_code',NULL);
/*!40000 ALTER TABLE `b_seo_search_engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_log`
--

DROP TABLE IF EXISTS `b_seo_service_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_log`
--

LOCK TABLES `b_seo_service_log` WRITE;
/*!40000 ALTER TABLE `b_seo_service_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_rtg_queue`
--

DROP TABLE IF EXISTS `b_seo_service_rtg_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_rtg_queue` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ACCOUNT_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUDIENCE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CONTACT_TYPE` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_AUTO_REMOVE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SRV_RTG_QUEUE_1` (`ACTION`,`DATE_AUTO_REMOVE`),
  KEY `IX_B_SEO_SRV_RTG_QUEUE_2` (`TYPE`,`ACTION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_rtg_queue`
--

LOCK TABLES `b_seo_service_rtg_queue` WRITE;
/*!40000 ALTER TABLE `b_seo_service_rtg_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_rtg_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_subscription`
--

DROP TABLE IF EXISTS `b_seo_service_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_subscription` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALLBACK_SERVER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_AUTH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SERVICE_SUB_1` (`TYPE`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_subscription`
--

LOCK TABLES `b_seo_service_subscription` WRITE;
/*!40000 ALTER TABLE `b_seo_service_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_service_webhook`
--

DROP TABLE IF EXISTS `b_seo_service_webhook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_service_webhook` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_B_SEO_SERVICE_WEBHOOK_1` (`TYPE`,`EXTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_service_webhook`
--

LOCK TABLES `b_seo_service_webhook` WRITE;
/*!40000 ALTER TABLE `b_seo_service_webhook` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_service_webhook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap`
--

DROP TABLE IF EXISTS `b_seo_sitemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_RUN` datetime DEFAULT NULL,
  `SETTINGS` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap`
--

LOCK TABLES `b_seo_sitemap` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_entity`
--

DROP TABLE IF EXISTS `b_seo_sitemap_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap_entity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_sitemap_entity_1` (`ENTITY_TYPE`,`ENTITY_ID`),
  KEY `ix_b_seo_sitemap_entity_2` (`SITEMAP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_entity`
--

LOCK TABLES `b_seo_sitemap_entity` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_iblock`
--

DROP TABLE IF EXISTS `b_seo_sitemap_iblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap_iblock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IBLOCK_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_seo_sitemap_iblock_1` (`IBLOCK_ID`),
  KEY `ix_b_seo_sitemap_iblock_2` (`SITEMAP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_iblock`
--

LOCK TABLES `b_seo_sitemap_iblock` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_iblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_iblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_sitemap_runtime`
--

DROP TABLE IF EXISTS `b_seo_sitemap_runtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_sitemap_runtime` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PID` int(11) NOT NULL,
  `PROCESSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ITEM_PATH` varchar(700) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `ITEM_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `ACTIVE_ELEMENT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `ix_seo_sitemap_runtime1` (`PID`,`PROCESSED`,`ITEM_TYPE`,`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_sitemap_runtime`
--

LOCK TABLES `b_seo_sitemap_runtime` WRITE;
/*!40000 ALTER TABLE `b_seo_sitemap_runtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_sitemap_runtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_seo_yandex_direct_stat`
--

DROP TABLE IF EXISTS `b_seo_yandex_direct_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_seo_yandex_direct_stat` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `DATE_DAY` date NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUM` float DEFAULT '0',
  `SUM_SEARCH` float DEFAULT '0',
  `SUM_CONTEXT` float DEFAULT '0',
  `CLICKS` int(7) DEFAULT '0',
  `CLICKS_SEARCH` int(7) DEFAULT '0',
  `CLICKS_CONTEXT` int(7) DEFAULT '0',
  `SHOWS` int(7) DEFAULT '0',
  `SHOWS_SEARCH` int(7) DEFAULT '0',
  `SHOWS_CONTEXT` int(7) DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_seo_yandex_direct_stat` (`BANNER_ID`,`DATE_DAY`),
  KEY `ix_seo_yandex_direct_stat1` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_seo_yandex_direct_stat`
--

LOCK TABLES `b_seo_yandex_direct_stat` WRITE;
/*!40000 ALTER TABLE `b_seo_yandex_direct_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_seo_yandex_direct_stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_short_uri`
--

DROP TABLE IF EXISTS `b_short_uri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_short_uri` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `URI_CRC` int(18) NOT NULL,
  `SHORT_URI` varbinary(250) NOT NULL,
  `SHORT_URI_CRC` int(18) NOT NULL,
  `STATUS` int(18) NOT NULL DEFAULT '301',
  `MODIFIED` datetime NOT NULL,
  `LAST_USED` datetime DEFAULT NULL,
  `NUMBER_USED` int(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ux_b_short_uri_1` (`SHORT_URI_CRC`),
  KEY `ux_b_short_uri_2` (`URI_CRC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_short_uri`
--

LOCK TABLES `b_short_uri` WRITE;
/*!40000 ALTER TABLE `b_short_uri` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_short_uri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_site_template`
--

DROP TABLE IF EXISTS `b_site_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_site_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_site_template_site` (`SITE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_site_template`
--

LOCK TABLES `b_site_template` WRITE;
/*!40000 ALTER TABLE `b_site_template` DISABLE KEYS */;
INSERT INTO `b_site_template` VALUES (1,'s1','',150,'web20');
/*!40000 ALTER TABLE `b_site_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sm_version_history`
--

DROP TABLE IF EXISTS `b_sm_version_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sm_version_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime DEFAULT NULL,
  `VERSIONS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sm_version_history`
--

LOCK TABLES `b_sm_version_history` WRITE;
/*!40000 ALTER TABLE `b_sm_version_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sm_version_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile`
--

DROP TABLE IF EXISTS `b_smile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_smile` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SET_ID` int(18) NOT NULL DEFAULT '0',
  `SORT` int(10) NOT NULL DEFAULT '150',
  `TYPING` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLICKABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IMAGE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IMAGE_DEFINITION` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SD',
  `IMAGE_WIDTH` int(11) NOT NULL DEFAULT '0',
  `IMAGE_HEIGHT` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile`
--

LOCK TABLES `b_smile` WRITE;
/*!40000 ALTER TABLE `b_smile` DISABLE KEYS */;
INSERT INTO `b_smile` VALUES (1,'S',2,100,':) :-)','Y','N','bx_smile_smile.png','UHD',20,20),(2,'S',2,105,';) ;-)','Y','N','bx_smile_wink.png','UHD',20,20),(3,'S',2,110,':D :-D','Y','N','bx_smile_biggrin.png','UHD',20,20),(4,'S',2,115,'8) 8-)','Y','N','bx_smile_cool.png','UHD',20,20),(5,'S',2,120,':facepalm:','Y','N','bx_smile_facepalm.png','UHD',20,20),(6,'S',2,125,':{} :-{}','Y','N','bx_smile_kiss.png','UHD',20,20),(7,'S',2,130,':( :-(','Y','N','bx_smile_sad.png','UHD',20,20),(8,'S',2,135,':| :-|','Y','N','bx_smile_neutral.png','UHD',20,20),(9,'S',2,140,':oops:','Y','N','bx_smile_redface.png','UHD',20,20),(10,'S',2,145,':cry: :~(','Y','N','bx_smile_cry.png','UHD',20,20),(11,'S',2,150,':evil: >:-<','Y','N','bx_smile_evil.png','UHD',20,20),(12,'S',2,155,':o :-o :shock:','Y','N','bx_smile_eek.png','UHD',20,20),(13,'S',2,160,':/ :-/','Y','N','bx_smile_confuse.png','UHD',20,20),(14,'S',2,165,':idea:','Y','N','bx_smile_idea.png','UHD',20,20),(15,'S',2,170,':?:','Y','N','bx_smile_question.png','UHD',20,20),(16,'S',2,175,':!:','Y','N','bx_smile_exclaim.png','UHD',20,20),(17,'S',2,180,':like:','Y','N','bx_smile_like.png','UHD',20,20),(18,'I',2,175,'ICON_NOTE','Y','N','bx_icon_1.gif','SD',15,15),(19,'I',2,180,'ICON_DIRRECTION','Y','N','bx_icon_2.gif','SD',15,15),(20,'I',2,185,'ICON_IDEA','Y','N','bx_icon_3.gif','SD',15,15),(21,'I',2,190,'ICON_ATTANSION','Y','N','bx_icon_4.gif','SD',15,15),(22,'I',2,195,'ICON_QUESTION','Y','N','bx_icon_5.gif','SD',15,15),(23,'I',2,200,'ICON_BAD','Y','N','bx_icon_6.gif','SD',15,15),(24,'I',2,205,'ICON_GOOD','Y','N','bx_icon_7.gif','SD',15,15);
/*!40000 ALTER TABLE `b_smile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile_lang`
--

DROP TABLE IF EXISTS `b_smile_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_smile_lang` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_SMILE_SL` (`TYPE`,`SID`,`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile_lang`
--

LOCK TABLES `b_smile_lang` WRITE;
/*!40000 ALTER TABLE `b_smile_lang` DISABLE KEYS */;
INSERT INTO `b_smile_lang` VALUES (1,'P',1,'ru','Стандартная галерея'),(2,'P',1,'en','Standard gallery'),(3,'G',2,'ru','Основной набор'),(4,'G',2,'en','Default pack'),(5,'S',1,'ru','С улыбкой'),(6,'S',1,'en','Smile'),(7,'S',2,'ru','Шутливо'),(8,'S',2,'en','Wink'),(9,'S',3,'ru','Широкая улыбка'),(10,'S',3,'en','Big grin'),(11,'S',4,'ru','Здорово'),(12,'S',4,'en','Cool'),(13,'S',5,'ru','Разочарование'),(14,'S',5,'en','Facepalm'),(15,'S',6,'ru','Поцелуй'),(16,'S',6,'en','Kiss'),(17,'S',7,'ru','Печально'),(18,'S',7,'en','Sad'),(19,'S',8,'ru','Скептически'),(20,'S',8,'en','Skeptic'),(21,'S',9,'ru','Смущенный'),(22,'S',9,'en','Embarrassed'),(23,'S',10,'ru','Очень грустно'),(24,'S',10,'en','Crying'),(25,'S',11,'ru','Со злостью'),(26,'S',11,'en','Angry'),(27,'S',12,'ru','Удивленно'),(28,'S',12,'en','Surprised'),(29,'S',13,'ru','Смущенно'),(30,'S',13,'en','Confused'),(31,'S',14,'ru','Идея'),(32,'S',14,'en','Idea'),(33,'S',15,'ru','Вопрос'),(34,'S',15,'en','Question'),(35,'S',16,'ru','Восклицание'),(36,'S',16,'en','Exclamation'),(37,'S',17,'ru','Нравится'),(38,'S',17,'en','Like');
/*!40000 ALTER TABLE `b_smile_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_smile_set`
--

DROP TABLE IF EXISTS `b_smile_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_smile_set` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'G',
  `PARENT_ID` int(18) NOT NULL DEFAULT '0',
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(10) NOT NULL DEFAULT '150',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_smile_set`
--

LOCK TABLES `b_smile_set` WRITE;
/*!40000 ALTER TABLE `b_smile_set` DISABLE KEYS */;
INSERT INTO `b_smile_set` VALUES (1,'P',0,'bitrix',150),(2,'G',1,'bitrix_main',150);
/*!40000 ALTER TABLE `b_smile_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sms_template`
--

DROP TABLE IF EXISTS `b_sms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sms_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SENDER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RECEIVER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_sms_message_name` (`EVENT_NAME`(50))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sms_template`
--

LOCK TABLES `b_sms_template` WRITE;
/*!40000 ALTER TABLE `b_sms_template` DISABLE KEYS */;
INSERT INTO `b_sms_template` VALUES (1,'SMS_USER_CONFIRM_NUMBER','Y','#DEFAULT_SENDER#','#USER_PHONE#','Код подтверждения #CODE#',NULL),(2,'SMS_USER_RESTORE_PASSWORD','Y','#DEFAULT_SENDER#','#USER_PHONE#','Код для восстановления пароля #CODE#',NULL);
/*!40000 ALTER TABLE `b_sms_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sms_template_site`
--

DROP TABLE IF EXISTS `b_sms_template_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sms_template_site` (
  `TEMPLATE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`TEMPLATE_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sms_template_site`
--

LOCK TABLES `b_sms_template_site` WRITE;
/*!40000 ALTER TABLE `b_sms_template_site` DISABLE KEYS */;
INSERT INTO `b_sms_template_site` VALUES (1,'s1'),(2,'s1');
/*!40000 ALTER TABLE `b_sms_template_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_ap`
--

DROP TABLE IF EXISTS `b_socialservices_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_ap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` int(11) NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENDPOINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `SETTINGS` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_socialservices_ap1` (`USER_ID`,`DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_ap`
--

LOCK TABLES `b_socialservices_ap` WRITE;
/*!40000 ALTER TABLE `b_socialservices_ap` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_ap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_contact`
--

DROP TABLE IF EXISTS `b_socialservices_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_contact` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` int(11) NOT NULL,
  `CONTACT_USER_ID` int(11) DEFAULT NULL,
  `CONTACT_XML_ID` int(11) DEFAULT NULL,
  `CONTACT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_PHOTO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `NOTIFY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_contact1` (`USER_ID`),
  KEY `ix_b_socialservices_contact2` (`CONTACT_USER_ID`),
  KEY `ix_b_socialservices_contact3` (`TIMESTAMP_X`),
  KEY `ix_b_socialservices_contact4` (`LAST_AUTHORIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_contact`
--

LOCK TABLES `b_socialservices_contact` WRITE;
/*!40000 ALTER TABLE `b_socialservices_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_contact_connect`
--

DROP TABLE IF EXISTS `b_socialservices_contact_connect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_contact_connect` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CONTACT_ID` int(11) DEFAULT NULL,
  `LINK_ID` int(11) DEFAULT NULL,
  `CONTACT_PROFILE_ID` int(11) NOT NULL,
  `CONTACT_PORTAL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONNECT_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'P',
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_contact_connect1` (`CONTACT_ID`),
  KEY `ix_b_socialservices_contact_connect2` (`LINK_ID`),
  KEY `ix_b_socialservices_contact_connect3` (`LAST_AUTHORIZE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_contact_connect`
--

LOCK TABLES `b_socialservices_contact_connect` WRITE;
/*!40000 ALTER TABLE `b_socialservices_contact_connect` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_contact_connect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_message`
--

DROP TABLE IF EXISTS `b_socialservices_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `PROVIDER` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATE` datetime DEFAULT NULL,
  `SUCCES_SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_message`
--

LOCK TABLES `b_socialservices_message` WRITE;
/*!40000 ALTER TABLE `b_socialservices_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_user`
--

DROP TABLE IF EXISTS `b_socialservices_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(11) DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CAN_DELETE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PERSONAL_WWW` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERMISSIONS` varchar(555) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN` varchar(3000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN_EXPIRES` int(11) DEFAULT NULL,
  `OASECRET` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REFRESH_TOKEN` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEND_ACTIVITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SITE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INITIALIZED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_B_SOCIALSERVICES_USER` (`XML_ID`,`EXTERNAL_AUTH_ID`),
  KEY `IX_B_SOCIALSERVICES_US_1` (`USER_ID`),
  KEY `IX_B_SOCIALSERVICES_US_3` (`LOGIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_user`
--

LOCK TABLES `b_socialservices_user` WRITE;
/*!40000 ALTER TABLE `b_socialservices_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_socialservices_user_link`
--

DROP TABLE IF EXISTS `b_socialservices_user_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_socialservices_user_link` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `LINK_USER_ID` int(11) DEFAULT NULL,
  `LINK_UID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_PICTURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_socialservices_user_link_5` (`SOCSERV_USER_ID`),
  KEY `ix_b_socialservices_user_link_6` (`LINK_USER_ID`,`TIMESTAMP_X`),
  KEY `ix_b_socialservices_user_link_7` (`LINK_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_socialservices_user_link`
--

LOCK TABLES `b_socialservices_user_link` WRITE;
/*!40000 ALTER TABLE `b_socialservices_user_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_socialservices_user_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sticker`
--

DROP TABLE IF EXISTS `b_sticker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sticker` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAGE_TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `MODIFIED_BY` int(18) NOT NULL,
  `CREATED_BY` int(18) NOT NULL,
  `PERSONAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONTENT` text COLLATE utf8_unicode_ci,
  `POS_TOP` int(11) DEFAULT NULL,
  `POS_LEFT` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `COLOR` int(11) DEFAULT NULL,
  `COLLAPSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `COMPLETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CLOSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MARKER_TOP` int(11) DEFAULT NULL,
  `MARKER_LEFT` int(11) DEFAULT NULL,
  `MARKER_WIDTH` int(11) DEFAULT NULL,
  `MARKER_HEIGHT` int(11) DEFAULT NULL,
  `MARKER_ADJUST` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sticker`
--

LOCK TABLES `b_sticker` WRITE;
/*!40000 ALTER TABLE `b_sticker` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sticker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_sticker_group_task`
--

DROP TABLE IF EXISTS `b_sticker_group_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_sticker_group_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`TASK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_sticker_group_task`
--

LOCK TABLES `b_sticker_group_task` WRITE;
/*!40000 ALTER TABLE `b_sticker_group_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_sticker_group_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_subscription`
--

DROP TABLE IF EXISTS `b_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_subscription` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE_INSERT` datetime NOT NULL,
  `DATE_UPDATE` datetime DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `CONFIRM_CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFIRMED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DATE_CONFIRM` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_SUBSCRIPTION_EMAIL` (`EMAIL`,`USER_ID`),
  KEY `IX_DATE_CONFIRM` (`CONFIRMED`,`DATE_CONFIRM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_subscription`
--

LOCK TABLES `b_subscription` WRITE;
/*!40000 ALTER TABLE `b_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_subscription_rubric`
--

DROP TABLE IF EXISTS `b_subscription_rubric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_subscription_rubric` (
  `SUBSCRIPTION_ID` int(11) NOT NULL,
  `LIST_RUBRIC_ID` int(11) NOT NULL,
  UNIQUE KEY `UK_SUBSCRIPTION_RUBRIC` (`SUBSCRIPTION_ID`,`LIST_RUBRIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_subscription_rubric`
--

LOCK TABLES `b_subscription_rubric` WRITE;
/*!40000 ALTER TABLE `b_subscription_rubric` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_subscription_rubric` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_task`
--

DROP TABLE IF EXISTS `b_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_task` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LETTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SYS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module',
  PRIMARY KEY (`ID`),
  KEY `ix_task` (`MODULE_ID`,`BINDING`,`LETTER`,`SYS`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_task`
--

LOCK TABLES `b_task` WRITE;
/*!40000 ALTER TABLE `b_task` DISABLE KEYS */;
INSERT INTO `b_task` VALUES (1,'main_denied','D','main','Y',NULL,'module'),(2,'main_change_profile','P','main','Y',NULL,'module'),(3,'main_view_all_settings','R','main','Y',NULL,'module'),(4,'main_view_all_settings_change_profile','T','main','Y',NULL,'module'),(5,'main_edit_subordinate_users','V','main','Y',NULL,'module'),(6,'main_full_access','W','main','Y',NULL,'module'),(7,'fm_folder_access_denied','D','main','Y',NULL,'file'),(8,'fm_folder_access_read','R','main','Y',NULL,'file'),(9,'fm_folder_access_write','W','main','Y',NULL,'file'),(10,'fm_folder_access_full','X','main','Y',NULL,'file'),(11,'fm_folder_access_workflow','U','main','Y',NULL,'file'),(12,'bitrixcloud_deny','D','bitrixcloud','Y',NULL,'module'),(13,'bitrixcloud_control','W','bitrixcloud','Y',NULL,'module'),(14,'catalog_denied','D','catalog','Y',NULL,'module'),(15,'catalog_view','M','catalog','Y',NULL,'module'),(16,'catalog_read','R','catalog','Y',NULL,'module'),(17,'catalog_price_edit','T','catalog','Y',NULL,'module'),(18,'catalog_store_edit','S','catalog','Y',NULL,'module'),(19,'catalog_export_import','U','catalog','Y',NULL,'module'),(20,'catalog_full_access','W','catalog','Y',NULL,'module'),(21,'clouds_denied','D','clouds','Y',NULL,'module'),(22,'clouds_browse','F','clouds','Y',NULL,'module'),(23,'clouds_upload','U','clouds','Y',NULL,'module'),(24,'clouds_full_access','W','clouds','Y',NULL,'module'),(25,'fileman_denied','D','fileman','Y','','module'),(26,'fileman_allowed_folders','F','fileman','Y','','module'),(27,'fileman_full_access','W','fileman','Y','','module'),(28,'medialib_denied','D','fileman','Y','','medialib'),(29,'medialib_view','F','fileman','Y','','medialib'),(30,'medialib_only_new','R','fileman','Y','','medialib'),(31,'medialib_edit_items','V','fileman','Y','','medialib'),(32,'medialib_editor','W','fileman','Y','','medialib'),(33,'medialib_full','X','fileman','Y','','medialib'),(34,'stickers_denied','D','fileman','Y','','stickers'),(35,'stickers_read','R','fileman','Y','','stickers'),(36,'stickers_edit','W','fileman','Y','','stickers'),(37,'hblock_denied','D','highloadblock','Y',NULL,'module'),(38,'hblock_read','R','highloadblock','Y',NULL,'module'),(39,'hblock_write','W','highloadblock','Y',NULL,'module'),(40,'iblock_deny','D','iblock','Y',NULL,'iblock'),(41,'iblock_read','R','iblock','Y',NULL,'iblock'),(42,'iblock_element_add','E','iblock','Y',NULL,'iblock'),(43,'iblock_admin_read','S','iblock','Y',NULL,'iblock'),(44,'iblock_admin_add','T','iblock','Y',NULL,'iblock'),(45,'iblock_limited_edit','U','iblock','Y',NULL,'iblock'),(46,'iblock_full_edit','W','iblock','Y',NULL,'iblock'),(47,'iblock_full','X','iblock','Y',NULL,'iblock'),(48,'sale_status_none','D','sale','Y',NULL,'status'),(49,'sale_status_all','X','sale','Y',NULL,'status'),(50,'security_denied','D','security','Y',NULL,'module'),(51,'security_filter','F','security','Y',NULL,'module'),(52,'security_otp','S','security','Y',NULL,'module'),(53,'security_view_all_settings','T','security','Y',NULL,'module'),(54,'security_full_access','W','security','Y',NULL,'module'),(55,'seo_denied','D','seo','Y','','module'),(56,'seo_edit','F','seo','Y','','module'),(57,'seo_full_access','W','seo','Y','','module');
/*!40000 ALTER TABLE `b_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_task_operation`
--

DROP TABLE IF EXISTS `b_task_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_task_operation` (
  `TASK_ID` int(18) NOT NULL,
  `OPERATION_ID` int(18) NOT NULL,
  PRIMARY KEY (`TASK_ID`,`OPERATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_task_operation`
--

LOCK TABLES `b_task_operation` WRITE;
/*!40000 ALTER TABLE `b_task_operation` DISABLE KEYS */;
INSERT INTO `b_task_operation` VALUES (2,2),(2,3),(3,2),(3,4),(3,5),(3,6),(3,7),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(5,2),(5,3),(5,5),(5,6),(5,7),(5,8),(5,9),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,10),(6,11),(6,12),(6,13),(6,14),(6,15),(6,16),(6,17),(6,18),(8,19),(8,20),(8,21),(9,19),(9,20),(9,21),(9,22),(9,23),(9,24),(9,25),(9,26),(9,27),(9,28),(9,29),(9,30),(9,31),(9,32),(9,33),(9,34),(10,19),(10,20),(10,21),(10,22),(10,23),(10,24),(10,25),(10,26),(10,27),(10,28),(10,29),(10,30),(10,31),(10,32),(10,33),(10,34),(10,35),(11,19),(11,20),(11,21),(11,24),(11,28),(13,36),(13,37),(13,38),(15,39),(16,40),(17,40),(17,41),(17,42),(17,43),(17,44),(17,45),(17,46),(18,40),(18,41),(18,45),(18,46),(18,47),(19,40),(19,48),(19,49),(19,50),(19,51),(20,40),(20,41),(20,42),(20,43),(20,44),(20,45),(20,46),(20,47),(20,48),(20,49),(20,50),(20,51),(20,52),(20,53),(22,54),(23,54),(23,55),(24,54),(24,55),(24,56),(26,59),(26,60),(26,61),(26,62),(26,63),(26,64),(26,65),(26,67),(26,68),(27,57),(27,58),(27,59),(27,60),(27,61),(27,62),(27,63),(27,64),(27,65),(27,66),(27,67),(27,68),(27,69),(29,70),(30,70),(30,71),(30,75),(31,70),(31,75),(31,76),(31,77),(32,70),(32,71),(32,72),(32,73),(32,75),(32,76),(32,77),(33,70),(33,71),(33,72),(33,73),(33,74),(33,75),(33,76),(33,77),(35,78),(36,78),(36,79),(36,80),(36,81),(38,82),(39,83),(39,84),(41,85),(41,86),(42,87),(43,85),(43,86),(43,88),(44,85),(44,86),(44,87),(44,88),(45,85),(45,86),(45,87),(45,88),(45,89),(45,90),(45,91),(45,92),(46,85),(46,86),(46,87),(46,88),(46,89),(46,90),(46,91),(46,92),(46,93),(46,94),(46,95),(46,96),(47,85),(47,86),(47,87),(47,88),(47,89),(47,90),(47,91),(47,92),(47,93),(47,94),(47,95),(47,96),(47,97),(47,98),(47,99),(47,100),(47,101),(47,102),(49,103),(49,104),(49,105),(49,106),(49,107),(49,108),(49,109),(49,110),(49,111),(49,112),(51,113),(52,114),(53,115),(53,116),(53,117),(53,118),(53,119),(53,120),(53,121),(53,122),(53,123),(53,124),(53,125),(54,113),(54,114),(54,115),(54,116),(54,117),(54,118),(54,119),(54,120),(54,121),(54,122),(54,123),(54,124),(54,125),(54,126),(54,127),(54,128),(54,129),(54,130),(54,131),(54,132),(54,133),(54,134),(54,135),(54,136),(54,137),(54,138),(56,140),(57,139),(57,140);
/*!40000 ALTER TABLE `b_task_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_undo`
--

DROP TABLE IF EXISTS `b_undo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_undo` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_HANDLER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` mediumtext COLLATE utf8_unicode_ci,
  `USER_ID` int(11) DEFAULT NULL,
  `TIMESTAMP_X` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_undo`
--

LOCK TABLES `b_undo` WRITE;
/*!40000 ALTER TABLE `b_undo` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_undo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_urlpreview_metadata`
--

DROP TABLE IF EXISTS `b_urlpreview_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_urlpreview_metadata` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `URL` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `DATE_INSERT` datetime NOT NULL,
  `DATE_EXPIRE` datetime DEFAULT NULL,
  `TITLE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `IMAGE` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMBED` mediumtext COLLATE utf8_unicode_ci,
  `EXTRA` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_URLPREVIEW_METADATA_URL` (`URL`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_urlpreview_metadata`
--

LOCK TABLES `b_urlpreview_metadata` WRITE;
/*!40000 ALTER TABLE `b_urlpreview_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_urlpreview_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_urlpreview_route`
--

DROP TABLE IF EXISTS `b_urlpreview_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_urlpreview_route` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROUTE` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMETERS` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_URLPREVIEW_ROUTE_ROUTE` (`ROUTE`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_urlpreview_route`
--

LOCK TABLES `b_urlpreview_route` WRITE;
/*!40000 ALTER TABLE `b_urlpreview_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_urlpreview_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user`
--

DROP TABLE IF EXISTS `b_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CHECKWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `DATE_REGISTER` datetime NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PROFESSION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ICQ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_GENDER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(18) DEFAULT NULL,
  `PERSONAL_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_MOBILE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STREET` text COLLATE utf8_unicode_ci,
  `PERSONAL_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_NOTES` text COLLATE utf8_unicode_ci,
  `WORK_COMPANY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_DEPARTMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STREET` text COLLATE utf8_unicode_ci,
  `WORK_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PROFILE` text COLLATE utf8_unicode_ci,
  `WORK_LOGO` int(18) DEFAULT NULL,
  `WORK_NOTES` text COLLATE utf8_unicode_ci,
  `ADMIN_NOTES` text COLLATE utf8_unicode_ci,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDAY` date DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECKWORD_TIME` datetime DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFIRM_CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN_ATTEMPTS` int(18) DEFAULT NULL,
  `LAST_ACTIVITY_DATE` datetime DEFAULT NULL,
  `AUTO_TIME_ZONE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE_OFFSET` int(18) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BX_USER_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ix_login` (`LOGIN`,`EXTERNAL_AUTH_ID`),
  KEY `ix_b_user_email` (`EMAIL`),
  KEY `ix_b_user_activity_date` (`LAST_ACTIVITY_DATE`),
  KEY `IX_B_USER_XML_ID` (`XML_ID`),
  KEY `ix_user_last_login` (`LAST_LOGIN`),
  KEY `ix_user_date_register` (`DATE_REGISTER`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user`
--

LOCK TABLES `b_user` WRITE;
/*!40000 ALTER TABLE `b_user` DISABLE KEYS */;
INSERT INTO `b_user` VALUES (1,'2019-10-17 11:08:34','admin','lXGSPczRea538681279d7c56b61dcf7cae79dbe2','YHoaAYD09d282699d44ad1e8d4fdaf85da443436','Y','','','admin@example.com','2019-10-17 11:08:34','2019-10-17 11:06:50',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-17 11:06:50',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `b_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_access`
--

DROP TABLE IF EXISTS `b_user_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_access` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS_CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_ua_user_provider` (`USER_ID`,`PROVIDER_ID`),
  KEY `ix_ua_user_access` (`USER_ID`,`ACCESS_CODE`),
  KEY `ix_ua_access` (`ACCESS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_access`
--

LOCK TABLES `b_user_access` WRITE;
/*!40000 ALTER TABLE `b_user_access` DISABLE KEYS */;
INSERT INTO `b_user_access` VALUES (0,'group','G2'),(1,'group','G1'),(1,'group','G3'),(1,'group','G4'),(1,'group','G2'),(1,'user','U1');
/*!40000 ALTER TABLE `b_user_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_access_check`
--

DROP TABLE IF EXISTS `b_user_access_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_access_check` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `ix_uac_user_provider` (`USER_ID`,`PROVIDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_access_check`
--

LOCK TABLES `b_user_access_check` WRITE;
/*!40000 ALTER TABLE `b_user_access_check` DISABLE KEYS */;
INSERT INTO `b_user_access_check` VALUES (1,'group'),(1,'user');
/*!40000 ALTER TABLE `b_user_access_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_auth_action`
--

DROP TABLE IF EXISTS `b_user_auth_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_auth_action` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PRIORITY` int(11) NOT NULL DEFAULT '100',
  `ACTION` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTION_DATE` datetime NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_auth_action_user` (`USER_ID`,`PRIORITY`),
  KEY `ix_auth_action_date` (`ACTION_DATE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_auth_action`
--

LOCK TABLES `b_user_auth_action` WRITE;
/*!40000 ALTER TABLE `b_user_auth_action` DISABLE KEYS */;
INSERT INTO `b_user_auth_action` VALUES (1,1,200,'update','2019-10-17 11:06:50',NULL);
/*!40000 ALTER TABLE `b_user_auth_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_counter`
--

DROP TABLE IF EXISTS `b_user_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_counter` (
  `USER_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '**',
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CNT` int(18) NOT NULL DEFAULT '0',
  `LAST_DATE` datetime DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '3000-01-01 00:00:00',
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `SENT` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`USER_ID`,`SITE_ID`,`CODE`),
  KEY `ix_buc_tag` (`TAG`),
  KEY `ix_buc_code` (`CODE`),
  KEY `ix_buc_ts` (`TIMESTAMP_X`),
  KEY `ix_buc_sent_userid` (`SENT`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_counter`
--

LOCK TABLES `b_user_counter` WRITE;
/*!40000 ALTER TABLE `b_user_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_digest`
--

DROP TABLE IF EXISTS `b_user_digest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_digest` (
  `USER_ID` int(11) NOT NULL,
  `DIGEST_HA1` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_digest`
--

LOCK TABLES `b_user_digest` WRITE;
/*!40000 ALTER TABLE `b_user_digest` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_digest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field`
--

DROP TABLE IF EXISTS `b_user_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD_NAME` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MANDATORY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_FILTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `IS_SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SETTINGS` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_type_entity` (`ENTITY_ID`,`FIELD_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field`
--

LOCK TABLES `b_user_field` WRITE;
/*!40000 ALTER TABLE `b_user_field` DISABLE KEYS */;
INSERT INTO `b_user_field` VALUES (1,'BLOG_POST','UF_BLOG_POST_DOC','file','UF_BLOG_POST_DOC',100,'Y','N','N','N','Y','Y','a:0:{}'),(2,'BLOG_COMMENT','UF_BLOG_COMMENT_DOC','file','UF_BLOG_COMMENT_DOC',100,'Y','N','N','N','Y','Y','a:0:{}'),(3,'BLOG_POST','UF_BLOG_POST_URL_PRV','url_preview','UF_BLOG_POST_URL_PRV',100,'N','N','N','N','Y','Y','a:0:{}'),(4,'BLOG_COMMENT','UF_BLOG_COMM_URL_PRV','url_preview','UF_BLOG_COMM_URL_PRV',100,'N','N','N','N','Y','Y','a:0:{}'),(5,'BLOG_POST','UF_GRATITUDE','integer','UF_GRATITUDE',100,'N','N','N','N','Y','N','a:0:{}'),(6,'FORUM_MESSAGE','UF_FORUM_MES_URL_PRV','url_preview','UF_FORUM_MES_URL_PRV',100,'N','N','N','N','Y','N','a:0:{}');
/*!40000 ALTER TABLE `b_user_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_confirm`
--

DROP TABLE IF EXISTS `b_user_field_confirm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field_confirm` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `DATE_CHANGE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELD_VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIRM_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_b_user_field_confirm1` (`USER_ID`,`CONFIRM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_confirm`
--

LOCK TABLES `b_user_field_confirm` WRITE;
/*!40000 ALTER TABLE `b_user_field_confirm` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_confirm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_enum`
--

DROP TABLE IF EXISTS `b_user_field_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field_enum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_FIELD_ID` int(11) DEFAULT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_field_enum` (`USER_FIELD_ID`,`XML_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_enum`
--

LOCK TABLES `b_user_field_enum` WRITE;
/*!40000 ALTER TABLE `b_user_field_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_field_lang`
--

DROP TABLE IF EXISTS `b_user_field_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_field_lang` (
  `USER_FIELD_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EDIT_FORM_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_COLUMN_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_FILTER_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HELP_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_FIELD_ID`,`LANGUAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_field_lang`
--

LOCK TABLES `b_user_field_lang` WRITE;
/*!40000 ALTER TABLE `b_user_field_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_field_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_group`
--

DROP TABLE IF EXISTS `b_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_group` (
  `USER_ID` int(18) NOT NULL,
  `GROUP_ID` int(18) NOT NULL,
  `DATE_ACTIVE_FROM` datetime DEFAULT NULL,
  `DATE_ACTIVE_TO` datetime DEFAULT NULL,
  UNIQUE KEY `ix_user_group` (`USER_ID`,`GROUP_ID`),
  KEY `ix_user_group_group` (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_group`
--

LOCK TABLES `b_user_group` WRITE;
/*!40000 ALTER TABLE `b_user_group` DISABLE KEYS */;
INSERT INTO `b_user_group` VALUES (1,1,NULL,NULL),(1,3,NULL,NULL),(1,4,NULL,NULL);
/*!40000 ALTER TABLE `b_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_hit_auth`
--

DROP TABLE IF EXISTS `b_user_hit_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_hit_auth` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `IX_USER_HIT_AUTH_1` (`HASH`),
  KEY `IX_USER_HIT_AUTH_2` (`USER_ID`),
  KEY `IX_USER_HIT_AUTH_3` (`TIMESTAMP_X`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_hit_auth`
--

LOCK TABLES `b_user_hit_auth` WRITE;
/*!40000 ALTER TABLE `b_user_hit_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_hit_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_index`
--

DROP TABLE IF EXISTS `b_user_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_index` (
  `USER_ID` int(11) NOT NULL,
  `SEARCH_USER_CONTENT` text COLLATE utf8_unicode_ci,
  `SEARCH_DEPARTMENT_CONTENT` text COLLATE utf8_unicode_ci,
  `SEARCH_ADMIN_CONTENT` text COLLATE utf8_unicode_ci,
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UF_DEPARTMENT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  FULLTEXT KEY `IXF_B_USER_INDEX_1` (`SEARCH_USER_CONTENT`),
  FULLTEXT KEY `IXF_B_USER_INDEX_2` (`SEARCH_DEPARTMENT_CONTENT`),
  FULLTEXT KEY `IXF_B_USER_INDEX_3` (`SEARCH_ADMIN_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_index`
--

LOCK TABLES `b_user_index` WRITE;
/*!40000 ALTER TABLE `b_user_index` DISABLE KEYS */;
INSERT INTO `b_user_index` VALUES (1,'001','','001 nqzva rknzcyr pbz nqzva@rknzcyr.pbz','','','','','');
/*!40000 ALTER TABLE `b_user_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_index_selector`
--

DROP TABLE IF EXISTS `b_user_index_selector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_index_selector` (
  `USER_ID` int(11) NOT NULL,
  `SEARCH_SELECTOR_CONTENT` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`USER_ID`),
  FULLTEXT KEY `IXF_B_USER_INDEX_SELECTOR_1` (`SEARCH_SELECTOR_CONTENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_index_selector`
--

LOCK TABLES `b_user_index_selector` WRITE;
/*!40000 ALTER TABLE `b_user_index_selector` DISABLE KEYS */;
INSERT INTO `b_user_index_selector` VALUES (1,'');
/*!40000 ALTER TABLE `b_user_index_selector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_option`
--

DROP TABLE IF EXISTS `b_user_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_option` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `CATEGORY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` mediumtext COLLATE utf8_unicode_ci,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ux_user_category_name` (`USER_ID`,`CATEGORY`,`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_option`
--

LOCK TABLES `b_user_option` WRITE;
/*!40000 ALTER TABLE `b_user_option` DISABLE KEYS */;
INSERT INTO `b_user_option` VALUES (1,0,'intranet','~gadgets_admin_index','a:1:{i:0;a:1:{s:7:\"GADGETS\";a:12:{s:28:\"ADMIN_ORDERS_GRAPH@111111111\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:22:\"ADMIN_ORDERS@111111111\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";}s:19:\"HTML_AREA@444444444\";a:5:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";s:8:\"USERDATA\";a:1:{s:7:\"content\";s:797:\"<table class=\"bx-gadgets-info-site-table\" cellspacing=\"0\"><tr>	<td class=\"bx-gadget-gray\">Создатель сайта:</td>	<td>Группа компаний &laquo;1С-Битрикс&raquo;.</td>	<td class=\"bx-gadgets-info-site-logo\" rowspan=\"5\"><img src=\"/bitrix/components/bitrix/desktop/templates/admin/images/site_logo.png\"></td></tr><tr>	<td class=\"bx-gadget-gray\">Адрес сайта:</td>	<td><a href=\"http://www.1c-bitrix.ru\">www.1c-bitrix.ru</a></td></tr><tr>	<td class=\"bx-gadget-gray\">Сайт сдан:</td>	<td>12 декабря 2010 г.</td></tr><tr>	<td class=\"bx-gadget-gray\">Ответственное лицо:</td>	<td>Иван Иванов</td></tr><tr>	<td class=\"bx-gadget-gray\">E-mail:</td>	<td><a href=\"mailto:info@1c-bitrix.ru\">info@1c-bitrix.ru</a></td></tr></table>\";}s:8:\"SETTINGS\";a:1:{s:9:\"TITLE_STD\";s:34:\"Информация о сайте\";}}s:24:\"ADMIN_SECURITY@555555555\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";}s:25:\"ADMIN_SITESPEED@666666777\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_PERFMON@666666666\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";}s:24:\"ADMIN_PRODUCTS@111111111\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:6;s:4:\"HIDE\";s:1:\"N\";}s:20:\"ADMIN_INFO@333333333\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:7;s:4:\"HIDE\";s:1:\"N\";}s:25:\"ADMIN_CHECKLIST@777888999\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:8;s:4:\"HIDE\";s:1:\"N\";}s:19:\"RSSREADER@777777777\";a:4:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:9;s:4:\"HIDE\";s:1:\"N\";s:8:\"SETTINGS\";a:3:{s:9:\"TITLE_STD\";s:33:\"Новости 1С-Битрикс\";s:3:\"CNT\";i:10;s:7:\"RSS_URL\";s:45:\"https://www.1c-bitrix.ru/about/life/news/rss/\";}}s:23:\"ADMIN_MARKETPALCE@22549\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:4;s:4:\"HIDE\";s:1:\"N\";}s:22:\"ADMIN_MOBILESHOP@13391\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:5;s:4:\"HIDE\";s:1:\"N\";}}}}','Y'),(2,1,'admin_panel','settings','a:2:{s:4:\"edit\";s:3:\"off\";s:9:\"collapsed\";s:2:\"on\";}','N'),(3,1,'hot_keys','user_defined','b:1;','N'),(5,1,'favorite','favorite_menu','a:1:{s:5:\"stick\";s:1:\"Y\";}','N');
/*!40000 ALTER TABLE `b_user_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_phone_auth`
--

DROP TABLE IF EXISTS `b_user_phone_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_phone_auth` (
  `USER_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `OTP_SECRET` text COLLATE utf8_unicode_ci,
  `ATTEMPTS` int(11) DEFAULT '0',
  `CONFIRMED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `DATE_SENT` datetime DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `ix_user_phone_auth_number` (`PHONE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_phone_auth`
--

LOCK TABLES `b_user_phone_auth` WRITE;
/*!40000 ALTER TABLE `b_user_phone_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_phone_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_profile_history`
--

DROP TABLE IF EXISTS `b_user_profile_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_profile_history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `EVENT_TYPE` int(11) DEFAULT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `UPDATED_BY_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_profile_history_user` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_profile_history`
--

LOCK TABLES `b_user_profile_history` WRITE;
/*!40000 ALTER TABLE `b_user_profile_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_profile_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_profile_record`
--

DROP TABLE IF EXISTS `b_user_profile_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_profile_record` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HISTORY_ID` int(11) NOT NULL,
  `FIELD` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATA` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `ix_profile_record_history_field` (`HISTORY_ID`,`FIELD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_profile_record`
--

LOCK TABLES `b_user_profile_record` WRITE;
/*!40000 ALTER TABLE `b_user_profile_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_user_profile_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_user_stored_auth`
--

DROP TABLE IF EXISTS `b_user_stored_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_user_stored_auth` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(18) NOT NULL,
  `DATE_REG` datetime NOT NULL,
  `LAST_AUTH` datetime NOT NULL,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TEMP_HASH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IP_ADDR` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ux_user_hash` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_user_stored_auth`
--

LOCK TABLES `b_user_stored_auth` WRITE;
/*!40000 ALTER TABLE `b_user_stored_auth` DISABLE KEYS */;
INSERT INTO `b_user_stored_auth` VALUES (1,1,'2019-10-17 11:06:51','2019-10-17 11:06:51','2e1646b3affb90dda721d5d17f4b0c85','N',2886991873);
/*!40000 ALTER TABLE `b_user_stored_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_utm_blog_comment`
--

DROP TABLE IF EXISTS `b_utm_blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_utm_blog_comment` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VALUE_ID` int(11) NOT NULL,
  `FIELD_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `VALUE_INT` int(11) DEFAULT NULL,
  `VALUE_DOUBLE` float DEFAULT NULL,
  `VALUE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_utm_BLOG_COMMENT_1` (`FIELD_ID`),
  KEY `ix_utm_BLOG_COMMENT_2` (`VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_utm_blog_comment`
--

LOCK TABLES `b_utm_blog_comment` WRITE;
/*!40000 ALTER TABLE `b_utm_blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_utm_blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_utm_blog_post`
--

DROP TABLE IF EXISTS `b_utm_blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_utm_blog_post` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VALUE_ID` int(11) NOT NULL,
  `FIELD_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `VALUE_INT` int(11) DEFAULT NULL,
  `VALUE_DOUBLE` float DEFAULT NULL,
  `VALUE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_utm_BLOG_POST_1` (`FIELD_ID`),
  KEY `ix_utm_BLOG_POST_2` (`VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_utm_blog_post`
--

LOCK TABLES `b_utm_blog_post` WRITE;
/*!40000 ALTER TABLE `b_utm_blog_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_utm_blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_utm_forum_message`
--

DROP TABLE IF EXISTS `b_utm_forum_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_utm_forum_message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VALUE_ID` int(11) NOT NULL,
  `FIELD_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `VALUE_INT` int(11) DEFAULT NULL,
  `VALUE_DOUBLE` float DEFAULT NULL,
  `VALUE_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_utm_FORUM_MESSAGE_1` (`FIELD_ID`),
  KEY `ix_utm_FORUM_MESSAGE_2` (`VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_utm_forum_message`
--

LOCK TABLES `b_utm_forum_message` WRITE;
/*!40000 ALTER TABLE `b_utm_forum_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_utm_forum_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_uts_blog_comment`
--

DROP TABLE IF EXISTS `b_uts_blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_uts_blog_comment` (
  `VALUE_ID` int(11) NOT NULL,
  `UF_BLOG_COMMENT_DOC` text COLLATE utf8_unicode_ci,
  `UF_BLOG_COMM_URL_PRV` int(11) DEFAULT NULL,
  PRIMARY KEY (`VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_uts_blog_comment`
--

LOCK TABLES `b_uts_blog_comment` WRITE;
/*!40000 ALTER TABLE `b_uts_blog_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_uts_blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_uts_blog_post`
--

DROP TABLE IF EXISTS `b_uts_blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_uts_blog_post` (
  `VALUE_ID` int(11) NOT NULL,
  `UF_BLOG_POST_DOC` text COLLATE utf8_unicode_ci,
  `UF_BLOG_POST_URL_PRV` int(11) DEFAULT NULL,
  `UF_GRATITUDE` int(18) DEFAULT NULL,
  PRIMARY KEY (`VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_uts_blog_post`
--

LOCK TABLES `b_uts_blog_post` WRITE;
/*!40000 ALTER TABLE `b_uts_blog_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_uts_blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_uts_forum_message`
--

DROP TABLE IF EXISTS `b_uts_forum_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_uts_forum_message` (
  `VALUE_ID` int(11) NOT NULL,
  `UF_FORUM_MES_URL_PRV` int(11) DEFAULT NULL,
  PRIMARY KEY (`VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_uts_forum_message`
--

LOCK TABLES `b_uts_forum_message` WRITE;
/*!40000 ALTER TABLE `b_uts_forum_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_uts_forum_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote`
--

DROP TABLE IF EXISTS `b_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CHANNEL_ID` int(18) NOT NULL DEFAULT '0',
  `C_SORT` int(18) DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ANONYMITY` int(11) NOT NULL DEFAULT '0',
  `NOTIFY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `AUTHOR_ID` int(18) DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `DATE_START` datetime NOT NULL,
  `DATE_END` datetime NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COUNTER` int(11) NOT NULL DEFAULT '0',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'html',
  `IMAGE_ID` int(18) DEFAULT NULL,
  `EVENT1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EVENT2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EVENT3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNIQUE_TYPE` int(18) NOT NULL DEFAULT '2',
  `KEEP_IP_SEC` int(18) DEFAULT NULL,
  `OPTIONS` int(18) DEFAULT '1',
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESULT_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_CHANNEL_ID` (`CHANNEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote`
--

LOCK TABLES `b_vote` WRITE;
/*!40000 ALTER TABLE `b_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_answer`
--

DROP TABLE IF EXISTS `b_vote_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_answer` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TIMESTAMP_X` datetime NOT NULL,
  `QUESTION_ID` int(18) NOT NULL DEFAULT '0',
  `C_SORT` int(18) DEFAULT '100',
  `IMAGE_ID` int(18) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `MESSAGE_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'html',
  `COUNTER` int(18) NOT NULL DEFAULT '0',
  `FIELD_TYPE` int(5) NOT NULL DEFAULT '0',
  `FIELD_WIDTH` int(18) DEFAULT NULL,
  `FIELD_HEIGHT` int(18) DEFAULT NULL,
  `FIELD_PARAM` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLOR` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_QUESTION_ID` (`QUESTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_answer`
--

LOCK TABLES `b_vote_answer` WRITE;
/*!40000 ALTER TABLE `b_vote_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_attached_object`
--

DROP TABLE IF EXISTS `b_vote_attached_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_attached_object` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OBJECT_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_VOTE_AO_1` (`OBJECT_ID`),
  KEY `IX_VOTE_AO_2` (`MODULE_ID`,`ENTITY_TYPE`,`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_attached_object`
--

LOCK TABLES `b_vote_attached_object` WRITE;
/*!40000 ALTER TABLE `b_vote_attached_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_attached_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_channel`
--

DROP TABLE IF EXISTS `b_vote_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_channel` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `SYMBOLIC_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_SORT` int(18) DEFAULT '100',
  `FIRST_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TIMESTAMP_X` datetime NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VOTE_SINGLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `USE_CAPTCHA` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_channel`
--

LOCK TABLES `b_vote_channel` WRITE;
/*!40000 ALTER TABLE `b_vote_channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_channel_2_group`
--

DROP TABLE IF EXISTS `b_vote_channel_2_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_channel_2_group` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `CHANNEL_ID` int(18) NOT NULL DEFAULT '0',
  `GROUP_ID` int(18) NOT NULL DEFAULT '0',
  `PERMISSION` int(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_VOTE_CHANNEL_ID_GROUP_ID` (`CHANNEL_ID`,`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_channel_2_group`
--

LOCK TABLES `b_vote_channel_2_group` WRITE;
/*!40000 ALTER TABLE `b_vote_channel_2_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_channel_2_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_channel_2_site`
--

DROP TABLE IF EXISTS `b_vote_channel_2_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_channel_2_site` (
  `CHANNEL_ID` int(18) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`CHANNEL_ID`,`SITE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_channel_2_site`
--

LOCK TABLES `b_vote_channel_2_site` WRITE;
/*!40000 ALTER TABLE `b_vote_channel_2_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_channel_2_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_event`
--

DROP TABLE IF EXISTS `b_vote_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_event` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `VOTE_ID` int(18) NOT NULL DEFAULT '0',
  `VOTE_USER_ID` int(18) NOT NULL DEFAULT '0',
  `DATE_VOTE` datetime NOT NULL,
  `STAT_SESSION_ID` int(18) DEFAULT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALID` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `VISIBLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `IX_USER_ID` (`VOTE_USER_ID`),
  KEY `IX_B_VOTE_EVENT_2` (`VOTE_ID`,`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_event`
--

LOCK TABLES `b_vote_event` WRITE;
/*!40000 ALTER TABLE `b_vote_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_event_answer`
--

DROP TABLE IF EXISTS `b_vote_event_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_event_answer` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `EVENT_QUESTION_ID` int(18) NOT NULL DEFAULT '0',
  `ANSWER_ID` int(18) NOT NULL DEFAULT '0',
  `MESSAGE` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`),
  KEY `IX_EVENT_QUESTION_ID` (`EVENT_QUESTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_event_answer`
--

LOCK TABLES `b_vote_event_answer` WRITE;
/*!40000 ALTER TABLE `b_vote_event_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_event_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_event_question`
--

DROP TABLE IF EXISTS `b_vote_event_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_event_question` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `EVENT_ID` int(18) NOT NULL DEFAULT '0',
  `QUESTION_ID` int(18) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IX_EVENT_ID` (`EVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_event_question`
--

LOCK TABLES `b_vote_event_question` WRITE;
/*!40000 ALTER TABLE `b_vote_event_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_event_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_question`
--

DROP TABLE IF EXISTS `b_vote_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_question` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TIMESTAMP_X` datetime NOT NULL,
  `VOTE_ID` int(18) NOT NULL DEFAULT '0',
  `C_SORT` int(18) DEFAULT '100',
  `IMAGE_ID` int(18) DEFAULT NULL,
  `QUESTION` text COLLATE utf8_unicode_ci NOT NULL,
  `QUESTION_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'html',
  `FIELD_TYPE` int(5) NOT NULL DEFAULT '0',
  `REQUIRED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `COUNTER` int(11) NOT NULL DEFAULT '0',
  `DIAGRAM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DIAGRAM_TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'histogram',
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE_NEW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_VOTE_ID` (`VOTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_question`
--

LOCK TABLES `b_vote_question` WRITE;
/*!40000 ALTER TABLE `b_vote_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b_vote_user`
--

DROP TABLE IF EXISTS `b_vote_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b_vote_user` (
  `ID` int(18) NOT NULL AUTO_INCREMENT,
  `COOKIE_ID` int(18) NOT NULL,
  `AUTH_USER_ID` int(18) DEFAULT NULL,
  `COUNTER` int(18) NOT NULL DEFAULT '0',
  `DATE_FIRST` datetime NOT NULL,
  `DATE_LAST` datetime NOT NULL,
  `LAST_IP` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_GUEST_ID` int(18) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UX_VOTE_COOKIE_USER` (`COOKIE_ID`,`AUTH_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b_vote_user`
--

LOCK TABLES `b_vote_user` WRITE;
/*!40000 ALTER TABLE `b_vote_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `b_vote_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-17 11:27:15
