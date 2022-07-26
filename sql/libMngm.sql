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
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
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
  KEY `fk_category_id_idx` (`category_id`),
  CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=643 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (6,'Eragon','Christopher Paolini',16,'Alfred A. Knopf','2003-08-26','https://upload.wikimedia.org/wikipedia/en/thumb/c/ce/Eragon_book_cover.png/200px-Eragon_book_cover.png',18,187000,18000),(9,'Eldest','Christopher Paolini',16,'Alfred A. Knopf','2005-08-23','https://upload.wikimedia.org/wikipedia/en/thumb/e/e0/Eldest_book_cover.png/200px-Eldest_book_cover.png',8,210000,21000),(10,'Brisingr','Christopher Paolini',16,'Alfred A. Knopf','2008-09-20','https://upload.wikimedia.org/wikipedia/en/thumb/7/70/Brisingr_book_cover.png/220px-Brisingr_book_cover.png',12,318000,20000),(11,'Inheritance','Christopher Paolini',16,'Alfred A. Knopf','2011-11-08','https://upload.wikimedia.org/wikipedia/en/thumb/2/2b/Inheritance2011.JPG/220px-Inheritance2011.JPG',5,329000,30000),(13,'City of Bones','Cassandra Clare',16,'Margaret K. McElderry','2007-03-27','https://upload.wikimedia.org/wikipedia/en/0/0f/City_of_Bones.jpg',21,202000,21200),(14,'The Fork, the Witch, and the Worm','Christopher Paolini, Angela Paoplini',16,'Alfred A. Knopf','2018-12-31','https://upload.wikimedia.org/wikipedia/en/7/78/Cover_of_The_Fork%2C_the_Witch%2C_and_the_Worm.jpg',7,318000,30000),(15,'City of Ashes','Cassandra Clare',16,'Margaret K. McElderry','2008-03-25','https://upload.wikimedia.org/wikipedia/en/4/49/City_of_Ashes.jpg',12,253000,24000),(16,'City Of Glass','Cassandra Clare',16,'Margaret K. McElderry','2009-03-24','https://upload.wikimedia.org/wikipedia/en/9/99/City_of_glass.jpg',10,249000,24000),(17,'City of Fallen Angels','Cassandra Clare',16,'Margaret K. McElderry','2011-04-05','https://upload.wikimedia.org/wikipedia/en/9/9f/Cassandra_Clare_City_of_Fallen_Angels_book_cover.jpg',13,231000,20000),(18,'City of Lost Souls','Cassandra Clare',16,'Margaret K. McElderry','2012-05-08','https://upload.wikimedia.org/wikipedia/en/b/bc/Cassandra_Clare_City_of_Lost_Souls_book_cover.jpg',21,300000,30000),(19,'City of Heavenly Fire','Cassandra Clare',16,'Margaret K. McElderry','2014-03-27','https://upload.wikimedia.org/wikipedia/en/1/12/Cassandra_Clare_City_of_Heavenly_Fire_book_cover.jpg',15,315000,31500),(20,'Mass Effect Omnibus Vol 1','Mac Walters, John Jackson Miller',12,'Dark Horse Books','2016-11-29','https://images-na.ssl-images-amazon.com/images/I/71rCTJhFDhL.jpg',1,1172880,72000),(21,'Mass Effect Omnibus Volume 2','Mac Walters, Jeremy Barlow',12,'Dark Horse Books','2017-02-21','https://images-na.ssl-images-amazon.com/images/I/719hT7QXbsL.jpg',1,1148210,74000),(22,'The Theory Of Everything','Stephen Hawking',8,'Jaico Publishing House','2006-01-01','https://images-na.ssl-images-amazon.com/images/I/61etgo8lzJL.jpg',4,441773,41000),(23,'Brief Answers To The Big Questions','Stephen Hawking',8,'John Murray Press','2020-01-01','https://images-na.ssl-images-amazon.com/images/I/81-aBZSCJWL.jpg',6,302663,30000),(24,'The Great Gatsby: A Novel: Illustrated Edition','F. Scott Fitzgerald, Adam Simpson',13,'Black Dog & Leventhal','2021-01-05','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/the_great_gatsby_a_novel_illustrated_edition/2021_08_10_11_25_59_1-390x510.jpg',5,455000,40000),(25,'Marvel Encyclopedia New Edition','Stan Lee, DK, Adam Bray',15,'DK','2020-07-18','https://cdn0.fahasa.com/media/catalog/product/m/a/marvel_encyclopedia_new_edition_1_2020_06_24_14_30_11.jpg',3,749000,49000),(26,'Out Of The Dark 2: Into The Light','Chris Kennedy, David Weber',15,'St Martin\'s Press','2021-01-12','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/out_of_the_dark_2_into_the_light/2021_08_02_13_41_25_1-390x510.jpg',4,470000,30000),(27,'To Hold Up The Sky','Cixin Liu',4,'Tor Books','2020-10-15','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/to_hold_up_the_sky/2021_08_02_10_06_10_1-390x510.jpg',2,46,40),(28,'Star Trek: Picard: The Dark Veil','James Swallow',15,'Simon & Schuster','2021-05-01','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/star_trek_picard_the_dark_veil_volume_2/2021_08_02_11_00_36_1-390x510.jpg',1,355000,55000),(29,'The Glass Hotel: A Novel','Emily St. John Mandel',13,'Knopf','2020-03-24','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/the_glass_hotel_a_novel/2021_08_02_11_06_09_1-390x510.jpg',2,382000,32000),(30,'Star Wars: Target Vader','Marc Laming, Robbie Thompson',15,'Marvel','2020-02-11','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/star_wars_target_vader/2021_08_10_12_11_22_1-390x510.jpg',1,401000,41000),(31,'Dark Water','Elizabeth Lowry',4,'riverrun','2018-01-01','https://cdn0.fahasa.com/media/catalog/product/9/7/9781786485649_1.jpg',1,324000,32000),(32,'Star Wars: Darth Vader Vol. 2: Shadows And Secrets','Kieron Gillen',12,'Marvel','2020-11-02','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/star_wars_darth_vader_vol_2_shadows_and_secrets/2021_08_10_12_16_19_1-390x510.png',2,324000,42000),(33,'Against the Fall of Night (Golden Age Masterworks)','Sir Arthur C. Clarke',15,'Gateway','2019-05-02','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/against_the_fall_of_night_golden_age_masterworks/2021_04_22_15_23_03_1-390x510.jpg',3,324000,24000),(34,'A Golden Fury','Samantha Cohoe',4,'Wednesday Books','2020-10-13','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/a_golden_fury/2021_06_09_16_23_11_1-390x510.jpg',3,314000,31000),(35,'To Sleep In A Sea Of Stars','Christopher Paolini',16,'Tor Books','2020-09-15','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/to_sleep_in_a_sea_of_stars/2021_05_31_15_34_01_1-390x510.jpg',2,306000,30500),(36,'Dawn Of X Vol. 3','Jonathan Hickman, Pepe Larraz, R.B. Silva',12,'Marvel','2020-03-11','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/dawn_of_x_vol_3/2021_10_08_08_51_10_1-390x510.jpg',1,290000,30000),(39,'English Grammar in Use','Raymond Murphy',2,'Cambridge University','2020-12-24','https://cdn0.fahasa.com/media/catalog/product/e/n/english_grammar_in_use_book_w_ans_1_2018_09_19_15_25_47.JPG',6,138000,15000),(340,'Oxford Advanced Learner\'s Dictionary','Diana Lea, Jennifer Bradbery',1,'Oxford University Press','2022-01-01','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/oxford_advanced_learners_dictionary_paperback___10th_edition_with_1_years_access_to_both_premium_online_and_app/2022_07_02_09_44_15_1-390x510.jpg',2,473100,45000),(542,'Social Media and You (Your Mind Matters)','Honor Head, Roberta Terracchio',3,'Hachette Children\'s Group','2021-01-01','https://cdn0.fahasa.com/media/flashmagazine/images/page_images/social_media_and_you_your_mind_matters/2020_10_08_11_07_56_1-390x510.jpg',3,278000,30000),(543,'Cong Nghe Blockchain','Nguyen Phuc Tam',1,'NXB DH Su Pham','2015-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-cong-nghe-blockchain.jpg',10,300000,6000),(544,'Machine Learning Co Ban','Vu Huu Tiep',1,'NXB DH Su Pham','2017-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-machine-learning-co-ban.jpg',10,200000,4000),(545,'Learning Vue.js 2','Olga Filipova',1,'NXB DH Su Pham','2001-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-learning-vue-js-2.jpg',10,100000,2000),(546,'Laravel 5 Cookbook Enhance Your Amazing Applications','Nathan Wu',1,'NXB DH Su Pham','2014-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-laravel-5-cookbook-enhance-your-amazing-applications.jpg',10,150000,3000),(547,'Pro ASP.NET MVC 5','Adam Freeman',1,'NXB DH Su Pham','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-pro-asp-net-mvc-5.jpg',10,175000,3500),(548,'Programming ASP.NET MVC 4','Jess Chadwick',1,'NXB DH Su Pham','2015-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-programming-asp-net-mvc-4.jpg',10,300000,6000),(549,'Giao Trinh Thuat Toan ','Thomas H. Cormen',1,'NXB DH Su Pham','2017-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-giao-trinh-thuat-toan-introduction-to-algorithms.jpg',10,250000,5000),(550,'Linux All-In-One For Dummies � 5Th Edition','Emmett Dulaney',1,'NXB DH Su Pham','2001-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-linux-all-in-one-for-dummies-5th-edition.jpg',10,300000,6000),(551,'Beginning Programming With Java For Dummies � 4Th Edition','Barry A. Burd',1,'NXB DH Su Pham','2014-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-beginning-programming-with-java-for-dummies-4th-edition.jpg',10,200000,4000),(552,'Php, Mysql, Javascript & Html5 All-In-One For Dummies','Steve Suehring',1,'NXB DH Su Pham','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-php-mysql-javascript-html5-all-in-one-for-dummies.jpg',10,100000,2000),(553,'206 Mon Canh Dinh Duong Cho Tre Em','Mai Ngoc',2,'NXB Kim Dong','2015-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-206-mon-canh-dinh-duong-cho-tre-em.jpg',10,150000,3000),(554,'Mon An Giup Tre Thong Minh Hoc Gioi','Nhat Nguyen',2,'NXB Kim Dong','2017-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-mon-an-giup-tre-thong-minh-hoc-gioi.jpg',10,175000,3500),(555,'Thuc Don Dinh Duong Cho Be Tu 1 Den 3 Tuoi','Hong Yen',2,'NXB Kim Dong','2001-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-thuc-don-dinh-duong-cho-be-tu-1-den-3-tuoi.jpg',10,300000,6000),(556,'Nhung Mon Com Ngon Dac Sac','Tieu Quynh',2,'NXB Kim Dong','2014-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-nhung-mon-com-ngon-dac-sac.jpg',10,250000,5000),(557,'Nhung Mon An Chay Noi Tieng','Thien Kim',2,'NXB Kim Dong','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-nhung-mon-an-chay-noi-tieng.jpg',10,300000,6000),(558,'Thuc Uong Va Thach Trai Cay Dac Sac','Ung Dong Chuong',2,'NXB Kim Dong','2015-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-thuc-uong-va-thach-trai-cay-dac-sac.jpg',10,200000,4000),(559,'Van Hoa Am Thuc Ninh Binh','Vu Van Lau',2,'NXB Kim Dong','2017-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-van-hoa-am-thuc-ninh-binh.jpg',10,100000,2000),(560,'Nghe Thuat Pha Che 460 Loai Ruou Cocktail','Thien Kim',2,'NXB Kim Dong','2001-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-nghe-thuat-pha-che-460-loai-ruou-cocktail.jpg',10,150000,3000),(561,'Ky Thuat Che Bien Trai Cay','Tu Trieu Hai',2,'NXB Kim Dong','2014-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-ky-thuat-che-bien-trai-cay.jpg',10,175000,3500),(562,'Ky Thuat Nau An Toan Tap','Trieu Thi Choi',2,'NXB Kim Dong','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-ky-thuat-nau-an-toan-tap.jpg',10,300000,6000),(563,'Ho Nu','Dich Ngu',3,'NXB DHQG Ha Noi','2015-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-ho-nu.jpg',10,250000,5000),(564,'Van Thuyet','Hanh Dao Vi Van',3,'NXB DHQG Ha Noi','2017-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-van-thuyet.jpg',10,300000,6000),(565,'Dau La Dai Luc','�Duong Gia Tam Thieu',3,'NXB DHQG Ha Noi','2001-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-dau-la-dai-luc.jpg',10,200000,4000),(566,'Am Duong Mien','Duong Gia Tam Thieu',3,'NXB DHQG Ha Noi','2014-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-am-duong-mien.jpg',10,100000,2000),(567,'Hoanh Tao Hoang Vu','Co Don Dia Phi',3,'NXB DHQG Ha Noi','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-hoanh-tao-hoang-vu.jpg',10,150000,3000),(568,'Duoc Than','Am Ma Su',3,'NXB DHQG Ha Noi','2015-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-duoc-than.jpg',10,175000,3500),(569,'Vo Dao Dan Ton','Am Ma Su',3,'NXB DHQG Ha Noi','2017-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-vo-dao-dan-ton.jpg',10,300000,6000),(570,'Huyen Thien Hon Ton','Am Ma Su',3,'NXB DHQG Ha Noi','2001-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-huyen-thien-hon-ton.jpg',10,250000,5000),(571,'Hao Mon Nhat Kiem','Tieu Dat',3,'NXB DHQG Ha Noi','2014-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-hao-mon-nhat-kiem.jpg',10,300000,6000),(572,'Du Do Tieu Ho Ly','Nga My',3,'NXB DHQG Ha Noi','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-du-do-tieu-ho-ly.jpg',10,200000,4000),(573,'One Piece','Eiichiro Oda',4,'NXB Hong Duc','2015-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-one-piece-dao-hai-tac.jpg',10,100000,2000),(574,'Tham Tu Lung Danh Conan','Gosho Aoyama',4,'NXB Hong Duc','2017-01-01','https://nhasachmienphi.com/wp-content/uploads/Th%C3%A1m-t%E1%BB%AD-l%E1%BB%ABng-danh-conan-b%E1%BA%A3n-%C4%91%E1%BA%B9p-Gosho-Aoyoma.jpg',10,150000,3000),(575,'Truyen tranh Doremon','Fujiko F. Fujio',4,'NXB Hong Duc','2001-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-truyen-tranh-doremon.jpg',10,175000,3500),(576,'Maoh Juvenile Remix','Kotaro Isaka',4,'NXB Hong Duc','2014-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-ma-vuong-maoh-juvenile-remix.jpg',10,300000,6000),(578,'Yaiba','Aoyama Gosho',4,'NXB Hong Duc','2010-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-yaiba.jpg',10,300000,6000),(579,'Dragon Ball','Akira Toriyama',4,'NXB Hong Duc','2011-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-7-vien-ngoc-rong-dragon-ball.jpg',10,200000,4000),(580,'Death Note','Tsugumi Ohba',4,'NXB Hong Duc','2005-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-death-note-cuon-so-tu-than.jpg',10,100000,2000),(581,'Great teacher onizuka','Fujisawa Tohru',4,'NXB Hong Duc','2003-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-great-teacher-onizuka-gto.jpg',10,150000,3000),(582,'Naruto','Kishimoto Masashi',4,'NXB Hong Duc','2007-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-naruto.jpg',10,175000,3500),(583,'Tuoi Tho Du Doi','Phung Quan',5,'NXB Thanh Nien','2009-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-tuoi-tho-du-doi.jpg',10,300000,6000),(584,'Chi Em Khac Me','Thuy Y',5,'NXB Thanh Nien','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-chi-em-khac-me.jpg',10,250000,5000),(585,'Chiec Ngai Vang','Lan Khai',5,'NXB Thanh Nien','2008-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-chiec-ngai-vang.jpg',10,300000,6000),(586,'Tuyen Tap Truyen Ngan Vu Trong Phung','Vu Trong Phung',5,'NXB Thanh Nien','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-tuyen-tap-truyen-ngan-vu-trong-phung.jpg',10,200000,4000),(587,'Nhung Manh Doi Den Trang','�Nguyen Quang Lap',5,'NXB Thanh Nien','2010-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-nhung-manh-doi-den-trang.jpg',10,100000,2000),(588,'Lam Di','Vu Trong Phung',5,'NXB Thanh Nien','2011-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-lam-di.jpg',10,150000,3000),(589,'Leu Chong','Ngo Tat To',5,'NXB Thanh Nien','2005-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-leu-chong.jpg',10,175000,3500),(590,'Noi Buon Chien Tranh','Bao Ninh',5,'NXB Thanh Nien','2003-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-noi-buon-chien-tranh.jpg',10,300000,6000),(591,'Gai Diem','Nguyen Van Hoc',5,'NXB Thanh Nien','2007-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-gai-diem.jpg',10,250000,5000),(592,'So Do','Vu Trong Phung',5,'NXB Thanh Nien','2009-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-so-do.jpg',10,300000,6000),(593,'Lam Vo Bac Si','Lat Tieu',6,'NXB Lao Dong','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-lam-vo-bac-si.jpg',10,200000,4000),(594,'Nguoi Anh Yeu Chinh La Em','Trinh Tu',6,'NXB Lao Dong','2008-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-nguoi-anh-yeu-chinh-la-em.jpg',10,100000,2000),(595,'Dep Trai La So 1','Luc Mang Tinh',6,'NXB Lao Dong','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-dep-trai-la-so-1.jpg',10,150000,3000),(596,'Diu Dang Danh Rieng Em','Luc Manh Tinh',6,'NXB Lao Dong','2010-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-diu-dang-danh-rieng-em.jpg',10,175000,3500),(597,'Xin Hay Om Em','Bac Chi',6,'NXB Lao Dong','2011-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-xin-hay-om-em.jpg',10,300000,6000),(598,'Yeu Khong Ben Bo','Bat Kinh Ngu',6,'NXB Lao Dong','2005-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-yeu-khong-ben-bo.jpg',10,250000,5000),(599,'Dung Nhan Danh Tinh Yeu','Bat Kinh Ngu',6,'NXB Lao Dong','2003-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-dung-nhan-danh-tinh-yeu.jpg',10,300000,6000),(600,'Lac Chon Phu Hoa','Bat Kinh Ngu',6,'NXB Lao Dong','2007-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-lac-chon-phu-hoa.jpg',10,200000,4000),(601,'Tu Tu Du Do','�Bac Khuynh',6,'NXB Lao Dong','2009-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-tu-tu-du-do.jpg',10,100000,2000),(602,'Lac Loi Trong Tim Anh','�Nghe Da Hi',6,'NXB Lao Dong','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-lac-loi-trong-tim-anh.jpg',10,150000,3000),(603,'Kinh Doanh Truc Tuyen','Nguyen Dang Tuan Minh',7,'NXB Quan Doi','2008-01-01','https://nhasachmienphi.com/wp-content/uploads/kinh-doanh-truc-tuyen.jpg',10,175000,3500),(604,'Nghe thuat ban hang bac cao','Zig Ziglar',7,'NXB Quan Doi','2016-01-01','https://nhasachmienphi.com/wp-content/uploads/nghe-thuat-ban-hang-bac-cao.jpg',10,300000,6000),(605,'Pr La Song','Pham Quoc Hung',7,'NXB Quan Doi','2010-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-pr-la-song.jpg',10,250000,5000),(606,'Bien Bat Ky Ai Thanh Khach Hang','�C.J. Hayden',7,'NXB Quan Doi','2011-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-bien-bat-ky-ai-thanh-khach-hang.jpg',10,300000,6000),(607,'Ban Hang Thong Minh Qua Dien Thoai Va Internet','Josiane Chriqui Feigon',7,'NXB Quan Doi','2005-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-ban-hang-thong-minh-qua-dien-thoai-va-internet.jpg',10,200000,4000),(608,'Tang Toc Ban Hang Bang Spin','Neil Rackham',7,'NXB Quan Doi','2003-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-tang-toc-ban-hang-bang-spin.jpg',10,100000,2000),(609,'72 Thuat Tan Cong Tam Ly Trong Ban Le','Alpha Book',7,'NXB Quan Doi','2007-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-72-thuat-tan-cong-tam-ly-trong-ban-le.jpg',10,150000,3000),(610,'Marketing Truyen Mieng','Andy Sernovitz',7,'NXB Quan Doi','2009-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-marketing-truyen-mieng.jpg',10,175000,3500),(611,'Vua Ban Le','Willard N Ander',7,'NXB Quan Doi','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-vua-ban-le.jpg',10,300000,6000),(612,'12 Tuyet Ky Ban Hang','Brian Tracy',7,'NXB Quan Doi','2008-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-12-tuyet-ky-ban-hang.jpg',10,250000,5000),(613,'Luat Doanh Nghiep','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-luat-doanh-nghiep.jpg',10,300000,6000),(614,'Luat Thuong Mai','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2010-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-luat-thuong-mai.jpg',10,200000,4000),(615,'Luat Dat Dai','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2011-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-luat-dat-dai.jpg',10,100000,2000),(616,'Bo Luat Lao Dong','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2005-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-bo-luat-lao-dong.jpg',10,150000,3000),(617,'Luat Can Bo, Cong Chuc','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2003-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-luat-can-bo-cong-chuc.jpg',10,175000,3500),(618,'Dieu Le Dang Cong San Viet Nam','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2007-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-dieu-le-dang-cong-san-viet-nam.jpg',10,300000,6000),(619,'Bo Luat Dan Su','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2009-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-bo-luat-dan-su.jpg',10,250000,5000),(620,'Bo Luat Hinh Su','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-bo-luat-hinh-su.jpg',10,300000,6000),(621,'Luat An Ninh Mang � 2018','�Quoc Hoi Viet Nam',8,'NXB Tu Phap','2018-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-luat-an-ninh-mang-2018.jpg',10,200000,4000),(622,'Giao Trinh Luat Hanh Chinh Viet Nam','Truong Dai Hoc Luat Ha Noi',8,'NXB Tu Phap','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-giao-trinh-luat-hanh-chinh-viet-nam.jpg',10,100000,2000),(623,'Chuyen Quai Di O Truong Hoc','Quai Dam Hiep Hoi',9,'NXB DH Su Pham','2008-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-chuyen-quai-di-o-truong-hoc.jpg',10,150000,3000),(624,'Chuyen Ma Quai O Benh Vien Dong Hoa','Nam Lang Yeu Giam Phi',9,'NXB DH Su Pham','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-chuyen-ma-quai-o-benh-vien-dong-hoa.jpg',10,175000,3500),(625,'Can Phong Cam','�R.L. Stine',9,'NXB DH Su Pham','2010-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-can-phong-cam.jpg',10,300000,6000),(626,'Nhat Ky Phong Tro Ma','Voz',9,'NXB DH Su Pham','2011-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-nhat-ky-phong-tro-ma.jpg',10,250000,5000),(627,'Truyen Ma 12 Cung Hoang Dao','�Vo Danh',9,'NXB DH Su Pham','2005-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-truyen-ma-12-cung-hoang-dao.jpg',10,300000,6000),(628,'Con Quy Truyen Kiep','Jessie Douglas Kerruish',9,'NXB DH Su Pham','2003-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-con-quy-truyen-kiep.jpg',10,200000,4000),(629,'Ha Than','�Thien Ha Ba Xuong',9,'NXB DH Su Pham','2007-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-ha-than.jpg',10,100000,2000),(630,'Long Lau Yeu Quat','�Bac Linh Quy Dao',9,'NXB DH Su Pham','2009-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-long-lau-yeu-quat.jpg',10,150000,3000),(631,'Bong Nguoi Duoi Trang','Nguyen Ngoc Ngan',9,'NXB DH Su Pham','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-bong-nguoi-duoi-trang.jpg',10,175000,3500),(632,'Gieng Tho Than','Montague Rhodes James',9,'NXB DH Su Pham','2004-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-gieng-tho-than.jpg',10,300000,6000),(633,'Chat Voi Rene Descartes','Bui Van Nam Son',10,'NXB Kim Dong','2008-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-chat-voi-rene-descartes.jpg',10,250000,5000),(634,'Sieu Ly Tinh Yeu','�Vladimir Soloviev',10,'NXB Kim Dong','2016-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-sieu-ly-tinh-yeu.jpg',10,300000,6000),(636,'Mot Giot Tu Su Doa Day','Hamvas Bela',10,'NXB Kim Dong','2011-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-mot-giot-tu-su-doa-day.jpg',10,100000,2000),(637,'Nhung Huyen Thoai','Roland Barthes',10,'NXB Kim Dong','2005-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-nhung-huyen-thoai.jpg',10,300000,6000),(638,'Cach Ta Nghi','John Dewey',10,'NXB Kim Dong','2003-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-cach-ta-nghi.jpg',10,200000,4000),(639,'Tu Duy Nhu Mot He Thong','David Bohm',10,'NXB Kim Dong','2007-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-tu-duy-nhu-mot-he-thong.jpg',10,100000,2000),(640,'Luan Ly Hoc','Tran Bich Lan',10,'NXB Kim Dong','2009-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-luan-ly-hoc.jpg',10,150000,3000),(642,'Triet Hoc Nhan Sinh Cua Toi','Vuong Mong',10,'NXB Kim Dong','2018-01-01','https://nhasachmienphi.com/images/thumbnail/nhasachmienphi-triet-hoc-nhan-sinh-cua-toi.jpg',10,300000,6000);
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
  `student_id` int NOT NULL,
  `rent` float NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `bookId_idx` (`book_id`),
  KEY `fk_student_id_idx` (`student_id`),
  CONSTRAINT `fk_book_id` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  CONSTRAINT `fk_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowing_slip`
--

LOCK TABLES `borrowing_slip` WRITE;
/*!40000 ALTER TABLE `borrowing_slip` DISABLE KEYS */;
INSERT INTO `borrowing_slip` VALUES (5,23,1,30000,'2022-07-26','2022-08-01','1'),(6,6,59,18000,'2022-07-26','2022-08-26','1'),(7,544,3,4000,'2021-07-22','2021-08-10','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (9,'Art'),(5,'Biography'),(1,'Business'),(3,'Children'),(2,'Dictionary'),(6,'Education'),(16,'Fantasy'),(4,'Fiction'),(12,'Graphic novel'),(7,'Health'),(10,'History'),(13,'Romance'),(8,'Science'),(15,'Science fiction'),(14,'Sport'),(11,'Technology'),(17,'Unknown');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` char(12) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Cong Minh Tien','916954989','tien1@gmail.com','Phuong Truc Bach Quan Ba Dinh Thanh Pho Ha Noi'),(2,'Nguyen Doan Thanh','915645885','thanh2@gmail.com','Phuong Vinh Phuc Quan Ba Dinh Thanh Pho Ha Noi'),(3,'Pham Tran Huy Hoang','356131939','hoang3@gmail.com','Phuong Cong Vi Quan Ba Dinh Thanh Pho Ha Noi'),(4,'Nguyen Phan Bach','979315336','bach4@gmail.com','Phuong Lieu Giai Quan Ba Dinh Thanh Pho Ha Noi'),(5,'Pham Tuan Hung','374060470','hung5@gmail.com','Phuong Nguyen Trung Truc Quan Ba Dinh Thanh Pho Ha Noi'),(6,'Hoang Van Huy','987906928','huy6@gmail.com','Phuong Quan Thanh Quan Ba Dinh Thanh Pho Ha Noi'),(7,'Vu Minh Hieu','986357096','hieu7@gmail.com','Phuong Ngoc Ha Quan Ba Dinh Thanh Pho Ha Noi'),(8,'Nguyen Anh Tu','325676663','tu8@gmail.com','Phuong Dien Bien Quan Ba Dinh Thanh Pho Ha Noi'),(9,'Nguyen Ngoc Tai','982774048','tai9@gmail.com','Phuong Doi Can Quan Ba Dinh Thanh Pho Ha Noi'),(10,'Tran Van Tien','973893538','tien10@gmail.com','Phuong Ngoc Khanh Quan Ba Dinh Thanh Pho Ha Noi'),(11,'Phan Huu Tuan Anh','977406460','anh11@gmail.com','Phuong Kim Ma Quan Ba Dinh Thanh Pho Ha Noi'),(12,'Mai Van Toan','986850329','toan12@gmail.com','Phuong Giang Vo Quan Ba Dinh Thanh Pho Ha Noi'),(13,'Mai Tien Manh','912789565','manh13@gmail.com','Phuong Thanh Cong Quan Ba Dinh Thanh Pho Ha Noi'),(14,'Nguyen Duc Luong','972834042','luong14@gmail.com','Phuong Phuc Tan Quan Hoan Kiem Thanh Pho Ha Noi'),(15,'Cao Quoc Hung','918495555','hung15@gmail.com','Phuong Dong Xuan Quan Hoan Kiem Thanh Pho Ha Noi'),(16,'Le Khanh An','904339141','an16@gmail.com','Phuong Hang Ma Quan Hoan Kiem Thanh Pho Ha Noi'),(17,'Le Bui Kien Giang','388118161','giang17@gmail.com','Phuong Hang Buom Quan Hoan Kiem Thanh Pho Ha Noi'),(18,'Trinh Xuan Khanh','368016666','khanh18@gmail.com','Phuong Hang Dao Quan Hoan Kiem Thanh Pho Ha Noi'),(19,'Nguyen Quang Dung','904175366','dung19@gmail.com','Phuong Hang Bo Quan Hoan Kiem Thanh Pho Ha Noi'),(20,'Nguyen Quoc Quan','986850329','quan20@gmail.com','Phuong Cua Dong Quan Hoan Kiem Thanh Pho Ha Noi'),(21,'Vu Hoang Long','912631386','long21@gmail.com','Phuong Ly Thai To Quan Hoan Kiem Thanh Pho Ha Noi'),(22,'Nguyen Nhu Tuan Phong','968913323','phong22@gmail.com','Phuong Hang Bac Quan Hoan Kiem Thanh Pho Ha Noi'),(23,'Nguyen The Anh','962343882','anh23@gmail.com','Phuong Hang Gai Quan Hoan Kiem Thanh Pho Ha Noi'),(24,'Tran Thu Do','972689485','do24@gmail.com','Phuong Chuong Duong Quan Hoan Kiem Thanh Pho Ha Noi'),(25,'Pham Quoc Viet','978320298','viet25@gmail.com','Phuong Hang Trong Quan Hoan Kiem Thanh Pho Ha Noi'),(26,'Le Duc Thanh','989894374','thanh26@gmail.com','Phuong Cua Nam Quan Hoan Kiem Thanh Pho Ha Noi'),(27,'Dao Duc Hieu','912462012','hieu27@gmail.com','Phuong Hang Bong Quan Hoan Kiem Thanh Pho Ha Noi'),(28,'Vuong Cong Minh','903221336','minh28@gmail.com','Phuong Trang Tien Quan Hoan Kiem Thanh Pho Ha Noi'),(29,'Nguyen Duc Minh','904078078','minh29@gmail.com','Phuong Tran Hung Dao Quan Hoan Kiem Thanh Pho Ha Noi'),(30,'Truong Cong Duong','355992198','duong30@gmail.com','Phuong Phan Chu Trinh Quan Hoan Kiem Thanh Pho Ha Noi'),(31,'Tran Dinh Nam','967868787','nam31@gmail.com','Phuong Hang Bai Quan Hoan Kiem Thanh Pho Ha Noi'),(32,'Pham Nhu Hoang Phuc','973282383','phuc32@gmail.com','Phuong Phu Thuong Quan Tay Ho Thanh Pho Ha Noi'),(33,'Nguyen Dinh Tuan Anh','972834042','anh33@gmail.com','Phuong Nhat Tan Quan Tay Ho Thanh Pho Ha Noi'),(34,'Duong Duc Tien','983142571','tien34@gmail.com','Phuong Tu Lien Quan Tay Ho Thanh Pho Ha Noi'),(35,'Nguyen Van Luan','983112681','luan35@gmail.com','Phuong Quang An Quan Tay Ho Thanh Pho Ha Noi'),(36,'Le Tien Quang','963002398','quang36@gmail.com','Phuong Xuan La Quan Tay Ho Thanh Pho Ha Noi'),(37,'Vu duc thanh','936231597','thanh37@gmail.com','Phuong Yen Phu Quan Tay Ho Thanh Pho Ha Noi'),(38,'Nguyen Cong Son','368127992','son38@gmail.com','Phuong Buoi Quan Tay Ho Thanh Pho Ha Noi'),(39,'Pham Minh Hieu','933466566','hieu39@gmail.com','Phuong Thuy Khue Quan Tay Ho Thanh Pho Ha Noi'),(40,'Tran Viet Anh','983912250','anh40@gmail.com','Phuong Thuong Thanh Quan Long Bien Thanh Pho Ha Noi'),(41,'Nguyen Truong Giang','987305902','giang41@gmail.com','Phuong Ngoc Thuy Quan Long Bien Thanh Pho Ha Noi'),(42,'Vu Hoang Tuan','973713565','tuan42@gmail.com','Phuong Giang Bien Quan Long Bien Thanh Pho Ha Noi'),(43,'Dinh Cao Duy Khanh','919626179','khanh43@gmail.com','Phuong Duc Giang Quan Long Bien Thanh Pho Ha Noi'),(44,'Nguyen Cong Vu','912462012','vu44@gmail.com','Phuong Viet Hung Quan Long Bien Thanh Pho Ha Noi'),(45,'Nguyen Minh Thai','985534424','thai45@gmail.com','Phuong Gia Thuy Quan Long Bien Thanh Pho Ha Noi'),(46,'Vu Ngoc Anh','941012955','anh46@gmail.com','Phuong Ngoc Lam Quan Long Bien Thanh Pho Ha Noi'),(47,'Hoang Duc Nghi','327745688','nghi47@gmail.com','Phuong Phuc Loi Quan Long Bien Thanh Pho Ha Noi'),(48,'Pham Quang Minh','902222803','minh48@gmail.com','Phuong Bo De Quan Long Bien Thanh Pho Ha Noi'),(49,'Pham Quang Dat','92222803','dat49@gmail.com','Phuong Sai Dong Quan Long Bien Thanh Pho Ha Noi'),(50,'Nguyen Tuan Hung','936022998','hung50@gmail.com','Phuong Long Bien Quan Long Bien Thanh Pho Ha Noi'),(51,'Nguyen Chi Trung','908701991','trung51@gmail.com','Phuong Thach Ban Quan Long Bien Thanh Pho Ha Noi'),(52,'Nguyen Huu Tung','989836310','tung52@gmail.com','Phuong Phuc Dong Quan Long Bien Thanh Pho Ha Noi'),(53,'Nguyen Tuan Thanh','983477873','thanh53@gmail.com','Phuong Cu Khoi Quan Long Bien Thanh Pho Ha Noi'),(54,'Pham Ngoc Thuong','973282383','thuong54@gmail.com','Phuong Nghia Do Quan Cau Giay Thanh Pho Ha Noi'),(55,'Tran Truong Giang','855869666','giang55@gmail.com','Phuong Nghia Tan Quan Cau Giay Thanh Pho Ha Noi'),(56,'Vu Minh Thong','902175686','thong56@gmail.com','Phuong Mai Dich Quan Cau Giay Thanh Pho Ha Noi'),(57,'Vu Hoang Minh','915166888','minh57@gmail.com','Phuong Dich Vong Quan Cau Giay Thanh Pho Ha Noi'),(58,'Do Van Hong','936486669','hong58@gmail.com','Phuong Dich Vong Hau Quan Cau Giay Thanh Pho Ha Noi'),(59,'Vi Minh Hieu','984877689','hieu59@gmail.com','Phuong Quan Hoa Quan Cau Giay Thanh Pho Ha Noi'),(60,'Bui Duc Tuan','399919392','tuan60@gmail.com','Phuong Yen Hoa Quan Cau Giay Thanh Pho Ha Noi'),(61,'Nguyen Phuc Tam','985323400','tam61@gmail.com','Phuong Trung Hoa Quan Cau Giay Thanh Pho Ha Noi'),(62,'Bui Gia Phong','966511396','phong62@gmail.com','Phuong Cat Linh Quan Dong Da Thanh Pho Ha Noi'),(63,'Pham Thanh Dat','395556555','dat63@gmail.com','Phuong Van Mieu Quan Dong Da Thanh Pho Ha Noi'),(64,'Dinh Ngoc Tung','947591166','tung64@gmail.com','Phuong Quoc Tu Giam Quan Dong Da Thanh Pho Ha Noi'),(65,'Duong Quang Minh','906055839','minh65@gmail.com','Phuong Lang Thuong Quan Dong Da Thanh Pho Ha Noi'),(66,'Tran Duc Loc','763192345','loc66@gmail.com','Phuong O Cho Dua Quan Dong Da Thanh Pho Ha Noi'),(67,'Tran Van Mung','948596555','mung67@gmail.com','Phuong Van Chuong Quan Dong Da Thanh Pho Ha Noi'),(68,'Tran Duc Quang','974450869','quang68@gmail.com','Phuong Hang Bot Quan Dong Da Thanh Pho Ha Noi'),(69,'Duong Manh Cuong','865508903','cuong69@gmail.com','Phuong Lang Ha Quan Dong Da Thanh Pho Ha Noi'),(70,'Truong Van Bac','967398338','bac70@gmail.com','Phuong Kham Thien Quan Dong Da Thanh Pho Ha Noi'),(71,'Le Quy Nam','903451081','nam71@gmail.com','Phuong Tho Quan Quan Dong Da Thanh Pho Ha Noi'),(72,'Pham Hoai Nam','936310977','nam72@gmail.com','Phuong Nam Dong Quan Dong Da Thanh Pho Ha Noi'),(73,'Chu Anh Tuan','914337666','tuan73@gmail.com','Phuong Trung Phung Quan Dong Da Thanh Pho Ha Noi'),(74,'Nguyen The Tu','989217027','tu74@gmail.com','Phuong Quang Trung Quan Dong Da Thanh Pho Ha Noi'),(75,'Tran Quang Anh','985982900','anh75@gmail.com','Phuong Trung Liet Quan Dong Da Thanh Pho Ha Noi'),(76,'Nguyen Viet Hoang','975165405','hoang76@gmail.com','Phuong Phuong Lien Quan Dong Da Thanh Pho Ha Noi'),(77,'Tran Anh Ngoc','977216863','ngoc77@gmail.com','Phuong Thinh Quang Quan Dong Da Thanh Pho Ha Noi'),(78,'Ha Duc Thanh','336471462','thanh78@gmail.com','Phuong Trung Tu Quan Dong Da Thanh Pho Ha Noi'),(79,'Nguyen Trung Thang','837257538','thang79@gmail.com','Phuong Kim Lien Quan Dong Da Thanh Pho Ha Noi'),(80,'Dinh Nhat Thanh','368698933','thanh80@gmail.com','Phuong Phuong Mai Quan Dong Da Thanh Pho Ha Noi'),(81,'Vu Duy Long','829691589','long81@gmail.com','Phuong Nga Tu So Quan Dong Da Thanh Pho Ha Noi'),(82,'Nguyen Ky Anh','965624368','anh82@gmail.com','Phuong Khuong Thuong Quan Dong Da Thanh Pho Ha Noi'),(83,'Le Duc Anh','914376299','anh83@gmail.com','Phuong Nguyen Du Quan Hai Ba Trung Thanh Pho Ha Noi'),(84,'Nguyen Huu Tho','903452987','tho84@gmail.com','Phuong Bach Dang Quan Hai Ba Trung Thanh Pho Ha Noi'),(85,'Nguyen Kha Khai','912850678','khai85@gmail.com','Phuong Pham Dinh Ho Quan Hai Ba Trung Thanh Pho Ha Noi'),(86,'Tran Van Hoan','352990885','hoan86@gmail.com','Phuong Le Dai Hanh Quan Hai Ba Trung Thanh Pho Ha Noi'),(87,'Le Duy An','914828387','an87@gmail.com','Phuong Dong Nhan Quan Hai Ba Trung Thanh Pho Ha Noi'),(88,'Le Van Tung','987894769','tung88@gmail.com','Phuong Pho Hue Quan Hai Ba Trung Thanh Pho Ha Noi'),(89,'Nguyen Minh Khanh','382865828','khanh89@gmail.com','Phuong Dong Mac Quan Hai Ba Trung Thanh Pho Ha Noi'),(90,'Nguyen Van Khoa','395378033','khoa90@gmail.com','Phuong Thanh Luong Quan Hai Ba Trung Thanh Pho Ha Noi'),(91,'Traan Xuan Tien','367344592','tien91@gmail.com','Phuong Thanh Nhan Quan Hai Ba Trung Thanh Pho Ha Noi'),(92,'Ngo Van Duc An','975997918','an92@gmail.com','Phuong Cau Den Quan Hai Ba Trung Thanh Pho Ha Noi'),(93,'Nguyen Tuan Nghia','961039966','nghia93@gmail.com','Phuong Bach Khoa Quan Hai Ba Trung Thanh Pho Ha Noi'),(94,'Tran Le Trung Kien','904783191','kien94@gmail.com','Phuong Dong Tam Quan Hai Ba Trung Thanh Pho Ha Noi'),(95,'Duong Dinh Nam Anh','973719939','anh95@gmail.com','Phuong Vinh Tuy Quan Hai Ba Trung Thanh Pho Ha Noi'),(96,'Nguyen Van Hoan','978253124','hoan96@gmail.com','Phuong Bach Mai Quan Hai Ba Trung Thanh Pho Ha Noi'),(97,'Trinh Quang Hao','989728979','hao97@gmail.com','Phuong Quynh Mai Quan Hai Ba Trung Thanh Pho Ha Noi'),(98,'Nguyen Manh Dung','983011103','dung98@gmail.com','Phuong Quynh Loi Quan Hai Ba Trung Thanh Pho Ha Noi'),(99,'Cao Thanh Tung','366528668','tung99@gmail.com','Phuong Minh Khai Quan Hai Ba Trung Thanh Pho Ha Noi'),(100,'Ta Van Mui','934489007','mui100@gmail.com','Phuong Truong Dinh Quan Hai Ba Trung Thanh Pho Ha Noi'),(101,'Tran Minh Hieu','906559999','hieu101@gmail.com','Phuong Thanh Tri Quan Hoang Mai Thanh Pho Ha Noi'),(102,'Nguyen Quang Huong','344292495','huong102@gmail.com','Phuong Vinh Hung Quan Hoang Mai Thanh Pho Ha Noi'),(103,'Vu Ngoc Long','904969007','long103@gmail.com','Phuong Dinh Cong Quan Hoang Mai Thanh Pho Ha Noi'),(104,'Tran Viet Hoang','936288698','hoang104@gmail.com','Phuong Mai Dong Quan Hoang Mai Thanh Pho Ha Noi'),(105,'Do Van Tien','988678360','tien105@gmail.com','Phuong Tuong Mai Quan Hoang Mai Thanh Pho Ha Noi'),(106,'Nguyen Duc Hai','395378033','hai106@gmail.com','Phuong Dai Kim Quan Hoang Mai Thanh Pho Ha Noi'),(107,'Le Ngoc Viet','904069009','viet107@gmail.com','Phuong Tan Mai Quan Hoang Mai Thanh Pho Ha Noi'),(108,'Dao Quoc Truong','904668990','truong108@gmail.com','Phuong Hoang Van Thu Quan Hoang Mai Thanh Pho Ha Noi'),(109,'Tran Hoang Nguyen Hao','942165636','hao109@gmail.com','Phuong Giap Bat Quan Hoang Mai Thanh Pho Ha Noi'),(110,'Ta Manh Thang','975997918','thang110@gmail.com','Phuong Linh Nam Quan Hoang Mai Thanh Pho Ha Noi'),(111,'Do Phuoc Tam','981496821','tam111@gmail.com','Phuong Thinh Liet Quan Hoang Mai Thanh Pho Ha Noi'),(112,'Nguyen Hai Duong','961393017','duong112@gmail.com','Phuong Tran Phu Quan Hoang Mai Thanh Pho Ha Noi'),(113,'Vuong Dac Thuong','964566996','thuong113@gmail.com','Phuong Hoang Liet Quan Hoang Mai Thanh Pho Ha Noi'),(114,'Hoang Trung Hieu','949309668','hieu114@gmail.com','Phuong Yen So Quan Hoang Mai Thanh Pho Ha Noi'),(115,'Vu Dinh Luyen','973217838','luyen115@gmail.com','Phuong Nhan Chinh Quan Thanh Xuan Thanh Pho Ha Noi'),(116,'Nguyen Do Huy','904818195','huy116@gmail.com','Phuong Thuong Dinh Quan Thanh Xuan Thanh Pho Ha Noi'),(117,'Dam Van Duc','948292067','duc117@gmail.com','Phuong Khuong Trung Quan Thanh Xuan Thanh Pho Ha Noi'),(118,'Hoang Trung Nghia','983142571','nghia118@gmail.com','Phuong Khuong Mai Quan Thanh Xuan Thanh Pho Ha Noi'),(119,'Nguyen Duc Hoa','866884216','hoa119@gmail.com','Phuong Thanh Xuan Trung Quan Thanh Xuan Thanh Pho Ha Noi'),(120,'Tran Quang Huy','912175901','huy120@gmail.com','Phuong Phuong Liet Quan Thanh Xuan Thanh Pho Ha Noi'),(121,'Nguyen Ba Truong','983158760','truong121@gmail.com','Phuong Ha Dinh Quan Thanh Xuan Thanh Pho Ha Noi'),(122,'Vu Tien Tuan','981331282','tuan122@gmail.com','Phuong Khuong Dinh Quan Thanh Xuan Thanh Pho Ha Noi'),(123,'Pham Quoc Thang','868336988','thang123@gmail.com','Phuong Thanh Xuan Bac Quan Thanh Xuan Thanh Pho Ha Noi'),(124,'Do Tu Hung','964324602','hung124@gmail.com','Phuong Thanh Xuan Nam Quan Thanh Xuan Thanh Pho Ha Noi'),(125,'Tran Hoang Viet','914314995','viet125@gmail.com','Phuong Kim Giang Quan Thanh Xuan Thanh Pho Ha Noi'),(126,'Nguyen Minh Hieu','396727262','hieu126@gmail.com','Thi tran Soc Son Huyen Soc Son Thanh Pho Ha Noi'),(127,'Nguyen Van Dai','913205866','dai127@gmail.com','Xa Bac Son Huyen Soc Son Thanh Pho Ha Noi'),(128,'Le Van The Anh','981836998','anh128@gmail.com','Xa Minh Tri Huyen Soc Son Thanh Pho Ha Noi'),(129,'Nguyen Chi Thanh','963050690','thanh129@gmail.com','Xa Hong Ky Huyen Soc Son Thanh Pho Ha Noi'),(130,'Le Hoai Nam','976709357','nam130@gmail.com','Xa Nam Son Huyen Soc Son Thanh Pho Ha Noi'),(131,'Dinh Hoang Nhat Minh','947089810','minh131@gmail.com','Xa Trung Gia Huyen Soc Son Thanh Pho Ha Noi'),(132,'Do Minh Thanh','989323590','thanh132@gmail.com','Xa Tan Hung Huyen Soc Son Thanh Pho Ha Noi'),(133,'Nguyen Hoang Gia','916131638','gia133@gmail.com','Xa Minh Phu Huyen Soc Son Thanh Pho Ha Noi'),(134,'Vu Tien Dat','904914988','dat134@gmail.com','Xa Phu Linh Huyen Soc Son Thanh Pho Ha Noi'),(135,'Nguyen Ba Nam','362803333','nam135@gmail.com','Xa Bac Phu Huyen Soc Son Thanh Pho Ha Noi'),(136,'Cao Minh Quan','912277693','quan136@gmail.com','Xa Tan Minh Huyen Soc Son Thanh Pho Ha Noi'),(137,'nguyen van truong','966581663','truong137@gmail.com','Xa Quang Tien Huyen Soc Son Thanh Pho Ha Noi'),(138,'Nguyen Thanh Tung','392425660','tung138@gmail.com','Xa Hien Ninh Huyen Soc Son Thanh Pho Ha Noi'),(139,'Chu Van Thao','966581663','thao139@gmail.com','Xa Tan Dan Huyen Soc Son Thanh Pho Ha Noi'),(140,'nguyen minh nhat','903281228','nhat140@gmail.com','Xa Tien Duoc Huyen Soc Son Thanh Pho Ha Noi'),(141,'Nguyen Dang Phuc','986116265','phuc141@gmail.com','Xa Viet Long Huyen Soc Son Thanh Pho Ha Noi'),(142,'Nguyen Tien Hung','813056555','hung142@gmail.com','Xa Xuan Giang Huyen Soc Son Thanh Pho Ha Noi'),(143,'NGUYEN HAI SON','918425453','son143@gmail.com','Xa Mai Dinh Huyen Soc Son Thanh Pho Ha Noi'),(144,'Nguyen Duy Quan','904421582','quan144@gmail.com','Xa Duc Hoa Huyen Soc Son Thanh Pho Ha Noi'),(145,'Nguyen Duc Hung','355468979','hung145@gmail.com','Xa Thanh Xuan Huyen Soc Son Thanh Pho Ha Noi'),(146,'Nguyen Viet Duc','903221336','duc146@gmail.com','Xa Dong Xuan Huyen Soc Son Thanh Pho Ha Noi'),(147,'Le Quoc Trung','862505373','trung147@gmail.com','Xa Kim Lu Huyen Soc Son Thanh Pho Ha Noi'),(148,'Do Thien Quan','978823116','quan148@gmail.com','Xa Phu Cuong Huyen Soc Son Thanh Pho Ha Noi'),(149,'Dang Huy Hung','982723319','hung149@gmail.com','Xa Phu Minh Huyen Soc Son Thanh Pho Ha Noi'),(150,'Tran Minh Quan','968618168','quan150@gmail.com','Xa Phu Lo Huyen Soc Son Thanh Pho Ha Noi'),(151,'Nguyen Quoc Truong','961699499','truong151@gmail.com','Xa Xuan Thu Huyen Soc Son Thanh Pho Ha Noi'),(152,'Nguyen Van An','982648668','an152@gmail.com','Thi tran Dong Anh Huyen Dong Anh Thanh Pho Ha Noi'),(153,'LU VAN KHAI','978561787','khai153@gmail.com','Xa Xuan Non Huyen Dong Anh Thanh Pho Ha Noi'),(154,'Nguyen Dinh Hung','963002398','hung154@gmail.com','Xa Thuy Lam Huyen Dong Anh Thanh Pho Ha Noi'),(155,'Nguyen Van Hieu','986819796','hieu155@gmail.com','Xa Bac Hong Huyen Dong Anh Thanh Pho Ha Noi'),(156,'Nguyen Van Thien','984731941','thien156@gmail.com','Xa Nguyen Khe Huyen Dong Anh Thanh Pho Ha Noi'),(157,'Vuong Dinh Hung','914754045','hung157@gmail.com','Xa Nam Hong Huyen Dong Anh Thanh Pho Ha Noi'),(158,'Nguyen Huu Son','969717891','son158@gmail.com','Xa Tien Duong Huyen Dong Anh Thanh Pho Ha Noi'),(159,'truong minh quan','966581663','quan159@gmail.com','Xa Van Ha Huyen Dong Anh Thanh Pho Ha Noi'),(160,'khoang trung hieu','384000668','hieu160@gmail.com','Xa Uy No Huyen Dong Anh Thanh Pho Ha Noi'),(161,'Vu Tuan Anh','977350026','anh161@gmail.com','Xa Van Noi Huyen Dong Anh Thanh Pho Ha Noi'),(162,'Hoang  Dang Duong','913591977','duong162@gmail.com','Xa Lien Ha Huyen Dong Anh Thanh Pho Ha Noi'),(163,'Tran Duc Manh','976171083','manh163@gmail.com','Xa Viet Hung Huyen Dong Anh Thanh Pho Ha Noi'),(164,'Dang Trung Long','839942118','long164@gmail.com','Xa Kim No Huyen Dong Anh Thanh Pho Ha Noi'),(165,'Bach Quoc Thai','978566879','thai165@gmail.com','Xa Kim Chung Huyen Dong Anh Thanh Pho Ha Noi'),(166,'Hoang Trong Tu','902283993','tu166@gmail.com','Xa Duc Tu Huyen Dong Anh Thanh Pho Ha Noi'),(167,'Dang Thanh Trung','332475108','trung167@gmail.com','Xa Dai Mach Huyen Dong Anh Thanh Pho Ha Noi'),(168,'Nguyen quang Minh','983582382','minh168@gmail.com','Xa Vinh Ngoc Huyen Dong Anh Thanh Pho Ha Noi'),(169,'Nguyen Dai Phat','983218611','phat169@gmail.com','Xa Co Loa Huyen Dong Anh Thanh Pho Ha Noi'),(170,'Do Quang Minh','949966245','minh170@gmail.com','Xa Hai Boi Huyen Dong Anh Thanh Pho Ha Noi'),(171,'Bui Quang Minh','983471756','minh171@gmail.com','Xa Xuan Canh Huyen Dong Anh Thanh Pho Ha Noi'),(172,'Huynh Minh Hieu','903221336','hieu172@gmail.com','Xa Vong La Huyen Dong Anh Thanh Pho Ha Noi'),(173,'Le To Hieu','943244588','hieu173@gmail.com','Xa Tam Xa Huyen Dong Anh Thanh Pho Ha Noi'),(174,'Pham Minh Hieu','368016666','hieu174@gmail.com','Xa Mai Lam Huyen Dong Anh Thanh Pho Ha Noi'),(175,'Tran Quang Phuc','832122170','phuc175@gmail.com','Xa Dong Hoi Huyen Dong Anh Thanh Pho Ha Noi'),(176,'Duong Ke Toai','981618125','toai176@gmail.com','Thi tran Yen Vien Huyen Gia Lam Thanh Pho Ha Noi'),(177,'Nguyen Duc Luong','982086850','luong177@gmail.com','Xa Yen Thuong Huyen Gia Lam Thanh Pho Ha Noi'),(178,'ngo bao nghiem','983582382','nghiem178@gmail.com','Xa Yen Vien Huyen Gia Lam Thanh Pho Ha Noi'),(179,'Nguyen Van Chuong','982240989','chuong179@gmail.com','Xa Ninh Hiep Huyen Gia Lam Thanh Pho Ha Noi'),(180,'Lai Van Son','966632086','son180@gmail.com','Xa Dinh Xuyen Huyen Gia Lam Thanh Pho Ha Noi'),(181,'Nguyen The Hai Dang','936663593','dang181@gmail.com','Xa Duong Ha Huyen Gia Lam Thanh Pho Ha Noi'),(182,'Luong Thanh Tung','974905999','tung182@gmail.com','Xa Phu Dong Huyen Gia Lam Thanh Pho Ha Noi'),(183,'Dang Thanh Nam','987893893','nam183@gmail.com','Xa Trung Mau Huyen Gia Lam Thanh Pho Ha Noi'),(184,'Phung Van Tien','946586633','tien184@gmail.com','Xa Le Chi Huyen Gia Lam Thanh Pho Ha Noi'),(185,'Nguyen Trong Hung','904421582','hung185@gmail.com','Xa Co Bi Huyen Gia Lam Thanh Pho Ha Noi'),(186,'Nguyen Tu Nam','961122321','nam186@gmail.com','Xa Dang Xa Huyen Gia Lam Thanh Pho Ha Noi'),(187,'Duong Hai Tai Ninh','383992716','ninh187@gmail.com','Xa Phu Thi Huyen Gia Lam Thanh Pho Ha Noi'),(188,'Nguyen Van Hieu','936065585','hieu188@gmail.com','Xa Kim Son Huyen Gia Lam Thanh Pho Ha Noi'),(189,'Nguyen Hai Dang','983772739','dang189@gmail.com','Thi tran Trau Quy Huyen Gia Lam Thanh Pho Ha Noi'),(190,'Pham trung kien','981792527','kien190@gmail.com','Xa Duong Quang Huyen Gia Lam Thanh Pho Ha Noi'),(191,'Nguyen Hoang Phuc','903288066','phuc191@gmail.com','Xa Duong Xa Huyen Gia Lam Thanh Pho Ha Noi'),(192,'Truong Tung Lam','966048866','lam192@gmail.com','Xa Dong Du Huyen Gia Lam Thanh Pho Ha Noi'),(193,'Nguyen Dinh Duy','868336988','duy193@gmail.com','Xa Da Ton Huyen Gia Lam Thanh Pho Ha Noi'),(194,'Nguyen Ba Quang Anh','908337966','anh194@gmail.com','Xa Kieu Ky Huyen Gia Lam Thanh Pho Ha Noi'),(195,'Nguyen Quang Hiep','368013570','hiep195@gmail.com','Xa Bat Trang Huyen Gia Lam Thanh Pho Ha Noi'),(196,'Pham Huynh Duc','866753182','duc196@gmail.com','Xa Kim Lan Huyen Gia Lam Thanh Pho Ha Noi'),(197,'Tran Thanh Dat','989743185','dat197@gmail.com','Xa Van Duc Huyen Gia Lam Thanh Pho Ha Noi'),(198,'Duong Manh Hung','961589568','hung198@gmail.com','Phuong Cau Dien Quan Nam Tu Liem Thanh Pho Ha Noi'),(199,'Nguyen Minh Hieu','902222803','hieu199@gmail.com','Phuong Xuan Phuong Quan Nam Tu Liem Thanh Pho Ha Noi'),(200,'Le Kim Tung','839980298','tung200@gmail.com','Phuong Phuong Canh Quan Nam Tu Liem Thanh Pho Ha Noi'),(201,'Pham Thanh Phuong','396269200','phuong201@gmail.com','Phuong My Dinh 1 Quan Nam Tu Liem Thanh Pho Ha Noi'),(202,'Le Danh Tu','964686362','tu202@gmail.com','Phuong My Dinh 2 Quan Nam Tu Liem Thanh Pho Ha Noi'),(203,'Do Duy Quang','987031605','quang203@gmail.com','Phuong Tay Mo Quan Nam Tu Liem Thanh Pho Ha Noi'),(204,'Vu Manh Tuyen','975191299','tuyen204@gmail.com','Phuong Me Tri Quan Nam Tu Liem Thanh Pho Ha Noi'),(205,'Tran Duy Anh','976086488','anh205@gmail.com','Phuong Phu Do Quan Nam Tu Liem Thanh Pho Ha Noi'),(206,'Nguyen Duc Hoang Son','915358058','son206@gmail.com','Phuong Dai Mo Quan Nam Tu Liem Thanh Pho Ha Noi'),(207,'Vu Manh Nam','917302942','nam207@gmail.com','Phuong Trung Van Quan Nam Tu Liem Thanh Pho Ha Noi'),(208,'Nguyen Van Hoi','978177786','hoi208@gmail.com','Thi tran Van Dien Huyen Thanh Tri Thanh Pho Ha Noi'),(209,'Ngo Dang Loc','902027393','loc209@gmail.com','Xa Tan Trieu Huyen Thanh Tri Thanh Pho Ha Noi'),(210,'Tran Thanh Long','983389665','long210@gmail.com','Xa Thanh Liet Huyen Thanh Tri Thanh Pho Ha Noi'),(211,'Nguyen Nghiem Kim Cuong','344292495','cuong211@gmail.com','Xa Ta Thanh Oai Huyen Thanh Tri Thanh Pho Ha Noi'),(212,'Nguyen Hoang Nam','335083480','nam212@gmail.com','Xa Huu Hoa Huyen Thanh Tri Thanh Pho Ha Noi'),(213,'Hoang Vu Ky','985752220','ky213@gmail.com','Xa Tam Hiep Huyen Thanh Tri Thanh Pho Ha Noi'),(214,'Nguyen Van Thuan','904339141','thuan214@gmail.com','Xa Tu Hiep Huyen Thanh Tri Thanh Pho Ha Noi'),(215,'Nguyen Duy Du','983670685','du215@gmail.com','Xa Yen My Huyen Thanh Tri Thanh Pho Ha Noi'),(216,'Nguyen vu anh','972394300','anh216@gmail.com','Xa Vinh Quynh Huyen Thanh Tri Thanh Pho Ha Noi'),(217,'Tran Truong Toan','906063768','toan217@gmail.com','Xa Ngu Hiep Huyen Thanh Tri Thanh Pho Ha Noi'),(218,'Nguyen Tuan Anh','946260095','anh218@gmail.com','Xa Duyen Ha Huyen Thanh Tri Thanh Pho Ha Noi'),(219,'Nguyen Cong Dinh Nguyen','375533515','nguyen219@gmail.com','Xa Ngoc Hoi Huyen Thanh Tri Thanh Pho Ha Noi'),(220,'Hua Tung Lam','866861509','lam220@gmail.com','Xa Van Phuc Huyen Thanh Tri Thanh Pho Ha Noi'),(221,'Nguyen Hoang Viet','779324627','viet221@gmail.com','Xa Dai ang Huyen Thanh Tri Thanh Pho Ha Noi'),(222,'Nguyen Cong Quyet','912298414','quyet222@gmail.com','Xa Lien Ninh Huyen Thanh Tri Thanh Pho Ha Noi'),(223,'Nguyen Tien Dat','989556644','dat223@gmail.com','Xa Dong My Huyen Thanh Tri Thanh Pho Ha Noi'),(224,'Dinh Van Thang','398662929','thang224@gmail.com','Phuong Thuong Cat Quan Bac Tu Liem Thanh Pho Ha Noi'),(225,'Mai Van Tuan Anh','936460944','anh225@gmail.com','Phuong Lien Mac Quan Bac Tu Liem Thanh Pho Ha Noi'),(226,'Do Dang Kien','934466445','kien226@gmail.com','Phuong Dong Ngac Quan Bac Tu Liem Thanh Pho Ha Noi'),(227,'le hoang minh khoi','356061850','khoi227@gmail.com','Phuong Duc Thang Quan Bac Tu Liem Thanh Pho Ha Noi'),(228,'Nguyen Anh Tu','979266888','tu228@gmail.com','Phuong Thuy Phuong Quan Bac Tu Liem Thanh Pho Ha Noi'),(229,'Nguyen Van Duc','946630234','duc229@gmail.com','Phuong Tay Tuu Quan Bac Tu Liem Thanh Pho Ha Noi'),(230,'Tran Van Dong','982615681','dong230@gmail.com','Phuong Xuan Dinh Quan Bac Tu Liem Thanh Pho Ha Noi'),(231,'Bui Ngoc Lam','337776766','lam231@gmail.com','Phuong Xuan Tao Quan Bac Tu Liem Thanh Pho Ha Noi'),(232,'Tran Van Huy','977861260','huy232@gmail.com','Phuong Minh Khai Quan Bac Tu Liem Thanh Pho Ha Noi'),(233,'Ngo Manh Dung','904175366','dung233@gmail.com','Phuong Co Nhue 1 Quan Bac Tu Liem Thanh Pho Ha Noi'),(234,'Kieu Hong Nam','978514260','nam234@gmail.com','Phuong Co Nhue 2 Quan Bac Tu Liem Thanh Pho Ha Noi'),(235,'Nguyen Van Chien','981792527','chien235@gmail.com','Phuong Phu Dien Quan Bac Tu Liem Thanh Pho Ha Noi'),(236,'Dinh Anh Quoc Khanh','382285683','khanh236@gmail.com','Phuong Phuc Dien Quan Bac Tu Liem Thanh Pho Ha Noi'),(237,'Tran Van Ha','392425660','ha237@gmail.com','Thi tran Chi Dong Huyen Me Linh Thanh Pho Ha Noi'),(238,'Nguyen Le Trung Nguyen','965833896','nguyen238@gmail.com','Xa Dai Thinh Huyen Me Linh Thanh Pho Ha Noi'),(239,'Vu Hai Nam','878719030','nam239@gmail.com','Xa Kim Hoa Huyen Me Linh Thanh Pho Ha Noi'),(240,'Mai Tien Thanh','902149889','thanh240@gmail.com','Xa Thach Da Huyen Me Linh Thanh Pho Ha Noi'),(241,'Le Hong Son','962350138','son241@gmail.com','Xa Tien Thang Huyen Me Linh Thanh Pho Ha Noi'),(242,'Ta Minh Chien','947921638','chien242@gmail.com','Xa Tu Lap Huyen Me Linh Thanh Pho Ha Noi'),(243,'Nguyen Thi Mai Anh','943192525','anh243@gmail.com','Thi tran Quang Minh Huyen Me Linh Thanh Pho Ha Noi'),(244,'Nguyen Thi Bang Ngan','346434423','ngan244@gmail.com','Xa Thanh Lam Huyen Me Linh Thanh Pho Ha Noi');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'library_management'
--
/*!50003 DROP PROCEDURE IF EXISTS `get_books` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_books`(in book_name varchar(100), in author varchar(100), in category_id varchar(100), in publisher varchar(100), in published_year varchar(100))
BEGIN
	set @sql_select = "select * from book where 1=1";
    if `book_name` != "" then
		set @sql_select = concat(@sql_select, " and name like '%", book_name, "%'");
    end if;
    if `author` != "" then
		set @sql_select = concat(@sql_select, " and author like '%", author, "%'");
	end if;
    if `category_id` != "" && `category_id` != 0 then
		set @sql_select = concat(@sql_select, " and category_id = ", category_id);
    end if;
    if `publisher` != "" then
		set @sql_select = concat(@sql_select, " and publisher like '%", publisher, "%'");
	end if;
    if `published_year` != "" then
		set @sql_select = concat(@sql_select, " and published_year like '%", published_year, "%'");
    end if;
    set @sql_select = concat(@sql_select, " order by id desc");
    prepare query_data from @sql_select;
    execute query_data;
    deallocate prepare query_data;
    select @sql_select;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_slips` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_slips`(in student_id varchar(45), in book_id varchar(100), in borrow_date varchar(45), in return_date varchar(45), in status varchar(10))
BEGIN
	set @sql_select = "select * from borrowing_slip where 1=1";
    if `student_id` != "" then
		set @sql_select = concat(@sql_select, " and student_id = ", student_id);
    end if;
    if `book_id` != "" then
		set @sql_select = concat(@sql_select, " and book_id = ", book_id);
    end if;
    if `borrow_date` != "" then
		set @sql_select = concat(@sql_select, " and borrow_date = '", borrow_date, "'");
    end if;
    if `return_date` != "" then
		set @sql_select = concat(@sql_select, " and return_date = '", return_date, "'");
    end if;
    if `status` != "" && `status` != 0 then
		set @sql_select = concat(@sql_select, " and status = ", status);
	end if;
    set @sql_select = concat(@sql_select, " order by id desc");
    prepare query_data from @sql_select;
    execute query_data;
    deallocate prepare query_data;
    select @sql_select;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_students` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_students`(in id varchar(100), in name varchar(100))
BEGIN
	set @sql_select = "select * from student where 1=1";
    if `id` != "" then
		set @sql_select = concat(@sql_select, " and id = ", id);
	end if;
    if `name` != "" then
		set @sql_select = concat(@sql_select, " and name like '%", name, "%'");
	end if;
    set @sql_select = concat(@sql_select, " order by id desc");
    prepare query_data from @sql_select;
    execute query_data;
    deallocate prepare query_data;
    select @sql_select;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-28 18:00:50
