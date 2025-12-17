-- MySQL dump 10.13  Distrib 8.0.44, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: bd
-- ------------------------------------------------------
-- Server version	9.5.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '9f9ec13e-da40-11f0-85ab-55b89bdf8d23:1-41';

--
-- Table structure for table `Договора`
--

DROP TABLE IF EXISTS `Договора`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Договора` (
  `id_договора` int NOT NULL AUTO_INCREMENT,
  `номер_договора` varchar(45) NOT NULL,
  `дата_заключения` date NOT NULL,
  `сумма_вклада` decimal(15,2) NOT NULL,
  `id_клиента` int NOT NULL,
  `id_операциониста` int NOT NULL,
  `id_типа_вклада` int NOT NULL,
  `статус` varchar(45) DEFAULT 'активный',
  `дата_окончания` date DEFAULT NULL,
  PRIMARY KEY (`id_договора`),
  UNIQUE KEY `номер_договора` (`номер_договора`),
  KEY `id_клиента` (`id_клиента`),
  KEY `id_операциониста` (`id_операциониста`),
  KEY `id_типа_вклада` (`id_типа_вклада`),
  CONSTRAINT `договора_ibfk_1` FOREIGN KEY (`id_клиента`) REFERENCES `Клиенты` (`id_клиента`),
  CONSTRAINT `договора_ibfk_2` FOREIGN KEY (`id_операциониста`) REFERENCES `Операционисты` (`id_операциониста`),
  CONSTRAINT `договора_ibfk_3` FOREIGN KEY (`id_типа_вклада`) REFERENCES `Типы вкладов` (`id_типа_вклада`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Договора`
--

LOCK TABLES `Договора` WRITE;
/*!40000 ALTER TABLE `Договора` DISABLE KEYS */;
INSERT INTO `Договора` VALUES (1,'ДГ-2023-001','2023-01-10',150000.00,1,1,5,'активный','2026-01-10'),(2,'ДГ-2023-002','2023-02-15',50000.00,2,2,2,'активный','2025-02-15'),(3,'ДГ-2023-003','2023-03-20',30000.00,3,3,1,'закрыт','2024-03-20'),(4,'ДГ-2023-004','2023-04-05',75000.00,4,4,3,'активный','2023-10-05'),(5,'ДГ-2023-005','2023-05-12',120000.00,5,1,5,'активный','2026-05-12'),(6,'ДГ-2023-006','2023-06-18',25000.00,6,2,4,'активный','2024-06-18'),(7,'ДГ-2024-001','2024-01-08',60000.00,1,1,1,'активный','2025-01-08'),(8,'ДГ-2024-002','2024-02-14',80000.00,2,2,3,'активный','2024-08-14'),(9,'ДГ-2024-003','2024-03-22',45000.00,3,3,2,'активный','2026-03-22'),(10,'ДГ-2024-004','2024-04-10',95000.00,4,4,5,'активный','2027-04-10');
/*!40000 ALTER TABLE `Договора` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-17 15:51:53
