-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: library_management
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `MaAdmin` int NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `PassWord` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `TenAdmin` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `ChucVu` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaAdmin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin','Admin','Admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `published_year` date NOT NULL,
  `cover` varbinary(100) DEFAULT NULL,
  `quantity` int NOT NULL,
  `price` float NOT NULL,
  `rent` float NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (6,'Eragon','Christopher Paolini','Fantasy','Self Published','1970-01-01',NULL,18,187000,18000),(7,'Brisingr','Christopher Paolini','Fantasy','Self Published','1970-01-01',NULL,7,210000,20000),(8,'Brisingr','Christopher Paolini','Fantasy','Self Published','1970-01-01',NULL,7,210000,20000);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietnhapsach`
--

DROP TABLE IF EXISTS `chitietnhapsach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietnhapsach` (
  `MaChiTiethapSach` tinyint NOT NULL AUTO_INCREMENT,
  `MaNhapSach` int NOT NULL,
  `MaSach` int NOT NULL,
  `SoLuong` int NOT NULL,
  `DonGia` float NOT NULL,
  PRIMARY KEY (`MaChiTiethapSach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietnhapsach`
--

LOCK TABLES `chitietnhapsach` WRITE;
/*!40000 ALTER TABLE `chitietnhapsach` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitietnhapsach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietthuesach`
--

DROP TABLE IF EXISTS `chitietthuesach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietthuesach` (
  `MaChiTietThueSach` int NOT NULL AUTO_INCREMENT,
  `MaThueSach` int NOT NULL,
  `MaSach` int NOT NULL,
  `SoLuong` int NOT NULL,
  `GiaThueTheoNgay` float NOT NULL,
  `NgayThue` date NOT NULL,
  `NgayTra` date NOT NULL,
  `TrangThai` tinyint NOT NULL,
  PRIMARY KEY (`MaChiTietThueSach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietthuesach`
--

LOCK TABLES `chitietthuesach` WRITE;
/*!40000 ALTER TABLE `chitietthuesach` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitietthuesach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhapsach`
--

DROP TABLE IF EXISTS `nhapsach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhapsach` (
  `MaNhapSach` int NOT NULL AUTO_INCREMENT,
  `MaNhaXuatBan` int NOT NULL,
  `MaNhanVien` int NOT NULL,
  `NgayNhap` date NOT NULL,
  PRIMARY KEY (`MaNhapSach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhapsach`
--

LOCK TABLES `nhapsach` WRITE;
/*!40000 ALTER TABLE `nhapsach` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhapsach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhaxuatban`
--

DROP TABLE IF EXISTS `nhaxuatban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhaxuatban` (
  `MaNhaXuatBan` int NOT NULL AUTO_INCREMENT,
  `TenNhaXuatBan` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `DiaChiNhaXuatBan` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `SdtNhaXuatBan` char(12) NOT NULL,
  `EmailNhaXuatBan` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaNhaXuatBan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhaxuatban`
--

LOCK TABLES `nhaxuatban` WRITE;
/*!40000 ALTER TABLE `nhaxuatban` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhaxuatban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sach`
--

DROP TABLE IF EXISTS `sach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sach` (
  `MaSach` int NOT NULL AUTO_INCREMENT,
  `TenSach` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `TacGia` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `MaTheLoai` int NOT NULL,
  `MaNhaXuatBan` int NOT NULL,
  `NamXuatBan` date NOT NULL,
  `AnhSach` varbinary(100) NOT NULL,
  `SoLuong` int NOT NULL,
  `DonGia` float NOT NULL,
  `GiaThueTheoNgay` float NOT NULL,
  PRIMARY KEY (`MaSach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sach`
--

LOCK TABLES `sach` WRITE;
/*!40000 ALTER TABLE `sach` DISABLE KEYS */;
/*!40000 ALTER TABLE `sach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sinhvien`
--

DROP TABLE IF EXISTS `sinhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sinhvien` (
  `MaSinhVien` int NOT NULL AUTO_INCREMENT,
  `TenSinhVien` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `GioiTinh` tinyint NOT NULL,
  `NgaySinh` date NOT NULL,
  `Lop` varchar(45) NOT NULL,
  `SdtSinhVien` char(12) NOT NULL,
  `EmailSinhVien` varchar(45) NOT NULL,
  `DiaChiSinhVien` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `NienKhoa` varchar(45) NOT NULL,
  PRIMARY KEY (`MaSinhVien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinhvien`
--

LOCK TABLES `sinhvien` WRITE;
/*!40000 ALTER TABLE `sinhvien` DISABLE KEYS */;
/*!40000 ALTER TABLE `sinhvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theloai`
--

DROP TABLE IF EXISTS `theloai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theloai` (
  `MaTheLoai` int NOT NULL AUTO_INCREMENT,
  `TenTheLoai` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`MaTheLoai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theloai`
--

LOCK TABLES `theloai` WRITE;
/*!40000 ALTER TABLE `theloai` DISABLE KEYS */;
/*!40000 ALTER TABLE `theloai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thuesach`
--

DROP TABLE IF EXISTS `thuesach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thuesach` (
  `MaThueSach` int NOT NULL AUTO_INCREMENT,
  `MaSinhVien` int NOT NULL,
  `MaNhanVien` int NOT NULL,
  `NgayLap` date NOT NULL,
  PRIMARY KEY (`MaThueSach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thuesach`
--

LOCK TABLES `thuesach` WRITE;
/*!40000 ALTER TABLE `thuesach` DISABLE KEYS */;
/*!40000 ALTER TABLE `thuesach` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-22 18:02:01
