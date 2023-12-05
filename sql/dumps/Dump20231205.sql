-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: dvmembership
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
-- Table structure for table `dvmember`
--

DROP TABLE IF EXISTS `dvmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dvmember` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `birth_date` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` enum('MAN','WOMAN') NOT NULL,
  `login_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_member_login_id` (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dvmember`
--

LOCK TABLES `dvmember` WRITE;
/*!40000 ALTER TABLE `dvmember` DISABLE KEYS */;
/*!40000 ALTER TABLE `dvmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `birth_date` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` enum('MAN','WOMAN') NOT NULL,
  `login_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_member_login_id` (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'1999-12-01','Rudy@naver.com','WOMAN','Rudy',' Rudy','1234qwer!'),(2,'1999-12-01','Rudy@naver.com','WOMAN','claxn',' Rudy','1234qwer!');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_member`
--

DROP TABLE IF EXISTS `test_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_member` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `birth_date` date NOT NULL,
  `gender` enum('MAN','WOMAN') NOT NULL,
  `login_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_member_login_id` (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_member`
--

LOCK TABLES `test_member` WRITE;
/*!40000 ALTER TABLE `test_member` DISABLE KEYS */;
INSERT INTO `test_member` VALUES (4,'2000-01-01','MAN','Rudy12','kent','1234qwer!'),(5,'2000-01-01','MAN','kent','kent','1234qwer!'),(6,'2000-01-01','MAN','Claxn1234','Claxn','1234qwer!'),(7,'2001-01-01','MAN','rudy123','rudy','1234qwer!'),(8,'1999-12-01','WOMAN','claxn',' Rudy','1234qwer!'),(9,'2001-01-01','MAN','soq2012','test123','gkskfnel2012!'),(10,'2000-01-01','MAN','test123','test','gkskfnel2012!'),(11,'2001-01-02','MAN','hana467','hana','gkskfnel2012!'),(12,'2000-01-01','MAN','ksu1223','hana','gkskfnel2012!');
/*!40000 ALTER TABLE `test_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 12:39:03
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

--
-- Table structure for table `dvpurchase`
--

DROP TABLE IF EXISTS `dvpurchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dvpurchase` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `food_id` bigint DEFAULT NULL,
  `login_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKitdqex1fyt11ia40uxnm4bnun` (`food_id`),
  CONSTRAINT `FKitdqex1fyt11ia40uxnm4bnun` FOREIGN KEY (`food_id`) REFERENCES `foods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dvpurchase`
--

LOCK TABLES `dvpurchase` WRITE;
/*!40000 ALTER TABLE `dvpurchase` DISABLE KEYS */;
INSERT INTO `dvpurchase` VALUES (1,1,3,NULL),(2,1,3,NULL),(3,1,3,NULL),(4,1,3,NULL),(5,1,3,NULL),(6,1,3,NULL),(7,1,3,NULL),(8,1,3,NULL),(9,1,3,NULL),(10,1,3,NULL),(11,1,3,NULL),(12,1,3,NULL),(13,1,3,NULL),(14,1,3,NULL),(15,1,3,NULL),(16,1,10,NULL),(17,1,10,NULL),(18,1,10,NULL),(19,1,3,NULL),(20,1,3,NULL),(21,1,8,NULL),(22,1,3,NULL),(23,1,3,NULL),(24,1,3,NULL),(25,1,3,NULL),(26,1,3,NULL),(27,1,3,NULL),(28,1,8,NULL),(29,1,3,NULL),(30,1,3,NULL),(31,1,3,NULL),(32,1,3,NULL),(33,1,3,NULL),(34,0,3,NULL),(35,0,3,'rudy123'),(36,2,3,'rudy123'),(37,1,3,'rudy123'),(38,1,3,NULL),(39,1,3,'soq2012'),(40,1,3,NULL),(41,1,3,NULL),(42,1,3,NULL),(43,1,5,NULL),(44,1,3,NULL),(45,1,7,NULL),(46,1,3,NULL),(47,1,7,NULL),(48,1,9,NULL),(49,1,8,'soq2012'),(50,1,10,'soq2012'),(51,1,3,'soq2012'),(52,1,3,'rudy123');
/*!40000 ALTER TABLE `dvpurchase` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `deliver_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqdk7bx94xal3calvlcnxp4mp1` (`deliver_id`),
  CONSTRAINT `FKqdk7bx94xal3calvlcnxp4mp1` FOREIGN KEY (`deliver_id`) REFERENCES `delivers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 12:39:03
