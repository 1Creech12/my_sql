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
-- Table structure for table `Операционисты`
--

DROP TABLE IF EXISTS `Операционисты`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Операционисты` (
  `id_операциониста` int NOT NULL AUTO_INCREMENT,
  `фамилия` varchar(45) NOT NULL,
  `имя` varchar(45) NOT NULL,
  `отчество` varchar(45) DEFAULT NULL,
  `телефон` varchar(45) DEFAULT NULL,
  `должность` varchar(45) DEFAULT NULL,
  `дата_найма` date DEFAULT NULL,
  `id_отделения` int DEFAULT NULL,
  `логин` varchar(45) DEFAULT NULL,
  `пароль` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_операциониста`),
  UNIQUE KEY `логин` (`логин`),
  KEY `id_отделения` (`id_отделения`),
  CONSTRAINT `операционисты_ibfk_1` FOREIGN KEY (`id_отделения`) REFERENCES `Отделения банка` (`id_отделения`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Операционисты`
--

LOCK TABLES `Операционисты` WRITE;
/*!40000 ALTER TABLE `Операционисты` DISABLE KEYS */;
INSERT INTO `Операционисты` VALUES (1,'Иванов','Иван','Иванович','555-111','Старший операционист','2020-01-15',1,'ivanov','pass1'),(2,'Петрова','Мария','Сергеевна','555-222','Операционист','2021-03-20',1,'petrova','pass2'),(3,'Сидоров','Алексей','Дмитриевич','555-333','Операционист','2022-06-10',2,'sidorov','pass3'),(4,'Козлова','Елена','Владимировна','555-444','Ведущий специалист','2019-11-05',3,'kozlova','pass4');
/*!40000 ALTER TABLE `Операционисты` ENABLE KEYS */;
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
