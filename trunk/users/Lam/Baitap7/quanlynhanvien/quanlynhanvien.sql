-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 15, 2012 at 04:53 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quanlynhanvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `dean`
--

CREATE TABLE IF NOT EXISTS `dean` (
  `TENDEAN` varchar(20) DEFAULT NULL,
  `MA_DA` int(11) NOT NULL DEFAULT '0',
  `DIADIEM_DA` varchar(50) DEFAULT NULL,
  `PHONG` int(11) DEFAULT NULL,
  PRIMARY KEY (`MA_DA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dean`
--

INSERT INTO `dean` (`TENDEAN`, `MA_DA`, `DIADIEM_DA`, `PHONG`) VALUES
('SANPHAMY', 2, 'NHATRANG', 1),
('SANPHAMZ', 3, 'TPHOCHIMINH', 5),
('SANPHAMX', 5, 'VUNGTAU', 1),
('TINHOCHOA', 10, 'HANOI', 4),
('HOAHOC', 40, 'BIENHOA', 5);

-- --------------------------------------------------------

--
-- Table structure for table `diadiem_phg`
--

CREATE TABLE IF NOT EXISTS `diadiem_phg` (
  `MAPHG` int(11) NOT NULL DEFAULT '0',
  `ĐỊAĐIỂM` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`MAPHG`,`ĐỊAĐIỂM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diadiem_phg`
--

INSERT INTO `diadiem_phg` (`MAPHG`, `ĐỊAĐIỂM`) VALUES
(1, 'VUNGTAU'),
(2, 'NHATRANG'),
(2, 'TPHCM'),
(4, 'TPHCM'),
(5, 'HANOI'),
(5, 'TPHCM');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE IF NOT EXISTS `nhanvien` (
  `HONV` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TENLOT` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TENNV` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MANV` int(11) NOT NULL DEFAULT '0',
  `NGSINH` date DEFAULT NULL,
  `DCHI` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHAI` int(11) DEFAULT NULL,
  `LUONG` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MA_SQL` int(11) DEFAULT NULL,
  `PHONG` int(11) DEFAULT NULL,
  PRIMARY KEY (`MANV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`HONV`, `TENLOT`, `TENNV`, `MANV`, `NGSINH`, `DCHI`, `PHAI`, `LUONG`, `MA_SQL`, `PHONG`) VALUES
('CAO', 'SI', 'KI', 123123456, '1986-08-09', '123LELOI,Q1,TPHCM', 0, '15000', 123456789, 5),
('DINH', 'BA', 'TIEN', 123456789, '1955-01-09', '731TRANHUNGDAOQ1TPHCM', 0, '30000', 123456789, 5),
('TRUONG', 'LE', 'DOAN', 147852369, '1986-05-15', '22/4LEVATHOF11QGOVAPTPHCM', 0, '16500', 147852369, 1),
('NGUYEN', 'THANH', 'TUNG', 333445555, '1945-12-08', '638-NGUYENVANCU', 0, '40000', 123456789, 5),
('LE', 'HUYNH', 'DUC', 666884444, '1986-06-01', '126NGUYENVAMCU,TPHCM', 0, '27000', 666884444, 1),
('VUONG', 'NGOC', 'QUYEN', 888665555, '1965-09-15', '414 NO TRANG LONG,Q BINHTNAH TPHCM', 0, '29400', 999887777, 4),
('LE', 'THI', 'NHAN', 987654321, '1931-06-20', '291HOVANHUEQPHUNHUAN', 0, '43000', 123456789, 5),
('VO', 'DUC', 'MINH', 987987987, '1985-09-16', '414NOTRANGLONGQBINHTHANH', 0, '30000', 123456789, 5),
('BUI', 'THUY', 'VU', 999887777, '1958-07-19', '332NGUYENTHAIHOCQ1TPHCM', 0, '25000', 123456789, 4);

-- --------------------------------------------------------

--
-- Table structure for table `phancong`
--

CREATE TABLE IF NOT EXISTS `phancong` (
  `Ma_NVien` int(11) NOT NULL DEFAULT '0',
  `SoDA` int(11) NOT NULL DEFAULT '0',
  `Thoigian` int(11) DEFAULT NULL,
  PRIMARY KEY (`Ma_NVien`,`SoDA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phancong`
--

INSERT INTO `phancong` (`Ma_NVien`, `SoDA`, `Thoigian`) VALUES
(123123456, 2, 1),
(123123456, 40, 2),
(123456789, 40, 3),
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
  `TEN_PHG` varchar(20) DEFAULT NULL,
  `MA_PHG` int(11) NOT NULL DEFAULT '0',
  `TR_PHG` int(11) DEFAULT NULL,
  `NG_NHANCHUC` date DEFAULT NULL,
  PRIMARY KEY (`MA_PHG`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phongban`
--

INSERT INTO `phongban` (`TEN_PHG`, `MA_PHG`, `TR_PHG`, `NG_NHANCHUC`) VALUES
('QUANLY', 1, 666884444, '1971-06-19'),
('TOCHUC', 2, 987987987, '2001-01-15'),
('DIEUHANH', 4, 123456789, '1985-01-01'),
('NGHIENCUU', 5, 333445555, '1978-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `thannhan`
--

CREATE TABLE IF NOT EXISTS `thannhan` (
  `Ma_nvien` int(11) NOT NULL DEFAULT '0',
  `Tentn` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phai` int(11) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `Quanhe` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Ma_nvien`,`Tentn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thannhan`
--

INSERT INTO `thannhan` (`Ma_nvien`, `Tentn`, `phai`, `ngaysinh`, `Quanhe`) VALUES
(333445555, 'ChauLong', 0, '2005-01-02', 'Chong'),
(333445555, 'Khang', 0, '1973-10-25', 'ConTrai'),
(333445555, 'NgocPhi', 0, '1976-04-05', 'ConGai'),
(987654321, 'Dang', 0, '1932-02-29', 'Vochong'),
(999887777, 'Toan', 0, '1986-01-02', 'Chong');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
