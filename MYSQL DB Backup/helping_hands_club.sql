-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 26, 2021 at 10:39 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helping_hands_club`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `C_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `TP` int(11) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `Message` varchar(255) NOT NULL,
  `Date_Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`C_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`C_Id`, `Name`, `Email`, `TP`, `Country`, `Message`, `Date_Time`) VALUES
(1, 'Dias', 'Dias@gmail.com', 768211360, 'Sri Lanka', 'Hello....I want to join with your club.', '2021-08-25 19:55:13'),
(2, 'Ovin', 'Ovin@gmail.com', 778986123, 'Sri Lanka', 'Hello......!', '2021-08-26 15:16:15'),
(3, 'Udana', 'Udana@gmail.com', 768923789, 'Sri Lankan', 'Hello.... I want your help.', '2021-08-26 16:00:36'),
(4, 'Dimalsha', 'Dimalsha@outlook.com', 768923741, 'Sri Lanka', 'Hello......!', '2021-08-26 16:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

DROP TABLE IF EXISTS `donate`;
CREATE TABLE IF NOT EXISTS `donate` (
  `D_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Amount` varchar(20) NOT NULL,
  `Date_Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`D_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donate`
--

INSERT INTO `donate` (`D_ID`, `Name`, `Email`, `Amount`, `Date_Time`) VALUES
(2, 'Dias', 'Dias@gmail.com', '100USD', '2021-08-25 19:41:42'),
(8, 'Ovin', 'Ovin@gmai.com', '100USD', '2021-08-26 15:21:56'),
(9, 'Udana', 'Udana@gmail.com', '200USD', '2021-08-26 15:55:54'),
(10, 'Pasindu', 'Pasindu@yahoo.com', '500USD', '2021-08-26 16:01:44'),
(11, 'Dimalsha', 'Dimalsha@outlook.com', '100USD', '2021-08-26 16:07:59');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
