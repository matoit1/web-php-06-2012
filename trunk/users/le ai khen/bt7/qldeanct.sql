-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 13, 2012 at 12:14 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `diadiem_phg`
--

CREATE TABLE IF NOT EXISTS `diadiem_phg` (
  `MAPHG` tinyint(4) NOT NULL DEFAULT '0',
  `DIADIEM` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`MAPHG`,`DIADIEM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diadiem_phg`
--

INSERT INTO `diadiem_phg` (`MAPHG`, `DIADIEM`) VALUES
(1, 'VUNG TAU'),
(2, 'NHA TRANG'),
(2, 'TP HCM'),
(4, 'TP HCM'),
(5, 'HA NOI'),
(5, 'TP HCM');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE IF NOT EXISTS `nhanvien` (
  `HONV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TENLOT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TENNV` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MANV` int(11) NOT NULL DEFAULT '0',
  `NGSINH` date NOT NULL,
  `DCHI` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PHAI` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `LUONG` float NOT NULL,
  `MA_NQL` int(11) NOT NULL,
  `PHG` tinyint(4) NOT NULL,
  PRIMARY KEY (`MANV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`HONV`, `TENLOT`, `TENNV`, `MANV`, `NGSINH`, `DCHI`, `PHAI`, `LUONG`, `MA_NQL`, `PHG`) VALUES
('CAO', 'SI', 'KI', 123123456, '1986-08-09', '123 Le Loi Q1 TpHCM', 'Nam', 15000, 123456789, 5),
('DINH', 'BA', 'TIEN', 123456789, '1955-01-09', '731 Tran Hung Dao Q1 Tp HCM', 'Nam', 30000, 123456789, 5),
('TRUONG', 'LE', 'DOAN', 147852369, '1988-05-15', '22/41/2 Le Van Tho F11 Go Vap', 'Nu', 16500, 147852369, 1),
('NGUYEN', 'THANH', 'TUNG', 333445555, '1945-12-08', '638 Nguyen Van Cu Q5 TpHCM', 'Nam', 400000, 123456789, 5),
('LE', 'HUYNH', 'DUC', 666884444, '1986-06-01', '126 Nguyen Van Cu Q5 TpHCM', 'Nam', 27000, 666884444, 1),
('VUONG', 'NGOC', 'QUYEN', 888665555, '1965-09-15', '414 NO TRANG LONG QBINH THANH TpHCM', 'Nam', 29400, 999887777, 4),
('LE', 'THI', 'NHAN', 987654321, '1931-06-20', '291 Ho Van Hue QPhu Nhuan TpHCM', 'Nu', 43000, 123456789, 5),
('VO', 'DUC', 'MINH', 987987987, '1985-09-16', '414 NO TRANG LONG QBINH THANH TpHCM', 'Nam', 30000, 123456789, 5),
('BUI', 'THUY', 'VU', 999887777, '1958-07-19', '332 Nguyen Thai Hoc Q1 TpHCM', 'Nam', 25000, 123456789, 4);

-- --------------------------------------------------------

--
-- Table structure for table `phancong`
--

CREATE TABLE IF NOT EXISTS `phancong` (
  `MA NVIEN` int(11) NOT NULL DEFAULT '0',
  `SODA` tinyint(4) NOT NULL DEFAULT '0',
  `THOIGIAN` tinyint(4) NOT NULL,
  PRIMARY KEY (`MA NVIEN`,`SODA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phancong`
--

INSERT INTO `phancong` (`MA NVIEN`, `SODA`, `THOIGIAN`) VALUES
(33344555, 40, 6),
(123123456, 2, 1),
(123123456, 40, 2),
(123456789, 40, 3),
(147852369, 40, 4),
(333445555, 2, 5),
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
  `TENPHG` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MAPHG` tinyint(4) NOT NULL DEFAULT '0',
  `TRPHG` int(11) NOT NULL,
  `NG_NHANCHUC` date NOT NULL,
  PRIMARY KEY (`MAPHG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phongban`
--

INSERT INTO `phongban` (`TENPHG`, `MAPHG`, `TRPHG`, `NG_NHANCHUC`) VALUES
('Quản lý', 1, 666884444, '1971-06-19'),
('Tổ Chức', 2, 987987987, '2001-01-15'),
('Điều Hành', 4, 123456789, '1985-01-01'),
('Nghiên Cứu', 5, 333445555, '1987-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `thannhan`
--

CREATE TABLE IF NOT EXISTS `thannhan` (
  `MA_NVIEN` int(11) NOT NULL DEFAULT '0',
  `TENTN` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `PHAI` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `NGAYSINH` date NOT NULL,
  `QUANHE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MA_NVIEN`,`TENTN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thannhan`
--

INSERT INTO `thannhan` (`MA_NVIEN`, `TENTN`, `PHAI`, `NGAYSINH`, `QUANHE`) VALUES
(33344555, 'Ngoc Phi', 'Nu', '1976-04-05', 'CON GAI'),
(333445555, 'Chau Long', 'Nam', '2005-01-02', 'CHONG'),
(333445555, 'Khang', 'Nam', '1973-10-25', 'CON TRAI'),
(987654321, 'Dang', 'Nam', '1932-02-29', 'VO CHONG'),
(999887777, 'Toan', 'Nam', '1986-01-02', 'CHONG');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
