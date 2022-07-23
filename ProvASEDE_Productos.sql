-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: ProvASEDE
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

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
-- Table structure for table `Productos`
--

DROP TABLE IF EXISTS `Productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Productos` (
  `IDProd` int NOT NULL,
  `nomProd` varchar(45) COLLATE utf8_bin NOT NULL,
  `IDProv` int NOT NULL AUTO_INCREMENT,
  `loteProd` int NOT NULL,
  `cantProd` int NOT NULL,
  `pesoProd` int NOT NULL,
  `preUnProd` int NOT NULL,
  PRIMARY KEY (`IDProd`),
  KEY `Productos_ibfk_1` (`IDProv`),
  CONSTRAINT `Productos_ibfk_1` FOREIGN KEY (`IDProv`) REFERENCES `Proveedores` (`IDProv`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Productos`
--

LOCK TABLES `Productos` WRITE;
/*!40000 ALTER TABLE `Productos` DISABLE KEYS */;
INSERT INTO `Productos` VALUES (9,'Lemon Pie',4,240,1,750,750),(12,'Cheesecake de frutos rojos',4,420,1,750,800),(23,'Chocotorta',4,160,1,750,650),(27,'Ensalada de frutas de estacion',5,56,1,250,180),(60,'Torta Bruce',4,323,1,750,600),(89,'Cookie con chips de chocolate NY',3,1230,1,100,95),(721,'Croissant vegano',2,982,1,100,95),(914,'Pan lactal',1,1222,1,500,120),(923,'Brioche',1,2123,1,1000,180),(929,'Pan de campo de masa madre',1,2339,1,500,90);
/*!40000 ALTER TABLE `Productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-22 22:09:36
