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
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('f2ysfyy7rolzbw746b07kl1klcqh5qgq','.eJxVjEEOgjAQRe_StWlmBGZal-45A5m2g0VNSSisjHdXEha6_e-9_zKDbGsetqrLMCVzMWhOv1uQ-NCyg3SXcpttnMu6TMHuij1otf2c9Hk93L-DLDV_a5WRwGHqfGw9NegBz-BdUkVCR-o8AwhTjKyOAnNgaMauawWUsGXz_gDBZDbI:1n9rCh:4MEZBrMYRYWxyQJpc3CAsElI4oFz63ye3043pi9wnvY','2022-02-01 16:19:27.519912'),('iplxqmxy5wsjutuvdprhsyev6kr899nh','.eJxVjEEOgjAQRe_StWlmBGZal-45A5m2g0VNSSisjHdXEha6_e-9_zKDbGsetqrLMCVzMWhOv1uQ-NCyg3SXcpttnMu6TMHuij1otf2c9Hk93L-DLDV_a5WRwGHqfGw9NegBz-BdUkVCR-o8AwhTjKyOAnNgaMauawWUsGXz_gDBZDbI:1n8mSU:zx2u_mNEtEYQq8Kf_PhKS3lIEq471NSklBXl530QpYI','2022-01-29 17:03:18.823250'),('lb9nq0nb69p04oan568ctg6brgc022in','.eJxVjEEOgjAQRe_StWlmBGZal-45A5m2g0VNSSisjHdXEha6_e-9_zKDbGsetqrLMCVzMWhOv1uQ-NCyg3SXcpttnMu6TMHuij1otf2c9Hk93L-DLDV_a5WRwGHqfGw9NegBz-BdUkVCR-o8AwhTjKyOAnNgaMauawWUsGXz_gDBZDbI:1n8ltS:K-F7reR8EVRX6RQjf7Sv8CL0Y0wDghVGgtHmHIKYskk','2022-01-29 16:27:06.218571'),('xz6gfjfjc9wyu5wivs3ed73ln6mpnl3s','.eJxVjEEOgjAQRe_StWlmBGZal-45A5m2g0VNSSisjHdXEha6_e-9_zKDbGsetqrLMCVzMWhOv1uQ-NCyg3SXcpttnMu6TMHuij1otf2c9Hk93L-DLDV_a5WRwGHqfGw9NegBz-BdUkVCR-o8AwhTjKyOAnNgaMauawWUsGXz_gDBZDbI:1nA2qv:KPkTKkQzjMFTHSWsc5pepOuCd681tIYhz0WIOgKx5WQ','2022-02-02 04:45:45.794258');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
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
