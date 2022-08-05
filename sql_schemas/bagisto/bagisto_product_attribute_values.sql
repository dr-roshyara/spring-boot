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
-- Table structure for table `product_attribute_values`
--

DROP TABLE IF EXISTS `product_attribute_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_attribute_values` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_value` text COLLATE utf8mb4_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int DEFAULT NULL,
  `float_value` decimal(12,4) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` json DEFAULT NULL,
  `product_id` int unsigned NOT NULL,
  `attribute_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chanel_locale_attribute_value_index_unique` (`channel`,`locale`,`attribute_id`,`product_id`),
  KEY `product_attribute_values_product_id_foreign` (`product_id`),
  KEY `product_attribute_values_attribute_id_foreign` (`attribute_id`),
  CONSTRAINT `product_attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_attribute_values`
--

LOCK TABLES `product_attribute_values` WRITE;
/*!40000 ALTER TABLE `product_attribute_values` DISABLE KEYS */;
INSERT INTO `product_attribute_values` VALUES (1,'en','default','test',NULL,NULL,NULL,NULL,NULL,NULL,1,9),(2,'en','default','test',NULL,NULL,NULL,NULL,NULL,NULL,1,10),(3,NULL,NULL,'123',NULL,NULL,NULL,NULL,NULL,NULL,1,1),(4,'en','default','test',NULL,NULL,NULL,NULL,NULL,NULL,1,2),(5,NULL,NULL,'test',NULL,NULL,NULL,NULL,NULL,NULL,1,3),(6,NULL,'default',NULL,NULL,0,NULL,NULL,NULL,NULL,1,4),(7,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,5),(8,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,6),(9,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,7),(10,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,8),(11,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,1,23),(12,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,1,24),(13,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,26),(14,NULL,NULL,'1',NULL,NULL,NULL,NULL,NULL,NULL,1,27),(15,'en','default','',NULL,NULL,NULL,NULL,NULL,NULL,1,16),(16,'en','default','',NULL,NULL,NULL,NULL,NULL,NULL,1,17),(17,'en','default','',NULL,NULL,NULL,NULL,NULL,NULL,1,18),(18,NULL,NULL,NULL,NULL,NULL,12.3000,NULL,NULL,NULL,1,11),(19,NULL,'default',NULL,NULL,NULL,1.5000,NULL,NULL,NULL,1,12),(20,NULL,NULL,NULL,NULL,NULL,5.0000,NULL,NULL,NULL,1,13),(21,NULL,'default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,14),(22,NULL,'default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,15),(23,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,1,19),(24,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,1,20),(25,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,1,21),(26,NULL,NULL,'23',NULL,NULL,NULL,NULL,NULL,NULL,1,22);
/*!40000 ALTER TABLE `product_attribute_values` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-05 11:17:37
