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
INSERT INTO `category` VALUES (13,'Áo mưa','ÁO MƯA QUÀ TẶNG'),(14,'Áo thun','ÁO THUN ĐỒNG PHỤC'),(15,'Bao bì','BAO BÌ SẢN PHẨM'),(16,'QUÀ TẶNG','DỊCH VỤ TẶNG QUÀ'),(17,'HỘP GIẤY','HỘP GIẤY CHO SẢN PHẨM'),(18,'IN TÚI VẢI TÚI GIẤY','IN TÚI VẢI TÚI GIẤY'),(19,'KHO THANH LÝ QUÀ TẶNG','KHO THANH LÝ QUÀ TẶNG'),(20,'LÀM Ô DÙ QUẢNG CÁO','LÀM Ô DÙ QUẢNG CÁO'),(21,'MŨ VÀ NÓN QUÀ TẶNG','MŨ VÀ NÓN QUÀ TẶNG'),(22,'NHẬN LỊCH TẾT','NHẬN LỊCH TẾT');
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
  `create_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (12,'0979293402','2019-11-11');
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
INSERT INTO `hibernate_sequence` VALUES (31),(31),(31);
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
INSERT INTO `product` VALUES (23,'2019-11-11','&lt;p&gt;&lt;strong&gt;Xưởng may t&amp;uacute;i vải&lt;/strong&gt;&amp;nbsp;chuy&amp;ecirc;n sản xuất cung cấp sỉ lẻ&amp;nbsp;&lt;strong&gt;t&amp;uacute;i vải&amp;nbsp;&lt;/strong&gt;cao cấp theo y&amp;ecirc;u cầu của qu&amp;yacute; kh&amp;aacute;ch, với kinh nghiệm sản xuất&amp;nbsp;&lt;strong&gt;t&amp;uacute;i vải&lt;/strong&gt;, ch&amp;uacute;ng t&amp;ocirc;i cho ra mắt nhiều sản phẩm tự thiết kế độc đ&amp;aacute;o với chất liệu&amp;nbsp;&lt;strong&gt;vải canvas&lt;/strong&gt;&amp;nbsp;v&amp;agrave; đường may sắc n&amp;eacute;t n&amp;ecirc;n sản phẩm của ch&amp;uacute;ng t&amp;ocirc;i được kh&amp;aacute;ch h&amp;agrave;ng tin tưởng v&amp;agrave; biết đến dụa tr&amp;ecirc;n c&amp;aacute;c uy t&amp;iacute;n trong lĩnh vực sản xuất v&amp;agrave; cung cấp.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Xưởng may t&amp;uacute;i vải&amp;nbsp;&lt;/strong&gt;của ch&amp;uacute;ng t&amp;ocirc;i đ&amp;atilde; cho ra thị trường rất nhiều mẫu sản phẩm t&amp;uacute;i vải như&amp;nbsp;&lt;strong&gt;t&amp;uacute;i vải canvas&lt;/strong&gt;&amp;nbsp;cho kh&amp;aacute;ch h&amp;agrave;ng c&amp;aacute; t&amp;iacute;nh mang đậm phong c&amp;aacute;ch ki&amp;ecirc;u h&amp;atilde;nh v&amp;agrave;&amp;nbsp;&lt;strong&gt;t&amp;uacute;i vải tote&lt;/strong&gt;&amp;nbsp;mang phong c&amp;aacute;ch điệu đ&amp;agrave; v&amp;agrave; nữ t&amp;iacute;nh.&lt;/p&gt;\r\n','tui-vai-canvas-5.jpg','Túi vải canvas','Sản xuất và cung cấp túi vải theo yêu cầu, khách hàng có thể đặt số lượng bất kỳ, nhận in quảng cáo túi vải theo hình độc quyền của quý khách','Túi-vải-canvas','Hiện',18),(24,'2019-11-11','&lt;p&gt;&lt;strong&gt;Xưởng in lịch tại tphcm&lt;/strong&gt;&amp;nbsp;l&amp;agrave; đơn vị chuy&amp;ecirc;n sản xuất v&amp;agrave; in ấn c&amp;aacute;c loại lịch theo đơn đặt h&amp;agrave;ng của qu&amp;yacute; kh&amp;aacute;ch.&lt;/p&gt;\r\n\r\n&lt;p&gt;Với thiết bị m&amp;aacute;y m&amp;oacute;c hiện đại v&amp;agrave; nhiều năm kinh nghiệm trong lĩnh vực in lịch,&amp;nbsp;&lt;strong&gt;xưởng in lịch tại tphcm&lt;/strong&gt;&amp;nbsp;của ch&amp;uacute;ng t&amp;ocirc;i&amp;nbsp;&lt;strong&gt;nhận in lịch tết&lt;/strong&gt;&amp;nbsp;theo y&amp;ecirc;u cầu của c&amp;aacute;c doanh nghiệp.&lt;/p&gt;\r\n\r\n&lt;p&gt;Với đội ngũ thiết kế trẻ, ch&amp;uacute;ng t&amp;ocirc;i lu&amp;ocirc;n cho kh&amp;aacute;ch h&amp;agrave;ng những sản phẩm sắc n&amp;eacute;t v&amp;agrave; đầy &amp;yacute; nghĩa. Kh&amp;aacute;ch h&amp;agrave;ng c&amp;oacute; nhu cầu t&amp;igrave;m&amp;nbsp;&lt;strong&gt;nơi in lịch tết tại tphcm&lt;/strong&gt;&amp;nbsp;vui l&amp;ograve;ng li&amp;ecirc;n hệ với&amp;nbsp;&lt;strong&gt;xưởng in lịch&amp;nbsp;&lt;/strong&gt;của ch&amp;uacute;ng t&amp;ocirc;i để b&amp;aacute;o gia tốt nhất.&lt;/p&gt;\r\n','in-lich-tet-919x1024.jpg','Nhận in lịch tết','Nhận in lịch tết là dịch vụ của inquangcao.top với xưởng in lịch tết tại tphcm chúng tôi nhận in tất cả các mẫu lịch theo yêu cầu của quý khách.\r\n\r\nLỊCH ĐỂ BÀN- LỊCH TREO TƯỜNG – LỊCH BLOC\r\n\r\nMiễn phí thiết kế, miễn phí in mẫu test, hình ảnh độc quyền theo yêu cầu.\r\n\r\nXưởng in lịch của chúng tôi rất hân hạnh phục vụ quý khách.','Nhận-in-lịch-tết','Hiện',22),(27,'2019-11-11','&lt;p&gt;&lt;strong&gt;Xưởng in bao b&amp;igrave; tại tphcm&lt;/strong&gt;&amp;nbsp;l&amp;agrave; nơi nhận sản xuất v&amp;agrave;&amp;nbsp;&lt;strong&gt;in ấn bao b&amp;igrave;&lt;/strong&gt;&amp;nbsp;theo y&amp;ecirc;u cầu.&lt;/p&gt;\r\n\r\n&lt;p&gt;Với thiết bị hiện đại nhập khẩu ch&amp;uacute;ng t&amp;ocirc;i l&amp;agrave; đơn vị sản xuất v&amp;agrave; cung cấp tất cả c&amp;aacute;c loại bao b&amp;igrave; theo y&amp;ecirc;u cầu của qu&amp;yacute; kh&amp;aacute;ch với chất lượng tốt nhất v&amp;agrave; uy t&amp;iacute;n nhất.&lt;/p&gt;\r\n\r\n&lt;p&gt;Ch&amp;uacute;ng t&amp;ocirc;i lu&amp;ocirc;n cam kết về tiến độ v&amp;agrave; mẫu m&amp;atilde; theo đ&amp;uacute;ng y&amp;ecirc;u cầu của qu&amp;yacute; kh&amp;aacute;ch. Kh&amp;aacute;ch h&amp;agrave;ng c&amp;oacute; nhu cầu&amp;nbsp;in bao b&amp;igrave;&amp;nbsp;vui l&amp;ograve;ng li&amp;ecirc;n hệ với ch&amp;uacute;ng t&amp;ocirc;i để b&amp;aacute;o gi&amp;aacute; tốt nhất.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n','in-bao-bi-san-pham.jpg','Nhận in ấn bao bì','Xưởng in bao bì tại tphcm rất vui được hợp tác cùng quý khách.\r\n\r\nNhận in tất cả các số lượng theo yêu cầu của quý khách, tiến độ giao hàng nhanh, đúng cam kết.\r\n\r\nXưởng In Uy Tín, Máy Móc Hiện Đại, In Chuẩn Màu, Giao Hàng Đúng Hẹn, Có Chiết Khấu Cao. In Nhanh Và Chất Lượng. Cam Kết Giá Sập Sàn. Máy Móc In Hiện Đại. Hỗ Trợ Thiết Kế Và In Mẫu.','Nhận-in-ấn-bao-bì','Hiện',18),(29,'2019-11-11','&lt;p&gt;&lt;strong&gt;Xưởng may &amp;aacute;o thun&lt;/strong&gt;&amp;nbsp;l&amp;agrave; nơi chuy&amp;ecirc;n&amp;nbsp;&lt;a href=&quot;https://inquangcao.top/danh-muc/ao-thun-dong-phuc/&quot; target=&quot;_blank&quot;&gt;&lt;strong&gt;nhận may &amp;aacute;o thun sự kiện&lt;/strong&gt;&lt;/a&gt;, &amp;aacute;o thun đồng phục theo y&amp;ecirc;u cầu của kh&amp;aacute;ch h&amp;agrave;ng.&lt;/p&gt;\r\n\r\n&lt;p&gt;Với đội ngũ thiết kế trẻ chuy&amp;ecirc;n nghiệp lu&amp;ocirc;n đem đến cho kh&amp;aacute;ch h&amp;agrave;ng 1 sản phẩm đầy &amp;yacute; nghĩa của sự kiện hoặc đồng phục của c&amp;ocirc;ng ty m&amp;igrave;nh.&lt;/p&gt;\r\n\r\n&lt;p&gt;L&amp;agrave; xưởng chuy&amp;ecirc;n sản xuất h&amp;agrave;ng quảng c&amp;aacute;o v&amp;agrave; sự kiện, ch&amp;uacute;ng t&amp;ocirc;i nhận may tất cả c&amp;aacute;c loại&amp;nbsp;&lt;strong&gt;&amp;aacute;o thun đồng phục, &amp;aacute;o thun sự kiện&lt;/strong&gt;&amp;nbsp;v&amp;agrave; nhận in &amp;aacute;o thun đồng phục theo y&amp;ecirc;u cầu của qu&amp;yacute; kh&amp;aacute;ch.&lt;/p&gt;\r\n','ao-thun-dong-phuc.png','Nhận may áo thun sự kiện','Chúng tôi chuyên nhận may ao thun đồng phục, áo thun sự kiện với bất kỳ số lượng.\r\n\r\nNhận in áo thun đồng phục và áo thun sự kiện theo yêu cầu, thiết kế, in ấn các sản phẩm quảng cáo và sản phẩm quà tặng.\r\n\r\nDịch vụ chuyên sản xuất và gia công các sản phẩm quảng cáo và sản phẩm khuyến mãi theo yêu cầu của quý khách.','Nhận-may-áo-thun-sự-kiện','Hiện',14);
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
INSERT INTO `promotion` VALUES (25,'2019-11-11','&lt;p&gt;hom qua&lt;/p&gt;\r\n','2019-11-11','tui-vai-quang-cao.jpeg','Túi vải canvas','Hiện','2019-11-12',13),(26,'2019-11-11','&lt;p&gt;ssaa&lt;/p&gt;\r\n','2019-11-11','xuong-may-tui-vai.jpg','Tú vải','Hiện','2019-11-12',18),(28,'2019-11-11','&lt;p&gt;hon ha&lt;/p&gt;\r\n','2019-11-11','in-bao-bi-768x513.jpg','Túi bao bì','Hiện','2019-11-13',13);
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

-- Dump completed on 2019-11-12 22:17:05
