-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 20, 2012 at 11:00 AM
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
  `tenda` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mada` int(11) NOT NULL DEFAULT '0',
  `ddiem_da` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phong` int(11) DEFAULT NULL,
  PRIMARY KEY (`mada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dean`
--

INSERT INTO `dean` (`tenda`, `mada`, `ddiem_da`, `phong`) VALUES
('San Pham Y', 2, 'Nha Trang', 1),
('San Pham Z', 3, 'TP HCM', 5),
('San Pham X', 5, 'Vung Tau', 1),
('Tin Hoc Hoa', 10, 'Hanoi', 4),
('Hoa Hoc', 40, 'BaRia', 5);

-- --------------------------------------------------------

--
-- Table structure for table `diadiem_phg`
--

CREATE TABLE IF NOT EXISTS `diadiem_phg` (
  `maphg` int(11) NOT NULL DEFAULT '0',
  `diadiem` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`maphg`,`diadiem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diadiem_phg`
--

INSERT INTO `diadiem_phg` (`maphg`, `diadiem`) VALUES
(1, 'Vungtau'),
(2, 'Nha Trang'),
(2, 'TP HCM'),
(4, 'TP HCM'),
(5, 'Hanoi'),
(5, 'TP HCM');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE IF NOT EXISTS `nhanvien` (
  `honv` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenlot` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tennv` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manv` varchar(9) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ngsinh` date DEFAULT NULL,
  `dchi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phai` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `luong` float DEFAULT NULL,
  `ma_nql` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phg` int(11) DEFAULT NULL,
  PRIMARY KEY (`manv`),
  KEY `fk_nhanvien_phongban` (`phg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`honv`, `tenlot`, `tennv`, `manv`, `ngsinh`, `dchi`, `phai`, `luong`, `ma_nql`, `phg`) VALUES
('Cao', 'Si', 'Ki', '123123456', '1986-08-09', '123 Leloi - Quan 1 - TP HCM', 'Nam', 15000, '123456789', 5),
('Dinh', 'Ba', 'Tien', '123456789', '1955-01-09', '731 Tran Hung dao - Quận 1 - TP HCM', 'Nam', 30000, '123456789', 5),
('Truong', 'Tien', 'Doan', '147852369', '1986-05-15', '22/41/1 Le Van Tho- Phuong 11 - Go Vap', 'Nu', 16500, '147852369', 1),
('Nguyen', 'Thanh', 'Tùng', '333445555', '1945-12-08', '638 Nguyen Van Cu - Quan 5 - TP HCM', 'Nam', 40000, '123456789', 5),
('Le', 'Huynh', 'Duc', '666884444', '1986-06-01', '126 Nguyen Van Cu - Quan 5 - TP HCM', 'Nam', 27000, '666884444', 1),
('Vuong', 'Ngoc', 'Quyen', '888665555', '1965-09-15', '414 No Trang Long - Quan Binh Thanh - TP HCM', 'Nam', 29400, '999887777', 4),
('le', 'Thi', 'Nhan', '987654321', '1931-06-20', '291 Ho Van Hue - Quan Phu Nhuan - TP HCM', 'Nu', 43000, '123456789', 5),
('Võo', 'Duc', 'Minh', '987987987', '1985-09-16', '414 No Trang Long - Quan Bình Thạnh - TP HCM', 'Nam', 30000, '123456789', 5),
('Bui', 'Thuy', 'Vu', '999887777', '1958-07-19', '332 Nguyen Thai Hoc - Quan 1 - TP HCM', 'Nam', 25000, '123456789', 4);

-- --------------------------------------------------------

--
-- Table structure for table `phancong`
--

CREATE TABLE IF NOT EXISTS `phancong` (
  `ma_nvien` varchar(9) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `soda` int(11) NOT NULL DEFAULT '0',
  `thoigian` date DEFAULT NULL,
  PRIMARY KEY (`ma_nvien`,`soda`),
  KEY `fk_phancong_dean` (`soda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phancong`
--

INSERT INTO `phancong` (`ma_nvien`, `soda`, `thoigian`) VALUES
('123123456', 2, '0000-00-00'),
('123123456', 40, '0000-00-00'),
('123456789', 40, '0000-00-00'),
('147852369', 40, '0000-00-00'),
('333445555', 2, '0000-00-00'),
('333445555', 40, '0000-00-00'),
('666884444', 40, '0000-00-00'),
('888665555', 2, '0000-00-00'),
('987654321', 40, '0000-00-00'),
('987987987', 40, '0000-00-00'),
('999887777', 40, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `phongban`
--

CREATE TABLE IF NOT EXISTS `phongban` (
  `tenphg` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maphg` int(11) NOT NULL DEFAULT '0',
  `trphg` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ng_nhanchuc` date DEFAULT NULL,
  PRIMARY KEY (`maphg`),
  KEY `fk_phongban_nhanvien` (`trphg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phongban`
--

INSERT INTO `phongban` (`tenphg`, `maphg`, `trphg`, `ng_nhanchuc`) VALUES
('Quản Lý', 1, '666884444', '1971-06-19'),
('Tổ Chức', 2, '987987987', '2001-01-15'),
('Điều Hành', 4, '123456789', '1985-01-01'),
('Nghiên Cứu', 5, '333445555', '1978-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `thannhan`
--

CREATE TABLE IF NOT EXISTS `thannhan` (
  `ma_nvien` varchar(9) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tentn` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phai` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngsinh` date DEFAULT NULL,
  `quanhe` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ma_nvien`,`tentn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thannhan`
--

INSERT INTO `thannhan` (`ma_nvien`, `tentn`, `phai`, `ngsinh`, `quanhe`) VALUES
('333445555', 'Chau Long', 'Nam', '2005-01-02', 'Chong'),
('333445555', 'Khang', 'Nam', '1973-10-25', 'Con Trai'),
('333445555', 'Ngoc Phi', 'Nu', '1976-04-05', 'Con Gai'),
('987654321', 'Dang', 'Nam', '1932-02-29', 'Chong'),
('999887777', 'Ton', 'Nam', '1986-01-02', 'Chong');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diadiem_phg`
--
ALTER TABLE `diadiem_phg`
  ADD CONSTRAINT `fk_phongban_ddiem_phg` FOREIGN KEY (`maphg`) REFERENCES `phongban` (`maphg`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `fk_nhanvien_phongban` FOREIGN KEY (`phg`) REFERENCES `phongban` (`maphg`);

--
-- Constraints for table `phancong`
--
ALTER TABLE `phancong`
  ADD CONSTRAINT `fk_phancong_dean` FOREIGN KEY (`soda`) REFERENCES `dean` (`mada`),
  ADD CONSTRAINT `fk_phancong_nhanvien` FOREIGN KEY (`ma_nvien`) REFERENCES `nhanvien` (`manv`);

--
-- Constraints for table `phongban`
--
ALTER TABLE `phongban`
  ADD CONSTRAINT `fk_phongban_nhanvien` FOREIGN KEY (`trphg`) REFERENCES `nhanvien` (`manv`);

--
-- Constraints for table `thannhan`
--
ALTER TABLE `thannhan`
  ADD CONSTRAINT `fk_thannhan_nhanvien` FOREIGN KEY (`ma_nvien`) REFERENCES `nhanvien` (`manv`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
