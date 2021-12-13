-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: movies_project
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `movies_table`
--

DROP TABLE IF EXISTS `movies_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(30) NOT NULL,
  `path` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_table`
--

LOCK TABLES `movies_table` WRITE;
/*!40000 ALTER TABLE `movies_table` DISABLE KEYS */;
INSERT INTO `movies_table` VALUES (1,'Greys Anatomy','drama, medicina','https://i.ibb.co/xFZs0cN/Greys-Anatomy.jpg',NULL,'série'),(2,'Brooklyn99','comédia, policial','https://i.ibb.co/pQTdM38/brooklyn99.jpg',NULL,'série'),(3,'Clickbait','suspense, drama','https://i.ibb.co/zN9Fb3X/clickbait.jpg',NULL,'série'),(4,'You','suspense, drama','https://i.ibb.co/cY4jM85/you.jpg',NULL,'série'),(5,'Sharp Objects ( Objetos Cortantes )','suspense, drama, investigacao','https://i.ibb.co/x5g6Gm0/sharpobjects.jpg',NULL,'série'),(6,'Sex Education','comedia, escolar','https://i.ibb.co/QFJYMyy/sexeducation.jpg',NULL,'série'),(7,'Modern Family','comedia, familia','https://i.ibb.co/g3BvLfw/modernfamily.jpg',NULL,'série'),(8,'La Casa de Papel','suspense','https://i.ibb.co/88ngmJM/ladacasadepapel.jpg',NULL,'série'),(9,'Friends','comedia, familia','https://i.ibb.co/4NGb7p0/firends.jpg',NULL,'série'),(10,'Atypical','comedia, familia','https://i.ibb.co/F4TP5rT/atypical.jpg',NULL,NULL),(11,'Riverdale','drama, suspense, adolescente','https://i.ibb.co/WtmL4mX/riverdale.jpg',NULL,NULL);
/*!40000 ALTER TABLE `movies_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'movies_project'
--

--
-- Dumping routines for database 'movies_project'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-13  9:03:28
