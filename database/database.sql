-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: sttnf_sem3_bigdata_uas
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Zulkifli Raihan','085691166309','DKI Jakarta','Laki - Laki','2023-01-29 21:05:44','2023-01-29 21:05:44'),(2,'Fadhil D Maulanan','08127593728','Jawa Barat','Laki - Laki','2023-01-29 21:05:44','2023-01-29 21:05:44'),(3,'Jasmine','08189423321','Palembang','Perempuan','2023-01-29 21:05:44','2023-01-29 21:05:44');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
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
-- Table structure for table `merk`
--

DROP TABLE IF EXISTS `merk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merk`
--

LOCK TABLES `merk` WRITE;
/*!40000 ALTER TABLE `merk` DISABLE KEYS */;
INSERT INTO `merk` VALUES (1,'honda','2023-01-29 21:05:45','2023-01-29 21:05:45'),(2,'wuling','2023-01-29 21:05:45','2023-01-29 21:05:45'),(3,'hyundai','2023-01-29 21:05:45','2023-01-29 21:05:45'),(4,'toyota','2023-01-29 21:05:45','2023-01-29 21:05:45'),(5,'daihatsu','2023-01-29 21:05:45','2023-01-29 21:05:45');
/*!40000 ALTER TABLE `merk` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_01_30_031350_create_transaksis_table',2),(6,'2023_01_30_031748_create_merks_table',3),(7,'2023_01_30_031816_create_mobils_table',3),(8,'2023_01_30_031846_create_provinsis_table',3),(9,'2023_01_30_031929_create_customers_table',3),(10,'2023_01_30_031950_create_sales_table',3),(11,'2023_01_30_092851_update_mobil_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobil`
--

DROP TABLE IF EXISTS `mobil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobil` (
  `id` int NOT NULL AUTO_INCREMENT,
  `merk_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `bensin` varchar(45) NOT NULL,
  `tahun` varchar(45) NOT NULL,
  `grade_condition` varchar(45) NOT NULL,
  `harga` int NOT NULL,
  `harga_label` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'ready',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_mobil_merk_idx` (`merk_id`),
  CONSTRAINT `fk_mobil_merk` FOREIGN KEY (`merk_id`) REFERENCES `merk` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobil`
--

LOCK TABLES `mobil` WRITE;
/*!40000 ALTER TABLE `mobil` DISABLE KEYS */;
INSERT INTO `mobil` VALUES (1,1,'Honda CRV','bensin','2021','A',350000000,'350.000.000','sold','2023-01-29 21:05:45','2023-01-29 21:05:45'),(2,2,'Wuling Almaz','bensin','2020','B',150000000,'150.000.000','sold','2023-01-29 21:05:45','2023-01-29 21:05:45'),(3,4,'Toyota Fortuner','diesel','2019','C',400000000,'400.000.000','sold','2023-01-29 21:05:45','2023-01-29 21:05:45');
/*!40000 ALTER TABLE `mobil` ENABLE KEYS */;
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
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinsi`
--

DROP TABLE IF EXISTS `provinsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provinsi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinsi`
--

LOCK TABLES `provinsi` WRITE;
/*!40000 ALTER TABLE `provinsi` DISABLE KEYS */;
INSERT INTO `provinsi` VALUES (1,'Aceh','2023-01-29 21:05:44','2023-01-29 21:05:44'),(2,'Sumatera Utara','2023-01-29 21:05:44','2023-01-29 21:05:44'),(3,'Sumatera Selatan','2023-01-29 21:05:44','2023-01-29 21:05:44'),(4,'Sumatera Barat','2023-01-29 21:05:44','2023-01-29 21:05:44'),(5,'Bengkulu','2023-01-29 21:05:44','2023-01-29 21:05:44'),(6,'Riau','2023-01-29 21:05:44','2023-01-29 21:05:44'),(7,'Jambi','2023-01-29 21:05:44','2023-01-29 21:05:44'),(8,'Lampung','2023-01-29 21:05:44','2023-01-29 21:05:44'),(9,'Bangka Belitung','2023-01-29 21:05:44','2023-01-29 21:05:44'),(10,'Kalimantan Barat','2023-01-29 21:05:44','2023-01-29 21:05:44'),(11,'Kalimantan Timur','2023-01-29 21:05:44','2023-01-29 21:05:44'),(12,'Kalimantan Selatan','2023-01-29 21:05:44','2023-01-29 21:05:44'),(13,'Kalimantan Tengah','2023-01-29 21:05:44','2023-01-29 21:05:44'),(14,'Kalimantan Utara','2023-01-29 21:05:44','2023-01-29 21:05:44'),(15,'Banten','2023-01-29 21:05:44','2023-01-29 21:05:44'),(16,'DKI Jakarta','2023-01-29 21:05:44','2023-01-29 21:05:44'),(17,'Jawa Barat','2023-01-29 21:05:44','2023-01-29 21:05:44'),(18,'Jawa Tengah','2023-01-29 21:05:44','2023-01-29 21:05:44'),(19,'Yogyakarta','2023-01-29 21:05:44','2023-01-29 21:05:44'),(20,'Jawa Timur','2023-01-29 21:05:44','2023-01-29 21:05:44'),(21,'Bali','2023-01-29 21:05:44','2023-01-29 21:05:44'),(22,'Nusa Tenggara Timur','2023-01-29 21:05:44','2023-01-29 21:05:44'),(23,'Nusa Tenggara Barat','2023-01-29 21:05:44','2023-01-29 21:05:44'),(24,'Gorontalo','2023-01-29 21:05:44','2023-01-29 21:05:44'),(25,'Sulawesi Barat','2023-01-29 21:05:44','2023-01-29 21:05:44'),(26,'Sulawesi Tengah','2023-01-29 21:05:44','2023-01-29 21:05:44'),(27,'Sulawesi Utara','2023-01-29 21:05:44','2023-01-29 21:05:44'),(28,'Sulawesi Tenggara','2023-01-29 21:05:44','2023-01-29 21:05:44'),(29,'Sulawesi Selatan','2023-01-29 21:05:44','2023-01-29 21:05:44'),(30,'Maluku Utara','2023-01-29 21:05:44','2023-01-29 21:05:44'),(31,'Maluku','2023-01-29 21:05:44','2023-01-29 21:05:44'),(32,'Papua Barat','2023-01-29 21:05:44','2023-01-29 21:05:44'),(33,'Papua','2023-01-29 21:05:44','2023-01-29 21:05:44'),(34,'Papua Tengah','2023-01-29 21:05:44','2023-01-29 21:05:44'),(35,'Papua Pegunungan','2023-01-29 21:05:44','2023-01-29 21:05:44'),(36,'Papua Selatan','2023-01-29 21:05:44','2023-01-29 21:05:44'),(37,'Papua Barat Daya','2023-01-29 21:05:44','2023-01-29 21:05:44');
/*!40000 ALTER TABLE `provinsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `no_karyawan` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'IL29070128','Zulkifli Raihan','Laki - Laki','2023-01-29 21:05:44','2023-01-29 21:05:44'),(2,'IL21010828','Fadhil D Maulanan','Laki - Laki','2023-01-29 21:05:44','2023-01-29 21:05:44'),(3,'FK82912HYQ','Jasmine','Perempuan','2023-01-29 21:05:44','2023-01-29 21:05:44');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaksi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provinsi_id` int NOT NULL,
  `mobil_id` int NOT NULL,
  `customers_id` int NOT NULL,
  `sales_id` int NOT NULL,
  `code_transaksi` varchar(255) NOT NULL,
  `harga` int NOT NULL,
  `ppn` int NOT NULL,
  `total` int NOT NULL,
  `lokasi` text NOT NULL,
  `metode_pembayaran` varchar(255) NOT NULL,
  `status` varchar(45) NOT NULL,
  `paid_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`provinsi_id`,`mobil_id`,`customers_id`,`sales_id`),
  KEY `fk_transaksi_mobil1_idx` (`mobil_id`),
  KEY `fk_transaksi_customers1_idx` (`customers_id`),
  KEY `fk_transaksi_sales1_idx` (`sales_id`),
  KEY `fk_transaksi_provinsi1_idx` (`provinsi_id`),
  CONSTRAINT `fk_transaksi_customers1` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `fk_transaksi_mobil1` FOREIGN KEY (`mobil_id`) REFERENCES `mobil` (`id`),
  CONSTRAINT `fk_transaksi_provinsi1` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`id`),
  CONSTRAINT `fk_transaksi_sales1` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES (1,17,1,2,1,'ODR-20220312-923',350000000,38500000,388500000,'Jakarta','Transfer','lunas','2022-11-26 04:05:45','2023-01-29 21:05:45','2023-01-29 21:05:45'),(2,17,2,1,2,'ODR-20220312-921',150000000,16500000,166500000,'Jakarta','Transfer','lunas','2022-12-15 04:05:45','2023-01-29 21:05:45','2023-01-29 21:05:45'),(3,17,3,3,1,'ODR-20220312-924',400000000,44000000,444000000,'Jakarta','Transfer','lunas','2023-01-30 04:05:45','2023-01-29 21:05:45','2023-01-29 21:05:45');
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2023-01-30 17:06:10
