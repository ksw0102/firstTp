-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: deliveryshop
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `delivers`
--

DROP TABLE IF EXISTS `delivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  `review` varchar(255) DEFAULT NULL,
  `food_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjyjtcdwvl89qg1mxquibpq4c2` (`food_id`),
  CONSTRAINT `FKjyjtcdwvl89qg1mxquibpq4c2` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivers`
--

LOCK TABLES `delivers` WRITE;
/*!40000 ALTER TABLE `delivers` DISABLE KEYS */;
INSERT INTO `delivers` VALUES (1,'대전 서구 도마동',0,'맛있어요',NULL),(2,'대전 중구 선화동',0,'5/5 드립니다',NULL),(3,'대전 중구 태평동',0,'엄마의 손맛이 생각나는 맛',NULL),(4,'대전 서구 관저동',0,'맛있어요',NULL),(5,NULL,0,NULL,NULL),(6,NULL,0,NULL,NULL),(7,NULL,0,NULL,NULL),(8,NULL,0,NULL,NULL),(9,NULL,0,NULL,NULL),(10,NULL,0,NULL,NULL),(11,NULL,0,NULL,NULL),(12,NULL,0,NULL,NULL),(13,NULL,0,NULL,NULL),(14,NULL,0,NULL,NULL),(15,NULL,0,NULL,NULL),(16,NULL,0,NULL,NULL),(17,NULL,0,NULL,NULL),(18,NULL,0,NULL,NULL),(19,NULL,0,NULL,NULL),(20,NULL,0,NULL,NULL),(21,NULL,0,NULL,NULL),(22,NULL,0,NULL,NULL),(23,NULL,0,NULL,NULL),(24,NULL,0,NULL,NULL),(25,NULL,0,NULL,NULL),(26,NULL,0,NULL,NULL),(27,NULL,0,NULL,NULL),(28,NULL,0,NULL,NULL),(29,NULL,0,NULL,NULL),(30,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `delivers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 12:38:32
