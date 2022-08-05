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
-- Table structure for table `cms_page_translations`
--

DROP TABLE IF EXISTS `cms_page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_page_translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cms_page_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_translations_cms_page_id_url_key_locale_unique` (`cms_page_id`,`url_key`,`locale`),
  CONSTRAINT `cms_page_translations_cms_page_id_foreign` FOREIGN KEY (`cms_page_id`) REFERENCES `cms_pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page_translations`
--

LOCK TABLES `cms_page_translations` WRITE;
/*!40000 ALTER TABLE `cms_page_translations` DISABLE KEYS */;
INSERT INTO `cms_page_translations` VALUES (1,'About Us','about-us','<div class=\"static-container\"><div class=\"mb-5\">About us page content</div></div>','about us','','aboutus','en',1),(2,'Return Policy','return-policy','<div class=\"static-container\"><div class=\"mb-5\">Return policy page content</div></div>','return policy','','return, policy','en',2),(3,'Refund Policy','refund-policy','<div class=\"static-container\"><div class=\"mb-5\">Refund policy page content</div></div>','Refund policy','','refund, policy','en',3),(4,'Terms & Conditions','terms-conditions','<div class=\"static-container\"><div class=\"mb-5\">Terms & conditions page content</div></div>','Terms & Conditions','','term, conditions','en',4),(5,'Terms of use','terms-of-use','<div class=\"static-container\"><div class=\"mb-5\">Terms of use page content</div></div>','Terms of use','','term, use','en',5),(6,'Contact Us','contact-us','<div class=\"static-container\"><div class=\"mb-5\">Contact us page content</div></div>','Contact Us','','contact, us','en',6),(7,'Customer Service','cutomer-service','<div class=\"static-container\"><div class=\"mb-5\">Customer service  page content</div></div>','Customer Service','','customer, service','en',7),(8,'What\'s New','whats-new','<div class=\"static-container\"><div class=\"mb-5\">What\'s New page content</div></div>','What\'s New','','new','en',8),(9,'Payment Policy','payment-policy','<div class=\"static-container\"><div class=\"mb-5\">Payment Policy page content</div></div>','Payment Policy','','payment, policy','en',9),(10,'Shipping Policy','shipping-policy','<div class=\"static-container\"><div class=\"mb-5\">Shipping Policy  page content</div></div>','Shipping Policy','','shipping, policy','en',10),(11,'Privacy Policy','privacy-policy','<div class=\"static-container\"><div class=\"mb-5\">Privacy Policy  page content</div></div>','Privacy Policy','','privacy, policy','en',11);
/*!40000 ALTER TABLE `cms_page_translations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-05 11:17:26
