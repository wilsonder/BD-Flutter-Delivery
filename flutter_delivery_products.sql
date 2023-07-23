-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: flutter_delivery
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(180) NOT NULL,
  `description` text NOT NULL,
  `price` double DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `id_category` bigint NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `id_category` (`id_category`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Hamburguesa con queso','La mejor hamburguesa con doble queso y pan de las más fina calidad',50000,'https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1674677781428?alt=media&token=c50751ec-f04d-4614-a62d-38c8ace1e505','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1674677781755?alt=media&token=c50751ec-f04d-4614-a62d-38c8ace1e505','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1674677782087?alt=media&token=c50751ec-f04d-4614-a62d-38c8ace1e505',2,'2023-01-25 20:16:21','2023-01-25 20:16:22'),(2,'Jugo de Naranja','Delicioso jugo de naranja natural',5000,'https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1674749983668?alt=media&token=4b57d349-78c7-4fb3-9419-9acf9681c4ae','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1674749985312?alt=media&token=4b57d349-78c7-4fb3-9419-9acf9681c4ae','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1674749985744?alt=media&token=4b57d349-78c7-4fb3-9419-9acf9681c4ae',1,'2023-01-26 16:19:43','2023-01-26 16:19:46'),(3,'Hamburguesa de carne','Disfruta de la mejor hamburguesa con carne ',25000,'https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675111092692?alt=media&token=d34bfef6-24c1-46c6-8904-d244bb406732','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675111100744?alt=media&token=d34bfef6-24c1-46c6-8904-d244bb406732','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675111101218?alt=media&token=d34bfef6-24c1-46c6-8904-d244bb406732',2,'2023-01-30 20:38:10','2023-01-30 20:38:22'),(4,'Pizza Hawaiana ','La mejor pizza',25000,'https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675111330213?alt=media&token=d34bfef6-24c1-46c6-8904-d244bb406732','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675111331213?alt=media&token=d34bfef6-24c1-46c6-8904-d244bb406732','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675111331702?alt=media&token=d34bfef6-24c1-46c6-8904-d244bb406732',4,'2023-01-30 20:42:10','2023-01-30 20:42:12'),(5,'Arepa Colombiana','arepa con carne,queso y todos los ingredientes que puedas integrar',8000,'https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675198483220?alt=media&token=1797fa70-af32-47b8-8d36-14fdccedf462','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675198484578?alt=media&token=1797fa70-af32-47b8-8d36-14fdccedf462','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675198485462?alt=media&token=1797fa70-af32-47b8-8d36-14fdccedf462',3,'2023-01-31 20:54:43','2023-01-31 20:54:46'),(6,'Arepa rellena de Queso','arepa blanca acompañada de chorizo asado con limón',15000,'https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675711414919?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675711416836?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675711417265?alt=media&token=c1241e87-c245-4828-9faa-194172962725',3,'2023-02-06 19:23:35','2023-02-06 19:23:38'),(7,'Arepa Rellena','arepa acompañada de mortadela,queso,carne desmechado,pollo desmechado y huevo de codorniz',12000,'https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675711692009?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675711692413?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675711692785?alt=media&token=c1241e87-c245-4828-9faa-194172962725',3,'2023-02-06 19:28:12','2023-02-06 19:28:13'),(8,'Limonada','Refrescante  limonada de limón con hielo ',2000,'https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675711838346?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675711838691?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675711839018?alt=media&token=c1241e87-c245-4828-9faa-194172962725',1,'2023-02-06 19:30:38','2023-02-06 19:30:39'),(9,'Lulada','Delicioso lulada con hielo y leche condensada',5000,'https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675711937919?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675711938288?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675711939418?alt=media&token=c1241e87-c245-4828-9faa-194172962725',1,'2023-02-06 19:32:18','2023-02-06 19:32:21'),(10,'Hamburguesa Hawaina ','Hamburguesa con piña,carne de res,queso, y salsa de piña con porción de papas',25000,'https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712097650?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712098350?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712098665?alt=media&token=c1241e87-c245-4828-9faa-194172962725',2,'2023-02-06 19:34:58','2023-02-06 19:34:59'),(11,'Perro sencillo','contiene salchicha,queso rallado y papa chip y salsa de la casa ',8000,'https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712277722?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712278113?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712278928?alt=media&token=c1241e87-c245-4828-9faa-194172962725',5,'2023-02-06 19:37:58','2023-02-06 19:37:59'),(12,'Perro americano ','salchicha americana,cebolla,tocineta,queso y papa chip',15000,'https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712413482?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712413827?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712414200?alt=media&token=c1241e87-c245-4828-9faa-194172962725',5,'2023-02-06 19:40:13','2023-02-06 19:40:15'),(13,'Perro americano especial','cebolla,salchicha americana tocineta,pollo maíz tierno,queso y papas chip',25000,'https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712509539?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712509883?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712510289?alt=media&token=c1241e87-c245-4828-9faa-194172962725',5,'2023-02-06 19:41:49','2023-02-06 19:41:51'),(14,'Pizza de Carne','La mejor pizza de carne con salchicha,mortadela,queso y tocineta acompañada de pasta de tomate ',50000,'https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712685646?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712685946?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712686267?alt=media&token=c1241e87-c245-4828-9faa-194172962725',4,'2023-02-06 19:44:46','2023-02-06 19:44:47'),(15,'Pizza de pollo con champiñones','pizza con doble queso,pollo champiñones acompañados de una delicioso salsa y pasta de tomate',50000,'https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712831780?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712832467?alt=media&token=c1241e87-c245-4828-9faa-194172962725','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1675712832785?alt=media&token=c1241e87-c245-4828-9faa-194172962725',4,'2023-02-06 19:47:12','2023-02-06 19:47:13');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-23 14:40:58
