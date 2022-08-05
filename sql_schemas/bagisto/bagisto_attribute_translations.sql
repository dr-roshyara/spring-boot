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
-- Table structure for table `attribute_translations`
--

DROP TABLE IF EXISTS `attribute_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `attribute_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`),
  CONSTRAINT `attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_translations`
--

LOCK TABLES `attribute_translations` WRITE;
/*!40000 ALTER TABLE `attribute_translations` DISABLE KEYS */;
INSERT INTO `attribute_translations` VALUES (1,'en','SKU',1),(2,'en','Name',2),(3,'en','URL Key',3),(4,'en','Tax Category',4),(5,'en','New',5),(6,'en','Featured',6),(7,'en','Visible Individually',7),(8,'en','Status',8),(9,'en','Short Description',9),(10,'en','Description',10),(11,'en','Price',11),(12,'en','Cost',12),(13,'en','Special Price',13),(14,'en','Special Price From',14),(15,'en','Special Price To',15),(16,'en','Meta Description',16),(17,'en','Meta Keywords',17),(18,'en','Meta Description',18),(19,'en','Width',19),(20,'en','Height',20),(21,'en','Depth',21),(22,'en','Weight',22),(23,'en','Color',23),(24,'en','Size',24),(25,'en','Brand',25),(26,'en','Allow Guest Checkout',26),(27,'en','Product Number',27);
/*!40000 ALTER TABLE `attribute_translations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-05 11:17:27
