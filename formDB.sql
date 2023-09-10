-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: formdb
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Habib','ullah','hu60167@gmail.com','hosthabib','12345678'),(6,'Habib','ullah','hu60167345@gmail.com','WARDEN','12345678'),(7,'Habib','ullah','buvvvk@gmail.com','hosthabib987','12345678'),(8,'John','Doe','john@example.com','johndoe','password123'),(10,'Habib','ullah','hu6huilkkj7@gmail.com','hosthabib0242','12345678'),(12,'Habib','Ullah','cgiucjhk@gmail.com','hccichisc','12345678'),(13,'Habib','Ullah','hciuiuc@gmail.com','ihochvoe','12345678'),(14,'Habib','ullah','hu6016798@gmail.com','hosthabib35','12345678'),(16,'asssd','ullah','chcilc@gmail.com','cbcico','12345678'),(17,'Habib','ullah','hu60167356@gmail.com','csbjbkv','12345678'),(18,'Habib','ullah','hu637@gmail.com','uuiahvb','12345678'),(19,'Habib','ullah','hu6vyfhj7@gmail.com','dbikv12345678','12345678'),(20,'Habib','ullah','hu60uytdc167@gmail.com','hosthabibugyh','12345678'),(21,'Habib','ullah','hu6016asgdn7@gmail.com','hosthabibafsgdfhgjh','12345678'),(23,'Habib','ullah','hu6fgd0167@gmail.com','hosthabibeg','12345678'),(24,'Habib','ullah','hu6016sgdh7@gmail.com','hosthabibdfgdbfg','12345678'),(25,'Habib','ullah','hu6asfdgfh0167@gmail.com','hosthabibqdwfegrdh','12345678'),(26,'Habib','ullah','hu6016yffgu7@gmail.com','hosthabibgiuuii','12345678'),(27,'Habib','ullah','hu6asfdgfh0fgg167@gmail.com','hosthabibqdwfegrdhdg','12345678'),(28,'Habib','ullah','hu60167sgdh@gmail.com','WARDENwfghrj','12345678'),(29,'Habib','ullah','hu60sfsgs167@gmail.com','WARDENdfghj','12345678'),(30,'Habib','ullah','hu6016fsgdh7@gmail.com','hosthabib9977fgh','12345678'),(31,'Habib','ullah','hu60gdhj167@gmail.com','hosthabibdfgdhj','12345678'),(32,'Habib','ullah','hu60gdhj1ng67@gmail.com','hosthabibdfgdhjvd','12345678'),(33,'Habib','ullah','hudgs60167@gmail.com','hosthabibgge','12345678'),(34,'Habib','ullah','hu60167s@gmail.com','hosthabib35dfg','12345678'),(35,'Habib','ullah','hu60db167@gmail.com','hosthabibvb','12345678'),(36,'Habib','ullah','hu601fh67@gmail.com','hosthabibsdn1','12345678'),(37,'Habib','ullah','hu601fgdsg67@gmail.com','WARDENfghjkyre','12345678'),(38,'Habib','Ullah','hu6016ds7@gmail.com','hosthabibdhd','12345678'),(39,'Obid','vgrh','abrr@gmail.com','sdsihie','12345678'),(40,'Habib','ullah','hu60uugj167@gmail.com','dugihhio','12345678'),(41,'habib','ulllah','idjjl@gmail.com','hosthabib997735','$2b$10$71lEULP4upcb5tVTIajt2O0mseWohUj3WHQA4jeLn6UUxtrKtpT2O');
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

-- Dump completed on 2023-09-08 22:22:45
