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
-- Table structure for table `Proveedores`
--

DROP TABLE IF EXISTS `Proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveedores` (
  `IDProv` int NOT NULL,
  `tipoProd` varchar(45) COLLATE utf8_bin NOT NULL,
  `nomProv` varchar(45) COLLATE utf8_bin NOT NULL,
  `dirProv` varchar(45) COLLATE utf8_bin NOT NULL,
  `telProv` int NOT NULL,
  `redesProv` varchar(100) COLLATE utf8_bin NOT NULL,
  `emailProv` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`IDProv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedores`
--

LOCK TABLES `Proveedores` WRITE;
/*!40000 ALTER TABLE `Proveedores` DISABLE KEYS */;
INSERT INTO `Proveedores` VALUES (1,'Panaeria de masa madre','Aliter Mother','Soldado de Dependencia 3000',1560042301,'@AlitermotherPanes  (instagram)','alitermother@gmail.com.ar'),(2,'Croissant veganos','CroqueMonseiur','Juan b Justoli 340',1579859022,'@Croquemonseiur','CROISSANT@gmail.com'),(3,'Cookies estilo NY','CookieMonster','Muñoz 1204,CABA',1570021355,'@CookieMonsta','cookiesmonsta@gmail.es'),(4,'Pasteleria vegana','VeganMash','Guatebuena 3444,CABA',1523949501,'@Veganmash','veganmash@vegan.com.ar'),(5,'Ensalada de Fruta','FrutitasBB','Av Hablao 912, CABA.',1598324421,'@damefrutitabb','frutitasmas@mandandofruta.com.ar');
/*!40000 ALTER TABLE `Proveedores` ENABLE KEYS */;
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
