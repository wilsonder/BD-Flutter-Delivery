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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(180) NOT NULL,
  `name` varchar(90) NOT NULL,
  `lastname` varchar(90) NOT NULL,
  `phone` varchar(90) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(90) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `notification_token` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'pepito@gmail.com','Ppepito','Mosquera','69355433360','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1674612747763?alt=media&token=ee82726c-c603-4cfe-9fdd-afe50dacc9a8','$2a$10$eKEkOPuMDkEWjLng.X1lIObcfEv9.zZsTsbxlGyScjUJuye7uK/lm','2022-11-12 21:56:53','2023-05-25 18:51:19','dMBYRGBUSoqGQSawJheEu0:APA91bFJxgv40GoTdv277_PsxztFRyAFOfkh8fMJ43g_YZf1Is38wY2GZ_1enjIzv7i4FtOTLy5s3YTynrcdPdVdkaObSjqVIGmF9BvOlamTGjsj0qCqAdb0DVeKgO8ojsEuO2jrpTEF',NULL),(3,'juan@gmail.com','Juan','Díaz ','96325832','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1668290521024?alt=media&token=649b15fe-6652-4350-9eb4-b14ea2a5b957','$2a$10$1GHwTTfhoaaGC2euKHIuPOmB6ivmjlZMtkRQLQSymEA4vOoCRtCv6','2022-11-12 22:02:03','2023-04-17 23:53:50','dMBYRGBUSoqGQSawJheEu0:APA91bFJxgv40GoTdv277_PsxztFRyAFOfkh8fMJ43g_YZf1Is38wY2GZ_1enjIzv7i4FtOTLy5s3YTynrcdPdVdkaObSjqVIGmF9BvOlamTGjsj0qCqAdb0DVeKgO8ojsEuO2jrpTEF',NULL),(4,'martin@gmail.com','Martin','Casas','85214721','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1668290620722?alt=media&token=649b15fe-6652-4350-9eb4-b14ea2a5b957','$2a$10$1sFkRiCVvegu70qOko7Dnei0RX2MCIoE9K./3WETaInifsjTxYSjq','2022-11-12 22:03:42','2022-11-12 22:03:42',NULL,NULL),(5,'filipe@gmail.com','Filipe','Gomez','963258741','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1668457899990?alt=media&token=1561d2aa-a9df-4b78-8b22-25f9df181ce6','$2a$10$.AiQVK3GioVCrGDuI7dHfOHG/Ps6c8IYo2YGcIPPc1ehtK3l6MXQC','2022-11-14 20:31:43','2023-03-09 20:20:33','cIUVtvXeTkW51Ctp_OV3nw:APA91bG1SgkmXmUzXw9fo8J2ysanqhWiBH0YmOlzTzXBD1pxdYs9SHFBG1mSGFBFDo_2l4QTjyZujlMOAE76Izf6DZBmNW2lIwRfKQhFRyDm3DwqS000jj9UMUKca6W5j00pNU7xnq2J',NULL),(6,'andrea@gmail.com','Andrea','Suárez ','369885','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1676058667531?alt=media&token=bb9a2bbf-8590-4129-8dc8-05c0f7ee0b3a','$2a$10$jjOvrsH0LU2W5vCpz9S55eV7y8IlAfhIlnRwDLz9tNuQPNdZVsV4a','2023-02-10 19:51:10','2023-03-09 20:30:06','fHbQAW7OQbOeWGn7ydxU0o:APA91bEhW93saEXKKVxjLM1xmAgbKpJYYFVCAc8MjEmNQsRsoaX8oH6IZn3QZZ8zdjkpxPxeeOKvv8sTahvqFUB4VSW5E_LyFf8Y_2rns5XuDvuoO3DxBBbRspvbuyaDpnayb2rvRVCf',NULL),(7,'carvajalejandro628@gmail.com','Alejandro C','Carvajal ','3206057961','https://firebasestorage.googleapis.com/v0/b/delivery-mysql-2cff1.appspot.com/o/image_1676160704472?alt=media&token=ebbce852-6401-4768-9901-e82cea667acb','$2a$10$KhUqlaBOAHBNDzS30uMo0e.S.ooEYgWwiM.FfqyjsUG6OILmq1S6S','2023-02-12 00:03:05','2023-02-12 00:11:53',NULL,NULL),(9,'nachomen30sk@gmail.com','Antonio','Morales','3209733225',NULL,'$2y$10$UDkKoh1qK10nXwAplN.EIuiHra0g6pIc9uDE6PtMflWwKs1h7v6o2','2023-05-24 21:41:22','2023-05-24 21:41:22',NULL,NULL),(11,'correo@correo.com','Alejo','Hernandez','3269874',NULL,'$2y$10$X4OK2nO92/HxQCuTMKBsU.XaC97mjfMt9BoalMpVybdAvZSjgD48a','2023-05-24 22:21:52','2023-05-25 16:29:03','dMBYRGBUSoqGQSawJheEu0:APA91bFJxgv40GoTdv277_PsxztFRyAFOfkh8fMJ43g_YZf1Is38wY2GZ_1enjIzv7i4FtOTLy5s3YTynrcdPdVdkaObSjqVIGmF9BvOlamTGjsj0qCqAdb0DVeKgO8ojsEuO2jrpTEF','MHQz9vsPHErzdNFRCFPvNnKlvoKLgZB9wTOeyq6094tQkZaEiG0KVbjhXd4z');
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

-- Dump completed on 2023-07-23 14:40:59
