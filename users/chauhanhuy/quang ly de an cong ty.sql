-- phpMyAdmin SQL Dump
-- version 3.1.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 13, 2012 at 05:47 AM
-- Server version: 5.1.32
-- PHP Version: 5.2.9-1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quang ly de an cong ty`
--

-- --------------------------------------------------------

--
-- Table structure for table `ddiadiem_phg`
--

CREATE TABLE IF NOT EXISTS `ddiadiem_phg` (
  `MAPHG` int(11) NOT NULL AUTO_INCREMENT,
  `DIADIEM` varchar(50) NOT NULL,
  PRIMARY KEY (`MAPHG`,`DIADIEM`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `ddiadiem_phg`
--

INSERT INTO `ddiadiem_phg` (`MAPHG`, `DIADIEM`) VALUES
(1, 'VUNG TAU'),
(2, 'NHA TRANG'),
(2, 'TP HCM'),
(4, 'TP HCM'),
(5, 'HA NOI'),
(5, 'TP HCM');

-- --------------------------------------------------------

--
-- Table structure for table `dean`
--

CREATE TABLE IF NOT EXISTS `dean` (
  `TENDA` varchar(100) NOT NULL,
  `MADA` int(11) NOT NULL AUTO_INCREMENT,
  `DDIEM_DA` varchar(50) NOT NULL,
  `PHONG` int(11) NOT NULL,
  PRIMARY KEY (`MADA`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `dean`
--

INSERT INTO `dean` (`TENDA`, `MADA`, `DDIEM_DA`, `PHONG`) VALUES
('SAN PHAM Y', 2, 'NHA TRANG', 1),
('SAN PHAM Z', 3, 'TP HCM', 5),
('SAM PHAM X', 5, 'VUNG TAU ', 1),
('TIN HOC HOA', 10, 'HA NOI', 4),
('HOA HOC', 40, 'BIEN HOA ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE IF NOT EXISTS `nhanvien` (
  `HONV` varchar(50) NOT NULL,
  `TENLOT` varchar(3) NOT NULL,
  `TENNV` varchar(10) NOT NULL,
  `MANV` int(11) NOT NULL AUTO_INCREMENT,
  `NGSINH` date NOT NULL,
  `DCHI` varchar(50) NOT NULL,
  `PHAI` varchar(5) NOT NULL,
  `LUONG` int(11) NOT NULL,
  `MA_NQL` int(11) NOT NULL,
  `PHG` int(11) NOT NULL,
  PRIMARY KEY (`MANV`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2147483648 ;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`HONV`, `TENLOT`, `TENNV`, `MANV`, `NGSINH`, `DCHI`, `PHAI`, `LUONG`, `MA_NQL`, `PHG`) VALUES
('CAO', 'SI', 'KI', 123123456, '1986-08-09', '123 LELOI Q1TP HCM', 'NAM', 15000, 123456789, 5),
('DINH', 'BA', 'TIEN', 123456789, '1955-01-09', '731 TRANHUNGDAO Q1 TPHCM', 'NAM', 30000, 123456789, 5),
('TRUONG', 'LE', 'DOAN', 147852369, '1986-05-15', '22/12/2 LEVANTHO F11 GOVAP', 'NU', 16500, 147852369, 1),
('NGUYEN', 'THA', 'TUNG', 333445555, '1945-12-08', '638 NGUYEN VAN CU Q5 TPHCM', 'NAM', 40000, 123456789, 5),
('LE', 'HUY', 'DUC', 666884444, '1986-06-01', '126 NGUYEN VAN CU Q5 TPHCM', 'NAM', 27000, 66884444, 1),
('VUONG', 'NGO', 'QUYEN', 888665555, '1965-09-15', '414 NO TRANG LONG QBINH THANH TPHCM', 'NAM', 29400, 999887777, 4),
('LE', 'THI', 'NHAN', 987654321, '1931-06-20', '291 HO VAN HUE Q PHU NHAN TPHCM', 'NU', 43000, 987654321, 5),
('VO', 'DUC', 'MINH', 987987987, '1985-09-16', '414 NO TRANG LONG BINH THANH TPHCM', 'NAM', 30000, 123456789, 5),
('BUI', 'THU', 'VU', 2147483647, '1958-07-19', '332 NGUYEN THAI HOC Q1 TPHCM', 'NAM', 25000, 123456789, 4);

-- --------------------------------------------------------

--
-- Table structure for table `phancong`
--

CREATE TABLE IF NOT EXISTS `phancong` (
  `MA_NVIEN` int(11) NOT NULL,
  `SODA` int(11) NOT NULL AUTO_INCREMENT,
  `THOIGIAN` int(11) NOT NULL,
  PRIMARY KEY (`MA_NVIEN`,`SODA`,`THOIGIAN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phancong`
--

INSERT INTO `phancong` (`MA_NVIEN`, `SODA`, `THOIGIAN`) VALUES
(123123456, 2, 1),
(123123456, 40, 2),
(123456789, 40, 2),
(147852369, 40, 4),
(333445555, 2, 5),
(333445555, 40, 6),
(666884444, 40, 7),
(888665555, 2, 8),
(987654321, 40, 9),
(987987987, 40, 10),
(999887777, 40, 11);

-- --------------------------------------------------------

--
-- Table structure for table `phongban`
--

CREATE TABLE IF NOT EXISTS `phongban` (
  `TENPHG` varchar(10) NOT NULL,
  `MAPHG` int(11) NOT NULL AUTO_INCREMENT,
  `TRPHG` int(11) NOT NULL,
  `NG_NHANCHUC` date NOT NULL,
  PRIMARY KEY (`MAPHG`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `phongban`
--

INSERT INTO `phongban` (`TENPHG`, `MAPHG`, `TRPHG`, `NG_NHANCHUC`) VALUES
('quan ly', 1, 666884444, '1971-06-19'),
('CHO CHUC', 2, 987987987, '2001-01-15'),
('DEIU HANH', 4, 123456789, '1985-01-01'),
('NGHIEN CUU', 5, 333445555, '1978-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `thannhan`
--

CREATE TABLE IF NOT EXISTS `thannhan` (
  `MA_NVIEN` int(11) NOT NULL AUTO_INCREMENT,
  `TENTN` varchar(10) NOT NULL,
  `PHAI` varchar(3) NOT NULL,
  `NGSINH` date NOT NULL,
  `QUANHE` varchar(10) NOT NULL,
  PRIMARY KEY (`MA_NVIEN`,`TENTN`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=999887778 ;

--
-- Dumping data for table `thannhan`
--

INSERT INTO `thannhan` (`MA_NVIEN`, `TENTN`, `PHAI`, `NGSINH`, `QUANHE`) VALUES
(333445555, 'CHAU LONG', 'NAM', '2005-01-02', 'CHONG'),
(333445555, 'KHANG', 'NAM', '1973-10-25', 'CON TRAI'),
(333445555, 'NGOC PHI', 'NU', '1976-04-05', 'CON GAI'),
(987654321, 'DANG', 'NAM', '1932-02-29', 'VO CHONG'),
(999887777, 'TOAN', 'NAM', '1986-01-02', 'CHONG');
