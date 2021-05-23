-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: coffeeshop
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_role`
--

DROP TABLE IF EXISTS `admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_role` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role`
--

LOCK TABLES `admin_role` WRITE;
/*!40000 ALTER TABLE `admin_role` DISABLE KEYS */;
INSERT INTO `admin_role` VALUES (1,1,1,NULL,NULL),(2,2,2,NULL,NULL),(3,3,3,NULL,NULL);
/*!40000 ALTER TABLE `admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_username_unique` (`username`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Huynh Dong','huynhdong123','$2y$10$Cnsgzmroy3N58OSXi.CL8ez.UMr0RJ1ET0Kj0qYq3lIXCoa60fJHa','d0129530646@gmail.com','2020-05-10 03:47:38','2020-05-10 03:47:38'),(2,'huynh dong','huynhdong','$2y$10$kR/VW5.QmHDJxQ3feHJy7en8o7UmjnkfX8sR5a/AqXF/BDj4jPLlS','3120217020@ued.udn.vn','2020-05-26 01:50:28','2020-05-26 01:50:28'),(3,'huynh dong','dongprokuto3','$2y$10$kUQraUTZso22T.9HDT1B5.FJIpWkeqoARAio.zdQIxd8YOfuTCHWK','d01295306466@gmail.com','2020-05-26 01:51:44','2020-05-26 01:51:44');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'Huynh','Dong','6/3/2020','12:00am','01233122332','asdsdasdsad','1','2020-06-01 22:12:59','2020-06-01 23:39:39'),(2,'dasdas','dsadasdsa','6/6/2020','12:00am','01233122332','dsadsadsa','1','2020-06-01 23:19:53','2020-06-01 23:40:27'),(3,'john','honson','6/12/2020','1:30am','01233122332','dsadasdsadsa','2','2020-06-01 23:27:16','2020-06-01 23:41:11'),(4,'qweqwe','qweqwe','6/12/2020','1:00am','01233122332','asddasdsadsa','0','2020-06-05 00:00:51','2020-06-05 00:00:51'),(5,'hello','cu','10/7/2020','12:00am','01233122332','alo alo 123','2','2020-06-12 02:49:55','2020-06-12 02:55:58'),(6,'asd','qwe','7/6/2020','12:00am','01233122332','ok chua do','0','2020-06-18 10:09:46','2020-06-18 10:09:46');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (7,1,'STARTER','2020-05-17 00:06:26','2020-05-17 00:06:26'),(8,1,'MAIN DISH','2020-05-17 00:06:50','2020-05-17 00:06:50'),(9,1,'DESSERTS','2020-05-17 00:07:04','2020-05-17 00:07:04'),(10,1,'DRINKS','2020-05-17 00:07:13','2020-05-17 00:07:13');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,5,6,'hello','2020-06-15 03:41:29','2020-06-15 03:41:29'),(2,3,6,'ok chua do','2020-06-18 09:33:58','2020-06-18 09:33:58'),(3,3,6,'haha vui the','2020-06-30 06:02:55','2020-06-30 06:02:55');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'dsadsadsa','admin1@gmail.com','asdasdasdsadsadas','sdaasdasdsasadsadsa','2020-05-20 20:53:35','2020-05-20 20:53:35'),(2,'huynh dong','bzayti5@gmail.com','dsaasdd','ddsasd','2020-05-20 20:58:22','2020-05-20 20:58:22'),(3,'huynh dong123','admin1@gmail.com','dsadsadasdsad','dsadsadsadsadasdas','2020-05-20 21:01:14','2020-05-20 21:01:14');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `street_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Huynh','Dong','Viet Nam','ton dan da nang','01233122332','3120217020@ued.udn.vn','2020-06-06 01:36:12','2020-06-06 01:36:12'),(2,'qweqwe','qweqwe','Viet Nam','ton dan da nang','01233122332','3120217020@ued.udn.vn','2020-06-06 03:07:09','2020-06-06 03:07:09'),(3,'Huynh','Dong','Viet Nam','dsadsa','01235353553','d01295306466@gmail.com','2020-06-30 00:52:10','2020-06-30 00:52:10');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_product`
--

DROP TABLE IF EXISTS `invoice_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `quantity` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_product`
--

LOCK TABLES `invoice_product` WRITE;
/*!40000 ALTER TABLE `invoice_product` DISABLE KEYS */;
INSERT INTO `invoice_product` VALUES (1,1,7,4,'2020-06-06 01:36:12','2020-06-06 01:36:12'),(2,1,6,1,'2020-06-06 01:36:12','2020-06-06 01:36:12'),(3,2,5,1,'2020-06-06 03:07:09','2020-06-06 03:07:09'),(4,2,6,1,'2020-06-06 03:07:09','2020-06-06 03:07:09'),(5,2,7,2,'2020-06-06 03:07:09','2020-06-06 03:07:09'),(6,3,5,4,'2020-06-30 00:52:10','2020-06-30 00:52:10');
/*!40000 ALTER TABLE `invoice_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `total_price` decimal(8,2) unsigned NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,1,15.00,'0','2020-06-06 01:36:12','2020-06-06 01:36:12'),(2,2,12.00,'0','2020-06-06 03:07:09','2020-06-06 03:07:09'),(3,3,12.00,'0','2020-06-30 00:52:10','2020-06-30 00:52:10');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_100000_create_password_resets_table',1),(2,'2016_06_01_000001_create_oauth_auth_codes_table',1),(3,'2016_06_01_000002_create_oauth_access_tokens_table',1),(4,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(5,'2016_06_01_000004_create_oauth_clients_table',1),(6,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(7,'2017_10_08_000001_create_oauth_access_token_providers_table',1),(8,'2020_05_10_104333_create_admins',1),(9,'2020_05_12_142909_create_roles',1),(10,'2020_05_12_144035_create_admin_role_pivot_table',1),(11,'2020_05_13_065858_create_category_table',1),(12,'2020_05_17_062250_create_products',1),(13,'2020_05_17_063257_create_customer',1),(14,'2020_05_19_150451_create_invoice_product',1),(15,'2020_05_19_150828_create_invoices',1),(16,'2020_05_21_032050_create_contacts_table',1),(17,'2020_05_25_041622_create_users_table',1),(18,'2020_05_25_083150_create_posts_table',1),(19,'2020_05_25_094234_create_comments_table',1),(20,'2020_05_26_115108_create_replies_table',1),(21,'2020_05_28_145231_create_bookings_talbe',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_token_providers`
--

DROP TABLE IF EXISTS `oauth_access_token_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_token_providers` (
  `oauth_access_token_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`oauth_access_token_id`),
  CONSTRAINT `oauth_access_token_providers_oauth_access_token_id_foreign` FOREIGN KEY (`oauth_access_token_id`) REFERENCES `oauth_access_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token_providers`
--

LOCK TABLES `oauth_access_token_providers` WRITE;
/*!40000 ALTER TABLE `oauth_access_token_providers` DISABLE KEYS */;
INSERT INTO `oauth_access_token_providers` VALUES ('3dd59080462c1c21456d15297591ba7e9eb693ad6f4a38abf201785c8f50e6b53c559c9bc4ccf3ff','admins','2020-06-16 20:52:11','2020-06-16 20:52:11'),('48ddba6a6ffd20a6c3d4f4a9563620dcf0ac190a2abd79fa89c30ed44f7cbbab8165b38d97ea8136','admins','2020-06-16 21:26:43','2020-06-16 21:26:43'),('5399c29e5cc50079bf75638fc613c0fcf545fc1be7432610b5d0970ff210360e82c423fc095b2b4e','admins','2020-06-16 21:27:35','2020-06-16 21:27:35'),('6683696ed1f974779d548d741c303d02af6693cc22da5cf1d94f76a50988fce007882b8f26c48519','admins','2020-06-16 21:13:54','2020-06-16 21:13:54'),('84384e55388a568046c6ca86bd8bed646f848d24fc68fa84d94682735078f1fa1a5a5348d9e25ead','users','2020-06-16 21:01:52','2020-06-16 21:01:52'),('87fb00eec62a5244930c1534ddfde9070b797fcd5993d8faa2204b7b24f47a402b6d6d18eec30aa5','users','2020-06-16 21:05:37','2020-06-16 21:05:37');
/*!40000 ALTER TABLE `oauth_access_token_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('155be512ec232c862d00f8ca86c4561e7895a16ebf731f2ced848728a9c5a69279e085de7e0a0196',3,1,'Personal Access Token','[]',0,'2020-06-15 03:55:25','2020-06-15 03:55:25','2021-06-15 10:55:25'),('2829f167d4c1a6e626f6909996e36debbecd5ea0719b9435bdbc190690977be1a495c2a177b03167',2,1,'Personal Admin Access Token','[]',0,'2020-06-17 10:23:56','2020-06-17 10:23:56','2021-06-17 17:23:56'),('2f39387cf887e01db64b5144a4884ba7205fd215e5952e597208345d86056c14d8c35dd68dfc94fa',3,1,'Personal Access Token','[]',0,'2020-06-15 20:48:51','2020-06-15 20:48:51','2021-06-16 03:48:51'),('3dd59080462c1c21456d15297591ba7e9eb693ad6f4a38abf201785c8f50e6b53c559c9bc4ccf3ff',2,2,NULL,'[]',0,'2020-06-16 20:52:10','2020-06-16 20:52:10','2021-06-17 03:52:10'),('48ddba6a6ffd20a6c3d4f4a9563620dcf0ac190a2abd79fa89c30ed44f7cbbab8165b38d97ea8136',2,2,NULL,'[]',1,'2020-06-16 21:26:43','2020-06-16 21:26:43','2021-06-17 04:26:43'),('5399c29e5cc50079bf75638fc613c0fcf545fc1be7432610b5d0970ff210360e82c423fc095b2b4e',2,2,NULL,'[]',0,'2020-06-16 21:27:35','2020-06-16 21:27:35','2021-06-17 04:27:35'),('5afa0a1a1a9bd1b3b0db45ad5105c253691e76380626fb81519c14504c198fa9bc59520f03ef3230',3,1,'Personal Access Token','[]',0,'2020-06-16 23:04:05','2020-06-16 23:04:05','2021-06-17 06:04:05'),('63a246bf2a737478c00a65c380565acde8ef67ecb1935a2045c36ea922396fad10d31454da13ff03',2,1,'Personal Admin Access Token','[]',1,'2020-06-17 21:10:53','2020-06-17 21:10:53','2021-06-18 04:10:53'),('6683696ed1f974779d548d741c303d02af6693cc22da5cf1d94f76a50988fce007882b8f26c48519',2,2,NULL,'[]',0,'2020-06-16 21:13:54','2020-06-16 21:13:54','2021-06-17 04:13:54'),('677e7a056047f00be5e69368564bb3dcf7a5ffa2e07b3d19627067fc01ceae00daa98db5d25b62fc',3,1,'Personal Access Token','[]',0,'2020-06-15 04:54:07','2020-06-15 04:54:07','2021-06-15 11:54:07'),('7f67d43a72c039faf96f1046b6e07b2fa73c64c6886ae85cd382b0f31e6b1751a5cae7b49e4aa78c',3,1,'Personal Access Token','[]',0,'2020-06-17 10:04:58','2020-06-17 10:04:58','2021-06-17 17:04:58'),('84384e55388a568046c6ca86bd8bed646f848d24fc68fa84d94682735078f1fa1a5a5348d9e25ead',3,1,'Personal Access Token','[]',0,'2020-06-16 21:01:52','2020-06-16 21:01:52','2021-06-17 04:01:52'),('87fb00eec62a5244930c1534ddfde9070b797fcd5993d8faa2204b7b24f47a402b6d6d18eec30aa5',3,2,NULL,'[]',0,'2020-06-16 21:05:37','2020-06-16 21:05:37','2021-06-17 04:05:37'),('953fb604d0663051230bfa7305948464cb821b002e8a506a169915cee94c53d1797d90f09b448181',5,1,'Personal Access Token','[]',1,'2020-06-15 03:24:52','2020-06-15 03:24:52','2021-06-15 10:24:52'),('e720eda99714b00a2b5355a2785417cd5c4b8d7d59ba900a93c30a1cb77dc638d3305cccd2f81b11',2,1,'Personal Access Token','[]',1,'2020-06-17 10:11:31','2020-06-17 10:11:31','2021-06-17 17:11:31'),('fd2f1a6667166a085fa4ea7a50fa652848cd3caa167fb5a549fb93b3550e496958d3ab60a1437e94',1,1,'Personal Admin Access Token','[]',1,'2020-06-17 09:31:01','2020-06-17 09:31:01','2021-06-17 16:31:01');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','jWlNekBu9VhAjNzbfPSpinIyT4Ct7oEIwS3Lpa6t','http://localhost',1,0,0,'2020-06-14 02:49:16','2020-06-14 02:49:16'),(2,NULL,'Laravel Password Grant Client','VjSMNNg7sGJTdEF6GzjCK3o5MrBpLr8rAUzlXTHB','http://localhost',0,1,0,'2020-06-14 02:49:16','2020-06-14 02:49:16'),(3,3,'Laravel Personal Admin Access Client','dNtZOpl5l3Ta0JHh3sZC6Br4atiiLfNbuJR5BC1m','http://localhost',0,0,0,'2020-06-15 04:13:17','2020-06-15 04:13:17');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2020-06-14 02:49:16','2020-06-14 02:49:16');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('2996dde390684baaa17b520eeab6c660407d4bc6a9450a41fa464383337efcb0008c17183a2f90e2','3dd59080462c1c21456d15297591ba7e9eb693ad6f4a38abf201785c8f50e6b53c559c9bc4ccf3ff',0,'2021-06-17 03:52:11'),('9d777b97ba66be4f0397b6b715212175bcdefd7c81887cbb4cdef1a7695105d675595fdb5728580f','48ddba6a6ffd20a6c3d4f4a9563620dcf0ac190a2abd79fa89c30ed44f7cbbab8165b38d97ea8136',1,'2021-06-17 04:26:43'),('9de59adfbb213008bb11265c5badb31db686063880fc5870a205a77fcd5c7efc4573363fc8e111ec','5399c29e5cc50079bf75638fc613c0fcf545fc1be7432610b5d0970ff210360e82c423fc095b2b4e',0,'2021-06-17 04:27:35'),('c0301afa8e5dc234675103c09255ba0c85eae3d4526708c0421d818e25e7fd8c8783566a282067dc','87fb00eec62a5244930c1534ddfde9070b797fcd5993d8faa2204b7b24f47a402b6d6d18eec30aa5',0,'2021-06-17 04:05:37'),('c04183fd6c27362f0fa7d2f5634ae0b6c15e7257a5612493db59dab91155229964fa455021184f6e','6683696ed1f974779d548d741c303d02af6693cc22da5cf1d94f76a50988fce007882b8f26c48519',0,'2021-06-17 04:13:54');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` bigint unsigned NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url_thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `view` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (6,1,'Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee','<h1>Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee</h1>\r\n\r\n<p>Coffee and chocolate are often compared thanks to the overlap between their growing regions and the similarities in flavor notes.&nbsp; Both coffee and cacao&nbsp;share a huge flavor profile; over 600 aromatic compounds in cacao and more than 1000 in coffee!&nbsp;Let&rsquo;s dig into more similarities and differences between the two gorgeous plants!<br />\r\n<strong>Differences</strong></p>\r\n\r\n<p>Coffee and cacao come obviously from two very different plants, from two different continents.&nbsp; Cocoa comes from Theobroma cacao also known as &lsquo;fruit of the gods&rsquo;- an evergreen tree with fruits and flowers growing directly on its trunk. An oblong fruit, called a pod, differs in size, depending on species and is as colorful as one can imagine (red, yellow, purple, mixed colors) and each pod contains 20-60 cocoa beans, surrounded by sugary and fragrant pulp. Approximately 7-14 pods are necessary to produce 450 grams of cocoa beans. Just to remind, coffee beans come from coffee cherries that produce two beans per cherry.</p>\r\n\r\n<p><img alt=\"cacao pods\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/cacao%20nibs.JPG?itok=yW8vrgoN\" /></p>\r\n\r\n<p>Just like coffee trees, cacao flourishes in cocoa belt: along or near the Equator in Latin America, the tropics of western Africa, Asia and India. Originaly, Lower Amazon (South America) is home to cacao, yet now is best grown in Africa. And coffee comes from Africa and Arabia (Ethiopia and Yemen), and now is best grown in South America, kind of a switch there, but it works. ?<img alt=\"cocoa fruit\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/IMG_7712.JPG?itok=bxwxOGIo\" /></p>\r\n\r\n<p>Coffee&nbsp;has&nbsp;two main species: Arabica and Robusta, from which various varieties have developed over time (e.g. Caturra, Typica, Bourbon, Castillo). Cocoa beans also have different varietals &ndash; researchers are still finding new genetics, but now we know that there are more than 10 major families of cacao (before cacao was classified into only 3 varieties/genetics - Criollo/Forastero/Trinitario). And CCN-51, which is a clone with high yield, great resistance to diseases. Criollo is delicate, fine, more expensive, white beans but less productive. Forastero is more disease resistant, heartier yet poorer quality. Trinitario is the Goldilocks in-between. Each varietal has unique characteristics in terms of appearance and especially flavor. Importantly, every step of the process has influence over its end-flavor. The main guys are: genetics, terroir and fermentation at origin, and roasting and conching (just for chocolate). Even transportation and storing will have an impact.</p>\r\n\r\n<p><img alt=\"theobroma cacao\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/theobroma%20cacao.JPG?itok=4rn8gjlZ\" /></p>\r\n\r\n<p>Additionally, chocolate and coffee differ in its description usage of &ldquo;dark&rdquo;. For chocolate, a &ldquo;dark&rdquo; chocolate is a reference to the ratio of cocoa solids to other ingredients. Thus the higher the concentration of cocoa solids and cocoa butter, the more &ldquo;dark&rdquo; it is. Craft chocolate bar is made using very few ingredients, sometimes only two: cocoa and sugar. However, when talking about coffee, &ldquo;dark&rdquo; means the type of roast. A dark roast means the coffee was over roasted to achieve a specific flavor profile, such as smokey, burnt and caramel tasting notes. A light roast means that the coffee was a bit less roasted and preserves flavors of the bean&rsquo;s origin like the fruity and floral notes.</p>\r\n\r\n<h2><strong>Similarities</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>es, the beans come from a different plant, but they serve quite a similar purpose: coffee and cacao should stimulate. We talk about those alkaloids, caffeine for coffee and theobromine for cacao. Cocoa was a ceremonial drink of Mayan and Aztek gods, then preferred by European royalty and much later became available to the general public.</p>\r\n\r\n<p>So both beans contain significant amounts of antioxidants - cacao more than coffee. Theobromine only occurs in cacao and tea,&nbsp;<a href=\"https://www.nutritionadvance.com/theobromine-benefits/\">thus it stimulates mildly and less effectively as caffeine.</a>&nbsp;&nbsp;(FYI A 70% dark chocolate bar can have as much as 810 mg of theobromine!) Also, those two play a role in keeping our brain and cognition sharp as we age. Dietary flavanoids found in cacao have been proved to protect against neuroinflammation and promote learning and memory. Our cup of Joe or caffeine has been shown to promote learning and memory with just a cup a day!</p>\r\n\r\n<p>The processes of fermentation, drying and roasting has many parallels. Let&rsquo;s look into those. As both fruits ripen at various times, manual picking from small farmers is&nbsp;required. Both Theobroma cacao and Coffea Arabica needs about 5 years before producing berries or cherries. So after harvesting, cacao pods are opened, beans are removed and piled into large wooden containers for fermentation (covered with banana leaves) for 2-7 or sometimes even 10 days, depending on variety. Beans are turned in order to ferment evenly. During fermentation, a number of chemical reactions occur which help develop flavor.&nbsp;</p>\r\n\r\n<p><img alt=\"coffee tree nursery\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/1%20-%20coffee%20trees%20in%20a%20nursery_0.JPG?itok=OK49S8aO\" /></p>\r\n\r\n<p>As for coffee, many options for processing: dry, wet, honey, anaerobic and so on. Either process removes the pulp from the beans while developing varying degrees of aroma, body, acidity that compose the bean&rsquo;s flavor. Both beans are then dried in the sun to reduce moisture levels.</p>\r\n\r\n<p>Coffee beans then undergo milling, hulling, cleaning, grading, and polishing the green coffee beans. The post-harvest process is crucial for both beans alike as to ensure properly developed flavors and quality.&nbsp; So here comes the roasting part. Both cocoa and coffee beans are roasted to draw out the unique flavors of the bean&rsquo;s origin. This requires technique on the part of chocolate makers and coffee roasters, who work to find the right balance in the roasting.</p>\r\n\r\n<p><strong>Do you want to know more about cacao roasting?</strong></p>\r\n\r\n<p><a href=\"https://www.youtube.com/watch?v=HM2eOm3-ws4\" target=\"_blank\">Roasting Cacao - Episode 2 - Craft Chocolate TV</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>','thumbpost/1590465427.jpg','cacao-and-coffea-the-differences-and-similarities-of-chocolate-and-coffee','KEYWORDS,cacao,chocolate,coffee,flavor,flavor,pairing,flavour','1',0,'2020-05-25 20:57:07','2020-06-06 03:32:11'),(7,1,'Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee','<h1>Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee</h1>\n \n        <p>Coffee and chocolate are often compared thanks to the overlap between their growing regions and the similarities in flavor notes.&nbsp; Both coffee and cacao&nbsp;share a huge flavor profile; over 600 aromatic compounds in cacao and more than 1000 in coffee!&nbsp;Let&rsquo;s dig into more similarities and differences between the two gorgeous plants!<br />\n        <strong>Differences</strong></p>\n        \n        <p>Coffee and cacao come obviously from two very different plants, from two different continents.&nbsp; Cocoa comes from Theobroma cacao also known as &lsquo;fruit of the gods&rsquo;- an evergreen tree with fruits and flowers growing directly on its trunk. An oblong fruit, called a pod, differs in size, depending on species and is as colorful as one can imagine (red, yellow, purple, mixed colors) and each pod contains 20-60 cocoa beans, surrounded by sugary and fragrant pulp. Approximately 7-14 pods are necessary to produce 450 grams of cocoa beans. Just to remind, coffee beans come from coffee cherries that produce two beans per cherry.</p>\n        \n        <p><img alt=\"cacao pods\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/cacao%20nibs.JPG?itok=yW8vrgoN\" /></p>\n        \n        <p>Just like coffee trees, cacao flourishes in cocoa belt: along or near the Equator in Latin America, the tropics of western Africa, Asia and India. Originaly, Lower Amazon (South America) is home to cacao, yet now is best grown in Africa. And coffee comes from Africa and Arabia (Ethiopia and Yemen), and now is best grown in South America, kind of a switch there, but it works. ?<img alt=\"cocoa fruit\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/IMG_7712.JPG?itok=bxwxOGIo\" /></p>\n        \n        <p>Coffee&nbsp;has&nbsp;two main species: Arabica and Robusta, from which various varieties have developed over time (e.g. Caturra, Typica, Bourbon, Castillo). Cocoa beans also have different varietals &ndash; researchers are still finding new genetics, but now we know that there are more than 10 major families of cacao (before cacao was classified into only 3 varieties/genetics - Criollo/Forastero/Trinitario). And CCN-51, which is a clone with high yield, great resistance to diseases. Criollo is delicate, fine, more expensive, white beans but less productive. Forastero is more disease resistant, heartier yet poorer quality. Trinitario is the Goldilocks in-between. Each varietal has unique characteristics in terms of appearance and especially flavor. Importantly, every step of the process has influence over its end-flavor. The main guys are: genetics, terroir and fermentation at origin, and roasting and conching (just for chocolate). Even transportation and storing will have an impact.</p>\n        \n        <p><img alt=\"theobroma cacao\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/theobroma%20cacao.JPG?itok=4rn8gjlZ\" /></p>\n        \n        <p>Additionally, chocolate and coffee differ in its description usage of &ldquo;dark&rdquo;. For chocolate, a &ldquo;dark&rdquo; chocolate is a reference to the ratio of cocoa solids to other ingredients. Thus the higher the concentration of cocoa solids and cocoa butter, the more &ldquo;dark&rdquo; it is. Craft chocolate bar is made using very few ingredients, sometimes only two: cocoa and sugar. However, when talking about coffee, &ldquo;dark&rdquo; means the type of roast. A dark roast means the coffee was over roasted to achieve a specific flavor profile, such as smokey, burnt and caramel tasting notes. A light roast means that the coffee was a bit less roasted and preserves flavors of the bean&rsquo;s origin like the fruity and floral notes.</p>\n        \n        <h2><strong>Similarities</strong></h2>\n        \n        <p>&nbsp;</p>\n        \n        <p>es, the beans come from a different plant, but they serve quite a similar purpose: coffee and cacao should stimulate. We talk about those alkaloids, caffeine for coffee and theobromine for cacao. Cocoa was a ceremonial drink of Mayan and Aztek gods, then preferred by European royalty and much later became available to the general public.</p>\n        \n        <p>So both beans contain significant amounts of antioxidants - cacao more than coffee. Theobromine only occurs in cacao and tea,&nbsp;<a href=\"https://www.nutritionadvance.com/theobromine-benefits/\">thus it stimulates mildly and less effectively as caffeine.</a>&nbsp;&nbsp;(FYI A 70% dark chocolate bar can have as much as 810 mg of theobromine!) Also, those two play a role in keeping our brain and cognition sharp as we age. Dietary flavanoids found in cacao have been proved to protect against neuroinflammation and promote learning and memory. Our cup of Joe or caffeine has been shown to promote learning and memory with just a cup a day!</p>\n        \n        <p>The processes of fermentation, drying and roasting has many parallels. Let&rsquo;s look into those. As both fruits ripen at various times, manual picking from small farmers is&nbsp;required. Both Theobroma cacao and Coffea Arabica needs about 5 years before producing berries or cherries. So after harvesting, cacao pods are opened, beans are removed and piled into large wooden containers for fermentation (covered with banana leaves) for 2-7 or sometimes even 10 days, depending on variety. Beans are turned in order to ferment evenly. During fermentation, a number of chemical reactions occur which help develop flavor.&nbsp;</p>\n        \n        <p><img alt=\"coffee tree nursery\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/1%20-%20coffee%20trees%20in%20a%20nursery_0.JPG?itok=OK49S8aO\" /></p>\n        \n        <p>As for coffee, many options for processing: dry, wet, honey, anaerobic and so on. Either process removes the pulp from the beans while developing varying degrees of aroma, body, acidity that compose the bean&rsquo;s flavor. Both beans are then dried in the sun to reduce moisture levels.</p>\n        \n        <p>Coffee beans then undergo milling, hulling, cleaning, grading, and polishing the green coffee beans. The post-harvest process is crucial for both beans alike as to ensure properly developed flavors and quality.&nbsp; So here comes the roasting part. Both cocoa and coffee beans are roasted to draw out the unique flavors of the bean&rsquo;s origin. This requires technique on the part of chocolate makers and coffee roasters, who work to find the right balance in the roasting.</p>\n        \n        <p><strong>Do you want to know more about cacao roasting?</strong></p>\n        \n        <p><a href=\"https://www.youtube.com/watch?v=HM2eOm3-ws4\" target=\"_blank\">Roasting Cacao - Episode 2 - Craft Chocolate TV</a></p>\n        \n        <p>&nbsp;</p>\n        \n        <p>&nbsp;</p>','thumbpost/1590465427.jpg','cacao-and-coffea-the-differences-and-similarities-of-chocolate-and-coffee-959','KEYWORDS,cacao,chocolate,coffee,flavor,flavor,pairing,flavour','1',0,'2020-05-25 21:06:05','2020-05-26 02:12:37'),(8,1,'Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee','<h1>Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee</h1>\r\n\r\n<p>Coffee and chocolate are often compared thanks to the overlap between their growing regions and the similarities in flavor notes.&nbsp; Both coffee and cacao&nbsp;share a huge flavor profile; over 600 aromatic compounds in cacao and more than 1000 in coffee!&nbsp;Let&rsquo;s dig into more similarities and differences between the two gorgeous plants!<br />\r\n<strong>Differences</strong></p>\r\n\r\n<p>Coffee and cacao come obviously from two very different plants, from two different continents.&nbsp; Cocoa comes from Theobroma cacao also known as &lsquo;fruit of the gods&rsquo;- an evergreen tree with fruits and flowers growing directly on its trunk. An oblong fruit, called a pod, differs in size, depending on species and is as colorful as one can imagine (red, yellow, purple, mixed colors) and each pod contains 20-60 cocoa beans, surrounded by sugary and fragrant pulp. Approximately 7-14 pods are necessary to produce 450 grams of cocoa beans. Just to remind, coffee beans come from coffee cherries that produce two beans per cherry.</p>\r\n\r\n<p><img alt=\"cacao pods\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/cacao%20nibs.JPG?itok=yW8vrgoN\" /></p>\r\n\r\n<p>Just like coffee trees, cacao flourishes in cocoa belt: along or near the Equator in Latin America, the tropics of western Africa, Asia and India. Originaly, Lower Amazon (South America) is home to cacao, yet now is best grown in Africa. And coffee comes from Africa and Arabia (Ethiopia and Yemen), and now is best grown in South America, kind of a switch there, but it works. ?<img alt=\"cocoa fruit\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/IMG_7712.JPG?itok=bxwxOGIo\" /></p>\r\n\r\n<p>Coffee&nbsp;has&nbsp;two main species: Arabica and Robusta, from which various varieties have developed over time (e.g. Caturra, Typica, Bourbon, Castillo). Cocoa beans also have different varietals &ndash; researchers are still finding new genetics, but now we know that there are more than 10 major families of cacao (before cacao was classified into only 3 varieties/genetics - Criollo/Forastero/Trinitario). And CCN-51, which is a clone with high yield, great resistance to diseases. Criollo is delicate, fine, more expensive, white beans but less productive. Forastero is more disease resistant, heartier yet poorer quality. Trinitario is the Goldilocks in-between. Each varietal has unique characteristics in terms of appearance and especially flavor. Importantly, every step of the process has influence over its end-flavor. The main guys are: genetics, terroir and fermentation at origin, and roasting and conching (just for chocolate). Even transportation and storing will have an impact.</p>\r\n\r\n<p><img alt=\"theobroma cacao\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/theobroma%20cacao.JPG?itok=4rn8gjlZ\" /></p>\r\n\r\n<p>Additionally, chocolate and coffee differ in its description usage of &ldquo;dark&rdquo;. For chocolate, a &ldquo;dark&rdquo; chocolate is a reference to the ratio of cocoa solids to other ingredients. Thus the higher the concentration of cocoa solids and cocoa butter, the more &ldquo;dark&rdquo; it is. Craft chocolate bar is made using very few ingredients, sometimes only two: cocoa and sugar. However, when talking about coffee, &ldquo;dark&rdquo; means the type of roast. A dark roast means the coffee was over roasted to achieve a specific flavor profile, such as smokey, burnt and caramel tasting notes. A light roast means that the coffee was a bit less roasted and preserves flavors of the bean&rsquo;s origin like the fruity and floral notes.</p>\r\n\r\n<h2><strong>Similarities</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>es, the beans come from a different plant, but they serve quite a similar purpose: coffee and cacao should stimulate. We talk about those alkaloids, caffeine for coffee and theobromine for cacao. Cocoa was a ceremonial drink of Mayan and Aztek gods, then preferred by European royalty and much later became available to the general public.</p>\r\n\r\n<p>So both beans contain significant amounts of antioxidants - cacao more than coffee. Theobromine only occurs in cacao and tea,&nbsp;<a href=\"https://www.nutritionadvance.com/theobromine-benefits/\">thus it stimulates mildly and less effectively as caffeine.</a>&nbsp;&nbsp;(FYI A 70% dark chocolate bar can have as much as 810 mg of theobromine!) Also, those two play a role in keeping our brain and cognition sharp as we age. Dietary flavanoids found in cacao have been proved to protect against neuroinflammation and promote learning and memory. Our cup of Joe or caffeine has been shown to promote learning and memory with just a cup a day!</p>\r\n\r\n<p>The processes of fermentation, drying and roasting has many parallels. Let&rsquo;s look into those. As both fruits ripen at various times, manual picking from small farmers is&nbsp;required. Both Theobroma cacao and Coffea Arabica needs about 5 years before producing berries or cherries. So after harvesting, cacao pods are opened, beans are removed and piled into large wooden containers for fermentation (covered with banana leaves) for 2-7 or sometimes even 10 days, depending on variety. Beans are turned in order to ferment evenly. During fermentation, a number of chemical reactions occur which help develop flavor.&nbsp;</p>\r\n\r\n<p><img alt=\"coffee tree nursery\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/1%20-%20coffee%20trees%20in%20a%20nursery_0.JPG?itok=OK49S8aO\" /></p>\r\n\r\n<p>As for coffee, many options for processing: dry, wet, honey, anaerobic and so on. Either process removes the pulp from the beans while developing varying degrees of aroma, body, acidity that compose the bean&rsquo;s flavor. Both beans are then dried in the sun to reduce moisture levels.</p>\r\n\r\n<p>Coffee beans then undergo milling, hulling, cleaning, grading, and polishing the green coffee beans. The post-harvest process is crucial for both beans alike as to ensure properly developed flavors and quality.&nbsp; So here comes the roasting part. Both cocoa and coffee beans are roasted to draw out the unique flavors of the bean&rsquo;s origin. This requires technique on the part of chocolate makers and coffee roasters, who work to find the right balance in the roasting.</p>\r\n\r\n<p><strong>Do you want to know more about cacao roasting?</strong></p>\r\n\r\n<p><a href=\"https://www.youtube.com/watch?v=HM2eOm3-ws4\" target=\"_blank\">Roasting Cacao - Episode 2 - Craft Chocolate TV</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>','thumbpost/1591438795.jpg','cacao-and-coffea-the-differences-and-similarities-of-chocolate-and-coffee-617','KEYWORDS,cacao,chocolate,coffee,flavor,flavor,pairing,flavour','1',0,'2020-05-25 21:06:05','2020-06-06 03:19:55'),(9,1,'Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee','<h1>Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee</h1>\n \n        <p>Coffee and chocolate are often compared thanks to the overlap between their growing regions and the similarities in flavor notes.&nbsp; Both coffee and cacao&nbsp;share a huge flavor profile; over 600 aromatic compounds in cacao and more than 1000 in coffee!&nbsp;Let&rsquo;s dig into more similarities and differences between the two gorgeous plants!<br />\n        <strong>Differences</strong></p>\n        \n        <p>Coffee and cacao come obviously from two very different plants, from two different continents.&nbsp; Cocoa comes from Theobroma cacao also known as &lsquo;fruit of the gods&rsquo;- an evergreen tree with fruits and flowers growing directly on its trunk. An oblong fruit, called a pod, differs in size, depending on species and is as colorful as one can imagine (red, yellow, purple, mixed colors) and each pod contains 20-60 cocoa beans, surrounded by sugary and fragrant pulp. Approximately 7-14 pods are necessary to produce 450 grams of cocoa beans. Just to remind, coffee beans come from coffee cherries that produce two beans per cherry.</p>\n        \n        <p><img alt=\"cacao pods\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/cacao%20nibs.JPG?itok=yW8vrgoN\" /></p>\n        \n        <p>Just like coffee trees, cacao flourishes in cocoa belt: along or near the Equator in Latin America, the tropics of western Africa, Asia and India. Originaly, Lower Amazon (South America) is home to cacao, yet now is best grown in Africa. And coffee comes from Africa and Arabia (Ethiopia and Yemen), and now is best grown in South America, kind of a switch there, but it works. ?<img alt=\"cocoa fruit\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/IMG_7712.JPG?itok=bxwxOGIo\" /></p>\n        \n        <p>Coffee&nbsp;has&nbsp;two main species: Arabica and Robusta, from which various varieties have developed over time (e.g. Caturra, Typica, Bourbon, Castillo). Cocoa beans also have different varietals &ndash; researchers are still finding new genetics, but now we know that there are more than 10 major families of cacao (before cacao was classified into only 3 varieties/genetics - Criollo/Forastero/Trinitario). And CCN-51, which is a clone with high yield, great resistance to diseases. Criollo is delicate, fine, more expensive, white beans but less productive. Forastero is more disease resistant, heartier yet poorer quality. Trinitario is the Goldilocks in-between. Each varietal has unique characteristics in terms of appearance and especially flavor. Importantly, every step of the process has influence over its end-flavor. The main guys are: genetics, terroir and fermentation at origin, and roasting and conching (just for chocolate). Even transportation and storing will have an impact.</p>\n        \n        <p><img alt=\"theobroma cacao\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/theobroma%20cacao.JPG?itok=4rn8gjlZ\" /></p>\n        \n        <p>Additionally, chocolate and coffee differ in its description usage of &ldquo;dark&rdquo;. For chocolate, a &ldquo;dark&rdquo; chocolate is a reference to the ratio of cocoa solids to other ingredients. Thus the higher the concentration of cocoa solids and cocoa butter, the more &ldquo;dark&rdquo; it is. Craft chocolate bar is made using very few ingredients, sometimes only two: cocoa and sugar. However, when talking about coffee, &ldquo;dark&rdquo; means the type of roast. A dark roast means the coffee was over roasted to achieve a specific flavor profile, such as smokey, burnt and caramel tasting notes. A light roast means that the coffee was a bit less roasted and preserves flavors of the bean&rsquo;s origin like the fruity and floral notes.</p>\n        \n        <h2><strong>Similarities</strong></h2>\n        \n        <p>&nbsp;</p>\n        \n        <p>es, the beans come from a different plant, but they serve quite a similar purpose: coffee and cacao should stimulate. We talk about those alkaloids, caffeine for coffee and theobromine for cacao. Cocoa was a ceremonial drink of Mayan and Aztek gods, then preferred by European royalty and much later became available to the general public.</p>\n        \n        <p>So both beans contain significant amounts of antioxidants - cacao more than coffee. Theobromine only occurs in cacao and tea,&nbsp;<a href=\"https://www.nutritionadvance.com/theobromine-benefits/\">thus it stimulates mildly and less effectively as caffeine.</a>&nbsp;&nbsp;(FYI A 70% dark chocolate bar can have as much as 810 mg of theobromine!) Also, those two play a role in keeping our brain and cognition sharp as we age. Dietary flavanoids found in cacao have been proved to protect against neuroinflammation and promote learning and memory. Our cup of Joe or caffeine has been shown to promote learning and memory with just a cup a day!</p>\n        \n        <p>The processes of fermentation, drying and roasting has many parallels. Let&rsquo;s look into those. As both fruits ripen at various times, manual picking from small farmers is&nbsp;required. Both Theobroma cacao and Coffea Arabica needs about 5 years before producing berries or cherries. So after harvesting, cacao pods are opened, beans are removed and piled into large wooden containers for fermentation (covered with banana leaves) for 2-7 or sometimes even 10 days, depending on variety. Beans are turned in order to ferment evenly. During fermentation, a number of chemical reactions occur which help develop flavor.&nbsp;</p>\n        \n        <p><img alt=\"coffee tree nursery\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/1%20-%20coffee%20trees%20in%20a%20nursery_0.JPG?itok=OK49S8aO\" /></p>\n        \n        <p>As for coffee, many options for processing: dry, wet, honey, anaerobic and so on. Either process removes the pulp from the beans while developing varying degrees of aroma, body, acidity that compose the bean&rsquo;s flavor. Both beans are then dried in the sun to reduce moisture levels.</p>\n        \n        <p>Coffee beans then undergo milling, hulling, cleaning, grading, and polishing the green coffee beans. The post-harvest process is crucial for both beans alike as to ensure properly developed flavors and quality.&nbsp; So here comes the roasting part. Both cocoa and coffee beans are roasted to draw out the unique flavors of the bean&rsquo;s origin. This requires technique on the part of chocolate makers and coffee roasters, who work to find the right balance in the roasting.</p>\n        \n        <p><strong>Do you want to know more about cacao roasting?</strong></p>\n        \n        <p><a href=\"https://www.youtube.com/watch?v=HM2eOm3-ws4\" target=\"_blank\">Roasting Cacao - Episode 2 - Craft Chocolate TV</a></p>\n        \n        <p>&nbsp;</p>\n        \n        <p>&nbsp;</p>','thumbpost/1590465427.jpg','cacao-and-coffea-the-differences-and-similarities-of-chocolate-and-coffee-1032','KEYWORDS,cacao,chocolate,coffee,flavor,flavor,pairing,flavour','1',0,'2020-05-25 21:06:05','2020-05-26 02:46:26'),(10,1,'Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee','<h1>Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee</h1>\n \n        <p>Coffee and chocolate are often compared thanks to the overlap between their growing regions and the similarities in flavor notes.&nbsp; Both coffee and cacao&nbsp;share a huge flavor profile; over 600 aromatic compounds in cacao and more than 1000 in coffee!&nbsp;Let&rsquo;s dig into more similarities and differences between the two gorgeous plants!<br />\n        <strong>Differences</strong></p>\n        \n        <p>Coffee and cacao come obviously from two very different plants, from two different continents.&nbsp; Cocoa comes from Theobroma cacao also known as &lsquo;fruit of the gods&rsquo;- an evergreen tree with fruits and flowers growing directly on its trunk. An oblong fruit, called a pod, differs in size, depending on species and is as colorful as one can imagine (red, yellow, purple, mixed colors) and each pod contains 20-60 cocoa beans, surrounded by sugary and fragrant pulp. Approximately 7-14 pods are necessary to produce 450 grams of cocoa beans. Just to remind, coffee beans come from coffee cherries that produce two beans per cherry.</p>\n        \n        <p><img alt=\"cacao pods\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/cacao%20nibs.JPG?itok=yW8vrgoN\" /></p>\n        \n        <p>Just like coffee trees, cacao flourishes in cocoa belt: along or near the Equator in Latin America, the tropics of western Africa, Asia and India. Originaly, Lower Amazon (South America) is home to cacao, yet now is best grown in Africa. And coffee comes from Africa and Arabia (Ethiopia and Yemen), and now is best grown in South America, kind of a switch there, but it works. ?<img alt=\"cocoa fruit\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/IMG_7712.JPG?itok=bxwxOGIo\" /></p>\n        \n        <p>Coffee&nbsp;has&nbsp;two main species: Arabica and Robusta, from which various varieties have developed over time (e.g. Caturra, Typica, Bourbon, Castillo). Cocoa beans also have different varietals &ndash; researchers are still finding new genetics, but now we know that there are more than 10 major families of cacao (before cacao was classified into only 3 varieties/genetics - Criollo/Forastero/Trinitario). And CCN-51, which is a clone with high yield, great resistance to diseases. Criollo is delicate, fine, more expensive, white beans but less productive. Forastero is more disease resistant, heartier yet poorer quality. Trinitario is the Goldilocks in-between. Each varietal has unique characteristics in terms of appearance and especially flavor. Importantly, every step of the process has influence over its end-flavor. The main guys are: genetics, terroir and fermentation at origin, and roasting and conching (just for chocolate). Even transportation and storing will have an impact.</p>\n        \n        <p><img alt=\"theobroma cacao\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/theobroma%20cacao.JPG?itok=4rn8gjlZ\" /></p>\n        \n        <p>Additionally, chocolate and coffee differ in its description usage of &ldquo;dark&rdquo;. For chocolate, a &ldquo;dark&rdquo; chocolate is a reference to the ratio of cocoa solids to other ingredients. Thus the higher the concentration of cocoa solids and cocoa butter, the more &ldquo;dark&rdquo; it is. Craft chocolate bar is made using very few ingredients, sometimes only two: cocoa and sugar. However, when talking about coffee, &ldquo;dark&rdquo; means the type of roast. A dark roast means the coffee was over roasted to achieve a specific flavor profile, such as smokey, burnt and caramel tasting notes. A light roast means that the coffee was a bit less roasted and preserves flavors of the bean&rsquo;s origin like the fruity and floral notes.</p>\n        \n        <h2><strong>Similarities</strong></h2>\n        \n        <p>&nbsp;</p>\n        \n        <p>es, the beans come from a different plant, but they serve quite a similar purpose: coffee and cacao should stimulate. We talk about those alkaloids, caffeine for coffee and theobromine for cacao. Cocoa was a ceremonial drink of Mayan and Aztek gods, then preferred by European royalty and much later became available to the general public.</p>\n        \n        <p>So both beans contain significant amounts of antioxidants - cacao more than coffee. Theobromine only occurs in cacao and tea,&nbsp;<a href=\"https://www.nutritionadvance.com/theobromine-benefits/\">thus it stimulates mildly and less effectively as caffeine.</a>&nbsp;&nbsp;(FYI A 70% dark chocolate bar can have as much as 810 mg of theobromine!) Also, those two play a role in keeping our brain and cognition sharp as we age. Dietary flavanoids found in cacao have been proved to protect against neuroinflammation and promote learning and memory. Our cup of Joe or caffeine has been shown to promote learning and memory with just a cup a day!</p>\n        \n        <p>The processes of fermentation, drying and roasting has many parallels. Let&rsquo;s look into those. As both fruits ripen at various times, manual picking from small farmers is&nbsp;required. Both Theobroma cacao and Coffea Arabica needs about 5 years before producing berries or cherries. So after harvesting, cacao pods are opened, beans are removed and piled into large wooden containers for fermentation (covered with banana leaves) for 2-7 or sometimes even 10 days, depending on variety. Beans are turned in order to ferment evenly. During fermentation, a number of chemical reactions occur which help develop flavor.&nbsp;</p>\n        \n        <p><img alt=\"coffee tree nursery\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/1%20-%20coffee%20trees%20in%20a%20nursery_0.JPG?itok=OK49S8aO\" /></p>\n        \n        <p>As for coffee, many options for processing: dry, wet, honey, anaerobic and so on. Either process removes the pulp from the beans while developing varying degrees of aroma, body, acidity that compose the bean&rsquo;s flavor. Both beans are then dried in the sun to reduce moisture levels.</p>\n        \n        <p>Coffee beans then undergo milling, hulling, cleaning, grading, and polishing the green coffee beans. The post-harvest process is crucial for both beans alike as to ensure properly developed flavors and quality.&nbsp; So here comes the roasting part. Both cocoa and coffee beans are roasted to draw out the unique flavors of the bean&rsquo;s origin. This requires technique on the part of chocolate makers and coffee roasters, who work to find the right balance in the roasting.</p>\n        \n        <p><strong>Do you want to know more about cacao roasting?</strong></p>\n        \n        <p><a href=\"https://www.youtube.com/watch?v=HM2eOm3-ws4\" target=\"_blank\">Roasting Cacao - Episode 2 - Craft Chocolate TV</a></p>\n        \n        <p>&nbsp;</p>\n        \n        <p>&nbsp;</p>','thumbpost/1590465427.jpg','cacao-and-coffea-the-differences-and-similarities-of-chocolate-and-coffee-258','KEYWORDS,cacao,chocolate,coffee,flavor,flavor,pairing,flavour','1',0,'2020-05-25 21:06:05','2020-05-26 02:49:39'),(11,1,'Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee','<h1>Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee</h1>\n \n        <p>Coffee and chocolate are often compared thanks to the overlap between their growing regions and the similarities in flavor notes.&nbsp; Both coffee and cacao&nbsp;share a huge flavor profile; over 600 aromatic compounds in cacao and more than 1000 in coffee!&nbsp;Let&rsquo;s dig into more similarities and differences between the two gorgeous plants!<br />\n        <strong>Differences</strong></p>\n        \n        <p>Coffee and cacao come obviously from two very different plants, from two different continents.&nbsp; Cocoa comes from Theobroma cacao also known as &lsquo;fruit of the gods&rsquo;- an evergreen tree with fruits and flowers growing directly on its trunk. An oblong fruit, called a pod, differs in size, depending on species and is as colorful as one can imagine (red, yellow, purple, mixed colors) and each pod contains 20-60 cocoa beans, surrounded by sugary and fragrant pulp. Approximately 7-14 pods are necessary to produce 450 grams of cocoa beans. Just to remind, coffee beans come from coffee cherries that produce two beans per cherry.</p>\n        \n        <p><img alt=\"cacao pods\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/cacao%20nibs.JPG?itok=yW8vrgoN\" /></p>\n        \n        <p>Just like coffee trees, cacao flourishes in cocoa belt: along or near the Equator in Latin America, the tropics of western Africa, Asia and India. Originaly, Lower Amazon (South America) is home to cacao, yet now is best grown in Africa. And coffee comes from Africa and Arabia (Ethiopia and Yemen), and now is best grown in South America, kind of a switch there, but it works. ?<img alt=\"cocoa fruit\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/IMG_7712.JPG?itok=bxwxOGIo\" /></p>\n        \n        <p>Coffee&nbsp;has&nbsp;two main species: Arabica and Robusta, from which various varieties have developed over time (e.g. Caturra, Typica, Bourbon, Castillo). Cocoa beans also have different varietals &ndash; researchers are still finding new genetics, but now we know that there are more than 10 major families of cacao (before cacao was classified into only 3 varieties/genetics - Criollo/Forastero/Trinitario). And CCN-51, which is a clone with high yield, great resistance to diseases. Criollo is delicate, fine, more expensive, white beans but less productive. Forastero is more disease resistant, heartier yet poorer quality. Trinitario is the Goldilocks in-between. Each varietal has unique characteristics in terms of appearance and especially flavor. Importantly, every step of the process has influence over its end-flavor. The main guys are: genetics, terroir and fermentation at origin, and roasting and conching (just for chocolate). Even transportation and storing will have an impact.</p>\n        \n        <p><img alt=\"theobroma cacao\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/theobroma%20cacao.JPG?itok=4rn8gjlZ\" /></p>\n        \n        <p>Additionally, chocolate and coffee differ in its description usage of &ldquo;dark&rdquo;. For chocolate, a &ldquo;dark&rdquo; chocolate is a reference to the ratio of cocoa solids to other ingredients. Thus the higher the concentration of cocoa solids and cocoa butter, the more &ldquo;dark&rdquo; it is. Craft chocolate bar is made using very few ingredients, sometimes only two: cocoa and sugar. However, when talking about coffee, &ldquo;dark&rdquo; means the type of roast. A dark roast means the coffee was over roasted to achieve a specific flavor profile, such as smokey, burnt and caramel tasting notes. A light roast means that the coffee was a bit less roasted and preserves flavors of the bean&rsquo;s origin like the fruity and floral notes.</p>\n        \n        <h2><strong>Similarities</strong></h2>\n        \n        <p>&nbsp;</p>\n        \n        <p>es, the beans come from a different plant, but they serve quite a similar purpose: coffee and cacao should stimulate. We talk about those alkaloids, caffeine for coffee and theobromine for cacao. Cocoa was a ceremonial drink of Mayan and Aztek gods, then preferred by European royalty and much later became available to the general public.</p>\n        \n        <p>So both beans contain significant amounts of antioxidants - cacao more than coffee. Theobromine only occurs in cacao and tea,&nbsp;<a href=\"https://www.nutritionadvance.com/theobromine-benefits/\">thus it stimulates mildly and less effectively as caffeine.</a>&nbsp;&nbsp;(FYI A 70% dark chocolate bar can have as much as 810 mg of theobromine!) Also, those two play a role in keeping our brain and cognition sharp as we age. Dietary flavanoids found in cacao have been proved to protect against neuroinflammation and promote learning and memory. Our cup of Joe or caffeine has been shown to promote learning and memory with just a cup a day!</p>\n        \n        <p>The processes of fermentation, drying and roasting has many parallels. Let&rsquo;s look into those. As both fruits ripen at various times, manual picking from small farmers is&nbsp;required. Both Theobroma cacao and Coffea Arabica needs about 5 years before producing berries or cherries. So after harvesting, cacao pods are opened, beans are removed and piled into large wooden containers for fermentation (covered with banana leaves) for 2-7 or sometimes even 10 days, depending on variety. Beans are turned in order to ferment evenly. During fermentation, a number of chemical reactions occur which help develop flavor.&nbsp;</p>\n        \n        <p><img alt=\"coffee tree nursery\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/1%20-%20coffee%20trees%20in%20a%20nursery_0.JPG?itok=OK49S8aO\" /></p>\n        \n        <p>As for coffee, many options for processing: dry, wet, honey, anaerobic and so on. Either process removes the pulp from the beans while developing varying degrees of aroma, body, acidity that compose the bean&rsquo;s flavor. Both beans are then dried in the sun to reduce moisture levels.</p>\n        \n        <p>Coffee beans then undergo milling, hulling, cleaning, grading, and polishing the green coffee beans. The post-harvest process is crucial for both beans alike as to ensure properly developed flavors and quality.&nbsp; So here comes the roasting part. Both cocoa and coffee beans are roasted to draw out the unique flavors of the bean&rsquo;s origin. This requires technique on the part of chocolate makers and coffee roasters, who work to find the right balance in the roasting.</p>\n        \n        <p><strong>Do you want to know more about cacao roasting?</strong></p>\n        \n        <p><a href=\"https://www.youtube.com/watch?v=HM2eOm3-ws4\" target=\"_blank\">Roasting Cacao - Episode 2 - Craft Chocolate TV</a></p>\n        \n        <p>&nbsp;</p>\n        \n        <p>&nbsp;</p>','thumbpost/1590465427.jpg','cacao-and-coffea-the-differences-and-similarities-of-chocolate-and-coffee-2488','KEYWORDS,cacao,chocolate,coffee,flavor,flavor,pairing,flavour','1',0,'2020-05-25 21:06:05','2020-05-26 02:49:42'),(12,1,'Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee','<h1>Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee</h1>\n \n        <p>Coffee and chocolate are often compared thanks to the overlap between their growing regions and the similarities in flavor notes.&nbsp; Both coffee and cacao&nbsp;share a huge flavor profile; over 600 aromatic compounds in cacao and more than 1000 in coffee!&nbsp;Let&rsquo;s dig into more similarities and differences between the two gorgeous plants!<br />\n        <strong>Differences</strong></p>\n        \n        <p>Coffee and cacao come obviously from two very different plants, from two different continents.&nbsp; Cocoa comes from Theobroma cacao also known as &lsquo;fruit of the gods&rsquo;- an evergreen tree with fruits and flowers growing directly on its trunk. An oblong fruit, called a pod, differs in size, depending on species and is as colorful as one can imagine (red, yellow, purple, mixed colors) and each pod contains 20-60 cocoa beans, surrounded by sugary and fragrant pulp. Approximately 7-14 pods are necessary to produce 450 grams of cocoa beans. Just to remind, coffee beans come from coffee cherries that produce two beans per cherry.</p>\n        \n        <p><img alt=\"cacao pods\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/cacao%20nibs.JPG?itok=yW8vrgoN\" /></p>\n        \n        <p>Just like coffee trees, cacao flourishes in cocoa belt: along or near the Equator in Latin America, the tropics of western Africa, Asia and India. Originaly, Lower Amazon (South America) is home to cacao, yet now is best grown in Africa. And coffee comes from Africa and Arabia (Ethiopia and Yemen), and now is best grown in South America, kind of a switch there, but it works. ?<img alt=\"cocoa fruit\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/IMG_7712.JPG?itok=bxwxOGIo\" /></p>\n        \n        <p>Coffee&nbsp;has&nbsp;two main species: Arabica and Robusta, from which various varieties have developed over time (e.g. Caturra, Typica, Bourbon, Castillo). Cocoa beans also have different varietals &ndash; researchers are still finding new genetics, but now we know that there are more than 10 major families of cacao (before cacao was classified into only 3 varieties/genetics - Criollo/Forastero/Trinitario). And CCN-51, which is a clone with high yield, great resistance to diseases. Criollo is delicate, fine, more expensive, white beans but less productive. Forastero is more disease resistant, heartier yet poorer quality. Trinitario is the Goldilocks in-between. Each varietal has unique characteristics in terms of appearance and especially flavor. Importantly, every step of the process has influence over its end-flavor. The main guys are: genetics, terroir and fermentation at origin, and roasting and conching (just for chocolate). Even transportation and storing will have an impact.</p>\n        \n        <p><img alt=\"theobroma cacao\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/theobroma%20cacao.JPG?itok=4rn8gjlZ\" /></p>\n        \n        <p>Additionally, chocolate and coffee differ in its description usage of &ldquo;dark&rdquo;. For chocolate, a &ldquo;dark&rdquo; chocolate is a reference to the ratio of cocoa solids to other ingredients. Thus the higher the concentration of cocoa solids and cocoa butter, the more &ldquo;dark&rdquo; it is. Craft chocolate bar is made using very few ingredients, sometimes only two: cocoa and sugar. However, when talking about coffee, &ldquo;dark&rdquo; means the type of roast. A dark roast means the coffee was over roasted to achieve a specific flavor profile, such as smokey, burnt and caramel tasting notes. A light roast means that the coffee was a bit less roasted and preserves flavors of the bean&rsquo;s origin like the fruity and floral notes.</p>\n        \n        <h2><strong>Similarities</strong></h2>\n        \n        <p>&nbsp;</p>\n        \n        <p>es, the beans come from a different plant, but they serve quite a similar purpose: coffee and cacao should stimulate. We talk about those alkaloids, caffeine for coffee and theobromine for cacao. Cocoa was a ceremonial drink of Mayan and Aztek gods, then preferred by European royalty and much later became available to the general public.</p>\n        \n        <p>So both beans contain significant amounts of antioxidants - cacao more than coffee. Theobromine only occurs in cacao and tea,&nbsp;<a href=\"https://www.nutritionadvance.com/theobromine-benefits/\">thus it stimulates mildly and less effectively as caffeine.</a>&nbsp;&nbsp;(FYI A 70% dark chocolate bar can have as much as 810 mg of theobromine!) Also, those two play a role in keeping our brain and cognition sharp as we age. Dietary flavanoids found in cacao have been proved to protect against neuroinflammation and promote learning and memory. Our cup of Joe or caffeine has been shown to promote learning and memory with just a cup a day!</p>\n        \n        <p>The processes of fermentation, drying and roasting has many parallels. Let&rsquo;s look into those. As both fruits ripen at various times, manual picking from small farmers is&nbsp;required. Both Theobroma cacao and Coffea Arabica needs about 5 years before producing berries or cherries. So after harvesting, cacao pods are opened, beans are removed and piled into large wooden containers for fermentation (covered with banana leaves) for 2-7 or sometimes even 10 days, depending on variety. Beans are turned in order to ferment evenly. During fermentation, a number of chemical reactions occur which help develop flavor.&nbsp;</p>\n        \n        <p><img alt=\"coffee tree nursery\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/1%20-%20coffee%20trees%20in%20a%20nursery_0.JPG?itok=OK49S8aO\" /></p>\n        \n        <p>As for coffee, many options for processing: dry, wet, honey, anaerobic and so on. Either process removes the pulp from the beans while developing varying degrees of aroma, body, acidity that compose the bean&rsquo;s flavor. Both beans are then dried in the sun to reduce moisture levels.</p>\n        \n        <p>Coffee beans then undergo milling, hulling, cleaning, grading, and polishing the green coffee beans. The post-harvest process is crucial for both beans alike as to ensure properly developed flavors and quality.&nbsp; So here comes the roasting part. Both cocoa and coffee beans are roasted to draw out the unique flavors of the bean&rsquo;s origin. This requires technique on the part of chocolate makers and coffee roasters, who work to find the right balance in the roasting.</p>\n        \n        <p><strong>Do you want to know more about cacao roasting?</strong></p>\n        \n        <p><a href=\"https://www.youtube.com/watch?v=HM2eOm3-ws4\" target=\"_blank\">Roasting Cacao - Episode 2 - Craft Chocolate TV</a></p>\n        \n        <p>&nbsp;</p>\n        \n        <p>&nbsp;</p>','thumbpost/1590465427.jpg','cacao-and-coffea-the-differences-and-similarities-of-chocolate-and-coffee-3367','KEYWORDS,cacao,chocolate,coffee,flavor,flavor,pairing,flavour','1',0,'2020-05-25 21:06:05','2020-05-26 02:49:44'),(13,1,'Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee','<h1>Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee</h1>\n \n        <p>Coffee and chocolate are often compared thanks to the overlap between their growing regions and the similarities in flavor notes.&nbsp; Both coffee and cacao&nbsp;share a huge flavor profile; over 600 aromatic compounds in cacao and more than 1000 in coffee!&nbsp;Let&rsquo;s dig into more similarities and differences between the two gorgeous plants!<br />\n        <strong>Differences</strong></p>\n        \n        <p>Coffee and cacao come obviously from two very different plants, from two different continents.&nbsp; Cocoa comes from Theobroma cacao also known as &lsquo;fruit of the gods&rsquo;- an evergreen tree with fruits and flowers growing directly on its trunk. An oblong fruit, called a pod, differs in size, depending on species and is as colorful as one can imagine (red, yellow, purple, mixed colors) and each pod contains 20-60 cocoa beans, surrounded by sugary and fragrant pulp. Approximately 7-14 pods are necessary to produce 450 grams of cocoa beans. Just to remind, coffee beans come from coffee cherries that produce two beans per cherry.</p>\n        \n        <p><img alt=\"cacao pods\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/cacao%20nibs.JPG?itok=yW8vrgoN\" /></p>\n        \n        <p>Just like coffee trees, cacao flourishes in cocoa belt: along or near the Equator in Latin America, the tropics of western Africa, Asia and India. Originaly, Lower Amazon (South America) is home to cacao, yet now is best grown in Africa. And coffee comes from Africa and Arabia (Ethiopia and Yemen), and now is best grown in South America, kind of a switch there, but it works. ?<img alt=\"cocoa fruit\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/IMG_7712.JPG?itok=bxwxOGIo\" /></p>\n        \n        <p>Coffee&nbsp;has&nbsp;two main species: Arabica and Robusta, from which various varieties have developed over time (e.g. Caturra, Typica, Bourbon, Castillo). Cocoa beans also have different varietals &ndash; researchers are still finding new genetics, but now we know that there are more than 10 major families of cacao (before cacao was classified into only 3 varieties/genetics - Criollo/Forastero/Trinitario). And CCN-51, which is a clone with high yield, great resistance to diseases. Criollo is delicate, fine, more expensive, white beans but less productive. Forastero is more disease resistant, heartier yet poorer quality. Trinitario is the Goldilocks in-between. Each varietal has unique characteristics in terms of appearance and especially flavor. Importantly, every step of the process has influence over its end-flavor. The main guys are: genetics, terroir and fermentation at origin, and roasting and conching (just for chocolate). Even transportation and storing will have an impact.</p>\n        \n        <p><img alt=\"theobroma cacao\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/theobroma%20cacao.JPG?itok=4rn8gjlZ\" /></p>\n        \n        <p>Additionally, chocolate and coffee differ in its description usage of &ldquo;dark&rdquo;. For chocolate, a &ldquo;dark&rdquo; chocolate is a reference to the ratio of cocoa solids to other ingredients. Thus the higher the concentration of cocoa solids and cocoa butter, the more &ldquo;dark&rdquo; it is. Craft chocolate bar is made using very few ingredients, sometimes only two: cocoa and sugar. However, when talking about coffee, &ldquo;dark&rdquo; means the type of roast. A dark roast means the coffee was over roasted to achieve a specific flavor profile, such as smokey, burnt and caramel tasting notes. A light roast means that the coffee was a bit less roasted and preserves flavors of the bean&rsquo;s origin like the fruity and floral notes.</p>\n        \n        <h2><strong>Similarities</strong></h2>\n        \n        <p>&nbsp;</p>\n        \n        <p>es, the beans come from a different plant, but they serve quite a similar purpose: coffee and cacao should stimulate. We talk about those alkaloids, caffeine for coffee and theobromine for cacao. Cocoa was a ceremonial drink of Mayan and Aztek gods, then preferred by European royalty and much later became available to the general public.</p>\n        \n        <p>So both beans contain significant amounts of antioxidants - cacao more than coffee. Theobromine only occurs in cacao and tea,&nbsp;<a href=\"https://www.nutritionadvance.com/theobromine-benefits/\">thus it stimulates mildly and less effectively as caffeine.</a>&nbsp;&nbsp;(FYI A 70% dark chocolate bar can have as much as 810 mg of theobromine!) Also, those two play a role in keeping our brain and cognition sharp as we age. Dietary flavanoids found in cacao have been proved to protect against neuroinflammation and promote learning and memory. Our cup of Joe or caffeine has been shown to promote learning and memory with just a cup a day!</p>\n        \n        <p>The processes of fermentation, drying and roasting has many parallels. Let&rsquo;s look into those. As both fruits ripen at various times, manual picking from small farmers is&nbsp;required. Both Theobroma cacao and Coffea Arabica needs about 5 years before producing berries or cherries. So after harvesting, cacao pods are opened, beans are removed and piled into large wooden containers for fermentation (covered with banana leaves) for 2-7 or sometimes even 10 days, depending on variety. Beans are turned in order to ferment evenly. During fermentation, a number of chemical reactions occur which help develop flavor.&nbsp;</p>\n        \n        <p><img alt=\"coffee tree nursery\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/1%20-%20coffee%20trees%20in%20a%20nursery_0.JPG?itok=OK49S8aO\" /></p>\n        \n        <p>As for coffee, many options for processing: dry, wet, honey, anaerobic and so on. Either process removes the pulp from the beans while developing varying degrees of aroma, body, acidity that compose the bean&rsquo;s flavor. Both beans are then dried in the sun to reduce moisture levels.</p>\n        \n        <p>Coffee beans then undergo milling, hulling, cleaning, grading, and polishing the green coffee beans. The post-harvest process is crucial for both beans alike as to ensure properly developed flavors and quality.&nbsp; So here comes the roasting part. Both cocoa and coffee beans are roasted to draw out the unique flavors of the bean&rsquo;s origin. This requires technique on the part of chocolate makers and coffee roasters, who work to find the right balance in the roasting.</p>\n        \n        <p><strong>Do you want to know more about cacao roasting?</strong></p>\n        \n        <p><a href=\"https://www.youtube.com/watch?v=HM2eOm3-ws4\" target=\"_blank\">Roasting Cacao - Episode 2 - Craft Chocolate TV</a></p>\n        \n        <p>&nbsp;</p>\n        \n        <p>&nbsp;</p>','thumbpost/1590465427.jpg','cacao-and-coffea-the-differences-and-similarities-of-chocolate-and-coffee-3715','KEYWORDS,cacao,chocolate,coffee,flavor,flavor,pairing,flavour','1',0,'2020-05-25 21:06:05','2020-05-26 02:49:50'),(14,1,'Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee','<h1>Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee</h1>\n \n        <p>Coffee and chocolate are often compared thanks to the overlap between their growing regions and the similarities in flavor notes.&nbsp; Both coffee and cacao&nbsp;share a huge flavor profile; over 600 aromatic compounds in cacao and more than 1000 in coffee!&nbsp;Let&rsquo;s dig into more similarities and differences between the two gorgeous plants!<br />\n        <strong>Differences</strong></p>\n        \n        <p>Coffee and cacao come obviously from two very different plants, from two different continents.&nbsp; Cocoa comes from Theobroma cacao also known as &lsquo;fruit of the gods&rsquo;- an evergreen tree with fruits and flowers growing directly on its trunk. An oblong fruit, called a pod, differs in size, depending on species and is as colorful as one can imagine (red, yellow, purple, mixed colors) and each pod contains 20-60 cocoa beans, surrounded by sugary and fragrant pulp. Approximately 7-14 pods are necessary to produce 450 grams of cocoa beans. Just to remind, coffee beans come from coffee cherries that produce two beans per cherry.</p>\n        \n        <p><img alt=\"cacao pods\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/cacao%20nibs.JPG?itok=yW8vrgoN\" /></p>\n        \n        <p>Just like coffee trees, cacao flourishes in cocoa belt: along or near the Equator in Latin America, the tropics of western Africa, Asia and India. Originaly, Lower Amazon (South America) is home to cacao, yet now is best grown in Africa. And coffee comes from Africa and Arabia (Ethiopia and Yemen), and now is best grown in South America, kind of a switch there, but it works. ?<img alt=\"cocoa fruit\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/IMG_7712.JPG?itok=bxwxOGIo\" /></p>\n        \n        <p>Coffee&nbsp;has&nbsp;two main species: Arabica and Robusta, from which various varieties have developed over time (e.g. Caturra, Typica, Bourbon, Castillo). Cocoa beans also have different varietals &ndash; researchers are still finding new genetics, but now we know that there are more than 10 major families of cacao (before cacao was classified into only 3 varieties/genetics - Criollo/Forastero/Trinitario). And CCN-51, which is a clone with high yield, great resistance to diseases. Criollo is delicate, fine, more expensive, white beans but less productive. Forastero is more disease resistant, heartier yet poorer quality. Trinitario is the Goldilocks in-between. Each varietal has unique characteristics in terms of appearance and especially flavor. Importantly, every step of the process has influence over its end-flavor. The main guys are: genetics, terroir and fermentation at origin, and roasting and conching (just for chocolate). Even transportation and storing will have an impact.</p>\n        \n        <p><img alt=\"theobroma cacao\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/theobroma%20cacao.JPG?itok=4rn8gjlZ\" /></p>\n        \n        <p>Additionally, chocolate and coffee differ in its description usage of &ldquo;dark&rdquo;. For chocolate, a &ldquo;dark&rdquo; chocolate is a reference to the ratio of cocoa solids to other ingredients. Thus the higher the concentration of cocoa solids and cocoa butter, the more &ldquo;dark&rdquo; it is. Craft chocolate bar is made using very few ingredients, sometimes only two: cocoa and sugar. However, when talking about coffee, &ldquo;dark&rdquo; means the type of roast. A dark roast means the coffee was over roasted to achieve a specific flavor profile, such as smokey, burnt and caramel tasting notes. A light roast means that the coffee was a bit less roasted and preserves flavors of the bean&rsquo;s origin like the fruity and floral notes.</p>\n        \n        <h2><strong>Similarities</strong></h2>\n        \n        <p>&nbsp;</p>\n        \n        <p>es, the beans come from a different plant, but they serve quite a similar purpose: coffee and cacao should stimulate. We talk about those alkaloids, caffeine for coffee and theobromine for cacao. Cocoa was a ceremonial drink of Mayan and Aztek gods, then preferred by European royalty and much later became available to the general public.</p>\n        \n        <p>So both beans contain significant amounts of antioxidants - cacao more than coffee. Theobromine only occurs in cacao and tea,&nbsp;<a href=\"https://www.nutritionadvance.com/theobromine-benefits/\">thus it stimulates mildly and less effectively as caffeine.</a>&nbsp;&nbsp;(FYI A 70% dark chocolate bar can have as much as 810 mg of theobromine!) Also, those two play a role in keeping our brain and cognition sharp as we age. Dietary flavanoids found in cacao have been proved to protect against neuroinflammation and promote learning and memory. Our cup of Joe or caffeine has been shown to promote learning and memory with just a cup a day!</p>\n        \n        <p>The processes of fermentation, drying and roasting has many parallels. Let&rsquo;s look into those. As both fruits ripen at various times, manual picking from small farmers is&nbsp;required. Both Theobroma cacao and Coffea Arabica needs about 5 years before producing berries or cherries. So after harvesting, cacao pods are opened, beans are removed and piled into large wooden containers for fermentation (covered with banana leaves) for 2-7 or sometimes even 10 days, depending on variety. Beans are turned in order to ferment evenly. During fermentation, a number of chemical reactions occur which help develop flavor.&nbsp;</p>\n        \n        <p><img alt=\"coffee tree nursery\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/1%20-%20coffee%20trees%20in%20a%20nursery_0.JPG?itok=OK49S8aO\" /></p>\n        \n        <p>As for coffee, many options for processing: dry, wet, honey, anaerobic and so on. Either process removes the pulp from the beans while developing varying degrees of aroma, body, acidity that compose the bean&rsquo;s flavor. Both beans are then dried in the sun to reduce moisture levels.</p>\n        \n        <p>Coffee beans then undergo milling, hulling, cleaning, grading, and polishing the green coffee beans. The post-harvest process is crucial for both beans alike as to ensure properly developed flavors and quality.&nbsp; So here comes the roasting part. Both cocoa and coffee beans are roasted to draw out the unique flavors of the bean&rsquo;s origin. This requires technique on the part of chocolate makers and coffee roasters, who work to find the right balance in the roasting.</p>\n        \n        <p><strong>Do you want to know more about cacao roasting?</strong></p>\n        \n        <p><a href=\"https://www.youtube.com/watch?v=HM2eOm3-ws4\" target=\"_blank\">Roasting Cacao - Episode 2 - Craft Chocolate TV</a></p>\n        \n        <p>&nbsp;</p>\n        \n        <p>&nbsp;</p>','thumbpost/1590465427.jpg','cacao-and-coffea-the-differences-and-similarities-of-chocolate-and-coffee-2502','KEYWORDS,cacao,chocolate,coffee,flavor,flavor,pairing,flavour','0',0,'2020-05-25 21:06:05','2020-05-25 21:06:05'),(15,1,'Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee','<h1>Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee</h1>\n \n        <p>Coffee and chocolate are often compared thanks to the overlap between their growing regions and the similarities in flavor notes.&nbsp; Both coffee and cacao&nbsp;share a huge flavor profile; over 600 aromatic compounds in cacao and more than 1000 in coffee!&nbsp;Let&rsquo;s dig into more similarities and differences between the two gorgeous plants!<br />\n        <strong>Differences</strong></p>\n        \n        <p>Coffee and cacao come obviously from two very different plants, from two different continents.&nbsp; Cocoa comes from Theobroma cacao also known as &lsquo;fruit of the gods&rsquo;- an evergreen tree with fruits and flowers growing directly on its trunk. An oblong fruit, called a pod, differs in size, depending on species and is as colorful as one can imagine (red, yellow, purple, mixed colors) and each pod contains 20-60 cocoa beans, surrounded by sugary and fragrant pulp. Approximately 7-14 pods are necessary to produce 450 grams of cocoa beans. Just to remind, coffee beans come from coffee cherries that produce two beans per cherry.</p>\n        \n        <p><img alt=\"cacao pods\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/cacao%20nibs.JPG?itok=yW8vrgoN\" /></p>\n        \n        <p>Just like coffee trees, cacao flourishes in cocoa belt: along or near the Equator in Latin America, the tropics of western Africa, Asia and India. Originaly, Lower Amazon (South America) is home to cacao, yet now is best grown in Africa. And coffee comes from Africa and Arabia (Ethiopia and Yemen), and now is best grown in South America, kind of a switch there, but it works. ?<img alt=\"cocoa fruit\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/IMG_7712.JPG?itok=bxwxOGIo\" /></p>\n        \n        <p>Coffee&nbsp;has&nbsp;two main species: Arabica and Robusta, from which various varieties have developed over time (e.g. Caturra, Typica, Bourbon, Castillo). Cocoa beans also have different varietals &ndash; researchers are still finding new genetics, but now we know that there are more than 10 major families of cacao (before cacao was classified into only 3 varieties/genetics - Criollo/Forastero/Trinitario). And CCN-51, which is a clone with high yield, great resistance to diseases. Criollo is delicate, fine, more expensive, white beans but less productive. Forastero is more disease resistant, heartier yet poorer quality. Trinitario is the Goldilocks in-between. Each varietal has unique characteristics in terms of appearance and especially flavor. Importantly, every step of the process has influence over its end-flavor. The main guys are: genetics, terroir and fermentation at origin, and roasting and conching (just for chocolate). Even transportation and storing will have an impact.</p>\n        \n        <p><img alt=\"theobroma cacao\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/theobroma%20cacao.JPG?itok=4rn8gjlZ\" /></p>\n        \n        <p>Additionally, chocolate and coffee differ in its description usage of &ldquo;dark&rdquo;. For chocolate, a &ldquo;dark&rdquo; chocolate is a reference to the ratio of cocoa solids to other ingredients. Thus the higher the concentration of cocoa solids and cocoa butter, the more &ldquo;dark&rdquo; it is. Craft chocolate bar is made using very few ingredients, sometimes only two: cocoa and sugar. However, when talking about coffee, &ldquo;dark&rdquo; means the type of roast. A dark roast means the coffee was over roasted to achieve a specific flavor profile, such as smokey, burnt and caramel tasting notes. A light roast means that the coffee was a bit less roasted and preserves flavors of the bean&rsquo;s origin like the fruity and floral notes.</p>\n        \n        <h2><strong>Similarities</strong></h2>\n        \n        <p>&nbsp;</p>\n        \n        <p>es, the beans come from a different plant, but they serve quite a similar purpose: coffee and cacao should stimulate. We talk about those alkaloids, caffeine for coffee and theobromine for cacao. Cocoa was a ceremonial drink of Mayan and Aztek gods, then preferred by European royalty and much later became available to the general public.</p>\n        \n        <p>So both beans contain significant amounts of antioxidants - cacao more than coffee. Theobromine only occurs in cacao and tea,&nbsp;<a href=\"https://www.nutritionadvance.com/theobromine-benefits/\">thus it stimulates mildly and less effectively as caffeine.</a>&nbsp;&nbsp;(FYI A 70% dark chocolate bar can have as much as 810 mg of theobromine!) Also, those two play a role in keeping our brain and cognition sharp as we age. Dietary flavanoids found in cacao have been proved to protect against neuroinflammation and promote learning and memory. Our cup of Joe or caffeine has been shown to promote learning and memory with just a cup a day!</p>\n        \n        <p>The processes of fermentation, drying and roasting has many parallels. Let&rsquo;s look into those. As both fruits ripen at various times, manual picking from small farmers is&nbsp;required. Both Theobroma cacao and Coffea Arabica needs about 5 years before producing berries or cherries. So after harvesting, cacao pods are opened, beans are removed and piled into large wooden containers for fermentation (covered with banana leaves) for 2-7 or sometimes even 10 days, depending on variety. Beans are turned in order to ferment evenly. During fermentation, a number of chemical reactions occur which help develop flavor.&nbsp;</p>\n        \n        <p><img alt=\"coffee tree nursery\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/1%20-%20coffee%20trees%20in%20a%20nursery_0.JPG?itok=OK49S8aO\" /></p>\n        \n        <p>As for coffee, many options for processing: dry, wet, honey, anaerobic and so on. Either process removes the pulp from the beans while developing varying degrees of aroma, body, acidity that compose the bean&rsquo;s flavor. Both beans are then dried in the sun to reduce moisture levels.</p>\n        \n        <p>Coffee beans then undergo milling, hulling, cleaning, grading, and polishing the green coffee beans. The post-harvest process is crucial for both beans alike as to ensure properly developed flavors and quality.&nbsp; So here comes the roasting part. Both cocoa and coffee beans are roasted to draw out the unique flavors of the bean&rsquo;s origin. This requires technique on the part of chocolate makers and coffee roasters, who work to find the right balance in the roasting.</p>\n        \n        <p><strong>Do you want to know more about cacao roasting?</strong></p>\n        \n        <p><a href=\"https://www.youtube.com/watch?v=HM2eOm3-ws4\" target=\"_blank\">Roasting Cacao - Episode 2 - Craft Chocolate TV</a></p>\n        \n        <p>&nbsp;</p>\n        \n        <p>&nbsp;</p>','thumbpost/1590465427.jpg','cacao-and-coffea-the-differences-and-similarities-of-chocolate-and-coffee-546','KEYWORDS,cacao,chocolate,coffee,flavor,flavor,pairing,flavour','0',0,'2020-05-25 21:06:05','2020-05-25 21:06:05'),(16,1,'Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee','<h1>Cacao and Coffea - the Differences and Similarities of Chocolate and Coffee</h1>\n \n        <p>Coffee and chocolate are often compared thanks to the overlap between their growing regions and the similarities in flavor notes.&nbsp; Both coffee and cacao&nbsp;share a huge flavor profile; over 600 aromatic compounds in cacao and more than 1000 in coffee!&nbsp;Let&rsquo;s dig into more similarities and differences between the two gorgeous plants!<br />\n        <strong>Differences</strong></p>\n        \n        <p>Coffee and cacao come obviously from two very different plants, from two different continents.&nbsp; Cocoa comes from Theobroma cacao also known as &lsquo;fruit of the gods&rsquo;- an evergreen tree with fruits and flowers growing directly on its trunk. An oblong fruit, called a pod, differs in size, depending on species and is as colorful as one can imagine (red, yellow, purple, mixed colors) and each pod contains 20-60 cocoa beans, surrounded by sugary and fragrant pulp. Approximately 7-14 pods are necessary to produce 450 grams of cocoa beans. Just to remind, coffee beans come from coffee cherries that produce two beans per cherry.</p>\n        \n        <p><img alt=\"cacao pods\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/cacao%20nibs.JPG?itok=yW8vrgoN\" /></p>\n        \n        <p>Just like coffee trees, cacao flourishes in cocoa belt: along or near the Equator in Latin America, the tropics of western Africa, Asia and India. Originaly, Lower Amazon (South America) is home to cacao, yet now is best grown in Africa. And coffee comes from Africa and Arabia (Ethiopia and Yemen), and now is best grown in South America, kind of a switch there, but it works. ?<img alt=\"cocoa fruit\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/IMG_7712.JPG?itok=bxwxOGIo\" /></p>\n        \n        <p>Coffee&nbsp;has&nbsp;two main species: Arabica and Robusta, from which various varieties have developed over time (e.g. Caturra, Typica, Bourbon, Castillo). Cocoa beans also have different varietals &ndash; researchers are still finding new genetics, but now we know that there are more than 10 major families of cacao (before cacao was classified into only 3 varieties/genetics - Criollo/Forastero/Trinitario). And CCN-51, which is a clone with high yield, great resistance to diseases. Criollo is delicate, fine, more expensive, white beans but less productive. Forastero is more disease resistant, heartier yet poorer quality. Trinitario is the Goldilocks in-between. Each varietal has unique characteristics in terms of appearance and especially flavor. Importantly, every step of the process has influence over its end-flavor. The main guys are: genetics, terroir and fermentation at origin, and roasting and conching (just for chocolate). Even transportation and storing will have an impact.</p>\n        \n        <p><img alt=\"theobroma cacao\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/theobroma%20cacao.JPG?itok=4rn8gjlZ\" /></p>\n        \n        <p>Additionally, chocolate and coffee differ in its description usage of &ldquo;dark&rdquo;. For chocolate, a &ldquo;dark&rdquo; chocolate is a reference to the ratio of cocoa solids to other ingredients. Thus the higher the concentration of cocoa solids and cocoa butter, the more &ldquo;dark&rdquo; it is. Craft chocolate bar is made using very few ingredients, sometimes only two: cocoa and sugar. However, when talking about coffee, &ldquo;dark&rdquo; means the type of roast. A dark roast means the coffee was over roasted to achieve a specific flavor profile, such as smokey, burnt and caramel tasting notes. A light roast means that the coffee was a bit less roasted and preserves flavors of the bean&rsquo;s origin like the fruity and floral notes.</p>\n        \n        <h2><strong>Similarities</strong></h2>\n        \n        <p>&nbsp;</p>\n        \n        <p>es, the beans come from a different plant, but they serve quite a similar purpose: coffee and cacao should stimulate. We talk about those alkaloids, caffeine for coffee and theobromine for cacao. Cocoa was a ceremonial drink of Mayan and Aztek gods, then preferred by European royalty and much later became available to the general public.</p>\n        \n        <p>So both beans contain significant amounts of antioxidants - cacao more than coffee. Theobromine only occurs in cacao and tea,&nbsp;<a href=\"https://www.nutritionadvance.com/theobromine-benefits/\">thus it stimulates mildly and less effectively as caffeine.</a>&nbsp;&nbsp;(FYI A 70% dark chocolate bar can have as much as 810 mg of theobromine!) Also, those two play a role in keeping our brain and cognition sharp as we age. Dietary flavanoids found in cacao have been proved to protect against neuroinflammation and promote learning and memory. Our cup of Joe or caffeine has been shown to promote learning and memory with just a cup a day!</p>\n        \n        <p>The processes of fermentation, drying and roasting has many parallels. Let&rsquo;s look into those. As both fruits ripen at various times, manual picking from small farmers is&nbsp;required. Both Theobroma cacao and Coffea Arabica needs about 5 years before producing berries or cherries. So after harvesting, cacao pods are opened, beans are removed and piled into large wooden containers for fermentation (covered with banana leaves) for 2-7 or sometimes even 10 days, depending on variety. Beans are turned in order to ferment evenly. During fermentation, a number of chemical reactions occur which help develop flavor.&nbsp;</p>\n        \n        <p><img alt=\"coffee tree nursery\" src=\"https://www.baristainstitute.com/sites/default/files/styles/1x_width_100_wysiwyg/public/images/1%20-%20coffee%20trees%20in%20a%20nursery_0.JPG?itok=OK49S8aO\" /></p>\n        \n        <p>As for coffee, many options for processing: dry, wet, honey, anaerobic and so on. Either process removes the pulp from the beans while developing varying degrees of aroma, body, acidity that compose the bean&rsquo;s flavor. Both beans are then dried in the sun to reduce moisture levels.</p>\n        \n        <p>Coffee beans then undergo milling, hulling, cleaning, grading, and polishing the green coffee beans. The post-harvest process is crucial for both beans alike as to ensure properly developed flavors and quality.&nbsp; So here comes the roasting part. Both cocoa and coffee beans are roasted to draw out the unique flavors of the bean&rsquo;s origin. This requires technique on the part of chocolate makers and coffee roasters, who work to find the right balance in the roasting.</p>\n        \n        <p><strong>Do you want to know more about cacao roasting?</strong></p>\n        \n        <p><a href=\"https://www.youtube.com/watch?v=HM2eOm3-ws4\" target=\"_blank\">Roasting Cacao - Episode 2 - Craft Chocolate TV</a></p>\n        \n        <p>&nbsp;</p>\n        \n        <p>&nbsp;</p>','thumbpost/1590465427.jpg','cacao-and-coffea-the-differences-and-similarities-of-chocolate-and-coffee-1844','KEYWORDS,cacao,chocolate,coffee,flavor,flavor,pairing,flavour','0',0,'2020-05-25 21:06:05','2020-05-25 21:06:05'),(17,3,'My title','<p>qweqweqweasdasd</p>\r\n\r\n<p>hello friend!</p>','thumbpost/1590485867.jpg','my-title','TRÒ CHƠI KỲ ẢO','1',0,'2020-05-26 02:37:47','2020-05-26 02:46:39'),(18,3,'asdasd sd ad sa','<p>eiwoqewqioewqewq</p>','thumbpost/1591363122.jfif','asdasd-sd-ad-sa','sad,dsadsa','0',0,'2020-06-05 06:18:42','2020-06-05 06:18:42'),(19,3,'Banh mi goi','<p>đ&acirc;sdasdas</p>','thumbpost/1591365393.jpg','banh-mi-goi','dsad,dsadas','0',0,'2020-06-05 06:56:33','2020-06-05 06:56:33'),(21,3,'My title1','<p>dsadsadasdasd</p>','thumbpost/1591366203.jpg','my-title1','anohana','1',0,'2020-06-05 06:58:14','2020-06-14 01:22:58');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) unsigned NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,7,'Cornish - Mackerel',3.00,'A small river named Duden flows by their place and supplies','uploads/1589699318.jpg','2020-05-17 00:08:38','2020-05-17 00:08:38'),(2,7,'Roasted Steak',3.00,'A small river named Duden flows by their place and supplies','uploads/1589699414.jpg','2020-05-17 00:10:14','2020-05-17 00:10:14'),(3,7,'Seasonal Soup',3.00,'A small river named Duden flows by their place and supplies','uploads/1589699485.jpg','2020-05-17 00:11:25','2020-05-17 00:11:25'),(4,7,'Chicken Curry',3.00,'A small river named Duden flows by their place and supplies','uploads/1589699507.jpg','2020-05-17 00:11:47','2020-05-17 00:11:47'),(5,8,'Sea Trout',3.00,'A small river named Duden flows by their place and supplies','uploads/1589699557.jpg','2020-05-17 00:12:38','2020-05-17 00:12:38'),(6,8,'Roasted Beef',3.00,'A small river named Duden flows by their place and supplies','uploads/1589699574.jpg','2020-05-17 00:12:54','2020-05-17 00:12:54'),(7,8,'Butter Fried Chicken',3.00,'A small river named Duden flows by their place and supplies','uploads/1589699588.jpg','2020-05-17 00:13:08','2020-05-17 00:13:08'),(8,8,'Chiken Filet',3.00,'A small river named Duden flows by their place and supplies','uploads/1589699613.jpg','2020-05-17 00:13:33','2020-05-17 00:13:33'),(9,9,'Roasted Steak 1',1.00,'A small river named Duden flows by their place and supplies','uploads/1589699736.jpg','2020-05-17 00:15:36','2020-05-17 00:15:36'),(10,9,'Seasonal Soup 1',3.00,'A small river named Duden flows by their place and supplies','uploads/1589699785.jpg','2020-05-17 00:16:25','2020-05-17 00:16:25'),(11,9,'Chicken Curry 1',3.00,'A small river named Duden flows by their place and supplies','uploads/1589699812.jpg','2020-05-17 00:16:52','2020-05-17 00:16:52'),(12,9,'Sea Trout 1',3.00,'A small river named Duden flows by their place and supplies','uploads/1589699833.jpg','2020-05-17 00:17:13','2020-05-17 00:17:13'),(13,10,'Roasted Beef 1',3.00,'A small river named Duden flows by their place and supplies','uploads/1589699849.jpg','2020-05-17 00:17:29','2020-05-17 00:18:22'),(14,10,'Butter Fried Chicken 1',3.00,'A small river named Duden flows by their place and supplies','uploads/1589699867.jpg','2020-05-17 00:17:47','2020-05-17 00:18:31'),(15,10,'Chiken Filet 1',3.00,'A small river named Duden flows by their place and supplies','uploads/1589699958.jpg','2020-05-17 00:19:18','2020-05-17 00:19:18'),(16,8,'test',1.00,'dsadsada','uploads/1591441215.jpg','2020-05-29 05:28:32','2020-06-06 04:00:15'),(18,7,'test 2',1.00,'dsadasdas','uploads/1591441187.jfif','2020-06-06 03:59:47','2020-06-06 03:59:47');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `comment_id` bigint unsigned NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replies`
--

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
INSERT INTO `replies` VALUES (1,3,3,'vui cc cut','2020-06-30 06:03:01','2020-06-30 06:03:01');
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'chay lai seed',NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'huynh dong','admin1@gmail.com','$2y$10$lEq9DAXABXiZSd5hapmgn.oWAhSmZWOFCUW2opfsA/gaAwS4rJ3hO','thumb/default_ava.jpg','common','2','0','2020-05-24 21:49:21','2020-06-02 06:27:07'),(3,'dong huynh','3120217020@ued.udn.vn','$2y$10$xiifv246Bbv9pPozjVojqOoLz.A7ivfBbpynKSEl9CeTNCB1Gqb8S','thumb/default_ava.jpg','common','3','0','2020-05-24 21:54:19','2020-05-24 21:54:19'),(4,'Dong Huynh',NULL,NULL,'thumb/1591355486.jpg','facebook','901401813655901','0','2020-06-05 04:11:26','2020-06-05 04:11:26'),(5,'dong','dsadas@gmail.com','$2y$10$/NN5wb7KV1IS9cmzE.CrIO5RMdeHX0MgflPzIabWQKz/A3MGEVK0K','thumb/default_ava.jpg','common','5','0','2020-06-15 01:41:35','2020-06-15 01:41:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-23 13:07:14
