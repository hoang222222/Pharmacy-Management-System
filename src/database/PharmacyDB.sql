-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 10, 2021 lúc 09:14 AM
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
  `BillDate` datetime NOT NULL,
  `EmployeesID` varchar(10) NOT NULL,
  `CustomerID` varchar(10) NOT NULL,
  `BillTotal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`BillID`, `BillDate`, `EmployeesID`, `CustomerID`, `BillTotal`) VALUES
('BIL0000001', '2016-06-25 07:30:18', 'EMP0000004', 'CUS0000003', 7000000),
('BIL0000002', '2017-12-02 09:18:03', 'EMP0000005', 'CUS0000002', 500000),
('BIL0000003', '2018-05-06 12:30:07', 'EMP0000002', 'CUS0000001', 114805),
('BIL0000004', '2019-01-18 20:40:20', 'EMP0000002', 'CUS0000001', 69070),
('BIL0000005', '2021-03-20 15:01:30', 'EMP0000001', 'CUS0000008', 11751964),
('BIL0000006', '2021-04-09 22:26:14', 'EMP0000002', 'CUS0000008', 794305),
('BIL0000007', '2021-04-09 23:00:30', 'EMP0000002', 'CUS0000008', 103605),
('BIL0000008', '2021-04-09 23:04:15', 'EMP0000002', 'CUS0000003', 0),
('BIL0000009', '2021-04-10 10:21:31', 'EMP0000001', 'CUS0000010', 0),
('BIL0000010', '2021-04-10 12:07:46', 'EMP0000001', 'CUS0000014', 0),
('BIL0000011', '2021-04-10 13:40:11', 'EMP0000001', 'CUS0000008', 149340);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `BillID` varchar(10) NOT NULL,
  `MedicineID` varchar(10) NOT NULL,
  `Amout` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`BillID`, `MedicineID`, `Amout`) VALUES
('BIL0000001', 'MED0000002', 5),
('BIL0000001', 'MED0000003', 3),
('BIL0000002', 'MED0000004', 7),
('BIL0000003', 'MED0000001', 2),
('BIL0000003', 'MED0000002', 3),
('BIL0000004', 'MED0000002', 2),
('BIL0000005', 'MED0000003', 34),
('BIL0000006', 'MED0000002', 23),
('BIL0000007', 'MED0000002', 3),
('BIL0000011', 'MED0000001', 2),
('BIL0000011', 'MED0000002', 4);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `bill_view`
-- (See below for the actual view)
--
CREATE TABLE `bill_view` (
`BillID` varchar(10)
,`BillDate` datetime
,`CustomerName` varchar(50)
,`MedicineName` varchar(50)
,`MedicineUnitPrice` double
,`Amout` int(10)
,`BillTotal` double
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
('CUS0000006', 'cus h234', 'hn', '23424234', '1999-10-26'),
('CUS0000007', 'cus a', NULL, '243424', NULL),
('CUS0000008', 'cus a', NULL, '123', NULL),
('CUS0000009', 'nv 3', '', '3543535', '2021-04-10'),
('CUS0000010', 'nv z', '', '3093453', '2021-04-10'),
('CUS0000011', 'nhvhas', '4fef', '123456', '2021-04-10'),
('CUS0000012', 'nvnjs', '345345', '12345', '2021-04-10'),
('CUS0000013', 'fgdgf', '3534', '1231425', '2021-04-10'),
('CUS0000014', 'cus mnjdfs', '345', '964645', '2021-04-10'),
('CUS0000015', 'cus a', '345546456', '1234567', '2021-04-10'),
('CUS0000016', 'đfgdf', '', '234324', '2021-04-10');

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
  `MedicineUnitPrice` double NOT NULL,
  `MedicineInventory` int(11) DEFAULT NULL,
  `MedicineExpire` date NOT NULL,
  `ManufactorID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `medicine`
--

INSERT INTO `medicine` (`MedicineID`, `MedicineName`, `MedicineUnitPrice`, `MedicineInventory`, `MedicineExpire`, `ManufactorID`) VALUES
('MED0000001', 'thuoc a', 5600, 1558, '2025-07-08', 'MAN0000003'),
('MED0000002', 'thuoc b', 34535, 243, '2025-07-18', 'MAN0000002'),
('MED0000003', 'thuoc c', 345646, 6726, '2025-07-09', 'MAN0000001'),
('MED0000004', 'thuoc d', 3535, 453, '2025-07-08', 'MAN0000004'),
('MED0000006', 'thuoc z', 353, 345, '2027-07-22', 'MAN0000007'),
('MED0000007', 'thuoc g', 353, 345, '2027-07-22', 'MAN0000007'),
('MED0000008', 'thuoc i', 56, 45, '2021-04-08', 'MAN0000001');

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
