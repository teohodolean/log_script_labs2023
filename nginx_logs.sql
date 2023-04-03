-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `nginx_logs`
--

DROP TABLE IF EXISTS `nginx_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nginx_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(30) NOT NULL,
  `timestamp` datetime NOT NULL,
  `request` text NOT NULL,
  `status_code` varchar(30) NOT NULL,
  `user_agent` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_log` (`ip_address`,`timestamp`,`request`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nginx_logs`
--

LOCK TABLES `nginx_logs` WRITE;
/*!40000 ALTER TABLE `nginx_logs` DISABLE KEYS */;
INSERT INTO `nginx_logs` VALUES (1,'188.25.203.177','2023-04-01 18:24:51','GET',200,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\"'),(2,'188.25.203.177','2023-04-01 18:24:52','GET',304,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\"'),(3,'188.25.203.177','2023-04-01 18:24:53','GET',304,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\"'),(4,'188.25.203.177','2023-04-01 18:24:54','GET',304,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\"'),(5,'188.25.203.177','2023-04-01 18:24:58','GET',301,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\"'),(6,'18.234.91.237','2023-04-02 00:03:11','GET',200,'\"Mozilla/5.0 (Windows NT 6.2;en-US) AppleWebKit/537.32.36 (KHTML, live Gecko) Chrome/56.0.3039.101 Safari/537.32\"'),(7,'142.54.224.196','2023-04-02 00:05:48','HEAD',200,'\"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.2117.157 Safari/537.36\"'),(8,'142.54.224.196','2023-04-02 00:05:52','GET',404,'\"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.2117.157 Safari/537.36\"'),(9,'142.54.224.196','2023-04-02 00:05:54','GET',404,'\"Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.2117.157 Safari/537.36\"'),(10,'193.35.18.225','2023-04-02 00:28:48','GET',200,'\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:77.0) Gecko/20100101 Firefox/77.0\"'),(11,'109.237.97.180','2023-04-02 00:32:25','GET',404,'\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36\"'),(12,'109.237.97.180','2023-04-02 00:32:26','\\x16\\x03\\x01\\x01H\\x01\\x00\\x01D\\x03\\x03\\x1E)\\x838h\\x22\\xA7\\x1A\\xBF\\xD6\\xBD\\x88|XeN\\xAC\\x06\\xDC\\x9D\\xC9\\x93\\x97\\xB7\\xFC\\xB2\\xCB3\\xD2\\xAET\\xA4',166,''),(13,'34.78.249.41','2023-04-02 01:03:42','GET',200,'\"python-requests/2.28.2\"'),(14,'85.89.72.18','2023-04-02 01:18:17','GET',200,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36\"'),(15,'193.32.162.159','2023-04-02 01:41:32','GET',200,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46\"'),(16,'193.32.162.159','2023-04-02 01:41:42','GET',404,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46\"'),(17,'212.224.86.136','2023-04-02 01:43:13','GET',404,'\"Vodafone/1.0/V802SE/SEJ001 Browser/SEMC-Browser/4.1\"'),(18,'65.49.20.66','2023-04-02 02:21:53','GET',200,'\"Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/109.0\"'),(19,'65.49.20.66','2023-04-02 02:23:21','GET',404,'\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\"'),(20,'65.49.20.66','2023-04-02 02:24:03','GET',404,'\"Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/109.0\"'),(21,'62.173.145.180','2023-04-02 02:40:06','GET',404,'\"Mozilla/5.0 (Linux; arm_64; Android 7.1.1; Lenovo TB-8504X) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.127 YaBrowser/20.9.1.66.01 Safari/537.36\"'),(22,'92.118.39.82','2023-04-02 03:19:39','GET',200,'\"-\"'),(23,'85.217.145.45','2023-04-02 03:38:25','GET',200,'\"Go-http-client/1.1\"'),(24,'141.98.6.129','2023-04-02 03:40:15','GET',404,'\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36\"'),(25,'141.98.6.129','2023-04-02 03:40:15','POST',405,'\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36\"'),(26,'193.32.162.159','2023-04-02 03:50:51','GET',200,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46\"'),(27,'193.32.162.159','2023-04-02 03:51:01','GET',404,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46\"'),(28,'212.224.107.54','2023-04-02 04:12:07','GET',404,'\"Mozilla/5.0 (Linux; Android 12; Pixel 4a) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36\"'),(29,'79.133.51.103','2023-04-02 04:13:20','GET',404,'\"Mozilla/5.0 (Linux; Android 10; M2006C3LII) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.61 Mobile Safari/537.36\"'),(30,'212.224.107.54','2023-04-02 04:14:28','GET',404,'\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36\"'),(31,'185.225.74.42','2023-04-02 04:51:21','GET',200,'\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:76.0) Gecko/20100101 Firefox/76.0\"'),(32,'193.32.162.159','2023-04-02 05:40:35','GET',200,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46\"'),(33,'193.32.162.159','2023-04-02 05:40:45','GET',404,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.46\"'),(34,'179.43.177.242','2023-04-02 06:15:58','GET',200,'\"Hello World\"'),(35,'161.35.233.14','2023-04-02 07:13:49','GET',404,'\"Mozilla/5.0 (Linux; Android 8.0.0; SM-A600FN) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.111 Mobile Safari/537.36\"'),(36,'36.26.100.109','2023-04-02 07:50:38','GET',404,'\"-\"'),(37,'152.89.196.54','2023-04-02 09:22:18','GET',200,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\"'),(38,'188.25.203.177','2023-04-02 10:11:17','GET',404,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\"'),(39,'188.25.203.177','2023-04-02 10:11:25','GET',304,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\"'),(40,'188.25.203.177','2023-04-02 10:11:26','GET',304,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\"'),(41,'188.25.203.177','2023-04-02 10:11:56','GET',304,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\"'),(42,'164.160.179.154','2023-04-02 10:16:59','GET',200,'\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36\"'),(43,'152.89.196.54','2023-04-02 10:35:32','GET',404,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\"'),(44,'91.191.209.206','2023-04-02 10:56:31','\\x03\\x00\\x00/*\\xE0\\x00\\x00\\x00\\x00\\x00Cookie:',166,''),(45,'188.25.203.177','2023-04-02 11:03:38','GET',304,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\"'),(46,'188.25.203.177','2023-04-02 11:03:39','GET',304,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\"'),(47,'188.25.203.177','2023-04-02 11:15:01','GET',304,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\"'),(48,'188.25.203.177','2023-04-02 11:15:09','GET',301,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\"'),(49,'188.25.203.177','2023-04-02 11:16:52','GET',304,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\"'),(50,'188.25.203.177','2023-04-02 11:18:45','GET',200,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\"'),(51,'188.25.203.177','2023-04-02 11:18:46','GET',404,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\"'),(52,'188.25.203.177','2023-04-02 11:18:56','GET',301,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\"'),(53,'188.25.203.177','2023-04-02 11:22:50','GET',304,'\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\"'),(54,'90.151.171.106','2023-04-02 11:26:28','CONNECT',400,'\"-\"');
/*!40000 ALTER TABLE `nginx_logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-02 13:00:53
