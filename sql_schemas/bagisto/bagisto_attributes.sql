CREATE DATABASE  IF NOT EXISTS `bagisto` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bagisto`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: bagisto
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_unique` tinyint(1) NOT NULL DEFAULT '0',
  `value_per_locale` tinyint(1) NOT NULL DEFAULT '0',
  `value_per_channel` tinyint(1) NOT NULL DEFAULT '0',
  `is_filterable` tinyint(1) NOT NULL DEFAULT '0',
  `is_configurable` tinyint(1) NOT NULL DEFAULT '0',
  `is_user_defined` tinyint(1) NOT NULL DEFAULT '1',
  `is_visible_on_front` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `swatch_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_in_flat` tinyint(1) NOT NULL DEFAULT '1',
  `is_comparable` tinyint(1) NOT NULL DEFAULT '0',
  `enable_wysiwyg` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `attributes_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (1,'sku','SKU','text',NULL,1,1,1,0,0,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(2,'name','Name','text',NULL,3,1,0,1,1,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,1,0),(3,'url_key','URL Key','text',NULL,4,1,1,0,0,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(4,'tax_category_id','Tax Category','select',NULL,5,0,0,0,1,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(5,'new','New','boolean',NULL,6,0,0,0,0,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(6,'featured','Featured','boolean',NULL,7,0,0,0,0,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(7,'visible_individually','Visible Individually','boolean',NULL,9,1,0,0,0,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(8,'status','Status','boolean',NULL,10,1,0,0,0,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(9,'short_description','Short Description','textarea',NULL,11,1,0,1,1,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(10,'description','Description','textarea',NULL,12,1,0,1,1,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,1,0),(11,'price','Price','price','decimal',13,1,0,0,0,1,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,1,0),(12,'cost','Cost','price','decimal',14,0,0,0,1,0,0,1,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(13,'special_price','Special Price','price','decimal',15,0,0,0,0,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(14,'special_price_from','Special Price From','date',NULL,16,0,0,0,1,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(15,'special_price_to','Special Price To','date',NULL,17,0,0,0,1,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(16,'meta_title','Meta Title','textarea',NULL,18,0,0,1,1,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(17,'meta_keywords','Meta Keywords','textarea',NULL,20,0,0,1,1,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(18,'meta_description','Meta Description','textarea',NULL,21,0,0,1,1,0,0,1,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(19,'length','Length','text','decimal',22,0,0,0,0,0,0,1,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(20,'width','Width','text','decimal',23,0,0,0,0,0,0,1,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(21,'height','Height','text','decimal',24,0,0,0,0,0,0,1,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(22,'weight','Weight','text','decimal',25,1,0,0,0,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(23,'color','Color','select',NULL,26,0,0,0,0,1,1,1,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(24,'size','Size','select',NULL,27,0,0,0,0,1,1,1,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(25,'brand','Brand','select',NULL,28,0,0,0,0,1,0,1,1,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(26,'guest_checkout','Guest Checkout','boolean',NULL,8,1,0,0,0,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0),(27,'product_number','Product Number','text',NULL,2,0,1,0,0,0,0,0,0,'2022-08-05 08:50:30','2022-08-05 08:50:30',NULL,1,0,0);
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-05 11:17:29
