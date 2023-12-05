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
-- Table structure for table `foods`
--

DROP TABLE IF EXISTS `foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foods` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foods`
--

LOCK TABLES `foods` WRITE;
/*!40000 ALTER TABLE `foods` DISABLE KEYS */;
INSERT INTO `foods` VALUES (3,'치킨','https://imagestorage97.files.wordpress.com/2023/11/chicken.jpg',18000,'바삭함, 고소함 가득! 정직하게 튀긴 후라이드 치킨의 정석','후라이드 치킨'),(5,'한식','https://imagestorage97.files.wordpress.com/2023/11/krfood.jpg?w=820',9000,'얼큰한 김치찌개','김치찌개'),(6,'분식','https://imagestorage97.files.wordpress.com/2023/11/snack.jpg?w=408',3500,'신라면보다 약간 매운 떡볶이','떡볶이'),(7,'피자 / 양식','https://imagestorage97.files.wordpress.com/2023/11/pizza.jpg?w=637',16900,'짭쪼롬한 페페로니를 가득넣은 피자','페페로니피자'),(8,'중식','https://imagestorage97.files.wordpress.com/2023/11/chfood.jpg?w=533',6000,'자극적이지 않고 담백한 짜장면','짜장면'),(9,'일식 / 돈까스','https://imagestorage97.files.wordpress.com/2023/11/jpfood.jpg?w=650',8000,'돈까스 + 밥 + 우동 + 샐러드 포함','돈까스'),(10,'야식','https://imagestorage97.files.wordpress.com/2023/11/night.jpg?w=600',20000,'소면 포함 / 단품구성입니다.','골뱅이 무침'),(11,'카페 / 디저트','https://imagestorage97.files.wordpress.com/2023/11/dessert.jpg?w=380',5500,'딸기와 바닐라 아이스크림이 올라간 와플','과일 와플');
/*!40000 ALTER TABLE `foods` ENABLE KEYS */;
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
