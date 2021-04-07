-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 06, 2021 lúc 10:18 PM
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
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `BillID` varchar(10) NOT NULL,
  `BillDate` varchar(25) NOT NULL,
  `EmployeesID` varchar(10) NOT NULL,
  `CustomerID` varchar(10) NOT NULL,
  `BillTotal` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`BillID`, `BillDate`, `EmployeesID`, `CustomerID`, `BillTotal`) VALUES
('BIL0000001', '2018-12-08 06:55:51', 'EMP0000004', 'CUS0000003', 7000000),
('BIL0000002', '2018-05-06 05:20:00', 'EMP0000005', 'CUS0000002', 500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `BillID` varchar(10) NOT NULL,
  `MedicineID` varchar(10) NOT NULL,
  `Amout` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`BillID`, `MedicineID`, `Amout`) VALUES
('BIL0000001', 'MED0000002', 5),
('BIL0000001', 'MED0000003', 3),
('BIL0000002', 'MED0000004', 7);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `bill_view`
-- (See below for the actual view)
--
CREATE TABLE `bill_view` (
`BillID` varchar(10)
,`BillDate` varchar(25)
,`CustomerName` varchar(50)
,`MedicineName` varchar(50)
,`MedicineUnitPrice` int(11)
,`Amout` int(11)
,`BillTotal` int(20)
,`EmployeesName` varchar(50)
);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `CustomerID` varchar(10) NOT NULL,
  `CustomerName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `CustomerAddress` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CustomerPhone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `CustomerBirthday` date DEFAULT NULL
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
('CUS0000006', 'cus h234', 'hn', '23424234', '1999-10-26');

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
('EMP0000005', 'pham duy123', 'la3435', '2021-04-04', '74634235', 'duy789', '123123', 'admin'),
('EMP0000006', 'pham duy34535', 'la35', '1999-12-11', '7463', 'duy0000', '123', 'user');

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
('MAN0000007', 'cty 80', 'dn4', '76590'),
('MAN0000008', 'cty 8009', 'dn4', '76590');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `medicine`
--

CREATE TABLE `medicine` (
  `MedicineID` varchar(10) NOT NULL,
  `MedicineName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `MedicineUnitPrice` int(11) NOT NULL,
  `MedicineInventory` int(11) DEFAULT NULL,
  `MedicineExpire` date NOT NULL,
  `ManufactorID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `medicine`
--

INSERT INTO `medicine` (`MedicineID`, `MedicineName`, `MedicineUnitPrice`, `MedicineInventory`, `MedicineExpire`, `ManufactorID`) VALUES
('MED0000001', 'thuoc a', 5600, 24, '2025-07-08', 'MAN0000003'),
('MED0000002', 'thuoc b', 34535, 324, '2025-07-18', 'MAN0000002'),
('MED0000003', 'thuoc c', 345646, 6764, '2025-07-09', 'MAN0000001'),
('MED0000004', 'thuoc d', 3535, 453, '2025-07-08', 'MAN0000004'),
('MED0000006', 'thuoc z', 353, 345, '2027-07-22', 'MAN0000007'),
('MED0000007', 'thuoc g', 353, 345, '2027-07-22', 'MAN0000007');

-- --------------------------------------------------------

--
-- Cấu trúc cho view `bill_view`
--
DROP TABLE IF EXISTS `bill_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bill_view`  AS SELECT `a`.`BillID` AS `BillID`, `a`.`BillDate` AS `BillDate`, `c`.`CustomerName` AS `CustomerName`, `e`.`MedicineName` AS `MedicineName`, `e`.`MedicineUnitPrice` AS `MedicineUnitPrice`, `b`.`Amout` AS `Amout`, `a`.`BillTotal` AS `BillTotal`, `d`.`EmployeesName` AS `EmployeesName` FROM ((((`bill` `a` join `bill_detail` `b`) join `customer` `c`) join `employees` `d`) join `medicine` `e`) WHERE `a`.`BillID` = `b`.`BillID` AND `a`.`CustomerID` = `c`.`CustomerID` AND `a`.`EmployeesID` = `d`.`EmployeesID` AND `b`.`MedicineID` = `e`.`MedicineID` ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BillID`,`EmployeesID`,`CustomerID`),
  ADD KEY `fk_reponv` (`EmployeesID`),
  ADD KEY `fk_repocus` (`CustomerID`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`BillID`,`MedicineID`),
  ADD KEY `fk_repomed` (`MedicineID`);

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
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_repocus` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reponv` FOREIGN KEY (`EmployeesID`) REFERENCES `employees` (`EmployeesID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `fk_repomed` FOREIGN KEY (`MedicineID`) REFERENCES `medicine` (`MedicineID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reporepot` FOREIGN KEY (`BillID`) REFERENCES `bill` (`BillID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `fk_medimanu` FOREIGN KEY (`ManufactorID`) REFERENCES `manufactor` (`ManufactorID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
