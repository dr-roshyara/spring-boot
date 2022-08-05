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
-- Table structure for table `core_config`
--

DROP TABLE IF EXISTS `core_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_config_channel_id_foreign` (`channel_code`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_config`
--

LOCK TABLES `core_config` WRITE;
/*!40000 ALTER TABLE `core_config` DISABLE KEYS */;
INSERT INTO `core_config` VALUES (1,'catalog.products.guest-checkout.allow-guest-checkout','1',NULL,NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(2,'emails.general.notifications.emails.general.notifications.verification','1',NULL,NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(3,'emails.general.notifications.emails.general.notifications.registration','1',NULL,NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(4,'emails.general.notifications.emails.general.notifications.customer','1',NULL,NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(5,'emails.general.notifications.emails.general.notifications.new-order','1',NULL,NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(6,'emails.general.notifications.emails.general.notifications.new-admin','1',NULL,NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(7,'emails.general.notifications.emails.general.notifications.new-invoice','1',NULL,NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(8,'emails.general.notifications.emails.general.notifications.new-refund','1',NULL,NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(9,'emails.general.notifications.emails.general.notifications.new-shipment','1',NULL,NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(10,'emails.general.notifications.emails.general.notifications.new-inventory-source','1',NULL,NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(11,'emails.general.notifications.emails.general.notifications.cancel-order','1',NULL,NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(12,'catalog.products.homepage.out_of_stock_items','1',NULL,NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(13,'customer.settings.social_login.enable_facebook','1','default',NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(14,'customer.settings.social_login.enable_twitter','1','default',NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(15,'customer.settings.social_login.enable_google','1','default',NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(16,'customer.settings.social_login.enable_linkedin','1','default',NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(17,'customer.settings.social_login.enable_github','1','default',NULL,'2022-08-05 08:50:30','2022-08-05 08:50:30'),(18,'general.content.shop.compare_option','1','default','en','2022-08-05 08:50:30','2022-08-05 08:50:30'),(19,'general.content.shop.compare_option','1','default','fr','2022-08-05 08:50:30','2022-08-05 08:50:30'),(20,'general.content.shop.compare_option','1','default','ar','2022-08-05 08:50:30','2022-08-05 08:50:30'),(21,'general.content.shop.compare_option','1','default','de','2022-08-05 08:50:30','2022-08-05 08:50:30'),(22,'general.content.shop.compare_option','1','default','es','2022-08-05 08:50:30','2022-08-05 08:50:30'),(23,'general.content.shop.compare_option','1','default','fa','2022-08-05 08:50:30','2022-08-05 08:50:30'),(24,'general.content.shop.compare_option','1','default','it','2022-08-05 08:50:30','2022-08-05 08:50:30'),(25,'general.content.shop.compare_option','1','default','ja','2022-08-05 08:50:30','2022-08-05 08:50:30'),(26,'general.content.shop.compare_option','1','default','nl','2022-08-05 08:50:30','2022-08-05 08:50:30'),(27,'general.content.shop.compare_option','1','default','pl','2022-08-05 08:50:30','2022-08-05 08:50:30'),(28,'general.content.shop.compare_option','1','default','pt_BR','2022-08-05 08:50:30','2022-08-05 08:50:30'),(29,'general.content.shop.compare_option','1','default','tr','2022-08-05 08:50:30','2022-08-05 08:50:30'),(30,'general.content.shop.wishlist_option','1','default','en','2022-08-05 08:50:30','2022-08-05 08:50:30'),(31,'general.content.shop.wishlist_option','1','default','fr','2022-08-05 08:50:30','2022-08-05 08:50:30'),(32,'general.content.shop.wishlist_option','1','default','ar','2022-08-05 08:50:30','2022-08-05 08:50:30'),(33,'general.content.shop.wishlist_option','1','default','de','2022-08-05 08:50:30','2022-08-05 08:50:30'),(34,'general.content.shop.wishlist_option','1','default','es','2022-08-05 08:50:30','2022-08-05 08:50:30'),(35,'general.content.shop.wishlist_option','1','default','fa','2022-08-05 08:50:30','2022-08-05 08:50:30'),(36,'general.content.shop.wishlist_option','1','default','it','2022-08-05 08:50:30','2022-08-05 08:50:30'),(37,'general.content.shop.wishlist_option','1','default','ja','2022-08-05 08:50:30','2022-08-05 08:50:30'),(38,'general.content.shop.wishlist_option','1','default','nl','2022-08-05 08:50:30','2022-08-05 08:50:30'),(39,'general.content.shop.wishlist_option','1','default','pl','2022-08-05 08:50:30','2022-08-05 08:50:30'),(40,'general.content.shop.wishlist_option','1','default','pt_BR','2022-08-05 08:50:30','2022-08-05 08:50:30'),(41,'general.content.shop.wishlist_option','1','default','tr','2022-08-05 08:50:30','2022-08-05 08:50:30'),(42,'general.content.shop.image_search','1','default','en','2022-08-05 08:50:30','2022-08-05 08:50:30'),(43,'general.content.shop.image_search','1','default','fr','2022-08-05 08:50:30','2022-08-05 08:50:30'),(44,'general.content.shop.image_search','1','default','ar','2022-08-05 08:50:30','2022-08-05 08:50:30'),(45,'general.content.shop.image_search','1','default','de','2022-08-05 08:50:30','2022-08-05 08:50:30'),(46,'general.content.shop.image_search','1','default','es','2022-08-05 08:50:30','2022-08-05 08:50:30'),(47,'general.content.shop.image_search','1','default','fa','2022-08-05 08:50:30','2022-08-05 08:50:30'),(48,'general.content.shop.image_search','1','default','it','2022-08-05 08:50:30','2022-08-05 08:50:30'),(49,'general.content.shop.image_search','1','default','ja','2022-08-05 08:50:30','2022-08-05 08:50:30'),(50,'general.content.shop.image_search','1','default','nl','2022-08-05 08:50:30','2022-08-05 08:50:30'),(51,'general.content.shop.image_search','1','default','pl','2022-08-05 08:50:30','2022-08-05 08:50:30'),(52,'general.content.shop.image_search','1','default','pt_BR','2022-08-05 08:50:30','2022-08-05 08:50:30'),(53,'general.content.shop.image_search','1','default','tr','2022-08-05 08:50:30','2022-08-05 08:50:30'),(54,'general.general.locale_options.weight_unit','kgs','default',NULL,'2022-08-05 09:04:09','2022-08-05 09:04:09');
/*!40000 ALTER TABLE `core_config` ENABLE KEYS */;
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
