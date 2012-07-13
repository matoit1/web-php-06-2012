-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 13, 2012 at 11:22 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `qldeanct`
--

-- --------------------------------------------------------

--
-- Table structure for table `dean`
--

CREATE TABLE IF NOT EXISTS `dean` (
  `TENDA` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MADA` tinyint(4) NOT NULL DEFAULT '0',
  `DDIEM_DA` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHONG` tinyint(4) NOT NULL,
  PRIMARY KEY (`MADA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dean`
--

INSERT INTO `dean` (`TENDA`, `MADA`, `DDIEM_DA`, `PHONG`) VALUES
('SAN PHAM Y', 2, 'NHATRANG', 1),
('SAN PHAM Z', 3, 'TP HCM', 5),
('SAN PHAM X', 5, 'VUNG TAU', 1),
('TIN HOC HOA', 10, 'HA NOI', 4),
('HOA HOC', 40, 'BIEN HOA', 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
