-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: caixa_db
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cofre`
--

DROP TABLE IF EXISTS `cofre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cofre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `saldo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `movimentacoes` json DEFAULT NULL,
  `data_criacao` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `data_atualizacao` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cofre`
--

LOCK TABLES `cofre` WRITE;
/*!40000 ALTER TABLE `cofre` DISABLE KEYS */;
INSERT INTO `cofre` VALUES (1,280.00,'[{\"id\": 1787782150916, \"tipo\": \"saida\", \"valor\": 5000, \"origem\": \"cofre\", \"dataHora\": \"2026-08-26T22:09:10.916Z\", \"descricao\": \"Sangria para Patrimônio: Sangria do Cofre\"}, {\"id\": 1787781934436, \"tipo\": \"saida\", \"valor\": 200, \"origem\": \"cofre\", \"dataHora\": \"2026-08-26T22:05:34.436Z\", \"descricao\": \"Sangria para Patrimônio: sangria\"}, {\"id\": 1787774632977, \"tipo\": \"saida\", \"valor\": 100, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-26T20:03:52.977Z\", \"descricao\": \"Pagamento de parcela - Coca\"}, {\"id\": 1787774597767, \"tipo\": \"saida\", \"valor\": 500, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-26T20:03:17.767Z\", \"descricao\": \"Compra de mercadoria\"}, {\"id\": 1787774543710, \"tipo\": \"saida\", \"valor\": 150, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-26T20:02:23.710Z\", \"descricao\": \"Pagamento de parcela - Coca Cola \"}, {\"id\": 1787774490824, \"tipo\": \"saida\", \"valor\": 150, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-26T20:01:30.824Z\", \"descricao\": \"Pagamento de parcela - Coca Cola \"}, {\"id\": 1787774468609, \"tipo\": \"saida\", \"valor\": 200, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-26T20:01:08.609Z\", \"descricao\": \"Compra de mercadoria\"}, {\"id\": 1787774374437, \"tipo\": \"saida\", \"valor\": 100, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-26T19:59:34.437Z\", \"descricao\": \"Pagamento de parcela - trew\"}, {\"id\": 1787773809538, \"tipo\": \"saida\", \"valor\": 100, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-26T19:50:09.538Z\", \"descricao\": \"Pagamento de parcela - coca\"}, {\"id\": 1787773780179, \"tipo\": \"saida\", \"valor\": 100, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-26T19:49:40.179Z\", \"descricao\": \"Pagamento de parcela - teste\"}, {\"id\": 1787773210727, \"tipo\": \"saida\", \"valor\": 100, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-26T19:40:10.727Z\", \"descricao\": \"Pagamento de parcela - teste\"}, {\"id\": 1787773175515, \"tipo\": \"saida\", \"valor\": 300, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-26T19:39:35.515Z\", \"descricao\": \"Compra de mercadoria\"}, {\"id\": 1787773126212, \"tipo\": \"saida\", \"valor\": 100, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-26T19:38:46.212Z\", \"descricao\": \"Pagamento de parcela - coca\"}, {\"id\": 1787771782811, \"tipo\": \"saida\", \"valor\": 200, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-26T19:16:22.811Z\", \"descricao\": \"Compra de mercadoria\"}, {\"id\": 1787771705577, \"tipo\": \"saida\", \"valor\": 100, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-26T19:15:05.577Z\", \"descricao\": \"Pagamento de parcela - trew\"}, {\"id\": 1787607701106, \"tipo\": \"saida\", \"valor\": 1000, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-24T21:41:41.106Z\", \"descricao\": \"Compra de mercadoria\"}, {\"id\": 1787607618566, \"tipo\": \"saida\", \"valor\": 500, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-24T21:40:18.566Z\", \"descricao\": \"Pagamento de parcela - Ambev\"}, {\"id\": 1787607303967, \"tipo\": \"saida\", \"valor\": 250, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-24T21:35:03.967Z\", \"descricao\": \"Compra de mercadoria\"}, {\"id\": 1787607249223, \"tipo\": \"saida\", \"valor\": 250, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-24T21:34:09.223Z\", \"descricao\": \"Compra de mercadoria\"}, {\"id\": 1787607091925, \"tipo\": \"saida\", \"valor\": 1000, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-24T21:31:31.925Z\", \"descricao\": \"Pagamento de parcela - Ambev \"}, {\"id\": 1787606605480, \"tipo\": \"saida\", \"valor\": 20, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-24T21:23:25.480Z\", \"descricao\": \"Compra de mercadoria\"}, {\"id\": 1787602651339, \"tipo\": \"saida\", \"valor\": 500, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-24T20:17:31.339Z\", \"descricao\": \"Pagamento de parcela - Ambev\"}, {\"id\": 1787602359114, \"tipo\": \"entrada\", \"valor\": 5500, \"origem\": \"caixa\", \"dataHora\": \"2026-08-24T20:12:39.114Z\", \"descricao\": \"Sangria de caixa\"}, {\"id\": 1787602312942, \"tipo\": \"saida\", \"valor\": 5000, \"origem\": \"mercadoria\", \"dataHora\": \"2026-08-24T20:11:52.942Z\", \"descricao\": \"Compra de mercadoria\"}, {\"id\": 1787601520729, \"tipo\": \"entrada\", \"valor\": 500, \"origem\": \"caixa\", \"dataHora\": \"2026-08-24T19:58:40.729Z\", \"descricao\": \"Sangria de caixa\"}, {\"id\": 1787601501293, \"tipo\": \"entrada\", \"valor\": 200, \"origem\": \"caixa\", \"dataHora\": \"2026-08-24T19:58:21.293Z\", \"descricao\": \"Sangria de caixa\"}, {\"id\": 1787600133514, \"tipo\": \"saida\", \"valor\": 500, \"origem\": \"cofre\", \"dataHora\": \"2026-08-24T19:35:33.514Z\", \"descricao\": \"Pagamento Fornecedor \"}, {\"id\": 1787600083167, \"tipo\": \"entrada\", \"valor\": 500, \"origem\": \"caixa\", \"dataHora\": \"2026-08-24T19:34:43.167Z\", \"descricao\": \"Sangria do Caixa\"}, {\"id\": 1787600056806, \"tipo\": \"entrada\", \"valor\": 10000, \"origem\": \"externo\", \"dataHora\": \"2026-08-24T19:34:16.806Z\", \"descricao\": \"Valor Inicial\"}]','2026-08-24 16:34:16.814955','2026-08-26 19:09:10.000000');
/*!40000 ALTER TABLE `cofre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fichas`
--

DROP TABLE IF EXISTS `fichas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fichas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_nome` varchar(255) NOT NULL,
  `compras` json NOT NULL,
  `pagamentos` json DEFAULT NULL,
  `valor_total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `valor_pago` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` varchar(20) NOT NULL DEFAULT 'ABERTA',
  `data_criacao` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `data_atualizacao` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `observacao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fichas`
--

LOCK TABLES `fichas` WRITE;
/*!40000 ALTER TABLE `fichas` DISABLE KEYS */;
INSERT INTO `fichas` VALUES (1,'Joao Pedro','[{\"data\": \"2026-08-22T13:56:23.286Z\", \"valor\": 10, \"idVenda\": 3, \"resumoItens\": \"1x Diversos\"}, {\"data\": \"2026-08-24T16:52:22.678Z\", \"valor\": 191.62, \"idVenda\": 9, \"resumoItens\": \"1x Diversos, 78x Diversos, 7x Diversos\"}]','[{\"data\": \"2026-08-22T13:56:58.822Z\", \"forma\": \"Dinheiro\", \"valor\": 5}, {\"data\": \"2026-08-24T16:52:39.320Z\", \"forma\": \"Pix\", \"valor\": 100}, {\"data\": \"2026-08-24T17:25:59.866Z\", \"forma\": \"Cartão\", \"valor\": 10}, {\"data\": \"2026-08-24T17:26:07.306Z\", \"forma\": \"Pix\", \"valor\": 86.62}]',201.62,201.62,'PAGA','2026-08-22 13:56:21.305808','2026-08-24 17:26:07.000000',NULL),(2,'Milton','[{\"data\": \"2026-08-22T14:12:44.765Z\", \"valor\": 522, \"idVenda\": 4, \"resumoItens\": \"1x Diversos, 1x Diversos, 1x Diversos, 1x Diversos, 1x Diversos, 1x Diversos, 1x Diversos, 1x Diversos, 1x Diversos, 1x Diversos, 1x Diversos, 1x Diversos, 1x Diversos, 1x Diversos\"}, {\"data\": \"2026-08-22T14:16:12.941Z\", \"valor\": 784, \"idVenda\": 6, \"resumoItens\": \"1x Diversos, 1x Diversos, 1x Diversos, 1x Diversos, 1x Diversos, 1x Diversos\"}]','[{\"data\": \"2026-08-22T14:19:55.570Z\", \"forma\": \"Dinheiro\", \"valor\": 1000}, {\"data\": \"2026-08-26T16:11:01.003Z\", \"forma\": \"Pix\", \"valor\": 306}]',1306.00,1306.00,'PAGA','2026-08-22 14:12:42.578070','2026-08-26 16:11:01.000000',NULL),(4,'Pedro Golenia','[{\"data\": \"2026-08-22T14:18:22.609Z\", \"valor\": 15, \"idVenda\": 8, \"resumoItens\": \"1x Diversos\"}]','[{\"data\": \"2026-08-26T19:17:00.338Z\", \"forma\": \"Dinheiro\", \"valor\": 15}]',15.00,15.00,'PAGA','2026-08-22 14:18:20.391735','2026-08-26 19:17:00.000000',NULL),(5,'ana','[{\"data\": \"2026-08-27T20:48:54.485Z\", \"valor\": 12, \"idVenda\": 16, \"resumoItens\": \"1x Diversos\"}, {\"data\": \"2026-08-27T21:32:27.614Z\", \"valor\": 12, \"idVenda\": 21, \"resumoItens\": \"1x Diversos\"}]','[{\"data\": \"2026-08-27T20:49:46.126Z\", \"forma\": \"Cartão\", \"valor\": 1}, {\"data\": \"2026-08-27T20:53:59.073Z\", \"forma\": \"Dinheiro\", \"valor\": 11}]',24.00,12.00,'ABERTA','2026-08-27 20:48:42.688442','2026-08-27 21:32:27.000000',NULL);
/*!40000 ALTER TABLE `fichas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mercadorias_operacoes`
--

DROP TABLE IF EXISTS `mercadorias_operacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mercadorias_operacoes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fornecedorNome` varchar(255) NOT NULL,
  `valorNota` decimal(10,2) NOT NULL,
  `descricao` text,
  `valorPagoCaixa` decimal(10,2) NOT NULL DEFAULT '0.00',
  `valorPagoCofre` decimal(10,2) NOT NULL DEFAULT '0.00',
  `valorPrazo` decimal(10,2) NOT NULL DEFAULT '0.00',
  `statusGeral` varchar(30) NOT NULL DEFAULT 'pendente',
  `dataOperacao` date DEFAULT NULL,
  `parcelas` json DEFAULT NULL,
  `data_criacao` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `data_atualizacao` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mercadorias_operacoes`
--

LOCK TABLES `mercadorias_operacoes` WRITE;
/*!40000 ALTER TABLE `mercadorias_operacoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `mercadorias_operacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patrimonio`
--

DROP TABLE IF EXISTS `patrimonio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patrimonio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `saldo` decimal(12,2) NOT NULL DEFAULT '0.00',
  `movimentacoes` json DEFAULT NULL,
  `dataAtualizacao` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patrimonio`
--

LOCK TABLES `patrimonio` WRITE;
/*!40000 ALTER TABLE `patrimonio` DISABLE KEYS */;
INSERT INTO `patrimonio` VALUES (1,5300.00,'[{\"id\": \"d690bd05-56fa-4532-96df-0079bde2fb9a\", \"data\": \"2026-08-26T22:09:10.945Z\", \"tipo\": \"sangria\", \"valor\": 5000, \"descricao\": \"Sangria do Cofre\"}, {\"id\": \"91b28a6e-abef-4412-99cb-66e02adc4cc3\", \"data\": \"2026-08-26T22:08:59.811Z\", \"tipo\": \"saida\", \"valor\": 200, \"descricao\": \"twatee\"}, {\"id\": \"da3b1f9c-96da-46bc-84ab-0759f0d5c543\", \"data\": \"2026-08-26T22:08:51.885Z\", \"tipo\": \"entrada\", \"valor\": 200, \"descricao\": \"teste\"}, {\"id\": \"bd11dccd-dfb7-4585-9c7b-84cb219a68b5\", \"data\": \"2026-08-26T22:05:34.496Z\", \"tipo\": \"sangria\", \"valor\": 200, \"descricao\": \"sangria\"}, {\"id\": \"ce6a4b54-8cfe-4dc6-b327-d31838ec8cdc\", \"data\": \"2026-08-26T22:05:08.772Z\", \"tipo\": \"saida\", \"valor\": 100, \"descricao\": \"teste\"}, {\"id\": \"02a6d527-f1d8-4f10-8faf-7c675cade1de\", \"data\": \"2026-08-26T22:04:54.579Z\", \"tipo\": \"entrada\", \"valor\": 200, \"descricao\": \"teste\"}]','2026-08-26 19:09:10.000000');
/*!40000 ALTER TABLE `patrimonio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `itens` json NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `valor_recebido` decimal(10,2) NOT NULL,
  `troco` decimal(10,2) NOT NULL,
  `forma_pagamento` varchar(50) NOT NULL,
  `data_hora` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (3,'[{\"id\": 1787417758659, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 10}]',10.00,0.00,0.00,'Crediário','2026-08-22 13:56:23.270894'),(4,'[{\"id\": 1787418715866, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1787418716786, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1787418717434, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1787418718007, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1787418718535, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1787418719103, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1787418719626, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1787418720314, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1787418724988, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 121}, {\"id\": 1787418725510, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 121}, {\"id\": 1787418725810, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 21}, {\"id\": 1787418726551, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 121}, {\"id\": 1787418726827, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 21}, {\"id\": 1787418727026, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 21}]',522.00,0.00,0.00,'Crediário','2026-08-22 14:12:44.739341'),(5,'[{\"id\": 1787418849931, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12.5}, {\"id\": 1787418852222, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 56.55}, {\"id\": 1787418853986, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 13.54}, {\"id\": 1787418880725, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 89.99}]',172.58,180.00,7.42,'Dinheiro','2026-08-22 14:15:05.443273'),(6,'[{\"id\": 1787418931415, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 45}, {\"id\": 1787418931954, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 45}, {\"id\": 1787418932547, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 74}, {\"id\": 1787418933229, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 89}, {\"id\": 1787418933936, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 456}, {\"id\": 1787418935182, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 75}]',784.00,0.00,0.00,'Crediário','2026-08-22 14:16:12.928040'),(7,'[{\"id\": 1787418992130, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 4}, {\"id\": 1787418992619, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 45}, {\"id\": 1787418993336, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 78}, {\"id\": 1787418997616, \"qtd\": 10, \"nome\": \"Diversos\", \"preco\": 5}, {\"id\": 1787419021920, \"qtd\": 10, \"nome\": \"Diversos\", \"preco\": 1.09}]',187.90,0.00,0.00,'Crediário','2026-08-22 14:17:18.920303'),(8,'[{\"id\": 1787419081582, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 15}]',15.00,0.00,0.00,'Crediário','2026-08-22 14:18:22.595274'),(9,'[{\"id\": 1787601083166, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 1.5}, {\"id\": 1787601091326, \"qtd\": 78, \"nome\": \"Diversos\", \"preco\": 1.54}, {\"id\": 1787601119008, \"qtd\": 7, \"nome\": \"Diversos\", \"preco\": 10}]',191.62,0.00,0.00,'Crediário','2026-08-24 16:52:22.636296'),(10,'[{\"id\": 1787605457181, \"qtd\": 2, \"nome\": \"Diversos\", \"preco\": 10}]',20.00,25.00,5.00,'Dinheiro','2026-08-24 18:04:28.722964'),(11,'[{\"id\": 1787605521433, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 10}]',10.00,0.00,0.00,'Cartão','2026-08-24 18:05:23.676652'),(12,'[{\"id\": 1787605529109, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 52}]',52.00,0.00,0.00,'Pix','2026-08-24 18:05:33.630876'),(13,'[{\"id\": 1787776654867, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1787776659778, \"qtd\": 4, \"nome\": \"Diversos\", \"preco\": 12.89}]',63.56,200.00,136.44,'Dinheiro','2026-08-26 17:38:04.316823'),(14,'[{\"id\": 1787788231694, \"qtd\": 7, \"nome\": \"Diversos\", \"preco\": 1.5}]',10.50,0.00,0.00,'Cartão','2026-08-26 20:50:43.610506'),(15,'[{\"id\": 1787873972945, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1787873973916, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}]',24.00,34.00,10.00,'Dinheiro','2026-08-27 20:39:41.793434'),(16,'[{\"id\": 1787874512110, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}]',12.00,0.00,0.00,'Crediário','2026-08-27 20:48:54.466533'),(17,'[{\"id\": 1787876755038, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}]',12.00,0.00,0.00,'Cartão','2026-08-27 21:25:58.795885'),(18,'[{\"id\": 1787876777543, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}]',12.00,200.00,188.00,'Dinheiro','2026-08-27 21:26:24.706796'),(19,'[{\"id\": 1787876806807, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}]',12.00,0.00,0.00,'Crediário','2026-08-27 21:26:57.147060'),(20,'[{\"id\": 1787877122230, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}]',12.00,0.00,0.00,'Cartão','2026-08-27 21:32:06.286614'),(21,'[{\"id\": 1787877139010, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}]',12.00,0.00,0.00,'Crediário','2026-08-27 21:32:27.602528'),(22,'[{\"id\": 1787877327835, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1787877331748, \"qtd\": 7, \"nome\": \"Diversos\", \"preco\": 1.02}]',19.14,70.00,50.86,'Dinheiro','2026-08-27 21:35:42.018774'),(23,'[{\"id\": 1788304430526, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1788304430857, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1788304431246, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}]',36.00,100.00,64.00,'Dinheiro','2026-09-01 20:14:00.226745'),(24,'[{\"id\": 1788304538950, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1788304539314, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1788304539618, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}]',36.00,100.00,64.00,'Dinheiro','2026-09-01 20:15:46.057525'),(25,'[{\"id\": 1788304636510, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1788304636858, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1788304637418, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}]',36.00,100.00,64.00,'Dinheiro','2026-09-01 20:17:23.434737'),(26,'[{\"id\": 1788304788513, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1788304788882, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}, {\"id\": 1788304789201, \"qtd\": 1, \"nome\": \"Diversos\", \"preco\": 12}]',36.00,100.00,64.00,'Dinheiro','2026-09-01 20:19:54.397634');
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-01 21:09:22
