-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `staffrecord`
--

DROP TABLE IF EXISTS `staffrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffrecord` (
  `title` varchar(50) DEFAULT NULL,
  `Date_of_Issue` datetime DEFAULT CURRENT_TIMESTAMP,
  `dateofreturn` varchar(150) NOT NULL,
  `staff_id` int DEFAULT NULL,
  `student_id` int NOT NULL,
  KEY `staff_id_idx` (`staff_id`),
  KEY `title_idx` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffrecord`
--

LOCK TABLES `staffrecord` WRITE;
/*!40000 ALTER TABLE `staffrecord` DISABLE KEYS */;
INSERT INTO `staffrecord` VALUES ('computr','2021-04-21 15:15:18','Fri May 21 2021 15:11:23 GMT-0400 (Eastern Daylight Time)',4,555),('computr','2021-04-21 15:16:14','Fri May 21 2021 15:11:23 GMT-0400 (Eastern Daylight Time)',4,555),('vhj','2021-04-21 15:16:26','Fri May 21 2021 15:16:14 GMT-0400 (Eastern Daylight Time)',4,656),('com','2021-04-21 15:16:41','Fri May 21 2021 15:16:29 GMT-0400 (Eastern Daylight Time)',44,44),('Algebra','2021-04-21 15:22:51','Fri May 21 2021 15:22:14 GMT-0400 (Eastern Daylight Time)',1515,9002156);
/*!40000 ALTER TABLE `staffrecord` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-24 21:15:20
