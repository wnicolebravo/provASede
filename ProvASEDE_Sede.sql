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
-- Table structure for table `Sede`
--

DROP TABLE IF EXISTS `Sede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Sede` (
  `IDSede` int NOT NULL AUTO_INCREMENT,
  `IDPedido` int NOT NULL,
  `dirSede` varchar(45) COLLATE utf8_bin NOT NULL,
  `medPago` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`IDSede`),
  KEY `IDPedido` (`IDPedido`),
  CONSTRAINT `Sede_ibfk_1` FOREIGN KEY (`IDPedido`) REFERENCES `Pedido` (`IDPedido`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sede`
--

LOCK TABLES `Sede` WRITE;
/*!40000 ALTER TABLE `Sede` DISABLE KEYS */;
INSERT INTO `Sede` VALUES (1,338,'Av Norio de janerio 203','Debito'),(2,456,'Av Norio de janerio 203','Mercado Pago'),(3,457,'Av Norio de janerio 203','Mercado Pago'),(4,123,'Av Norio de janerio 203','Mercado Pago'),(5,14,'Av Norio de janerio 203','Debito'),(6,12,'Av. Paulo Londra 475','Efectivo'),(7,13,'Av. Paulo Londra 475','Efectivo'),(101,338,'Av Norio de janerio 203','Debito'),(102,456,'Av Norio de janerio 203','Mercado Pago'),(103,457,'Av Norio de janerio 203','Mercado Pago'),(104,123,'Av Norio de janerio 203','Mercado Pago'),(105,14,'Av Norio de janerio 203','Debito'),(116,12,'Av. Paulo Londra 475','Efectivo'),(117,13,'Av. Paulo Londra 475','Efectivo');
/*!40000 ALTER TABLE `Sede` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-22 22:09:37
