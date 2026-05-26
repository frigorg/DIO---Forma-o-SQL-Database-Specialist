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
-- Dumping data for table `pagamentos`
--

LOCK TABLES `pagamentos` WRITE;
/*!40000 ALTER TABLE `pagamentos` DISABLE KEYS */;
INSERT INTO `pagamentos` VALUES (1,2,3919.9,'Pagamento aprovado via cartão de crédito'),(2,5,2517.9,'Pagamento realizado via PIX'),(3,6,3564.9,'Pagamento confirmado'),(4,7,99.9,'Pagamento aprovado'),(5,8,2614.9,'Pagamento via boleto compensado'),(6,10,1634.9,'Pagamento aprovado via PIX'),(7,11,343.9,'Pagamento confirmado'),(8,12,1219.9,'Pagamento aprovado'),(9,15,4559.8,'Pagamento realizado com sucesso'),(10,17,278.5,'Pagamento confirmado'),(11,18,1227,'Pagamento aprovado via cartão'),(12,19,99.4,'Pagamento processado'),(13,21,3989.9,'Pagamento corporativo confirmado'),(14,22,4619.8,'Pagamento aprovado'),(15,23,695,'Pagamento realizado'),(16,26,794.9,'Pagamento confirmado via transferência'),(17,27,3509.9,'Pagamento empresarial aprovado'),(18,29,1749.9,'Pagamento confirmado'),(19,30,735.5,'Pagamento processado'),(20,32,3659.9,'Pagamento empresarial realizado'),(21,33,814.9,'Pagamento confirmado'),(22,35,344.9,'Pagamento aprovado'),(23,36,3931.9,'Pagamento via cartão confirmado'),(24,37,2547.9,'Pagamento realizado'),(25,39,708,'Pagamento confirmado');
/*!40000 ALTER TABLE `pagamentos` ENABLE KEYS */;
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
