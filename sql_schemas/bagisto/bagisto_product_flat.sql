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
-- Table structure for table `product_flat`
--

DROP TABLE IF EXISTS `product_flat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_flat` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `cost` decimal(12,4) DEFAULT NULL,
  `special_price` decimal(12,4) DEFAULT NULL,
  `special_price_from` date DEFAULT NULL,
  `special_price_to` date DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `color` int DEFAULT NULL,
  `color_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int DEFAULT NULL,
  `size_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int unsigned NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  `visible_individually` tinyint(1) DEFAULT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `width` decimal(12,4) DEFAULT NULL,
  `height` decimal(12,4) DEFAULT NULL,
  `depth` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_flat_unique_index` (`product_id`,`channel`,`locale`),
  KEY `product_flat_parent_id_foreign` (`parent_id`),
  CONSTRAINT `product_flat_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `product_flat` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_flat_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_flat`
--

LOCK TABLES `product_flat` WRITE;
/*!40000 ALTER TABLE `product_flat` DISABLE KEYS */;
INSERT INTO `product_flat` VALUES (1,'123','1','test','test','test',1,1,1,NULL,12.3000,1.5000,5.0000,NULL,NULL,23.0000,1,'Red',6,'S','2022-08-05 10:55:21','en','default',1,'2022-08-05 11:05:36',NULL,1,5.0000,12.3000,'test','','','',0.0000,0.0000,NULL);
/*!40000 ALTER TABLE `product_flat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-05 11:17:31
