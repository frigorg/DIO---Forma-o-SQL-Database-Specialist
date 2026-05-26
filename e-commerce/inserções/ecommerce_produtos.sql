-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.4.8

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
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,1,'Notebook Vision X15','NB-VX15-001',3899.9),(2,1,'Mouse Gamer Titan','MS-TTN-002',149.9),(3,1,'Teclado Mecânico RGB','TC-RGB-003',329.9),(4,1,'Monitor LED 24 Polegadas','MN-24-004',1199),(5,1,'Headset Surround Pro','HD-SP-005',259.5),(6,2,'Smartphone Alpha One','SP-A1-006',2499.9),(7,2,'Tablet NeoTab 10','TB-NT10-007',1790),(8,2,'Smartwatch Pulse Fit','SW-PF-008',799.9),(9,2,'Carregador Turbo USB-C','CG-USBC-009',89.9),(10,2,'Fone Bluetooth AirSound','FN-BTA-010',219.99),(11,3,'Cadeira Escritório Comfort','CD-CFT-011',950),(12,3,'Mesa Gamer Infinity','MS-INF-012',1450),(13,3,'Estante Modular Office','ET-MOD-013',680.5),(14,3,'Luminária LED Desk','LM-DSK-014',120),(15,3,'Suporte Articulado Monitor','SP-MON-015',199.9),(16,4,'HD Externo 2TB','HD-2TB-016',540),(17,4,'SSD NVMe 1TB','SSD-1TB-017',699.9),(18,4,'Placa de Vídeo RTX 4060','GPU-4060-018',2899.9),(19,4,'Memória RAM 16GB DDR5','RAM-16-019',480),(20,4,'Fonte Modular 750W','FT-750-020',620),(21,4,'Processador Octa-Core X9','CPU-X9-021',1599.9),(22,4,'Cooler WaterCool 240mm','WC-240-022',430);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-26 12:35:49
