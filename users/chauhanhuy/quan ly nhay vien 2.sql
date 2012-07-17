-- phpMyAdmin SQL Dump
-- version 3.1.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 16, 2012 at 10:04 PM
-- Server version: 5.1.32
-- PHP Version: 5.2.9-1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quanlynhanvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `phancong`
--

CREATE TABLE IF NOT EXISTS `phancong` (
  `ma_nvien` int(11) NOT NULL DEFAULT '0',
  `soda` int(11) NOT NULL DEFAULT '0',
  `thoigian` date DEFAULT NULL,
  PRIMARY KEY (`ma_nvien`,`soda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phancong`
--

INSERT INTO `phancong` (`ma_nvien`, `soda`, `thoigian`) VALUES
(123123456, 2, '0000-00-00'),
(123123456, 40, '0000-00-00'),
(123456789, 40, '0000-00-00'),
(147852369, 40, '0000-00-00'),
(333445555, 2, '0000-00-00'),
(333445555, 40, '0000-00-00'),
(666884444, 40, '0000-00-00'),
(888665555, 2, '0000-00-00'),
(987654321, 40, '0000-00-00'),
(987987987, 40, '0000-00-00'),
(999887777, 40, '0000-00-00');
