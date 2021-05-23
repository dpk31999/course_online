-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: courseonline
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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (3,'Huynh Van Dong','d01295306466@gmail.com','$2y$10$2epCB13o/qLRs1XYze2oDOjMFz8Me1Vi367XQwJy6AJvK4c628roS','0839243436','Admin','2021-05-14 20:43:16','2021-05-21 23:38:56'),(5,'Tran Minh Thuan','thuanvn@gmail.com','$2y$10$4jhLfnfkpJzUgmtzSVnRd.YTNJyt3eEVI/6z0Kq3033qvItFs1zRO','0915897375','Manager','2021-05-15 00:06:26','2021-05-21 23:48:16'),(7,'dsadsadsa','hvd.03.12.99@gmail.com','$2y$10$9g1W0d6XawRmHYcE1M1Ff.2UIw15hFtK/PfUbEh27FFosTE6SQQCW','0916510664','Manager','2021-05-15 02:03:36','2021-05-15 02:03:36'),(8,'jhgjhgjh','0839243436@gmail.com','$2y$10$UN4SBiyum0M3Eg1IXJwbAO43vYfOxgRfWz55MsKdTBFFNG4KmZv1.','0915897375','Manager','2021-05-19 07:54:33','2021-05-19 07:54:33');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_rooms`
--

DROP TABLE IF EXISTS `class_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_rooms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint unsigned NOT NULL,
  `schedule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_rooms_course_id_foreign` (`course_id`),
  CONSTRAINT `class_rooms_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_rooms`
--

LOCK TABLES `class_rooms` WRITE;
/*!40000 ALTER TABLE `class_rooms` DISABLE KEYS */;
INSERT INTO `class_rooms` VALUES (1,1,'Evening 3-5-7','2021-03-06','2021-05-15 06:04:25','2021-05-15 06:12:54'),(3,3,'Evening 2-4-6','2021-03-06','2021-05-15 06:05:22','2021-05-15 06:05:22'),(4,4,'Evening 3-5-7','2021-03-06','2021-05-15 06:05:43','2021-05-15 06:05:43'),(5,2,'Evening 2-4-6','2021-03-08','2021-05-15 06:05:58','2021-05-15 06:05:58'),(6,3,'Afternoon 2-4-6','2021-07-07','2021-05-19 07:42:45','2021-05-21 02:29:51'),(7,2,'Morning 2-4-6','2021-05-06','2021-05-22 23:10:25','2021-05-22 23:10:25');
/*!40000 ALTER TABLE `class_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_user`
--

DROP TABLE IF EXISTS `class_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `class_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_user_user_id_foreign` (`user_id`),
  KEY `class_user_class_id_foreign` (`class_id`),
  CONSTRAINT `class_user_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `class_rooms` (`id`),
  CONSTRAINT `class_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_user`
--

LOCK TABLES `class_user` WRITE;
/*!40000 ALTER TABLE `class_user` DISABLE KEYS */;
INSERT INTO `class_user` VALUES (3,6,1,NULL,NULL),(4,6,5,NULL,NULL),(5,6,4,NULL,NULL),(7,8,3,NULL,NULL),(8,8,1,NULL,NULL);
/*!40000 ALTER TABLE `class_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_time` int NOT NULL,
  `url_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_admin_id_foreign` (`admin_id`),
  CONSTRAINT `courses_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,5,'New Front-End Programming',4,'uploads/image_course/1621079723.png',399,'Front end Programming course aims to train professional Front end programmers, meeting the work needs of today\'s software companies. Front end programmers are people who use languages ​​such as HTML, CSS, and JavaScript to create Web application interfaces that meet the increasing requirements of user interaction.','2021-05-15 03:02:40','2021-05-19 07:34:42'),(2,5,'IOS – Swift Programming',5,'uploads/image_course/1621074992.jpg',349,'The iOS Programming course equips you with the knowledge and skills to become a professional programmer on the basis of Apple devices such as iPhone, iPad, iWatch, Macbook... software companies today.','2021-05-15 03:36:32','2021-05-17 23:49:03'),(3,5,'Android -Kotlin Programming',5,'uploads/image_course/1621075040.jpg',299,'The Android Programming course equips you with knowledge, skills in programming languages, how to build applications, and working methods to help you become a professional Android Developer ready to work at software companies. ','2021-05-15 03:37:20','2021-05-17 23:49:17'),(4,5,'Software Testing',4,'uploads/image_course/1621075269.jpg',299,'Professional Software Testing course aims to help students approach software testing quickly and effectively. The course will not only help you get a job but also develop a good career later.','2021-05-15 03:41:09','2021-05-17 23:49:25');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_time` int NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exams_course_id_foreign` (`course_id`),
  CONSTRAINT `exams_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams`
--

LOCK TABLES `exams` WRITE;
/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` VALUES (1,1,'Mid-term test',2,'UnLock','2021-05-17 23:48:44','2021-05-20 21:59:28'),(2,1,'Final exam test',20,'Lock','2021-05-17 23:48:44','2021-05-20 21:21:21'),(3,2,'Mid-term test',20,'UnLock','2021-05-17 23:49:03','2021-05-17 23:49:03'),(4,2,'Final exam test',20,'Lock','2021-05-17 23:49:03','2021-05-20 21:57:02'),(5,3,'Mid-term test',20,'UnLock','2021-05-17 23:49:17','2021-05-17 23:49:17'),(6,3,'Final exam test',20,'Lock','2021-05-17 23:49:17','2021-05-20 21:52:39'),(7,4,'Mid-term test',20,'UnLock','2021-05-17 23:49:25','2021-05-17 23:49:25'),(8,4,'Final exam test',20,'Lock','2021-05-17 23:49:25','2021-05-20 21:52:43');
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `course_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_video` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lessons_course_id_foreign` (`course_id`),
  CONSTRAINT `lessons_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (1,1,'List interface in java','In this video we will discuss about What is List Interface and about its implementation classes. 1','<iframe width=\"922\" height=\"525\" src=\"https://www.youtube.com/embed/Ye95kwXDXIg\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>','2021-05-19 23:46:28','2021-05-20 00:19:23');
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_05_14_014930_create_admins_table',2),(5,'2021_05_14_043325_create_courses_table',3),(6,'2021_05_14_043407_create_exams_table',3),(7,'2021_05_14_043806_create_scores_table',3),(8,'2021_05_14_043934_create_questions_table',3),(9,'2021_05_14_044019_create_question_choices_table',3),(10,'2021_05_14_044103_create_course_user_table',3),(11,'2021_05_14_151804_create_class_rooms_table',4),(12,'2021_05_14_154043_create_class_user_table',4),(13,'2021_05_17_074250_create_note_privates_table',5),(14,'2021_05_17_074259_create_note_generals_table',5),(15,'2021_05_17_162953_create_questions_table',6),(16,'2021_05_20_060754_create_lessons_table',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note_generals`
--

DROP TABLE IF EXISTS `note_generals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note_generals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `class_id` bigint unsigned NOT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `note_generals_class_id_foreign` (`class_id`),
  KEY `note_generals_admin_id_foreign` (`admin_id`),
  CONSTRAINT `note_generals_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  CONSTRAINT `note_generals_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `class_rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_generals`
--

LOCK TABLES `note_generals` WRITE;
/*!40000 ALTER TABLE `note_generals` DISABLE KEYS */;
INSERT INTO `note_generals` VALUES (3,1,5,'test tieu de general','noi dung general','2021-05-17 05:35:42','2021-05-17 05:35:42'),(4,3,5,'thong bao chung','thong bao chung','2021-05-19 07:29:13','2021-05-19 07:29:13');
/*!40000 ALTER TABLE `note_generals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note_privates`
--

DROP TABLE IF EXISTS `note_privates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note_privates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `admin_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `note_privates_user_id_foreign` (`user_id`),
  KEY `note_privates_admin_id_foreign` (`admin_id`),
  CONSTRAINT `note_privates_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  CONSTRAINT `note_privates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_privates`
--

LOCK TABLES `note_privates` WRITE;
/*!40000 ALTER TABLE `note_privates` DISABLE KEYS */;
INSERT INTO `note_privates` VALUES (1,6,5,'test tieu de 4','test noi dung','2021-05-17 02:23:17','2021-05-19 07:30:04'),(2,8,5,'thong bao rieng','thong bao rieng','2021-05-19 07:29:40','2021-05-19 07:29:40'),(3,8,5,'thong bao rieng 2','thong bao rieng 2','2021-05-19 07:30:45','2021-05-19 07:30:45');
/*!40000 ALTER TABLE `note_privates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('hvd.03.12.99@gmail.com','$2y$10$mjKFsWM.l8PZJyL5Vjy0PeCrumtRdphQWtAo05bQgqiNXOOx5d92K','2021-05-21 22:25:18');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `exam_id` bigint unsigned NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_1` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_2` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_3` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_4` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_right` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_exam_id_foreign` (`exam_id`),
  CONSTRAINT `questions_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (3,1,'2 + 3 = ?','2','5','4','14','5','Easy','2021-05-18 23:22:48','2021-05-18 23:22:48'),(4,1,'12+ 3 = ?','15','4','51','5','15','Easy','2021-05-18 23:23:18','2021-05-18 23:23:18'),(5,1,'5 + 7','57','12','4','6','12','Easy','2021-05-18 23:23:42','2021-05-18 23:23:42'),(6,1,'3 + 4 = ?','7','14','21','5','7','Easy','2021-05-18 23:24:04','2021-05-18 23:24:04'),(7,1,'7 + 24','13','31','15','52','31','Easy','2021-05-18 23:24:30','2021-05-18 23:24:30'),(8,1,'23 + 25','24','37','48','46','48','Easy','2021-05-18 23:24:55','2021-05-18 23:24:55'),(9,1,'2 + 9','11','24','3','6','11','Easy','2021-05-18 23:25:27','2021-05-18 23:25:27'),(10,1,'56 - 3','55','53','59','40','53','Easy','2021-05-18 23:25:52','2021-05-18 23:25:52'),(11,1,'31 - 9','23','40','56','22','22','Easy','2021-05-18 23:26:21','2021-05-18 23:26:21'),(12,1,'2 * 3 = ?','5','6','7','4','6','Medium','2021-05-18 23:26:47','2021-05-18 23:26:47'),(13,1,'4 * 4 = ?','8','16','32','4','16','Medium','2021-05-18 23:27:25','2021-05-18 23:27:25'),(14,1,'4 / 2 = ?','2','6','8','12','2','Medium','2021-05-18 23:27:46','2021-05-18 23:27:46'),(15,1,'32 - 4 * 3','16','37','20','25','20','Medium','2021-05-18 23:28:17','2021-05-18 23:28:17'),(16,1,'35 / 5','8','40','105','7','7','Medium','2021-05-18 23:28:41','2021-05-18 23:28:41'),(17,1,'2 - 5 / 5','10','20','1','12','1','Medium','2021-05-18 23:29:04','2021-05-18 23:29:04'),(18,1,'3 + 6 / 2','9','6','3','12','6','Medium','2021-05-18 23:29:31','2021-05-18 23:29:31'),(19,1,'6 * 3 + 8 / 2 = ?','24','12','34','22','22','Medium','2021-05-18 23:30:05','2021-05-18 23:30:05'),(20,1,'3 / 3 = ?','6','1','2','4','1','Medium','2021-05-18 23:30:22','2021-05-18 23:30:22'),(21,1,'4 / 0 = ?','3','4','0','Lỗi','Lỗi','Medium','2021-05-18 23:31:15','2021-05-18 23:31:15'),(22,1,'111 * 111','111111','11','111','12321','12321','Hard','2021-05-18 23:32:00','2021-05-18 23:32:00'),(23,1,'x + 2 = 5','3','4','2','6','3','Hard','2021-05-18 23:32:35','2021-05-18 23:32:35'),(24,1,'x + 6 = 0','-6','5','2','6','-6','Hard','2021-05-18 23:33:03','2021-05-18 23:33:03'),(25,1,'x * 3 = 12','2','4','6','9','4','Hard','2021-05-18 23:33:28','2021-05-18 23:33:28'),(26,1,'x / 3 = 12','12','36','42','24','36','Hard','2021-05-18 23:34:01','2021-05-18 23:34:01'),(27,1,'12 / x = 6','2','8','10','4','2','Hard','2021-05-18 23:34:47','2021-05-18 23:34:47'),(28,1,'105 * x + 5 = 26','15','10','5','15','5','Hard','2021-05-18 23:35:30','2021-05-18 23:35:30'),(30,1,'x - 2 = 7','9','12','5','8','9','Hard','2021-05-18 23:36:24','2021-05-18 23:36:24'),(31,1,'9 - x + 5 = 12','2','12','10','7','2','Hard','2021-05-18 23:37:21','2021-05-18 23:37:21'),(32,1,'15 * 5 + x = 100','20','15','12','25','25','Hard','2021-05-18 23:37:59','2021-05-18 23:37:59'),(33,1,'1 + 1 = ?','2','3','4','6','2','Easy','2021-05-19 07:50:55','2021-05-19 07:50:55'),(34,4,'1 + 6 = ?','7','5','9','10','7','Easy','2021-05-19 07:51:44','2021-05-19 07:51:44'),(35,1,'1 + 10 = ?','11','10','12','8','11','Easy','2021-05-19 22:49:16','2021-05-19 22:55:51');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scores`
--

DROP TABLE IF EXISTS `scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `exam_id` bigint unsigned NOT NULL,
  `score` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `scores_user_id_foreign` (`user_id`),
  KEY `scores_exam_id_foreign` (`exam_id`),
  CONSTRAINT `scores_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  CONSTRAINT `scores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scores`
--

LOCK TABLES `scores` WRITE;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;
INSERT INTO `scores` VALUES (1,8,1,9.00,NULL,NULL),(9,6,1,10.00,NULL,NULL);
/*!40000 ALTER TABLE `scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `url_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (6,'Huỳnh Văn Đồng','hvd.03.12.99@gmail.com','0916510664','1999-03-12','/storage/uploads/image_course/1621224713.jpg','Active',NULL,'$2y$10$vnpxw2VQMtYGu8HM7bx//.nxrzDayg7Hprl.CNQUuZi8omz1RuLH2','FNG7nEPZ7JOZw5Zl3MuEUr8YP9zSZFMvCFModJPPP0GQDsvPHrphtajjUPvZ','2021-05-16 01:51:09','2021-05-21 22:38:11'),(8,'Huỳnh Văn Đồng','d01295306466@gmail.com','0839243436','1999-04-12','/storage/uploads/image_avatar/1621480983.jpg','Active',NULL,'$2y$10$fE9J9WiA.J92hyPuN2giDe6MOZhfz5FTrRccqjoncPBgq572gsWQO','7O7laBJNZaGsEu5dDVLnTlnVafv7LpFF7AmXx4PXo7CHV1MIVUkb9nwh0WE7','2021-05-19 07:24:25','2021-05-22 05:50:48');
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

-- Dump completed on 2021-05-23 13:16:36
