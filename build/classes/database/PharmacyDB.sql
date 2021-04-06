-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 05, 2021 lúc 08:22 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pharmacydb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `CustomerID` varchar(10) NOT NULL,
  `CustomerName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `CustomerAddress` varchar(50) CHARACTER SET utf8 NOT NULL,
  `CustomerPhone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `CustomerBirthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`, `CustomerAddress`, `CustomerPhone`, `CustomerBirthday`) VALUES
('CUS0000001', 'cus a', 'hp', '2423424', '1989-05-04'),
('CUS0000002', 'cus b', 'tphcm', '6535465', '1990-08-04'),
('CUS0000003', 'cus c', 'hn', '23424', '1999-10-08'),
('CUS0000004', 'cus d', 'qn', '1231949', '1997-05-04'),
('CUS0000005', 'cus e', 'dn', '94535', '1995-09-04'),
('CUS0000006', 'cus h234', 'hn', '23424234', '1999-10-26'),
('CUS0000007', 'cus h23', 'hp', '23424234', '1999-10-26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employees`
--

CREATE TABLE `employees` (
  `EmployeesID` varchar(10) NOT NULL,
  `EmployeesName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `EmployeesAddress` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `EmployeesBirthday` date DEFAULT NULL,
  `EmployeesPhone` varchar(20) DEFAULT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `EmployeesPosition` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `employees`
--

INSERT INTO `employees` (`EmployeesID`, `EmployeesName`, `EmployeesAddress`, `EmployeesBirthday`, `EmployeesPhone`, `Username`, `Password`, `EmployeesPosition`) VALUES
('EMP0000001', 'nguyen hoang', 'py', '2021-04-04', '234242', 'admin', 'admin', 'admin'),
('EMP0000002', 'bui tan', 'qn', '1994-07-11', '3453543', 'tan', '123', 'user'),
('EMP0000003', 'dinhhieu1', 'vt1', '1999-09-09', '1313', 'hieu2', '123123', 'admin'),
('EMP0000004', 'pham duy', 'la', '1999-12-11', '746342', 'duy', '123', 'user'),
('EMP0000005', 'pham duy123', 'la', '2021-04-04', '746342', 'duy123', '123123', 'user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactor`
--

CREATE TABLE `manufactor` (
  `ManufactorID` varchar(10) NOT NULL,
  `ManufactorName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ManufactorAddress` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ManufactorPhone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `manufactor`
--

INSERT INTO `manufactor` (`ManufactorID`, `ManufactorName`, `ManufactorAddress`, `ManufactorPhone`) VALUES
('MAN0000001', 'cty a', 'tphcm', '1122'),
('MAN0000002', 'cty b', 'hn', '7654'),
('MAN0000003', 'cty d', 'dn', '7651'),
('MAN0000004', 'cty e', 'qn', '7890'),
('MAN0000005', 'cty f', 'hp', '3455'),
('MAN0000006', 'cty d', 'dn4', '765145'),
('MAN0000007', 'cty 80', 'dn4', '765145'),
('MAN0000008', 'cty 100', 'dn4', '765145');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `medicine`
--

CREATE TABLE `medicine` (
  `MedicineID` varchar(10) NOT NULL,
  `MedicineName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `MedicineUnitPrice` int(11) NOT NULL,
  `MedicineInventory` int(10) NOT NULL,
  `MedicineExpire` date NOT NULL,
  `ManufactorID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `medicine`
--

INSERT INTO `medicine` (`MedicineID`, `MedicineName`, `MedicineUnitPrice`, `MedicineInventory`, `MedicineExpire`, `ManufactorID`) VALUES
('MED0000001', 'thuoc a', 5600, 455, '2025-07-08', 'MAN0000003'),
('MED0000002', 'thuoc b', 34535, 3535, '2025-07-18', 'MAN0000002'),
('MED0000003', 'thuoc c', 345646, 35435, '2025-07-09', 'MAN0000001'),
('MED0000004', 'thuoc d', 3535, 12312, '2025-07-08', 'MAN0000004'),
('MED0000005', 'thuoc d', 3535, 12312, '2025-07-08', 'MAN0000003'),
('MED0000007', 'thuoc zz', 35, 123123, '2026-07-17', 'MAN0000001');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `report`
--

CREATE TABLE `report` (
  `ReportID` varchar(10) NOT NULL,
  `ReportDate` varchar(25) NOT NULL,
  `EmployeesID` varchar(10) NOT NULL,
  `CustomerID` varchar(10) NOT NULL,
  `ReportTotal` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `report`
--

INSERT INTO `report` (`ReportID`, `ReportDate`, `EmployeesID`, `CustomerID`, `ReportTotal`) VALUES
('REP0000001', '2018-05-06 05:20:00', 'EMP0000005', 'CUS0000002', 500000),
('REP0000002', '2018-12-08 06:55:51', 'EMP0000004', 'CUS0000003', 7000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reportdetail`
--

CREATE TABLE `reportdetail` (
  `ReportID` varchar(10) NOT NULL,
  `MedicineID` varchar(10) NOT NULL,
  `Amout` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `reportdetail`
--

INSERT INTO `reportdetail` (`ReportID`, `MedicineID`, `Amout`) VALUES
('REP0000001', 'MED0000002', 5),
('REP0000001', 'MED0000004', 7),
('REP0000002', 'MED0000003', 3),
('REP0000002', 'MED0000005', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Chỉ mục cho bảng `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeesID`);

--
-- Chỉ mục cho bảng `manufactor`
--
ALTER TABLE `manufactor`
  ADD PRIMARY KEY (`ManufactorID`);

--
-- Chỉ mục cho bảng `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`MedicineID`,`ManufactorID`),
  ADD KEY `fk_medimanu` (`ManufactorID`);

--
-- Chỉ mục cho bảng `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`ReportID`,`EmployeesID`,`CustomerID`),
  ADD KEY `fk_repocus` (`CustomerID`),
  ADD KEY `fk_reponv` (`EmployeesID`);

--
-- Chỉ mục cho bảng `reportdetail`
--
ALTER TABLE `reportdetail`
  ADD PRIMARY KEY (`ReportID`,`MedicineID`),
  ADD KEY `fk_repomed` (`MedicineID`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `fk_medimanu` FOREIGN KEY (`ManufactorID`) REFERENCES `manufactor` (`ManufactorID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `fk_repocus` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reponv` FOREIGN KEY (`EmployeesID`) REFERENCES `employees` (`EmployeesID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `reportdetail`
--
ALTER TABLE `reportdetail`
  ADD CONSTRAINT `fk_repomed` FOREIGN KEY (`MedicineID`) REFERENCES `medicine` (`MedicineID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reporepot` FOREIGN KEY (`ReportID`) REFERENCES `report` (`ReportID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
