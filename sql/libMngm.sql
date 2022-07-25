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
  `category_id` int NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `published_year` date NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `quantity` int NOT NULL,
  `price` float NOT NULL,
  `rent` float NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_category_id_idx` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=643 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (6,'Eragon','Christopher Paolini',16,'Alfred A. Knopf','2003-08-26','https://upload.wikimedia.org/wikipedia/en/thumb/c/ce/Eragon_book_cover.png/200px-Eragon_book_cover.png',18,187000,18000),(9,'Eldest','Christopher Paolini',16,'Alfred A. Knopf','2005-08-23','https://upload.wikimedia.org/wikipedia/en/thumb/e/e0/Eldest_book_cover.png/200px-Eldest_book_cover.png',8,210000,21000),(10,'Brisingr','Christopher Paolini',16,'Alfred A. Knopf','2008-09-20','https://upload.wikimedia.org/wikipedia/en/thumb/7/70/Brisingr_book_cover.png/220px-Brisingr_book_cover.png',12,318000,20000),(11,'Inheritance','Christopher Paolini',16,'Alfred A. Knopf','2011-11-08','https://upload.wikimedia.org/wikipedia/en/thumb/2/2b/Inheritance2011.JPG/220px-Inheritance2011.JPG',5,329000,30000),(13,'City of Bones','Cassandra Clare',16,'Margaret K. McElderry','2007-03-27','https://upload.wikimedia.org/wikipedia/en/0/0f/City_of_Bones.jpg',21,202000,21200),(14,'The Fork, the Witch, and the Worm','Christopher Paolini, Angela Paoplini',16,'Alfred A. Knopf','2018-12-31','https://upload.wikimedia.org/wikipedia/en/7/78/Cover_of_The_Fork%2C_the_Witch%2C_and_the_Worm.jpg',7,318000,30000),(15,'City of Ashes','Cassandra Clare',16,'Margaret K. McElderry','2008-03-25','https://upload.wikimedia.org/wikipedia/en/4/49/City_of_Ashes.jpg',12,253000,24000),(16,'City Of Glass','Cassandra Clare',16,'Margaret K. McElderry','2009-03-24','https://upload.wikimedia.org/wikipedia/en/9/99/City_of_glass.jpg',10,249000,24000),(17,'City of Fallen Angels','Cassandra Clare',16,'Margaret K. McElderry','2011-04-05','https://upload.wikimedia.org/wikipedia/en/9/9f/Cassandra_Clare_City_of_Fallen_Angels_book_cover.jpg',13,231000,20000),(18,'City of Lost Souls','Cassandra Clare',16,'Margaret K. McElderry','2012-05-08','https://upload.wikimedia.org/wikipedia/en/b/bc/Cassandra_Clare_City_of_Lost_Souls_book_cover.jpg',21,300000,30000),(19,'City of Heavenly Fire','Cassandra Clare',16,'Margaret K. McElderry','2014-03-27','https://upload.wikimedia.org/wikipedia/en/1/12/Cassandra_Clare_City_of_Heavenly_Fire_book_cover.jpg',15,315000,31500),(20,'Mass Effect Omnibus Vol 1','Mac Walters, John Jackson Miller',12,'Dark Horse Books','2016-11-29','https://images-na.ssl-images-amazon.com/images/I/71rCTJhFDhL.jpg',1,1172880,72000),(21,'Mass Effect Omnibus Volume 2','Mac Walters, Jeremy Barlow',12,'Dark Horse Books','2017-02-21','https://images-na.ssl-images-amazon.com/images/I/719hT7QXbsL.jpg',1,1148210,74000),(22,'The Theory Of Everything','Stephen Hawking',8,'Jaico Publishing House','2006-01-01','https://images-na.ssl-images-amazon.com/images/I/61etgo8lzJL.jpg',4,441773,41000),(23,'Brief Answers To The Big Questions','Stephen Hawking',8,'John Murray Press','2020-01-01','https://images-na.ssl-images-amazon.com/images/I/81-aBZSCJWL.jpg',6,302663,30000),(24,'The Great Gatsby: A Novel: Illustrated Edition','F. Scott Fitzgerald, Adam Simpson',13,'Black Dog & Leventhal','2021-01-05','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/the_great_gatsby_a_novel_illustrated_edition/2021_08_10_11_25_59_1-390x510.jpg',5,455000,40000),(25,'Marvel Encyclopedia New Edition','Stan Lee, DK, Adam Bray',15,'DK','2020-07-18','https://cdn0.fahasa.com/media/catalog/product/m/a/marvel_encyclopedia_new_edition_1_2020_06_24_14_30_11.jpg',3,749000,49000),(26,'Out Of The Dark 2: Into The Light','Chris Kennedy, David Weber',15,'St Martin\'s Press','2021-01-12','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/out_of_the_dark_2_into_the_light/2021_08_02_13_41_25_1-390x510.jpg',4,470000,30000),(27,'To Hold Up The Sky','Cixin Liu',4,'Tor Books','2020-10-15','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/to_hold_up_the_sky/2021_08_02_10_06_10_1-390x510.jpg',2,46,40),(28,'Star Trek: Picard: The Dark Veil','James Swallow',15,'Simon & Schuster','2021-05-01','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/star_trek_picard_the_dark_veil_volume_2/2021_08_02_11_00_36_1-390x510.jpg',1,355000,55000),(29,'The Glass Hotel: A Novel','Emily St. John Mandel',13,'Knopf','2020-03-24','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/the_glass_hotel_a_novel/2021_08_02_11_06_09_1-390x510.jpg',2,382000,32000),(30,'Star Wars: Target Vader','Marc Laming, Robbie Thompson',15,'Marvel','2020-02-11','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/star_wars_target_vader/2021_08_10_12_11_22_1-390x510.jpg',1,401000,41000),(31,'Dark Water','Elizabeth Lowry',4,'riverrun','2018-01-01','https://cdn0.fahasa.com/media/catalog/product/9/7/9781786485649_1.jpg',1,324000,32000),(32,'Star Wars: Darth Vader Vol. 2: Shadows And Secrets','Kieron Gillen',12,'Marvel','2020-11-02','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/star_wars_darth_vader_vol_2_shadows_and_secrets/2021_08_10_12_16_19_1-390x510.png',2,324000,42000),(33,'Against the Fall of Night (Golden Age Masterworks)','Sir Arthur C. Clarke',15,'Gateway','2019-05-02','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/against_the_fall_of_night_golden_age_masterworks/2021_04_22_15_23_03_1-390x510.jpg',3,324000,24000),(34,'A Golden Fury','Samantha Cohoe',4,'Wednesday Books','2020-10-13','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/a_golden_fury/2021_06_09_16_23_11_1-390x510.jpg',3,314000,31000),(35,'To Sleep In A Sea Of Stars','Christopher Paolini',16,'Tor Books','2020-09-15','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/to_sleep_in_a_sea_of_stars/2021_05_31_15_34_01_1-390x510.jpg',2,306000,30500),(36,'Dawn Of X Vol. 3','Jonathan Hickman, Pepe Larraz, R.B. Silva',12,'Marvel','2020-03-11','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/dawn_of_x_vol_3/2021_10_08_08_51_10_1-390x510.jpg',1,290000,30000),(39,'English Grammar in Use','Raymond Murphy',2,'Cambridge University','2020-12-24','https://cdn0.fahasa.com/media/catalog/product/e/n/english_grammar_in_use_book_w_ans_1_2018_09_19_15_25_47.JPG',6,138000,15000),(340,'Oxford Advanced Learner\'s Dictionary','Diana Lea, Jennifer Bradbery',1,'Oxford University Press','2022-01-01','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/oxford_advanced_learners_dictionary_paperback___10th_edition_with_1_years_access_to_both_premium_online_and_app/2022_07_02_09_44_15_1-390x510.jpg',2,473100,45000),(542,'Social Media and You (Your Mind Matters)','Honor Head, Roberta Terracchio',3,'Hachette Children\'s Group','2021-01-01','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/social_media_and_you_your_mind_matters/2020_10_08_11_07_56_1-390x510.jpg',3,278000,30000),(543,'Cong Nghe Blockchain','Nguyen Phuc Tam',1,'NXB DH Su Pham','2015-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-cong-nghe-blockchain.jpg',10,300000,6000),(544,'Machine Learning Co Ban','Vu Huu Tiep',1,'NXB DH Su Pham','2017-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-machine-learning-co-ban.jpg',10,200000,4000),(545,'Learning Vue.js 2','Olga Filipova',1,'NXB DH Su Pham','2001-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-learning-vue-js-2.jpg',10,100000,2000),(546,'Laravel 5 Cookbook Enhance Your Amazing Applications','Nathan Wu',1,'NXB DH Su Pham','2014-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-laravel-5-cookbook-enhance-your-amazing-applications.jpg',10,150000,3000),(547,'Pro ASP.NET MVC 5','Adam Freeman',1,'NXB DH Su Pham','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-pro-asp-net-mvc-5.jpg',10,175000,3500),(548,'Programming ASP.NET MVC 4','Jess Chadwick',1,'NXB DH Su Pham','2015-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-programming-asp-net-mvc-4.jpg',10,300000,6000),(549,'Giao Trinh Thuat Toan ','Thomas H. Cormen',1,'NXB DH Su Pham','2017-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-giao-trinh-thuat-toan-introduction-to-algorithms.jpg',10,250000,5000),(550,'Linux All-In-One For Dummies � 5Th Edition','Emmett Dulaney',1,'NXB DH Su Pham','2001-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-linux-all-in-one-for-dummies-5th-edition.jpg',10,300000,6000),(551,'Beginning Programming With Java For Dummies � 4Th Edition','Barry A. Burd',1,'NXB DH Su Pham','2014-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-beginning-programming-with-java-for-dummies-4th-edition.jpg',10,200000,4000),(552,'Php, Mysql, Javascript & Html5 All-In-One For Dummies','Steve Suehring',1,'NXB DH Su Pham','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-php-mysql-javascript-html5-all-in-one-for-dummies.jpg',10,100000,2000),(553,'206 Mon Canh Dinh Duong Cho Tre Em','Mai Ngoc',2,'NXB Kim Dong','2015-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-206-mon-canh-dinh-duong-cho-tre-em.jpg',10,150000,3000),(554,'Mon An Giup Tre Thong Minh Hoc Gioi','Nhat Nguyen',2,'NXB Kim Dong','2017-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-mon-an-giup-tre-thong-minh-hoc-gioi.jpg',10,175000,3500),(555,'Thuc Don Dinh Duong Cho Be Tu 1 Den 3 Tuoi','Hong Yen',2,'NXB Kim Dong','2001-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-thuc-don-dinh-duong-cho-be-tu-1-den-3-tuoi.jpg',10,300000,6000),(556,'Nhung Mon Com Ngon Dac Sac','Tieu Quynh',2,'NXB Kim Dong','2014-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-nhung-mon-com-ngon-dac-sac.jpg',10,250000,5000),(557,'Nhung Mon An Chay Noi Tieng','Thien Kim',2,'NXB Kim Dong','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-nhung-mon-an-chay-noi-tieng.jpg',10,300000,6000),(558,'Thuc Uong Va Thach Trai Cay Dac Sac','Ung Dong Chuong',2,'NXB Kim Dong','2015-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-thuc-uong-va-thach-trai-cay-dac-sac.jpg',10,200000,4000),(559,'Van Hoa Am Thuc Ninh Binh','Vu Van Lau',2,'NXB Kim Dong','2017-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-van-hoa-am-thuc-ninh-binh.jpg',10,100000,2000),(560,'Nghe Thuat Pha Che 460 Loai Ruou Cocktail','Thien Kim',2,'NXB Kim Dong','2001-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-nghe-thuat-pha-che-460-loai-ruou-cocktail.jpg',10,150000,3000),(561,'Ky Thuat Che Bien Trai Cay','Tu Trieu Hai',2,'NXB Kim Dong','2014-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-ky-thuat-che-bien-trai-cay.jpg',10,175000,3500),(562,'Ky Thuat Nau An Toan Tap','Trieu Thi Choi',2,'NXB Kim Dong','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-ky-thuat-nau-an-toan-tap.jpg',10,300000,6000),(563,'Ho Nu','Dich Ngu',3,'NXB DHQG Ha Noi','2015-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-ho-nu.jpg',10,250000,5000),(564,'Van Thuyet','Hanh Dao Vi Van',3,'NXB DHQG Ha Noi','2017-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-van-thuyet.jpg',10,300000,6000),(565,'Dau La Dai Luc','�Duong Gia Tam Thieu',3,'NXB DHQG Ha Noi','2001-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-dau-la-dai-luc.jpg',10,200000,4000),(566,'Am Duong Mien','Duong Gia Tam Thieu',3,'NXB DHQG Ha Noi','2014-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-am-duong-mien.jpg',10,100000,2000),(567,'Hoanh Tao Hoang Vu','Co Don Dia Phi',3,'NXB DHQG Ha Noi','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-hoanh-tao-hoang-vu.jpg',10,150000,3000),(568,'Duoc Than','Am Ma Su',3,'NXB DHQG Ha Noi','2015-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-duoc-than.jpg',10,175000,3500),(569,'Vo Dao Dan Ton','Am Ma Su',3,'NXB DHQG Ha Noi','2017-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-vo-dao-dan-ton.jpg',10,300000,6000),(570,'Huyen Thien Hon Ton','Am Ma Su',3,'NXB DHQG Ha Noi','2001-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-huyen-thien-hon-ton.jpg',10,250000,5000),(571,'Hao Mon Nhat Kiem','Tieu Dat',3,'NXB DHQG Ha Noi','2014-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-hao-mon-nhat-kiem.jpg',10,300000,6000),(572,'Du Do Tieu Ho Ly','Nga My',3,'NXB DHQG Ha Noi','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-du-do-tieu-ho-ly.jpg',10,200000,4000),(573,'One Piece','Eiichiro Oda',4,'NXB Hong Duc','2015-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-one-piece-dao-hai-tac.jpg',10,100000,2000),(574,'Tham Tu Lung Danh Conan','Gosho Aoyama',4,'NXB Hong Duc','2017-01-01','https://nhasachmienphi.com/wp-content/uploads/Th%C3%A1m-t%E1%BB%AD-l%E1%BB%ABng-danh-conan-b%E1%BA%A3n-%C4%91%E1%BA%B9p-Gosho-Aoyoma.jpg',10,150000,3000),(575,'Truyen tranh Doremon','Fujiko F. Fujio',4,'NXB Hong Duc','2001-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-truyen-tranh-doremon.jpg',10,175000,3500),(576,'Maoh Juvenile Remix','Kotaro Isaka',4,'NXB Hong Duc','2014-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-ma-vuong-maoh-juvenile-remix.jpg',10,300000,6000),(577,'Kingdom','�Hara Yasuhisa',4,'NXB Hong Duc','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-kingdom-vuong-gia-thien-ha.jpg',10,250000,5000),(578,'Yaiba','Aoyama Gosho',4,'NXB Hong Duc','2010-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-yaiba.jpg',10,300000,6000),(579,'Dragon Ball','Akira Toriyama',4,'NXB Hong Duc','2011-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-7-vien-ngoc-rong-dragon-ball.jpg',10,200000,4000),(580,'Death Note','Tsugumi Ohba',4,'NXB Hong Duc','2005-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-death-note-cuon-so-tu-than.jpg',10,100000,2000),(581,'Great teacher onizuka','Fujisawa Tohru',4,'NXB Hong Duc','2003-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-great-teacher-onizuka-gto.jpg',10,150000,3000),(582,'Naruto','Kishimoto Masashi',4,'NXB Hong Duc','2007-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-naruto.jpg',10,175000,3500),(583,'Tuoi Tho Du Doi','Phung Quan',5,'NXB Thanh Nien','2009-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-tuoi-tho-du-doi.jpg',10,300000,6000),(584,'Chi Em Khac Me','Thuy Y',5,'NXB Thanh Nien','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-chi-em-khac-me.jpg',10,250000,5000),(585,'Chiec Ngai Vang','Lan Khai',5,'NXB Thanh Nien','2008-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-chiec-ngai-vang.jpg',10,300000,6000),(586,'Tuyen Tap Truyen Ngan Vu Trong Phung','Vu Trong Phung',5,'NXB Thanh Nien','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-tuyen-tap-truyen-ngan-vu-trong-phung.jpg',10,200000,4000),(587,'Nhung Manh Doi Den Trang','�Nguyen Quang Lap',5,'NXB Thanh Nien','2010-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-nhung-manh-doi-den-trang.jpg',10,100000,2000),(588,'Lam Di','Vu Trong Phung',5,'NXB Thanh Nien','2011-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-lam-di.jpg',10,150000,3000),(589,'Leu Chong','Ngo Tat To',5,'NXB Thanh Nien','2005-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-leu-chong.jpg',10,175000,3500),(590,'Noi Buon Chien Tranh','Bao Ninh',5,'NXB Thanh Nien','2003-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-noi-buon-chien-tranh.jpg',10,300000,6000),(591,'Gai Diem','Nguyen Van Hoc',5,'NXB Thanh Nien','2007-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-gai-diem.jpg',10,250000,5000),(592,'So Do','Vu Trong Phung',5,'NXB Thanh Nien','2009-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-so-do.jpg',10,300000,6000),(593,'Lam Vo Bac Si','Lat Tieu',6,'NXB Lao Dong','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-lam-vo-bac-si.jpg',10,200000,4000),(594,'Nguoi Anh Yeu Chinh La Em','Trinh Tu',6,'NXB Lao Dong','2008-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-nguoi-anh-yeu-chinh-la-em.jpg',10,100000,2000),(595,'Dep Trai La So 1','Luc Mang Tinh',6,'NXB Lao Dong','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-dep-trai-la-so-1.jpg',10,150000,3000),(596,'Diu Dang Danh Rieng Em','Luc Manh Tinh',6,'NXB Lao Dong','2010-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-diu-dang-danh-rieng-em.jpg',10,175000,3500),(597,'Xin Hay Om Em','Bac Chi',6,'NXB Lao Dong','2011-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-xin-hay-om-em.jpg',10,300000,6000),(598,'Yeu Khong Ben Bo','Bat Kinh Ngu',6,'NXB Lao Dong','2005-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-yeu-khong-ben-bo.jpg',10,250000,5000),(599,'Dung Nhan Danh Tinh Yeu','Bat Kinh Ngu',6,'NXB Lao Dong','2003-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-dung-nhan-danh-tinh-yeu.jpg',10,300000,6000),(600,'Lac Chon Phu Hoa','Bat Kinh Ngu',6,'NXB Lao Dong','2007-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-lac-chon-phu-hoa.jpg',10,200000,4000),(601,'Tu Tu Du Do','�Bac Khuynh',6,'NXB Lao Dong','2009-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-tu-tu-du-do.jpg',10,100000,2000),(602,'Lac Loi Trong Tim Anh','�Nghe Da Hi',6,'NXB Lao Dong','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-lac-loi-trong-tim-anh.jpg',10,150000,3000),(603,'Kinh Doanh Truc Tuyen','Nguyen Dang Tuan Minh',7,'NXB Quan Doi','2008-01-01','https://nhasachmienphi.com/wp-content/uploads/kinh-doanh-truc-tuyen.jpg',10,175000,3500),(604,'Nghe thuat ban hang bac cao','Zig Ziglar',7,'NXB Quan Doi','2016-01-01','https://nhasachmienphi.com/wp-content/uploads/nghe-thuat-ban-hang-bac-cao.jpg',10,300000,6000),(605,'Pr La Song','Pham Quoc Hung',7,'NXB Quan Doi','2010-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-pr-la-song.jpg',10,250000,5000),(606,'Bien Bat Ky Ai Thanh Khach Hang','�C.J. Hayden',7,'NXB Quan Doi','2011-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-bien-bat-ky-ai-thanh-khach-hang.jpg',10,300000,6000),(607,'Ban Hang Thong Minh Qua Dien Thoai Va Internet','Josiane Chriqui Feigon',7,'NXB Quan Doi','2005-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-ban-hang-thong-minh-qua-dien-thoai-va-internet.jpg',10,200000,4000),(608,'Tang Toc Ban Hang Bang Spin','Neil Rackham',7,'NXB Quan Doi','2003-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-tang-toc-ban-hang-bang-spin.jpg',10,100000,2000),(609,'72 Thuat Tan Cong Tam Ly Trong Ban Le','Alpha Book',7,'NXB Quan Doi','2007-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-72-thuat-tan-cong-tam-ly-trong-ban-le.jpg',10,150000,3000),(610,'Marketing Truyen Mieng','Andy Sernovitz',7,'NXB Quan Doi','2009-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-marketing-truyen-mieng.jpg',10,175000,3500),(611,'Vua Ban Le','Willard N Ander',7,'NXB Quan Doi','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-vua-ban-le.jpg',10,300000,6000),(612,'12 Tuyet Ky Ban Hang','Brian Tracy',7,'NXB Quan Doi','2008-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-12-tuyet-ky-ban-hang.jpg',10,250000,5000),(613,'Luat Doanh Nghiep','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-luat-doanh-nghiep.jpg',10,300000,6000),(614,'Luat Thuong Mai','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2010-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-luat-thuong-mai.jpg',10,200000,4000),(615,'Luat Dat Dai','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2011-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-luat-dat-dai.jpg',10,100000,2000),(616,'Bo Luat Lao Dong','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2005-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-bo-luat-lao-dong.jpg',10,150000,3000),(617,'Luat Can Bo, Cong Chuc','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2003-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-luat-can-bo-cong-chuc.jpg',10,175000,3500),(618,'Dieu Le Dang Cong San Viet Nam','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2007-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-dieu-le-dang-cong-san-viet-nam.jpg',10,300000,6000),(619,'Bo Luat Dan Su','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2009-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-bo-luat-dan-su.jpg',10,250000,5000),(620,'Bo Luat Hinh Su','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-bo-luat-hinh-su.jpg',10,300000,6000),(621,'Luat An Ninh Mang � 2018','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2018-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-luat-an-ninh-mang-2018.jpg',10,200000,4000),(622,'Giao Trinh Luat Hanh Chinh Viet Nam','Truong Dai Hoc Luat Ha Noi',8,'NXB Tu Phap','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-giao-trinh-luat-hanh-chinh-viet-nam.jpg',10,100000,2000),(623,'Chuyen Quai Di O Truong Hoc','Quai Dam Hiep Hoi',9,'NXB DH Su Pham','2008-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-chuyen-quai-di-o-truong-hoc.jpg',10,150000,3000),(624,'Chuyen Ma Quai O Benh Vien Dong Hoa','Nam Lang Yeu Giam Phi',9,'NXB DH Su Pham','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-chuyen-ma-quai-o-benh-vien-dong-hoa.jpg',10,175000,3500),(625,'Can Phong Cam','�R.L. Stine',9,'NXB DH Su Pham','2010-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-can-phong-cam.jpg',10,300000,6000),(626,'Nhat Ky Phong Tro Ma','Voz',9,'NXB DH Su Pham','2011-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-nhat-ky-phong-tro-ma.jpg',10,250000,5000),(627,'Truyen Ma 12 Cung Hoang Dao','�Vo Danh',9,'NXB DH Su Pham','2005-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-truyen-ma-12-cung-hoang-dao.jpg',10,300000,6000),(628,'Con Quy Truyen Kiep','Jessie Douglas Kerruish',9,'NXB DH Su Pham','2003-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-con-quy-truyen-kiep.jpg',10,200000,4000),(629,'Ha Than','�Thien Ha Ba Xuong',9,'NXB DH Su Pham','2007-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-ha-than.jpg',10,100000,2000),(630,'Long Lau Yeu Quat','�Bac Linh Quy Dao',9,'NXB DH Su Pham','2009-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-long-lau-yeu-quat.jpg',10,150000,3000),(631,'Bong Nguoi Duoi Trang','Nguyen Ngoc Ngan',9,'NXB DH Su Pham','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-bong-nguoi-duoi-trang.jpg',10,175000,3500),(632,'Gieng Tho Than','Montague Rhodes James',9,'NXB DH Su Pham','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-gieng-tho-than.jpg',10,300000,6000),(633,'Chat Voi Rene Descartes','Bui Van Nam Son',10,'NXB Kim Dong','2008-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-chat-voi-rene-descartes.jpg',10,250000,5000),(634,'Sieu Ly Tinh Yeu','�Vladimir Soloviev',10,'NXB Kim Dong','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-sieu-ly-tinh-yeu.jpg',10,300000,6000),(635,'Cuoc Cach Mang Nguoc Trong Khoa Hoc','�Friedrich August Hayek',10,'NXB Kim Dong','2010-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-cuoc-cach-mang-nguoc-trong-khoa-hoc.jpg',10,200000,4000),(636,'Mot Giot Tu Su Doa Day','Hamvas Bela',10,'NXB Kim Dong','2011-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-mot-giot-tu-su-doa-day.jpg',10,100000,2000),(637,'Nhung Huyen Thoai','Roland Barthes',10,'NXB Kim Dong','2005-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-nhung-huyen-thoai.jpg',10,300000,6000),(638,'Cach Ta Nghi','John Dewey',10,'NXB Kim Dong','2003-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-cach-ta-nghi.jpg',10,200000,4000),(639,'Tu Duy Nhu Mot He Thong','David Bohm',10,'NXB Kim Dong','2007-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-tu-duy-nhu-mot-he-thong.jpg',10,100000,2000),(640,'Luan Ly Hoc','Tran Bich Lan',10,'NXB Kim Dong','2009-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-luan-ly-hoc.jpg',10,150000,3000),(641,'Tro Chuyen Triet Hoc','�Bui Van Nam Son',10,'NXB Kim Dong','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-tro-chuyen-triet-hoc.jpg',10,175000,3500),(642,'Triet Hoc Nhan Sinh Cua Toi','Vuong Mong',10,'NXB Kim Dong','2018-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-triet-hoc-nhan-sinh-cua-toi.jpg',10,300000,6000);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowing_slip`
--

DROP TABLE IF EXISTS `borrowing_slip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrowing_slip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `quantity` int NOT NULL,
  `rent` float NOT NULL,
  `borrowDate` date NOT NULL,
  `returnDate` date DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `bookId_idx` (`book_id`),
  CONSTRAINT `fk_book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowing_slip`
--

LOCK TABLES `borrowing_slip` WRITE;
/*!40000 ALTER TABLE `borrowing_slip` DISABLE KEYS */;
/*!40000 ALTER TABLE `borrowing_slip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `category_UNIQUE` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
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

-- Dump completed on 2022-07-25  8:23:22
