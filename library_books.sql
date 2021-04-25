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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `ISBN` varchar(50) NOT NULL,
  `Title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Author` varchar(50) DEFAULT NULL,
  `Edition` int DEFAULT NULL,
  `Publication` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('0131395319','Concepts of Programming Languages','Robert w',10,'2015'),('1235C','Data Structures','Robert L.',2,'2005'),('33643hgghd','Algebra','mary',13,'2007'),('9780321129534','Design Algorithm','Jon kleinbreg',5,'2017'),('A12345','Math','Mary',13,'2017'),('A3800956 ','Computer Networks ','Williams ',11,'2019'),('A586D','Computer Science 1301','Pearson ',6,'2017'),('A800G','Python Language learning ','Mary',9,'2016'),('A95A900','Software Engineering','Pearson',10,'2015'),('Ab2004','Computer System Architecture','Morris Mano',3,'2008'),('ABC12','ComputerScience','Pearson',2017,'Pearson'),('ABC1234','Database Sysem ','ELMASRI',7,'2008'),('AC2538','Data Structure','Pearson ',8,'2016'),('AC5008','Java','Williams',8,'2013'),('BC0887','Cryptography and Network Security ','William Stallings',6,'2018'),('C50887','Computer Organization','William',10,'2018'),('CB567','Computer Science 1302','Pearson',6,'2015'),('CD1345','Nutration ','Mary ',5,'2017'),('Cs870','C++ Programming Language Learning ','Staney',7,'2015'),('JSC567','Java','stanley ',5,'2010');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
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
