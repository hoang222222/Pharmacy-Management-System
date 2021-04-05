-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 05, 2021 lúc 12:24 PM
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
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cus_add` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cus_phone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cus_birtday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_name`, `cus_add`, `cus_phone`, `cus_birtday`) VALUES
(1, 'cus a', 'hp', '2423424', '1989-05-04'),
(2, 'cus b', 'tphcm', '6535465', '1990-08-04'),
(3, 'cus c', 'hn', '23424', '1999-10-08'),
(4, 'cus d', 'qn', '1231949', '1997-05-04'),
(5, 'cus e', 'dn', '94535', '1995-09-04'),
(6, 'cus h234', 'hn', '23424234', '1999-10-26'),
(7, 'cus h23', 'hn', '23424234', '1999-10-26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactor`
--

CREATE TABLE `manufactor` (
  `man_id` int(10) NOT NULL,
  `man_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `man_add` varchar(50) CHARACTER SET utf8 NOT NULL,
  `man_exp` varchar(50) CHARACTER SET utf8 NOT NULL,
  `man_phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `manufactor`
--

INSERT INTO `manufactor` (`man_id`, `man_name`, `man_add`, `man_exp`, `man_phone`) VALUES
(1, 'cty a', 'tphcm', '5', '1122'),
(2, 'cty b', 'hn', '7', '7654'),
(3, 'cty d', 'dn', '7', '7651'),
(4, 'cty e', 'qn', '9', '7890'),
(5, 'cty f', 'hp', '10', '3455'),
(7, 'cty d', 'dn4', '54', '765145'),
(8, 'cty 80', 'dn4', '54', '765145'),
(9, 'cty 100', 'dn4', '54', '765145');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `medicine`
--

CREATE TABLE `medicine` (
  `med_id` int(11) NOT NULL,
  `med_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `med_unitprice` int(11) NOT NULL,
  `med_amount` int(11) NOT NULL,
  `med_exists` int(10) NOT NULL,
  `med_fab` date NOT NULL,
  `med_exp` date NOT NULL,
  `man_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `medicine`
--

INSERT INTO `medicine` (`med_id`, `med_name`, `med_unitprice`, `med_amount`, `med_exists`, `med_fab`, `med_exp`, `man_id`) VALUES
(1, 'thuoc a', 5600, 455, 200, '2021-08-08', '2025-07-08', 3),
(2, 'thuoc b', 34535, 3535, 200, '2012-05-08', '2025-07-18', 2),
(3, 'thuoc c', 345646, 35435, 1000, '2011-01-08', '2025-07-09', 1),
(4, 'thuoc d', 3535, 12312, 3456, '2021-08-08', '2025-07-08', 4),
(5, 'thuoc d', 3535, 12312, 42455, '2021-08-08', '2025-07-08', 3),
(6, 'thuoc d345', 3535, 12312345, 42455, '2021-08-08', '2025-07-08', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nv`
--

CREATE TABLE `nv` (
  `nv_id` int(11) NOT NULL,
  `nv_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `nv_add` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `nv_birthday` date DEFAULT NULL,
  `nv_phone` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `position` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nv`
--

INSERT INTO `nv` (`nv_id`, `nv_name`, `nv_add`, `nv_birthday`, `nv_phone`, `user_name`, `pwd`, `position`) VALUES
(1, 'nguyen hoang', 'py', '2021-04-04', '234242', 'admin', 'admin', 'admin'),
(2, 'bui tan', 'qn', '1994-07-11', '3453543', 'tan', '123', 'user'),
(3, 'dinhhieu1', 'vt1', '1999-09-09', '1313', 'hieu2', '123123', 'admin'),
(4, 'pham duy', 'la', '1999-12-11', '746342', 'duy', '123', 'user'),
(5, 'pham duy123', 'la', '2021-04-04', '746342', 'duy123', '123123', 'user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `report_date` varchar(20) CHARACTER SET utf8 NOT NULL,
  `nv_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `report`
--

INSERT INTO `report` (`report_id`, `report_date`, `nv_id`, `cus_id`, `total`) VALUES
(1, '2018-05-06 05:20:00', 1, 1, 11212),
(2, '2018-12-08 06:55:51', 3, 2, 2434),
(3, '2021-04-04 19:50:12', 3, 1, 243435),
(4, '2021-04-04 19:52:49', 3, 4, 243434);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reportdetail`
--

CREATE TABLE `reportdetail` (
  `report_id` int(11) NOT NULL,
  `med_id` int(11) NOT NULL,
  `amout` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `reportdetail`
--

INSERT INTO `reportdetail` (`report_id`, `med_id`, `amout`) VALUES
(1, 2, 3435),
(1, 4, 3435),
(2, 2, 312335),
(2, 3, 42342);

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `report_view`
-- (See below for the actual view)
--
CREATE TABLE `report_view` (
`report_id` int(11)
,`report_date` varchar(20)
,`cus_name` varchar(50)
,`med_name` varchar(50)
,`amout` int(11)
,`med_unitprice` int(11)
,`total` int(11)
,`nv_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Cấu trúc cho view `report_view`
--
DROP TABLE IF EXISTS `report_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `report_view`  AS SELECT `b`.`report_id` AS `report_id`, `b`.`report_date` AS `report_date`, `e`.`cus_name` AS `cus_name`, `d`.`med_name` AS `med_name`, `c`.`amout` AS `amout`, `d`.`med_unitprice` AS `med_unitprice`, `b`.`total` AS `total`, `a`.`nv_name` AS `nv_name` FROM ((((`nv` `a` join `reportdetail` `c`) join `report` `b`) join `medicine` `d`) join `customer` `e`) WHERE `a`.`nv_id` = `b`.`nv_id` AND `b`.`report_id` = `c`.`report_id` AND `c`.`med_id` = `d`.`med_id` AND `b`.`cus_id` = `e`.`cus_id` ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Chỉ mục cho bảng `manufactor`
--
ALTER TABLE `manufactor`
  ADD PRIMARY KEY (`man_id`);

--
-- Chỉ mục cho bảng `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`med_id`,`man_id`),
  ADD KEY `fk_medimanu` (`man_id`);

--
-- Chỉ mục cho bảng `nv`
--
ALTER TABLE `nv`
  ADD PRIMARY KEY (`nv_id`);

--
-- Chỉ mục cho bảng `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`,`nv_id`,`cus_id`),
  ADD KEY `fk_reponv` (`nv_id`),
  ADD KEY `fk_repocus` (`cus_id`);

--
-- Chỉ mục cho bảng `reportdetail`
--
ALTER TABLE `reportdetail`
  ADD PRIMARY KEY (`report_id`,`med_id`),
  ADD KEY `fk_repomed` (`med_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `manufactor`
--
ALTER TABLE `manufactor`
  MODIFY `man_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `medicine`
--
ALTER TABLE `medicine`
  MODIFY `med_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nv`
--
ALTER TABLE `nv`
  MODIFY `nv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `reportdetail`
--
ALTER TABLE `reportdetail`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `fk_medimanu` FOREIGN KEY (`man_id`) REFERENCES `manufactor` (`man_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `fk_repocus` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`cus_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reponv` FOREIGN KEY (`nv_id`) REFERENCES `nv` (`nv_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `reportdetail`
--
ALTER TABLE `reportdetail`
  ADD CONSTRAINT `fk_repomed` FOREIGN KEY (`med_id`) REFERENCES `medicine` (`med_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_reporepot` FOREIGN KEY (`report_id`) REFERENCES `report` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
