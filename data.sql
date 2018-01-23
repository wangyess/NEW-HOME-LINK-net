-- MySQL dump 10.13  Distrib 5.7.20, for osx10.12 (x86_64)
--
-- Host: localhost    Database: house
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `house`
--

DROP TABLE IF EXISTS `house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `house` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` double(8,2) DEFAULT NULL COMMENT '面积',
  `unit_price` double(8,2) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `room_count` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '几室几厅',
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '朝向',
  `community` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '隶属小区',
  `image` text COLLATE utf8mb4_unicode_ci,
  `visiting_count` int(10) unsigned DEFAULT NULL,
  `floor` int(11) DEFAULT NULL COMMENT '楼层',
  `max_floor` int(11) DEFAULT NULL COMMENT '最大楼层',
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系人',
  `contact_phone` int(11) DEFAULT NULL COMMENT '联系电话',
  `decoration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '装修状态',
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '楼龄',
  `official_limit` datetime DEFAULT NULL COMMENT '产权年限至',
  `heat_supply` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '供暖',
  `elevator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电梯',
  `detail` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house`
--

LOCK TABLES `house` WRITE;
/*!40000 ALTER TABLE `house` DISABLE KEYS */;
INSERT INTO `house` VALUES (5,'大禹加州湾的大海',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-13 22:16:31','2018-01-13 22:16:31'),(7,'一道顿悟','阿萨德',233.00,NULL,NULL,'阿萨德','拿书接电话','撒地方那是',NULL,NULL,NULL,NULL,'sad',111,'true',NULL,NULL,'true','true','阿双方近方法撒','2018-01-17 05:26:12','2018-01-17 05:26:12'),(8,'这是','asdasd',2243.00,NULL,NULL,'asdas','asd','asd',NULL,NULL,NULL,NULL,'阿萨德',243354,'true',NULL,NULL,'true','true','dgffdsgha','2018-01-17 05:50:21','2018-01-17 05:50:21'),(9,'水电费回家啊2','sa',12.00,NULL,NULL,'沙发沙发','阿斯蒂芬','阿收费单发',NULL,NULL,NULL,NULL,'sad父',3214,'true',NULL,NULL,'true','true','大哥发的规范合格','2018-01-17 05:52:29','2018-01-17 05:52:29'),(10,'按计划是否2','奥斯卡机房电脑',1243.00,NULL,NULL,'阿斯蒂芬你','阿萨德发挥','三',NULL,NULL,NULL,NULL,'阿发',634,'true',NULL,NULL,'true','true','大师傅','2018-01-17 05:53:27','2018-01-17 05:53:27'),(11,'风风光光','对对对',234.00,NULL,NULL,'万维网','发佛山市','阿萨斯多',NULL,NULL,NULL,NULL,'阿斯蒂芬',12434,'true',NULL,NULL,'true','true','萨法发孤鸿寡鹄','2018-01-17 05:54:00','2018-01-17 05:54:00'),(12,'防守反击','沙发大',243.00,NULL,NULL,'傻XZM的刹那间啊','傻大姐','爱神',NULL,NULL,NULL,NULL,'复合弓',3234565,'true',NULL,NULL,'true','true','大富豪','2018-01-17 05:54:20','2018-01-17 05:54:20'),(13,'天生就对','是打饭',1324.00,NULL,NULL,'撒解放东路','爱的色放就和你','是否能自己的',NULL,NULL,NULL,NULL,'阿萨德',23345,'true',NULL,NULL,'true','true','第三个机会','2018-01-17 05:54:39','2018-01-17 05:54:39'),(14,'哦啊上课','阿萨德免费',132.00,NULL,NULL,'电饭锅','啊三方面你就','爱神发你',NULL,NULL,NULL,NULL,'阿萨德',3222,'true',NULL,NULL,'true','true','分工会更好','2018-01-17 05:54:59','2018-01-17 05:54:59'),(15,'科技大道','到底是附近',324.00,NULL,NULL,'双方都能杀','地方你看我','阿萨人接',NULL,NULL,NULL,NULL,'搜索',111123,'true',NULL,NULL,'true','true','第三方个梵蒂冈','2018-01-17 05:55:15','2018-01-17 05:55:15'),(16,'发给大家看的说法','爱神的箭开发阿发',329.00,NULL,NULL,'大师傅','大法积分','而非hi我',NULL,NULL,NULL,NULL,'大师傅您好',4577,'true',NULL,NULL,'true','true','发的撒娇','2018-01-17 05:55:43','2018-01-17 05:55:43'),(17,'阿发啊啊','台湾是否',35.00,NULL,NULL,'撒地方','电风扇','刚发的',NULL,NULL,NULL,NULL,'是打饭',21354,'true',NULL,NULL,'true','true','阿萨德刚发给','2018-01-17 05:56:00','2018-01-17 05:56:00'),(18,'没多久奥斯卡','安省得麻烦',233.00,NULL,NULL,'安省得麻烦','手续费那','是大是',NULL,NULL,NULL,NULL,'撒饭',123321,'true',NULL,NULL,'true','true','放到双卡双待','2018-01-17 05:57:14','2018-01-17 05:57:14'),(19,'防守打法','阿萨德',321.00,NULL,NULL,'国防生的','阿萨德','阿二套房',NULL,NULL,NULL,NULL,'阿萨德',12488,'true',NULL,NULL,'true','true','大锅饭','2018-01-17 05:57:36','2018-01-17 05:57:36'),(20,'大师傅','阿萨德',122.00,NULL,NULL,'说过话','吗是大','哦啊素服',NULL,NULL,NULL,NULL,'阿萨德',12488,'true',NULL,NULL,'true','true','大锅饭','2018-01-17 05:57:59','2018-01-17 05:57:59');
/*!40000 ALTER TABLE `house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2018_01_14_052406_create_table_user',1),(2,'2018_01_14_052427_create_table_house',1),(3,'2018_01_14_161739_chang_table_user_phone',2),(4,'2016_06_01_000001_create_oauth_auth_codes_table',3),(5,'2016_06_01_000002_create_oauth_access_tokens_table',3),(6,'2016_06_01_000003_create_oauth_refresh_tokens_table',3),(7,'2016_06_01_000004_create_oauth_clients_table',3),(8,'2016_06_01_000005_create_oauth_personal_access_clients_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','MU3QRpnMuOepzbJn725Vd8gp6dzDUq2hwzALPQfk','http://localhost',1,0,0,'2018-01-17 03:35:09','2018-01-17 03:35:09'),(2,NULL,'Laravel Password Grant Client','e4ggqe3YRi3yvWDfKzCAsvvK4lfjTtTCahLpOzlE','http://localhost',0,1,0,'2018-01-17 03:35:09','2018-01-17 03:35:09');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2018-01-17 03:35:09','2018-01-17 03:35:09');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` bigint(20) DEFAULT NULL,
  `user_email` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'wangye','$2y$10$9OHQ/knT1fYDz2zyYNK5mezFODW18GywFqnHmeCrlk/yCbOEpYIK6',NULL,NULL,'admin','2018-01-13 23:04:41','2018-01-13 23:04:41'),(4,'youknow','$2y$10$DQ3m/143u6WG0V5QowJqLOetOvPUICc4SGgdcdZK9PpUqa2Xkt6PO',176,'936886321@qq.com','admin','2018-01-14 07:20:26','2018-01-14 07:20:26'),(5,'dahuaxi','$2y$10$IJyVUUCcbc5DRBJr.R5abe2xQQkDHirunKW5QMF3.M/QIe49NAtvC',NULL,NULL,'user','2018-01-14 07:27:10','2018-01-14 07:27:10'),(6,'dahuaxsi','$2y$10$r9PphPeVZJJHUztj8e27Lurch/Yoqm8HWi5io9522mhYYPvRWGdpW',NULL,NULL,'user','2018-01-14 07:42:35','2018-01-14 07:42:35'),(7,'dahuaxssia','$2y$10$MY.IT05veOfLwuNWON3xA.A4GjOjpKePDtvukM/zez1cF2cGtMLfO',NULL,NULL,'user','2018-01-14 07:44:14','2018-01-14 07:44:14'),(8,'李云龙的爱情','$2y$10$zZxdTEOnddOWqxZyJQGrVeeIse22ZzP71UI.pZmpBSuo98Z2Sf4hS',111,'999','user','2018-01-14 07:48:03','2018-01-14 07:48:03'),(9,'高偲丽傻逼的','$2y$10$iu3zb4OuhiXL0Ag6vAzxq.xf7YEjEcyxJbB/M5EjKM5mFTA93.jJ2',99,'88','user','2018-01-14 07:49:10','2018-01-14 07:49:10'),(10,'wangyess','$2y$10$kDkUOBOSMSpYF6YdyzIwWOeWom1wNGeWxfl2GW0Yty4XBoosTmvKC',11,'936886321@qq.com','user','2018-01-14 07:55:58','2018-01-14 07:55:58'),(11,'城门小胡同','$2y$10$3cFt8j.yv7vrYs.uagnQBu0lr0LZvxcjtBwaZE.meBlRot4RdMRMy',17640357440,'936886321@qq.com','user','2018-01-14 08:23:45','2018-01-14 08:23:45'),(12,'段鸿飞','$2y$10$tyy23LZwSl4sQx/jdCPfYOnFzJKECzn3H4Ofu0qWrIzT51KZcCVbW',1122,'936886321@qq.com','user','2018-01-15 22:51:17','2018-01-15 22:51:17'),(13,'sad撒','$2y$10$Z2h8ueasJTSY5byxxtuPiuBOWnFaYXonM1FRxFpq0789NwryYOImq',213442,'2134','user','2018-01-15 22:52:58','2018-01-15 22:52:58'),(14,'XIAOIMI','$2y$10$n9SnwIIMOd7rQYAPS5IA.OSXT59GxqiByoKNmi31TJeAIcX13XSN2',11,'223','user','2018-01-15 22:58:08','2018-01-15 22:58:08'),(15,'sdasdaa','$2y$10$QBHUiaGUNFVYq3mWAMwQsOkIOqual/hLy9bKRFTVNW.RxY4eJT6mu',33,'44','user','2018-01-15 23:03:45','2018-01-15 23:03:45'),(16,'jjssss','$2y$10$TosVEtcaUc1gRSp9r6Uj5uZON29tbcbEFxOrGHupk7RcrxsSBhWUe',3432,'34334','user','2018-01-15 23:05:30','2018-01-15 23:05:30'),(17,'sadasd','$2y$10$klkdWTWtT5FqyGkLm62iFeOs9KhjijaUBlmRK3dF3DBcqtU1JqLhK',1111,'111','user','2018-01-15 23:06:38','2018-01-15 23:06:38'),(18,'ssssssdd','$2y$10$zNTDyA0Boly/MrKDhYGz0Oq7ihk7Y/pGQJ2rITaWBE2Z0LCKtN72u',33,'222','user','2018-01-15 23:07:34','2018-01-15 23:07:34'),(19,'sdddffgh','$2y$10$M.yykBOtJt./.C9WTIDIF.acW07LhxsMUB0UYVLeNBeVG0vlle27O',11111,'ffgfhjhj','user','2018-01-15 23:08:01','2018-01-15 23:08:01'),(20,'ssdddfa','$2y$10$BDQuaIRZwG0HmFGqRJfAsuKBec9roM0xNsGXZTAEs.RWZumMAtQ62',112,'22','user','2018-01-15 23:08:18','2018-01-15 23:08:18'),(21,'wsssdd','$2y$10$I9SJreZ6jo/Fdpr.933Gq.lk10IR8JqCnXiJsTZmNRdGdziANSFVm',543,'235','user','2018-01-15 23:09:02','2018-01-15 23:09:02'),(22,'dashabia','$2y$10$yTut6neOK9kt83e1M7ruLuMcSAldGPVJCcYb9q4wgQBy6qPfquD5.',4532,'2355','user','2018-01-15 23:10:48','2018-01-15 23:10:48'),(23,'asdasdasd','$2y$10$4Z96GTUj77LAagYvEt5iXexq/gVkewvbh7UO5YjGbCYw52qQV4JN6',6534576,'235244','user','2018-01-15 23:11:25','2018-01-15 23:11:25'),(24,'asdasfdafs','$2y$10$nQVFdBHfrRnpefe29qjeau.mMMP4NrwH9I1bXeyecKH9Hl1BRRbDi',4653,'342','user','2018-01-15 23:16:51','2018-01-15 23:16:51'),(25,'dashabile','$2y$10$ucDiPTIkMsT16av2uSrk.OteskdVLkFqX8FQ.d7xj3SxXKCEE501C',99088,'00098','user','2018-01-15 23:23:44','2018-01-15 23:23:44'),(26,'wangye_ss','$2y$10$XqTeU6cdvazR72ePI2rIhumfVxQwyC2nXZOZH6XSaEpoKF66mnUMK',17640357440,'936886321@qq.com','user','2018-01-15 23:49:06','2018-01-15 23:49:06');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-23 10:40:05
