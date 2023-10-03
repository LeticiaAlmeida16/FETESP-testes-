CREATE DATABASE  IF NOT EXISTS `fetesp` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `fetesp`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fetesp
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `participantes`
--

DROP TABLE IF EXISTS `participantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `curso` varchar(30) NOT NULL,
  `etec_fatec` enum('E','F') DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participantes`
--

LOCK TABLES `participantes` WRITE;
/*!40000 ALTER TABLE `participantes` DISABLE KEYS */;
INSERT INTO `participantes` VALUES (3,'Letícia','2008-03-05','F','Tecnologia da Inform',NULL,'Brasil'),(4,'Letícia','2008-03-05','F','T.I.',NULL,'Brasil'),(5,'Maria','1978-05-09','F','ADM',NULL,'França'),(6,'Pedro','2000-11-03','M','RH',NULL,'Espanha'),(7,'Tiago','1999-12-13','M','TI',NULL,'Japão'),(8,'Janes','1977-10-09','F','Quimica',NULL,'Brasil'),(9,'Claúdio','2022-11-12','M','Edificações',NULL,'Alemanha'),(10,'Matheus','2007-09-03','M','TI',NULL,'Brasil'),(11,'Luana','2007-11-16','F','T.I.',NULL,'Espanhha');
/*!40000 ALTER TABLE `participantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projeto`
--

DROP TABLE IF EXISTS `projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projeto` (
  `idprojeto` int(11) NOT NULL,
  `nomeproj` varchar(30) NOT NULL,
  `descricao` text NOT NULL,
  `ODS` varchar(20) NOT NULL,
  `patrocinador` varchar(15) DEFAULT NULL,
  `palestra` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idprojeto`),
  UNIQUE KEY `nomeproj` (`nomeproj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projeto`
--

LOCK TABLES `projeto` WRITE;
/*!40000 ALTER TABLE `projeto` DISABLE KEYS */;
INSERT INTO `projeto` VALUES (1,'Sensor Da Saúde','avisa quando você não está bem','3 )Boa saúde e bem-e','SUS','Médicos e enfermeiro'),(2,'CHIP','chipchip','9º','Intel','1h30min sobre chips'),(3,'Programa Paz','paz & paz','16º','Juiz','Justiça no Brasil');
/*!40000 ALTER TABLE `projeto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-03 16:43:45
