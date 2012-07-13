-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 13, 2012 at 02:26 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ql_deancongty`
--

-- --------------------------------------------------------

--
-- Table structure for table `dean`
--

CREATE TABLE IF NOT EXISTS `dean` (
  `tenda` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mada` int(11) NOT NULL,
  `ddiem_da` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phong` int(11) NOT NULL,
  PRIMARY KEY (`mada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dean`
--

INSERT INTO `dean` (`tenda`, `mada`, `ddiem_da`, `phong`) VALUES
('SAN PHAM Y', 2, 'NHA TRANG', 1),
('SAN PHAM Z', 3, 'TP HCM', 5),
('SAN PHAM X', 5, 'VUNG TAU', 1),
('TIN HOC HOA', 10, 'HA NOI', 4),
('HOA HOC', 40, 'BIEN HOA', 5);

-- --------------------------------------------------------

--
-- Table structure for table `diadiem_phg`
--

CREATE TABLE IF NOT EXISTS `diadiem_phg` (
  `maphg` tinyint(4) NOT NULL,
  `diadiem` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`maphg`,`diadiem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diadiem_phg`
--

INSERT INTO `diadiem_phg` (`maphg`, `diadiem`) VALUES
(1, 'VUNG TAU'),
(2, 'NHA TRANG'),
(2, 'TP. HCM'),
(4, 'TP. HCM'),
(5, 'HA NOI'),
(5, 'TP. HCM');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE IF NOT EXISTS `nhanvien` (
  `honv` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenlot` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tennv` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `manv` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `ngsinh` date NOT NULL,
  `dchi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phai` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `luong` float NOT NULL,
  `ma_nql` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `phg` tinyint(4) NOT NULL,
  PRIMARY KEY (`manv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`honv`, `tenlot`, `tennv`, `manv`, `ngsinh`, `dchi`, `phai`, `luong`, `ma_nql`, `phg`) VALUES
('CAO', 'SI', 'KI', '123123456', '1986-08-09', '123 LE LOI - QUAN 1 - TP. HCM', 'NAM', 15000, '123456789', 5),
('DINH', 'BA ', 'TIEN', '123456789', '1955-01-09', '731 TRAN HUNG DAO - QUAN 1 - TP. HCM', 'NAM', 30000, '123456789', 5),
('TRUONG', 'LE ', 'DOAN', '147852369', '1986-05-15', '22/41/2 LE VAN THO -  PHUONG 11 - GO VAP ', 'NU', 16500, '147852369', 1),
('NGUYEN', 'THANH', 'TUNG', '333445555', '1945-12-08', '638  NGUYEN VAN CU - QUAN 5 - TP. HCM', 'NAM', 40000, '123456789', 5),
('LE', 'HUYNH', 'DUC', '666884444', '1986-06-01', '126 NGUYEN VAN CU - QUAN 5 - TP. HCM', 'NAM', 27000, '666884444', 1),
('VUONG', 'NGOC', 'QUYEN', '888665555', '1965-09-15', '414 NO TRANG  LONG - Q. BINH  THANH - TP. HCM', 'NAM', 29000, '888665555', 4),
('LE', 'THI', 'NHAN', '987654321', '1931-06-21', '291HO VAN HUE - Q. PHU NHUAN - TP. HCM', 'NU', 43000, '987654321', 5),
('VO', 'DUC', 'MINH', '987987987', '1985-09-19', '414 NO TRANG LONG - Q. BINH THANH - TP. HCM', 'NAM', 30000, '987987987', 5),
('BUI', 'THUY', 'VU', '999887777', '1958-07-19', '332 NGUYEN THAI HOC -  QUAN 1 - TP. HCM', 'NAM', 25000, '999887777', 4);

-- --------------------------------------------------------

--
-- Table structure for table `phancong`
--

CREATE TABLE IF NOT EXISTS `phancong` (
  `ma_nvien` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `soda` int(11) NOT NULL,
  `thoigian` tinyint(4) NOT NULL,
  PRIMARY KEY (`ma_nvien`,`soda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phancong`
--

INSERT INTO `phancong` (`ma_nvien`, `soda`, `thoigian`) VALUES
('123123456', 2, 1),
('123123456', 40, 2),
('123456789', 40, 3),
('147852369', 40, 4),
('333445555', 2, 5),
('333445555', 40, 6),
('666884444', 40, 7),
('888665555', 2, 8),
('987654321', 40, 9),
('987987987', 40, 10),
('999887777', 40, 11);

-- --------------------------------------------------------

--
-- Table structure for table `phongban`
--

CREATE TABLE IF NOT EXISTS `phongban` (
  `tenphg` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `maphg` tinyint(4) NOT NULL,
  `trphg` int(9) NOT NULL,
  `ng_nhanchuc` date NOT NULL,
  PRIMARY KEY (`maphg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phongban`
--

INSERT INTO `phongban` (`tenphg`, `maphg`, `trphg`, `ng_nhanchuc`) VALUES
('Quản Lý', 1, 666884444, '1971-06-19'),
('Tổ Chức', 2, 987987987, '2001-01-15'),
('Điều Hành', 4, 123456789, '1985-05-22'),
('Nghiên Cứu', 5, 333445555, '1978-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `thannhan`
--

CREATE TABLE IF NOT EXISTS `thannhan` (
  `ma_nvien` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `tentn` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `phai` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `ngsinh` date NOT NULL,
  `quanhe` char(11) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ma_nvien`,`tentn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thannhan`
--

INSERT INTO `thannhan` (`ma_nvien`, `tentn`, `phai`, `ngsinh`, `quanhe`) VALUES
('333445555', 'Châu Long', 'Nam', '2005-01-03', 'Chồng'),
('333445555', 'Khang', 'Nam', '1973-10-25', 'Con Trai'),
('333445555', 'Ngọc Phi', 'Nữ', '1976-04-05', 'Con gái'),
('987654321', 'Đăng', 'Nam', '1932-02-29', 'Vợ'),
('999887777', 'Toàn', 'Nam', '1986-01-02', 'Chồng');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
