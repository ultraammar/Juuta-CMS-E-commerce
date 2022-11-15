-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 06, 2022 at 02:17 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_juta`
--

-- --------------------------------------------------------

--
-- Table structure for table `cat_table`
--

DROP TABLE IF EXISTS `cat_table`;
CREATE TABLE IF NOT EXISTS `cat_table` (
  `cat_id` int(20) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  `time_stamp` datetime(6) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_table`
--

INSERT INTO `cat_table` (`cat_id`, `cat_name`, `time_stamp`) VALUES
(1, 'Anasr', '2015-11-05 14:29:36.000000'),
(2, 'ahamad', '2022-05-17 13:16:22.000000'),
(3, 'randomCAt', '2022-05-17 15:14:27.000000'),
(4, 'Abdullah brand', '2022-05-18 11:26:10.000000'),
(5, 'ilyascat', '2022-05-19 09:12:52.000000');

-- --------------------------------------------------------

--
-- Table structure for table `proper_shoes`
--

DROP TABLE IF EXISTS `proper_shoes`;
CREATE TABLE IF NOT EXISTS `proper_shoes` (
  `id` int(25) NOT NULL AUTO_INCREMENT,
  `shoe_id` varchar(11) DEFAULT NULL,
  `cat_id` int(23) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `shoe_name` varchar(255) NOT NULL,
  `shoe_price` double(20,2) NOT NULL,
  `shoe_description` text NOT NULL,
  `primary_img` text NOT NULL,
  `secondary_img` text,
  `discount` int(11) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `weekly_product` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proper_shoes`
--

INSERT INTO `proper_shoes` (`id`, `shoe_id`, `cat_id`, `user_type`, `shoe_name`, `shoe_price`, `shoe_description`, `primary_img`, `secondary_img`, `discount`, `rating`, `weekly_product`) VALUES
(75, 'S75', 1, 'Women', 'Brand FREE RN 2018', 250.00, 'Brand FREE RN 2018 description', '2022-06-05_03-03-16_5.jpg', '2022-06-05_03-03-16_6.jpg', 10, 3, 0),
(79, 'S79', 1, 'Women', 'Legendary coder shoes 3000', 20000.00, 'Legendary coders shoes description.', '2022-06-05_10-31-00_13.jpg', '2022-06-05_19-37-48_15.jpg', 10, 4, 1),
(77, 'S77', 2, 'Men', 'Brand FREE RN FLYKNIT', 180.00, 'Brand FREE RN FLYKNIT description', '2022-06-05_03-07-41_7.jpg', '2022-06-05_03-07-41_8.jpg', 0, 1, 1),
(78, 'S78', 3, 'Men', 'Ultraammar shoes', 230.00, 'Ultraammar shoes description', '2022-06-05_03-09-22_11.jpg', '2022-06-05_03-09-22_12.jpg', 0, 1, 0),
(84, 'S84', 5, 'Children', 'Chill-dren shoes', 120.00, 'children shoes that will be deleted soon.', '2022-06-05_19-30-48_20.jpg', '', 0, 2, NULL),
(73, 'S73', 4, 'Men', 'AIR JORDAN XI RETRO', 250.00, 'Air jordan shoes', '2022-06-05_02-58-11_1.jpg', '2022-06-05_02-58-11_2.jpg', 10, 3, NULL),
(74, 'S74', 2, 'Men', 'Brand Zoom KDX EP', 300.00, 'Brand Zoom KDX EP description', '2022-06-05_03-01-15_3.jpg', '2022-06-05_03-01-15_4.jpg', 10, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

DROP TABLE IF EXISTS `tbl_banner`;
CREATE TABLE IF NOT EXISTS `tbl_banner` (
  `banner_id` int(5) NOT NULL AUTO_INCREMENT,
  `Add_title_1` varchar(256) DEFAULT NULL,
  `Add_title_2` varchar(256) DEFAULT NULL,
  `Add_description` text,
  `primary_img` text NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`banner_id`, `Add_title_1`, `Add_title_2`, `Add_description`, `primary_img`) VALUES
(4, 'trending products 2018', 'new lookbook', 'Juta Store | Clothing & Sport Equipment ', '2022-06-05_12-57-19_home-1-02.jpg'),
(11, 'BIG SALE UPTO 20% OFF', 'NIKE BLACK', 'History Month Collection 2018 ', '2022-06-05_16-18-53_home-1-01.jpg'),
(5, 'top jacket of Juta', 'new jackets.', 'Aurora Shell Jacket Is Ready For Any Adventure. ', '2022-06-05_12-57-54_home-1-03.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'ultraammar', 'ultraammar@gmail.com', 'ammar'),
(2, 'AdminAmmar', 'admin@test.com', 'ammar');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
