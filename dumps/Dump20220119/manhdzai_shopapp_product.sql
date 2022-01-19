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
-- Table structure for table `shopapp_product`
--

DROP TABLE IF EXISTS `shopapp_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopapp_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_name` varchar(250) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `product_price` double NOT NULL,
  `active` tinyint(1) NOT NULL,
  `content` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_name` (`product_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopapp_product`
--

LOCK TABLES `shopapp_product` WRITE;
/*!40000 ALTER TABLE `shopapp_product` DISABLE KEYS */;
INSERT INTO `shopapp_product` VALUES (3,'Richy Bơ Trứng Hộp 270gx16','img/2022/01/12.-Richy-Bơ-Trứng-Hộp-270gx16-copy.jpg','2022-01-18','2022-01-18',44000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(4,'Bánh quy bơ Danisa','img/2022/01/Bánh_quy_bơ_Danisa.jfif','2022-01-18','2022-01-18',52000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(5,'Bánh bông lan sợi thịt gà orion C\'est Bon','img/2022/01/bánh_bông_lan_sợi_thịt_gà_orion_Cest_Bon.jpg','2022-01-18','2022-01-19',38000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(6,'Bánh Choco-pie Orion dark','img/2022/01/Banh_Choco-pie_Orion_dark.jpg','2022-01-18','2022-01-18',49000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(7,'bánh quy LU','img/2022/01/bánh_quy_LU.jpg','2022-01-18','2022-01-18',58000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(8,'Bánh Choco-pie Orion','img/2022/01/Banh_Choco-pie_Orion.jfif','2022-01-18','2022-01-18',42000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(9,'Bánh Choco-pie Orion matcha','img/2022/01/Banh_Choco-pie_Orion_matcha.jfif','2022-01-18','2022-01-18',46000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(10,'Bánh bông lan cuộn kem socola và lá dứa Solite','img/2022/01/Bánh_bông_lan_cuộn_kem_socola_và_lá_dứa_Solite.jpeg','2022-01-18','2022-01-18',33000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(11,'bánh quy bơ kẹp  cosy','img/2022/01/bánh_quy_bơ_kẹp__cosy.jpg','2022-01-18','2022-01-18',29000,1,'Đây là 1 trong những mặt hàng đưuọc giao bán tại myshop, 1 trang Web uy tín được thực hiện bởi nhóm 11 K64A4 gồm các thành viên : Nguyễn Hoài Nam, Dương Tùng Anh, Đỗ Xuân Mạnh.'),(12,'Vinfast-President','img/2022/01/VinFast-President-1-9915-1596526753.jpg','2022-01-19','2022-01-19',3000000000,1,'Xe đẹp'),(13,'Kawasaki Ninja H2','img/2022/01/kawasaki-ninja-h2-4k-qu-1536x864.jpg','2022-01-19','2022-01-19',12000000000,1,'PKL'),(14,'Xe Lắc','img/2022/01/xe-lac-tay-cho-be-f05-4.jpg','2022-01-19','2022-01-19',350000,1,'Xe lắc cho bé');
/*!40000 ALTER TABLE `shopapp_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-19 20:09:49
