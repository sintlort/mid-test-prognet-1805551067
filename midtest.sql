/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.7.22-log : Database - prognetmid
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`prognetmid` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `prognetmid`;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2019_08_19_000000_create_failed_jobs_table',1);

/*Table structure for table `penduduks` */

DROP TABLE IF EXISTS `penduduks`;

CREATE TABLE `penduduks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  `umur` smallint(6) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `negara` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

/*Data for the table `penduduks` */

insert  into `penduduks`(`id`,`nama`,`umur`,`alamat`,`pekerjaan`,`negara`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'I Dewa Made Laksana Putra',20,'Jln Raya Sesetan Gang Gumuk Sari no 21 C','IT Analyst','Papua New Guinea','2020-05-04 17:21:16','2020-05-07 16:18:17','2020-05-07 16:18:17'),
(2,'Delores Raynor Jr.',27,'7264 Orn Terrace Suite 866\nAuerfort, IL 81216','Rolling Machine Setter','Indonesia','2020-05-04 17:37:15','2020-05-04 17:46:15','2020-05-04 17:46:15'),
(3,'Eliseo Treutel',22,'227 Fritz Groves Suite 518\r\nEast Napoleon, OH 15610-8987','Welder and Cutter','Indonesia','2020-05-04 17:37:28','2020-05-04 18:16:26',NULL),
(4,'Jarrell Wisozk',17,'346 Haag Row Apt. 091\nFeeneyview, NM 82130','Information Systems Manager','Indonesia','2020-05-04 17:37:28','2020-05-04 17:37:28',NULL),
(5,'Caitlyn Pfeffer',18,'58052 Urban Springs Apt. 174\nAydenmouth, NC 15545','Homeland Security','Indonesia','2020-05-04 17:37:29','2020-05-04 17:37:29',NULL),
(6,'Mr. Bobby Jones I',25,'471 Clovis Pines\nSouth Xander, CT 21766','Municipal Fire Fighter','Indonesia','2020-05-04 17:37:29','2020-05-04 17:37:29',NULL),
(7,'Mrs. Meaghan Greenfelder',23,'71819 Corkery Alley Apt. 756\nDaishashire, DC 53354-3586','Reservation Agent OR Transportation Ticket Agent','Indonesia','2020-05-04 17:37:30','2020-05-04 17:37:30',NULL),
(8,'Timothy Rogahn II',30,'3343 Otha Ranch Suite 888\nAufderharburgh, GA 77958-4661','Biochemist','Indonesia','2020-05-04 17:37:30','2020-05-04 17:37:30',NULL),
(9,'Cornell McLaughlin',27,'48905 Stark Circle\nSouth Kathlyn, SD 63599','Hand Trimmer','Indonesia','2020-05-04 17:37:31','2020-05-04 17:37:31',NULL),
(10,'Jean Smitham',30,'6635 Bogisich Turnpike\nAbbeyton, MT 39983','Materials Inspector','Indonesia','2020-05-04 17:37:31','2020-05-04 17:37:31',NULL),
(11,'Daisha Klein',21,'130 Gerald Plaza Apt. 767\nNorth Candace, ND 42922-7023','Meat Packer','Indonesia','2020-05-04 17:37:32','2020-05-04 17:37:32',NULL),
(12,'Mrs. Ellen Little',24,'4999 Cremin Forest\nNew Dangelo, MT 29670','Host and Hostess','Indonesia','2020-05-04 17:37:32','2020-05-04 17:37:32',NULL),
(13,'Ila Watsica',21,'860 Block Corners Suite 951\nPort Raquelbury, AL 75907','Coaches and Scout','Indonesia','2020-05-04 17:37:33','2020-05-04 17:37:33',NULL),
(14,'Lola Bergnaum',20,'721 Christelle Summit Suite 412\nRusselchester, MI 77156-0421','Bill and Account Collector','Indonesia','2020-05-04 17:37:34','2020-05-04 17:37:34',NULL),
(15,'Delphine McCullough',19,'4653 Kulas Key Suite 411\nSouth Ines, UT 91262-5091','Outdoor Power Equipment Mechanic','Indonesia','2020-05-04 17:37:34','2020-05-04 17:37:34',NULL),
(16,'Leif Johnston',21,'9663 Nelda Mews\nBetsystad, AR 13286','Motorboat Operator','Indonesia','2020-05-04 17:37:35','2020-05-04 17:37:35',NULL),
(17,'Jackson Schaden',22,'96593 Demarco Ford Apt. 775\nHermistonmouth, KS 47668-6514','Gas Pumping Station Operator','Indonesia','2020-05-04 17:37:35','2020-05-04 17:37:35',NULL),
(18,'Prof. Jaylon Borer',25,'271 Tillman Manors Suite 577\nSouth Kaileyland, TX 22903-0070','Sawing Machine Tool Setter','Indonesia','2020-05-04 17:37:36','2020-05-04 17:37:36',NULL),
(19,'Giovanny Mayer I',25,'926 Anahi Trail\nOciechester, WI 70338','Marine Cargo Inspector','Indonesia','2020-05-04 17:37:36','2020-05-04 17:37:36',NULL),
(20,'Micaela Effertz',24,'941 Walker Island\nLake Verla, WY 67003','Production Manager','Indonesia','2020-05-04 17:37:37','2020-05-04 17:37:37',NULL),
(21,'Jerad Bauch',19,'218 Larson Pass Suite 562\nLake Ebbaview, AZ 66469','Medical Secretary','Indonesia','2020-05-04 17:37:37','2020-05-04 17:37:37',NULL),
(22,'Kyleigh Yost',18,'78010 Jovany Fords Apt. 231\nRempelburgh, OH 20522-7906','Artillery Crew Member','Indonesia','2020-05-04 17:37:38','2020-05-04 17:37:38',NULL),
(23,'Royce Moore',25,'60522 Antonina Mountain\nPort Loganland, IL 30085-8133','Claims Taker','Indonesia','2020-05-04 17:37:38','2020-05-04 17:37:38',NULL),
(24,'Shawn Haley PhD',19,'6117 Osinski Spring Apt. 900\nEast Camila, MT 18388-8208','Plasterer OR Stucco Mason','Indonesia','2020-05-04 17:37:39','2020-05-04 17:37:39',NULL),
(25,'Marlon Hagenes Sr.',30,'41984 Harvey Burgs Apt. 065\nNew Kyla, KS 05615','Insurance Appraiser','Indonesia','2020-05-04 17:37:39','2020-05-04 17:37:39',NULL),
(26,'Prof. Griffin Kohler IV',17,'323 Osinski Canyon Apt. 639\nNew Reta, AZ 96624-0693','Packaging Machine Operator','Indonesia','2020-05-04 17:37:40','2020-05-04 17:37:40',NULL),
(27,'Dr. Blaze Collins DVM',23,'25483 Wilma Extension Suite 928\nEast Paolohaven, ID 55826-4829','Purchasing Agent','Indonesia','2020-05-04 17:37:41','2020-05-04 17:37:41',NULL),
(28,'Milan Hodkiewicz III',23,'697 Rogers Glens\nEnatown, ND 59135','Order Filler','Indonesia','2020-05-04 17:37:41','2020-05-04 17:37:41',NULL),
(29,'Simeon McLaughlin MD',29,'7017 Brent Plaza\nWest Narcisofort, AZ 39332-9804','Material Movers','Indonesia','2020-05-04 17:37:42','2020-05-04 17:37:42',NULL),
(30,'Ms. Yasmine Satterfield I',22,'391 Pfannerstill Hills\nNew Gerry, AZ 65205','Human Resources Assistant','Indonesia','2020-05-04 17:37:42','2020-05-04 17:37:42',NULL),
(31,'Dr. Frederick Lesch Jr.',29,'98823 Welch Mount Suite 082\nSengermouth, HI 15714','Insurance Claims Clerk','Indonesia','2020-05-04 17:37:43','2020-05-04 17:37:43',NULL),
(32,'Dr. Arnold Hermann',26,'32076 Lubowitz Trafficway Apt. 177\nWest Alysson, VA 89709','File Clerk','Indonesia','2020-05-04 17:37:43','2020-05-04 17:37:43',NULL),
(33,'Mrs. Beverly Pacocha I',19,'88264 Witting Lodge\nNew Chadrickport, WA 30774','Bus Driver','Indonesia','2020-05-04 17:37:44','2020-05-04 17:37:44',NULL),
(34,'Dr. Jeanne Little',20,'90045 Camila Harbors\nSouth Katharina, TN 84706','Brake Machine Setter','Indonesia','2020-05-04 17:37:44','2020-05-04 17:37:44',NULL),
(35,'Ms. Marguerite Cormier PhD',30,'121 Strosin Rapid\nRitchieshire, OR 12862-2659','Cement Mason and Concrete Finisher','Indonesia','2020-05-04 17:37:45','2020-05-04 17:37:45',NULL),
(36,'Mrs. Jane Smitham I',27,'6108 Waters Manors\nWest Guidotown, VT 93008','Instrument Sales Representative','Indonesia','2020-05-04 17:37:45','2020-05-04 17:37:45',NULL),
(37,'Bessie VonRueden',21,'87564 Stracke Lake Suite 896\nSheldonburgh, SC 50255','Kindergarten Teacher','Indonesia','2020-05-04 17:37:46','2020-05-04 17:37:46',NULL),
(38,'Margarita Ruecker',29,'9087 Leola Spring\nMetzfurt, DE 28013-2676','Operations Research Analyst','Indonesia','2020-05-04 17:37:47','2020-05-04 17:37:47',NULL),
(39,'Prof. Nigel Schowalter',25,'8190 Conn Plaza\nPort Dixie, CO 28966-4345','Record Clerk','Indonesia','2020-05-04 17:37:47','2020-05-04 17:37:47',NULL),
(40,'Mr. Werner Gleason III',21,'36910 Caroline Plaza\nAbernathyport, CA 70566-5437','Industrial Safety Engineer','Indonesia','2020-05-04 17:37:48','2020-05-04 17:37:48',NULL),
(41,'Adell Auer',25,'46292 Kilback River Suite 390\nJimmyfort, PA 46084-8888','Musician OR Singer','Indonesia','2020-05-04 17:37:48','2020-05-04 17:37:48',NULL),
(42,'Jan Hoppe II',19,'80455 Mafalda Point\nEast Elianetown, NM 09653-5478','Portable Power Tool Repairer','Indonesia','2020-05-04 17:37:49','2020-05-04 17:37:49',NULL),
(43,'Cameron Rosenbaum',21,'25305 Mertz Mountains Apt. 635\nEvieland, FL 29219-8613','Precision Dyer','Indonesia','2020-05-04 17:37:49','2020-05-04 17:37:49',NULL),
(44,'Jaylan Little',25,'102 Jarod Orchard Suite 072\nSouth Ottoside, CT 61497-9648','Multi-Media Artist','Indonesia','2020-05-04 17:37:50','2020-05-04 17:37:50',NULL),
(45,'Intan Siti Nuraini',26,'Ki. Kiaracondong No. 361, Sorong 82354, Riau','in','Indonesia','2020-05-04 17:39:18','2020-05-04 17:39:18',NULL),
(46,'Taufik Pangestu',17,'Jln. Hang No. 164, Tomohon 21411, KalTim','at','Indonesia','2020-05-04 17:39:32','2020-05-04 17:39:32',NULL),
(47,'Cakrabirawa Prabowo',26,'Dk. Casablanca No. 51, Kediri 75175, KalUt','aut','Indonesia','2020-05-04 17:39:32','2020-05-04 17:39:32',NULL),
(48,'Edison Mustofa Nugroho',28,'Psr. Sentot Alibasa No. 816, Sawahlunto 53961, KalBar','perspiciatis','Indonesia','2020-05-04 17:39:33','2020-05-04 17:39:33',NULL),
(49,'Gaman Wira Waluyo',25,'Ki. Raden No. 278, Bontang 49668, Aceh','illum','Indonesia','2020-05-04 17:39:34','2020-05-04 17:39:34',NULL),
(50,'Jagaraga Irawan',25,'Ki. Rajawali No. 504, Administrasi Jakarta Timur 85961, Bali','sit','Indonesia','2020-05-04 17:39:34','2020-05-04 17:39:34',NULL),
(51,'Taufik Danang Siregar',22,'Ki. Moch. Ramdan No. 219, Singkawang 76450, Maluku','quam','Indonesia','2020-05-04 17:39:35','2020-05-04 17:39:35',NULL),
(52,'Umaya Saptono',25,'Jr. Baik No. 720, Banjarmasin 53644, Gorontalo','et','Indonesia','2020-05-04 17:39:36','2020-05-04 17:39:36',NULL),
(53,'Belinda Nasyidah',28,'Kpg. Umalas No. 616, Langsa 32238, JaTeng','porro','Indonesia','2020-05-04 17:39:36','2020-05-04 17:39:36',NULL),
(54,'Gandewa Suryono',20,'Jln. Agus Salim No. 863, Tanjung Pinang 14172, KalTim','iusto','Indonesia','2020-05-04 17:39:37','2020-05-04 17:39:37',NULL),
(55,'Pranawa Budiman',23,'Dk. Diponegoro No. 713, Batam 15748, JaTeng','est','Indonesia','2020-05-04 17:39:38','2020-05-04 17:39:38',NULL),
(56,'Karna Dacin Mandala S.T.',30,'Jln. Laswi No. 765, Bontang 15506, Maluku','cum','Indonesia','2020-05-04 17:39:38','2020-05-04 17:39:38',NULL),
(57,'Ihsan Estiono Nainggolan',28,'Ki. Veteran No. 848, Gunungsitoli 54590, Jambi','voluptatem','Indonesia','2020-05-04 17:39:39','2020-05-04 17:39:39',NULL),
(58,'Novi Nasyidah',27,'Gg. Banda No. 132, Tidore Kepulauan 17267, SulSel','consequatur','Indonesia','2020-05-04 17:39:40','2020-05-04 17:39:40',NULL),
(59,'Bakti Gandi Sirait M.Farm',22,'Gg. Babadak No. 303, Kotamobagu 92014, Jambi','consequuntur','Indonesia','2020-05-04 17:39:41','2020-05-04 17:39:41',NULL),
(60,'Darsirah Dabukke M.M.',17,'Ds. Abang No. 310, Semarang 49049, SulUt','ab','Indonesia','2020-05-04 17:39:41','2020-05-04 17:39:41',NULL),
(61,'Darmaji Thamrin',20,'Dk. Honggowongso No. 924, Semarang 58508, Lampung','corporis','Indonesia','2020-05-04 17:39:42','2020-05-04 17:39:42',NULL),
(62,'Uli Hasanah',24,'Psr. K.H. Maskur No. 547, Palu 20613, SumSel','at','Indonesia','2020-05-04 17:39:43','2020-05-04 17:39:43',NULL),
(63,'Karya Sirait',24,'Psr. Wahid No. 403, Samarinda 83049, Bengkulu','aliquid','Indonesia','2020-05-04 17:39:43','2020-05-04 17:39:43',NULL),
(64,'Nasab Wardaya Gunawan S.Sos',28,'Gg. Bazuka Raya No. 427, Pontianak 21268, DIY','illum','Indonesia','2020-05-04 17:39:44','2020-05-04 17:39:44',NULL),
(65,'Kemba Sihombing',29,'Jr. Suprapto No. 17, Sibolga 67951, KalTeng','omnis','Indonesia','2020-05-04 17:39:45','2020-05-04 17:39:45',NULL),
(66,'Tania Winarsih',21,'Kpg. Moch. Yamin No. 351, Manado 96526, Banten','totam','Indonesia','2020-05-04 17:39:45','2020-05-04 17:39:45',NULL),
(67,'Devi Yuliarti',20,'Ki. Industri No. 994, Ambon 62469, Banten','saepe','Indonesia','2020-05-04 17:39:46','2020-05-04 17:39:46',NULL),
(68,'Kardi Hardiansyah S.E.I',23,'Gg. Dago No. 132, Kediri 39873, Banten','eligendi','Indonesia','2020-05-04 17:39:47','2020-05-04 17:39:47',NULL),
(69,'Kurnia Kusumo',20,'Dk. Labu No. 825, Gunungsitoli 45556, Riau','rerum','Indonesia','2020-05-04 17:39:47','2020-05-04 17:39:47',NULL),
(70,'Farah Vicky Winarsih',26,'Gg. Diponegoro No. 284, Jayapura 95644, JaBar','dolorum','Indonesia','2020-05-04 17:39:48','2020-05-04 17:39:48',NULL),
(71,'Raden Prayoga',29,'Gg. Bambu No. 529, Palangka Raya 22802, SulTeng','est','Indonesia','2020-05-04 17:39:49','2020-05-04 17:39:49',NULL),
(72,'Najam Suwarno',18,'Jln. Bazuka Raya No. 42, Langsa 67025, SumUt','vitae','Indonesia','2020-05-04 17:39:49','2020-05-04 17:39:49',NULL),
(73,'Pranawa Pradipta',30,'Jr. Baik No. 754, Serang 71211, KalTeng','est','Indonesia','2020-05-04 17:39:50','2020-05-04 17:39:50',NULL),
(74,'Ratna Wulandari',21,'Ds. Yos No. 811, Tangerang 93476, JaBar','ut','Indonesia','2020-05-04 17:39:51','2020-05-04 17:39:51',NULL),
(75,'Kenzie Simanjuntak S.E.',25,'Psr. Otto No. 398, Bogor 96834, Banten','aperiam','Indonesia','2020-05-04 17:39:52','2020-05-04 17:39:52',NULL),
(76,'Novi Hastuti',26,'Gg. Acordion No. 411, Palembang 21625, Gorontalo','incidunt','Indonesia','2020-05-04 17:39:52','2020-05-04 17:39:52',NULL),
(77,'Malika Astuti',23,'Psr. Ters. Jakarta No. 479, Pematangsiantar 96949, Riau','et','Indonesia','2020-05-04 17:39:53','2020-05-04 17:39:53',NULL),
(78,'Yance Ciaobella Wahyuni M.Ak',19,'Dk. Pacuan Kuda No. 149, Tomohon 11927, KepR','qui','Indonesia','2020-05-04 17:39:54','2020-05-04 17:39:54',NULL),
(79,'Icha Safina Winarsih S.T.',29,'Ds. Lembong No. 624, Serang 29504, Maluku','perspiciatis','Indonesia','2020-05-04 17:39:54','2020-05-04 17:39:54',NULL),
(80,'Kezia Rina Pudjiastuti',19,'Dk. Bata Putih No. 618, Pangkal Pinang 59421, SulTra','sint','Indonesia','2020-05-04 17:39:55','2020-05-04 17:39:55',NULL),
(81,'Indah Pertiwi M.M.',30,'Psr. Bank Dagang Negara No. 208, Administrasi Jakarta Barat 91932, BaBel','rem','Indonesia','2020-05-04 17:39:56','2020-05-04 17:39:56',NULL),
(82,'Kunthara Siregar S.H.',27,'Ds. Karel S. Tubun No. 681, Medan 44034, SumUt','porro','Indonesia','2020-05-04 17:39:56','2020-05-04 17:39:56',NULL),
(83,'Zulfa Usada',28,'Gg. Lumban Tobing No. 135, Tanjung Pinang 51630, DKI','modi','Indonesia','2020-05-04 17:39:57','2020-05-04 17:39:57',NULL),
(84,'Mila Novitasari M.Farm',30,'Ds. Babadak No. 97, Tegal 49790, DIY','illo','Indonesia','2020-05-04 17:39:58','2020-05-04 17:39:58',NULL),
(85,'Aisyah Iriana Wastuti',23,'Ki. Baik No. 709, Bekasi 99862, DKI','sit','Indonesia','2020-05-04 17:39:58','2020-05-04 17:39:58',NULL),
(86,'Daniswara Putra M.M.',22,'Gg. Pattimura No. 418, Batam 57916, Aceh','dolores','Indonesia','2020-05-04 17:39:59','2020-05-04 17:39:59',NULL),
(87,'Arsipatra Mustika Samosir S.Farm',22,'Ds. Laksamana No. 667, Banjarbaru 11277, NTT','rerum','Indonesia','2020-05-04 17:40:00','2020-05-04 17:40:00',NULL),
(88,'Kamal Dodo Nashiruddin S.Farm',17,'Ki. Baranang No. 136, Sorong 26214, SumSel','sit','Indonesia','2020-05-04 17:40:00','2020-05-04 17:40:00',NULL),
(89,'Juli Nurul Rahimah',26,'Psr. Bawal No. 48, Padang 98843, SumSel','alias','Indonesia','2020-05-04 17:40:01','2020-05-04 17:40:01',NULL),
(90,'Chelsea Melani',17,'Jln. Thamrin No. 808, Sabang 22826, Aceh','aut','Indonesia','2020-05-04 17:40:02','2020-05-04 17:40:02',NULL),
(91,'Maya Laksmiwati',19,'Dk. Jend. Sudirman No. 845, Langsa 29027, SulTra','culpa','Indonesia','2020-05-04 17:40:03','2020-05-04 17:40:03',NULL),
(92,'Kiandra Halimah',17,'Ki. Adisumarmo No. 615, Banjar 45703, KalBar','ducimus','Indonesia','2020-05-04 17:40:03','2020-05-04 17:40:03',NULL),
(93,'Uchita Palastri',23,'Dk. Dago No. 34, Pekalongan 95245, NTT','beatae','Indonesia','2020-05-04 17:40:04','2020-05-04 17:40:04',NULL),
(94,'Ella Hariyah',27,'Ki. K.H. Maskur No. 921, Palembang 93991, KalBar','ducimus','Indonesia','2020-05-04 17:40:05','2020-05-04 17:48:23','2020-05-04 17:48:23'),
(95,'Laksana Putra',20,'Jln Raya Sesetan Gang Gumuk Sari No. 99 C','Welder and Cutter','Laos','2020-05-04 18:21:39','2020-05-04 18:21:39',NULL),
(96,'Midtest',15,'TI Unud Udayana','IT Analyst 2','Brunei Darussalam','2020-05-07 16:16:15','2020-05-07 16:17:12',NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
