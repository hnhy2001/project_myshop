-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: manhdzai
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `shopapp_notication`
--

DROP TABLE IF EXISTS `shopapp_notication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopapp_notication` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` date NOT NULL,
  `user_id` bigint NOT NULL,
  `casee` varchar(50) NOT NULL,
  `updated_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shopapp_notication_user_id_3a65e750_fk_shopapp_user_id` (`user_id`),
  CONSTRAINT `shopapp_notication_user_id_3a65e750_fk_shopapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `shopapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_notication`
--

LOCK TABLES `shopapp_notication` WRITE;
/*!40000 ALTER TABLE `shopapp_notication` DISABLE KEYS */;
INSERT INTO `shopapp_notication` VALUES (1,1,'Đơn hàng số 1 đã được chấp nhận',0,'2022-01-16',4,'null','2022-01-16'),(2,1,'Đơn hàng số 2 đã được chấp nhận',0,'2022-01-16',3,'null','2022-01-16'),(3,1,'Đơn hàng số 3 đã bị từ chối',0,'2022-01-16',5,'null','2022-01-16'),(4,1,'Đơn hàng số 4 đã bị từ chối',0,'2022-01-18',2,'null','2022-01-18'),(5,1,'Đơn hàng số 6 đã được chấp nhận',0,'2022-01-19',3,'null','2022-01-19'),(6,1,'Đơn hàng số 5 đã được chấp nhận',0,'2022-01-19',3,'null','2022-01-19'),(7,1,'Đơn hàng số 7 đã được chấp nhận',0,'2022-01-19',3,'null','2022-01-19'),(8,1,'Đơn hàng số 9 đã được chấp nhận',0,'2022-01-19',3,'null','2022-01-19'),(9,1,'Đơn hàng số 8 đã bị từ chối',0,'2022-01-19',2,'null','2022-01-19'),(10,1,'Đơn hàng số 10 đã bị từ chối',0,'2022-01-19',2,'null','2022-01-19'),(11,1,'Đơn hàng số 11 đã bị từ chối',0,'2022-01-19',2,'null','2022-01-19'),(12,1,'Đơn hàng số 12 đã bị từ chối',0,'2022-01-19',2,'null','2022-01-19'),(13,1,'Đơn hàng số 13 đã được chấp nhận',0,'2022-01-19',3,'null','2022-01-19'),(14,1,'Đơn hàng số 14 đã bị từ chối',0,'2022-01-19',3,'null','2022-01-19');
/*!40000 ALTER TABLE `shopapp_notication` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-19 20:09:48
