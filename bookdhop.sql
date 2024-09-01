/*
SQLyog Enterprise - MySQL GUI v8.02 RC
MySQL - 5.5.5-10.4.17-MariaDB : Database - bookshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`bookshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `bookshop`;

/*Table structure for table `book_orders` */

DROP TABLE IF EXISTS `book_orders`;

CREATE TABLE `book_orders` (
  `orderid` int(100) DEFAULT NULL,
  `bookid` int(100) DEFAULT NULL,
  `cartid` int(100) DEFAULT NULL,
  `amount` int(100) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `del_date` date DEFAULT NULL,
  `del_status` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `book_orders` */

insert  into `book_orders`(`orderid`,`bookid`,`cartid`,`amount`,`order_date`,`del_date`,`del_status`,`email`) values (1,1002,13,300,'2024-07-20','2024-07-20',1,'pranjal@gmail.com'),(2,1002,13,300,'2024-07-20','2024-07-20',1,'pranjal@gmail.com'),(3,1001,16,550,'2024-07-20','2024-07-24',1,'nikhar@gmail.com'),(4,1002,17,300,'2024-07-20',NULL,0,'nikhar@gmail.com'),(5,1002,17,300,'2024-07-20','2024-07-20',1,'nikhar@gmail.com'),(6,1003,3,300,'2024-07-24','2024-07-24',1,'pranjal@gmail.com'),(7,1001,28,500,'2024-07-26',NULL,0,'pranjal@gmail.com'),(8,1001,27,500,'2024-07-26',NULL,0,'pranjal@gmail.com'),(9,1001,27,500,'2024-07-26',NULL,0,'pranjal@gmail.com'),(10,1001,27,500,'2024-07-26',NULL,0,'pranjal@gmail.com'),(11,1001,4,500,'2024-07-26',NULL,0,'pranjal@gmail.com'),(12,1001,4,500,'2024-07-26',NULL,0,'pranjal@gmail.com'),(13,1001,5,500,'2024-07-26',NULL,0,'pranjal@gmail.com'),(14,1001,6,500,'2024-07-26',NULL,0,'pranjal@gmail.com'),(15,1001,7,500,'2024-07-26',NULL,0,'pranjal@gmail.com'),(16,1001,25,500,'2024-07-26',NULL,0,'pranjal@gmail.com'),(17,1001,24,500,'2024-07-26','2024-08-11',1,'pranjal@gmail.com'),(18,1001,10,500,'2024-08-30',NULL,0,'pranjal@gmail.com');

/*Table structure for table `bookdata` */

DROP TABLE IF EXISTS `bookdata`;

CREATE TABLE `bookdata` (
  `book_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `isbn` varchar(100) DEFAULT NULL,
  `unit_price` int(100) DEFAULT NULL,
  `book_desc` varchar(100) DEFAULT NULL,
  `qty` int(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8mb4;

/*Data for the table `bookdata` */

insert  into `bookdata`(`book_id`,`name`,`author`,`subject`,`publisher`,`isbn`,`unit_price`,`book_desc`,`qty`,`photo`) values (1001,'dsa master in java','rajpal yadav','datastructure','arihant publications','29t7u',500,'advance dsa problems for professional coders',10,'1001_download.jpg'),(1002,'dsa madeeasy','karun ','dsa','rk','232343n',450,'dsa for beginners',20,'1002_download (1).jpg'),(1003,'let us c','mark john','c','rk','faff',300,'c for begineers',10,'1003_download (3).jpg'),(1004,'javascript for beginners','mk pandey','javascript','rm gandhi','fhs949',400,'beginners book',10,'1004_download (4).jpg'),(1005,'javascript for beginners','mk pandey','javascript','rm gandhi','fhs949',400,'beginners book',10,'1005_images (1).jpg');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `cartid` int(100) NOT NULL,
  `bookid` int(100) NOT NULL,
  `booking_date` date DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cartid`,`bookid`),
  UNIQUE KEY `cartid` (`cartid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `cart` */

insert  into `cart`(`cartid`,`bookid`,`booking_date`,`order_status`,`email`) values (1,2,'2024-07-19',0,'pranjal@gmail.com'),(2,3,'2024-07-19',0,'pranjal@gmail.com'),(3,1003,'2024-07-19',1,'pranjal@gmail.com'),(4,1001,'2024-07-19',1,'pranjal@gmail.com'),(5,1001,'2024-07-19',1,'pranjal@gmail.com'),(6,1001,'2024-07-19',1,'pranjal@gmail.com'),(7,1001,'2024-07-19',1,'pranjal@gmail.com'),(8,1003,'2024-07-19',0,'pranjal@gmail.com'),(9,1001,'2024-07-19',0,'pranjal@gmail.com'),(10,1001,'2024-07-19',1,'pranjal@gmail.com'),(11,1002,'2024-07-19',0,'pranjal@gmail.com'),(12,1001,'2024-07-19',0,'pranjal@gmail.com'),(13,1002,'2024-07-19',1,'pranjal@gmail.com'),(14,1002,'2024-07-20',0,'pranjal@gmail.com'),(15,1001,'2024-07-20',0,'pranjal@gmail.com'),(16,1001,'2024-07-20',1,'nikhar@gmail.com'),(17,1002,'2024-07-20',1,'nikhar@gmail.com'),(18,1001,'2024-07-20',0,'nikhar@gmail.com'),(19,1001,'2024-07-20',0,'nikhar@gmail.com'),(20,1001,'2024-07-20',0,'nikhar@gmail.com'),(21,1001,'2024-07-20',0,'nikhar@gmail.com'),(22,1001,'2024-07-20',0,'nikhar@gmail.com'),(23,1002,'2024-07-20',0,'nikhar@gmail.com'),(24,1001,'2024-07-24',1,'pranjal@gmail.com'),(25,1001,'2024-07-26',1,'pranjal@gmail.com'),(26,1001,'2024-07-26',0,'pranjal@gmail.com'),(27,1001,'2024-07-26',1,'pranjal@gmail.com'),(28,1001,'2024-07-26',1,'pranjal@gmail.com');

/*Table structure for table `logindata` */

DROP TABLE IF EXISTS `logindata`;

CREATE TABLE `logindata` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `usertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `logindata` */

insert  into `logindata`(`email`,`password`,`usertype`) values ('nikhar@gmail.com','555','user'),('p@gmail.com','541','admin'),('pranjal@gmail.com','541','user'),('sahil@gmail.com','555','user');

/*Table structure for table `userdata` */

DROP TABLE IF EXISTS `userdata`;

CREATE TABLE `userdata` (
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pin` int(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `userdata` */

insert  into `userdata`(`name`,`address`,`city`,`state`,`pin`,`mobile`,`email`) values ('nikhar','newcity','udaipur','rajasthan',324005,NULL,'nikhar@gmail.com'),('pranjal','aerodrome','kota','rajasthan',324005,'2147483647','pranjal@gmail.com'),('sahil','oldcity','pali','rajasthan',324005,'8696549150','sahil@gmail.com');

/*Table structure for table `my_cart` */

DROP TABLE IF EXISTS `my_cart`;

/*!50001 DROP VIEW IF EXISTS `my_cart` */;
/*!50001 DROP TABLE IF EXISTS `my_cart` */;

/*!50001 CREATE TABLE `my_cart` (
  `cartid` int(100) NOT NULL,
  `bookid` int(100) NOT NULL,
  `booking_date` date DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `book_id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `isbn` varchar(100) DEFAULT NULL,
  `unit_price` int(100) DEFAULT NULL,
  `book_desc` varchar(100) DEFAULT NULL,
  `qty` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 */;

/*Table structure for table `my_orders` */

DROP TABLE IF EXISTS `my_orders`;

/*!50001 DROP VIEW IF EXISTS `my_orders` */;
/*!50001 DROP TABLE IF EXISTS `my_orders` */;

/*!50001 CREATE TABLE `my_orders` (
  `author` varchar(100) DEFAULT NULL,
  `book_desc` varchar(100) DEFAULT NULL,
  `book_id` int(100) NOT NULL,
  `isbn` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `unit_price` int(100) DEFAULT NULL,
  `orderid` int(100) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `del_date` date DEFAULT NULL,
  `del_status` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 */;

/*View structure for view my_cart */

/*!50001 DROP TABLE IF EXISTS `my_cart` */;
/*!50001 DROP VIEW IF EXISTS `my_cart` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `my_cart` AS (select `cart`.`cartid` AS `cartid`,`cart`.`bookid` AS `bookid`,`cart`.`booking_date` AS `booking_date`,`cart`.`order_status` AS `order_status`,`cart`.`email` AS `email`,`bookdata`.`book_id` AS `book_id`,`bookdata`.`name` AS `name`,`bookdata`.`author` AS `author`,`bookdata`.`subject` AS `subject`,`bookdata`.`publisher` AS `publisher`,`bookdata`.`isbn` AS `isbn`,`bookdata`.`unit_price` AS `unit_price`,`bookdata`.`book_desc` AS `book_desc`,`bookdata`.`qty` AS `qty` from (`cart` join `bookdata` on(`cart`.`bookid` = `bookdata`.`book_id`))) */;

/*View structure for view my_orders */

/*!50001 DROP TABLE IF EXISTS `my_orders` */;
/*!50001 DROP VIEW IF EXISTS `my_orders` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `my_orders` AS (select `bookdata`.`author` AS `author`,`bookdata`.`book_desc` AS `book_desc`,`bookdata`.`book_id` AS `book_id`,`bookdata`.`isbn` AS `isbn`,`bookdata`.`name` AS `name`,`bookdata`.`publisher` AS `publisher`,`bookdata`.`subject` AS `subject`,`bookdata`.`unit_price` AS `unit_price`,`book_orders`.`orderid` AS `orderid`,`book_orders`.`order_date` AS `order_date`,`book_orders`.`del_date` AS `del_date`,`book_orders`.`del_status` AS `del_status`,`book_orders`.`email` AS `email` from (`bookdata` join `book_orders` on(`bookdata`.`book_id` = `book_orders`.`bookid`))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
