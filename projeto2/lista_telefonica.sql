CREATE DATABASE  IF NOT EXISTS `lista_telefonica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lista_telefonica`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: lista_telefonica
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `contatos`
--

DROP TABLE IF EXISTS `contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contatos` (
  `id_contato` int NOT NULL AUTO_INCREMENT,
  `nome_contato` varchar(80) NOT NULL,
  `numero_contato` varchar(14) NOT NULL,
  `numero2_contato` varchar(14) DEFAULT NULL,
  `endereco_contato` varchar(255) DEFAULT NULL,
  `email_contato` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_contato`),
  UNIQUE KEY `contato_unico` (`numero_contato`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatos`
--

LOCK TABLES `contatos` WRITE;
/*!40000 ALTER TABLE `contatos` DISABLE KEYS */;
INSERT INTO `contatos` VALUES (67,'Diego Souza','999333344424','99966668777','Avenida R, 678','diego.souza@exemplo.com'),(66,'Amanda Pereira','999444424555','99977778888','Rua Q, 345','amanda.pereira@exemplo.com'),(65,'Paulo Almeida','99994490000','99942223333','Praça P, 012','paulo.almeida@exemplo.com'),(64,'Carolina Silva','99944667777','99444445555','Travessa O, 789','carolina.silva@exemplo.com'),(63,'Marcelo Costa','99984889999','99954556666','Avenida N, 456','marcelo.costa@exemplo.com'),(62,'Larissa Oliveira','99917778888','99941112222','Rua M, 123','larissa.oliveira@exemplo.com'),(60,'Gabriela Pereira','99944445555','99922223333','Travessa K, 567','gabriela.pereira@exemplo.com'),(61,'Ricardo Souza','99933334444','99966667777','Praça L, 890','ricardo.souza@exemplo.com'),(59,'Thiago Almeida','99999990000','99934567890','Avenida J, 234','thiago.almeida@exemplo.com'),(58,'Isabela Silva','99966667777','99988889999','Rua I, 901','isabela.silva@exemplo.com'),(57,'Gustavo Santos','99922223333','99944445555','Praça H, 678','gustavo.santos@exemplo.com'),(56,'Rafaela Costa','99977778888','99999990000','Travessa G, 345','rafaela.costa@exemplo.com'),(55,'Laura Oliveira','99955556666','99988889999','Avenida F, 012','laura.oliveira@exemplo.com'),(54,'Carlos Souza','99911112222','99933334444','Rua E, 567','carlos.souza@exemplo.com'),(52,'Pedro Almeida','99945678901','99976543210','Travessa C, 789','pedro.almeida@exemplo.com'),(53,'Ana Pereira','99978901234','99954321098','Praça D, 321','ana.pereira@exemplo.com'),(51,'Maria Santos','99912345678','99998765432','Avenida B, 456','maria.santos@exemplo.com'),(50,'João Silva','99981251436','99985764825','Rua A, 123','joao.silva@exemplo.com');
/*!40000 ALTER TABLE `contatos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16 11:46:22
