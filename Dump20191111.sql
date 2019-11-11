-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: inqc2
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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'sdfsdfs','iphone'),(2,'sdfsdfsddadaa','android'),(3,'sdfsdfsddadaaxzczcxzxc','window');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_customers`
--

DROP TABLE IF EXISTS `category_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_customers` (
  `category_id` bigint(20) NOT NULL,
  `customers_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_ks340ow86f58bby9s540n0d4k` (`customers_id`),
  KEY `FK9u3k2i6ey86w3mk5j09m0py4a` (`category_id`),
  CONSTRAINT `FK57j3qpo7ed5ytk33bi9ist9gy` FOREIGN KEY (`customers_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK9u3k2i6ey86w3mk5j09m0py4a` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_customers`
--

LOCK TABLES `category_customers` WRITE;
/*!40000 ALTER TABLE `category_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_promotions`
--

DROP TABLE IF EXISTS `category_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_promotions` (
  `category_id` bigint(20) NOT NULL,
  `promotions_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_9x8ss2rfvi89wux3ms50h74vu` (`promotions_id`),
  KEY `FKpu0ke3sn2ewyniyraidaj5xj7` (`category_id`),
  CONSTRAINT `FK4syma5n5eh2ddske86lku1yfu` FOREIGN KEY (`promotions_id`) REFERENCES `promotion` (`id`),
  CONSTRAINT `FKpu0ke3sn2ewyniyraidaj5xj7` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_promotions`
--

LOCK TABLES `category_promotions` WRITE;
/*!40000 ALTER TABLE `category_promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (12),(12),(12);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `created_time` date DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_url` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (4,'2019-11-09','zxczczcx','images.jpeg','zxczcxzczxcz','zczczcxzc','zxczczcz','Hiện',1),(5,'2019-11-09','sadsadasd','images (2).jpeg','window','asdasdasdas','asdasdasd','Hiện',3),(6,'2019-11-09','sádadáasdasáda','images.png','tạo giỏ hoa mới','sadsadád','tạo-giỏ-hoa-mới','Hiện',2),(7,'2019-11-09','áđâsdádasad','images.jpeg','hjhkh fhgf fghf dghdg','ádasdasdsadádasda','hjhkh-fhgf-fghf-dghdg','Hiện',2),(9,'2019-11-10','&lt;h1&gt;&lt;strong&gt;dsd&lt;/strong&gt;&lt;/h1&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;\r\n	&lt;h1&gt;&lt;strong&gt;dsdsddddddsdds&lt;/strong&gt;&lt;/h1&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;dsdsdsd&lt;/strong&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;fdsfdsfs&lt;/strong&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n','download.jpeg','dsdsd dsd','dsdsd','dsdsd-dsd','Hiện',1),(11,'2019-11-10','&lt;p&gt;asdasdasdasdsadsadas&lt;/p&gt;\r\n\r\n&lt;p&gt;dasdasdasd&lt;/p&gt;\r\n','images (1).jpeg','asdadsa','asdasdasdasdasdasdasdsad','asdadsa','Hiện',3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion` (
  `id` bigint(20) NOT NULL,
  `created_date` date DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `from_date` date NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_date` date NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKok7am2wl7u75y5ssfbcmwcs16` (`category_id`),
  CONSTRAINT `FKok7am2wl7u75y5ssfbcmwcs16` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (10,'2019-11-10','&lt;ol&gt;\r\n	&lt;li&gt;&lt;em&gt;&lt;strong&gt;dsds&lt;/strong&gt;&lt;/em&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;em&gt;&lt;strong&gt;dddsd&lt;/strong&gt;&lt;/em&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n\r\n&lt;p&gt;dsdsd&lt;/p&gt;\r\n\r\n&lt;p&gt;dsadsa&lt;/p&gt;\r\n\r\n&lt;p&gt;dsad&lt;/p&gt;\r\n','2019-11-03','images (2).jpeg','km 1dd','Ẩn','2019-11-04',2);
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-11 22:20:03
