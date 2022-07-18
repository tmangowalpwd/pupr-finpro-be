-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pwdk_pupr
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `homepages`
--

DROP TABLE IF EXISTS `homepages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homepages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepages`
--

LOCK TABLES `homepages` WRITE;
/*!40000 ALTER TABLE `homepages` DISABLE KEYS */;
INSERT INTO `homepages` VALUES (1,'Bakti PUPR  Sigap Membangun Negeri','Kementerian Pekerjaan Umum dan Perumahan Rakyat mempunyai tugas menyelenggarakan urusan pemerintahan di bidang pekerjaan umum dan perumahan rakyat untuk membantu Presiden dalam menyelenggarakan pemerintahan negara.','https://images.unsplash.com/photo-1516156008625-3a9d6067fab5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80','2022-07-19 00:00:00','2022-07-18 19:12:25');
/*!40000 ALTER TABLE `homepages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectionbanners`
--

DROP TABLE IF EXISTS `sectionbanners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sectionbanners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_caption` text,
  `banner_image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectionbanners`
--

LOCK TABLES `sectionbanners` WRITE;
/*!40000 ALTER TABLE `sectionbanners` DISABLE KEYS */;
INSERT INTO `sectionbanners` VALUES (1,'Perumahan - Rusun','Kementerian Pekerjaan Umum dan Perumahan Rakyat (PUPR) terus berkomitmen untuk memenuhi kebutuhan hunian layak bagi masyarakat, salah satunya melalui pembangunan rumah susun. Kementerian PUPR melalui Direktorat Jenderal Perumahan telah menyelesaikan pembangunan 196 tower rumah susun yang terdiri dari 7.075 unit pada TA 2021.','https://images.unsplash.com/photo-1513880989635-6eb491ce7f5b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80','2022-07-19 00:00:00','2022-07-18 19:13:34'),(2,'SDA - Bendunga','Salah satu upaya yang dilakukan oleh Pemerintah melalui Direktorat Jenderal Sumber Daya Air Kementerian Pekerjaan Umum dan Perumahan Rakyat dalam hal pemenuhan kebutuhan air adalah pembangunan bendungan. Saat ini, terdapat kurang lebih 230 bendungan di Indonesia dengan daya tampung total 12,6 Milyar m3.','https://images.unsplash.com/photo-1658157309924-cc80406f76ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80','2022-07-19 00:00:00','2022-07-19 00:00:00'),(3,'APBN - Penyerapan Anggaran','Pagu Anggaran Kementerian PUPR TA 2022 saat ini sebesar Rp. 109,75 T, dengan realisasi keuangan Rp. 36,30 T (33,08%) dan capaian fisik 37,81%. Data ini diambil per tanggal 14 Juli 2022 16:00 WIB','https://images.unsplash.com/photo-1658157309924-cc80406f76ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80','2022-07-19 00:00:00','2022-07-19 00:00:00'),(4,'SDM  - Jasa Konstruksi','Peningkatan kualitas dan kompetensi sumber daya manusia (SDM) kontruksi terus dilakukan, hal ini sejalan dengan program kerja Kementerian PUPR yang mempercepat program Padat Karya Tunai (PKT) di 24 proyek Prioritas Strategis Nasional (PSN), untuk itu Direktorat Jenderal Bina Konstruksi selaku pembina jasa konstruksi terus berupaya memberikan pelatihan/Bimbingan teknis atau Uji Kompetensi secara masif SDM konstruksi di seluruh Indonesia.','https://images.unsplash.com/photo-1658157309924-cc80406f76ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80','2022-07-19 00:00:00','2022-07-19 00:00:00');
/*!40000 ALTER TABLE `sectionbanners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sectiondata`
--

DROP TABLE IF EXISTS `sectiondata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sectiondata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `data_number` double DEFAULT NULL,
  `data_unit` varchar(255) DEFAULT NULL,
  `section_type` enum('perumahan','sda','apbn','sdm') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `SectionBannerId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order` (`order`),
  UNIQUE KEY `order_2` (`order`),
  UNIQUE KEY `order_3` (`order`),
  UNIQUE KEY `order_4` (`order`),
  UNIQUE KEY `order_5` (`order`),
  UNIQUE KEY `order_6` (`order`),
  UNIQUE KEY `order_7` (`order`),
  UNIQUE KEY `order_8` (`order`),
  UNIQUE KEY `order_9` (`order`),
  UNIQUE KEY `order_10` (`order`),
  UNIQUE KEY `order_11` (`order`),
  UNIQUE KEY `order_12` (`order`),
  UNIQUE KEY `order_13` (`order`),
  KEY `SectionBannerId` (`SectionBannerId`),
  CONSTRAINT `sectiondata_ibfk_1` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_10` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_11` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_12` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_13` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_14` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_15` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_16` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_17` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_18` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_19` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_2` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_20` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_21` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_3` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_4` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_5` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_6` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_7` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_8` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `sectiondata_ibfk_9` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `SectionData_SectionBannerId_foreign_idx` FOREIGN KEY (`SectionBannerId`) REFERENCES `sectionbanners` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sectiondata`
--

LOCK TABLES `sectiondata` WRITE;
/*!40000 ALTER TABLE `sectiondata` DISABLE KEYS */;
INSERT INTO `sectiondata` VALUES (1,NULL,'Jumlah Ruas',40,'Ruas','perumahan','2022-07-19 00:00:00','2022-07-19 00:00:00',1),(2,NULL,'Panjang Jalan',600,'Km','perumahan','2022-07-19 00:00:00','2022-07-19 00:00:00',1),(3,NULL,'Rata-rata Nilai Jalan',3.73,NULL,'perumahan','2022-07-19 00:00:00','2022-07-19 00:00:00',1),(4,NULL,'Rata - Rata Nilai VCR',0.1842,'','perumahan','2022-07-19 00:00:00','2022-07-18 19:13:13',1),(5,NULL,'Jumlah Ruas',41,'Ruas','sda','2022-07-19 00:00:00','2022-07-19 00:00:00',2),(6,NULL,'Panjang Jalan',600,'Km','sda','2022-07-19 00:00:00','2022-07-19 00:00:00',2),(7,NULL,'Rata-rata Nilai Jalan',3.73,NULL,'sda','2022-07-19 00:00:00','2022-07-19 00:00:00',2),(8,NULL,'Rata-rata Nilai VCR',0.1843,NULL,'sda','2022-07-19 00:00:00','2022-07-18 18:19:21',2),(9,NULL,'Jumlah Ruas',35,'Ruas','apbn','2022-07-19 00:00:00','2022-07-18 18:22:51',3),(10,NULL,'Panjang Jalan',600,'Km','apbn','2022-07-19 00:00:00','2022-07-19 00:00:00',3),(11,NULL,'Rata-rata Nilai Jalan',3.73,'Test','apbn','2022-07-19 00:00:00','2022-07-18 18:22:57',3),(12,NULL,'Rata-rata Nilai VCR',0.1842,NULL,'apbn','2022-07-19 00:00:00','2022-07-19 00:00:00',3),(13,NULL,'Jumlah Ruas',40,'Ruas','sdm','2022-07-19 00:00:00','2022-07-19 00:00:00',4),(14,NULL,'Panjang Jalan',600,'Km','sdm','2022-07-19 00:00:00','2022-07-19 00:00:00',4),(15,NULL,'Rata-rata Nilai Jalan',3.73,NULL,'sdm','2022-07-19 00:00:00','2022-07-19 00:00:00',4),(16,NULL,'Rata-rata Nilai VCR',0.1842,NULL,'sdm','2022-07-19 00:00:00','2022-07-19 00:00:00',4);
/*!40000 ALTER TABLE `sectiondata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-19  2:20:11
