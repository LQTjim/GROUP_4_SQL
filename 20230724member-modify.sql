-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 24, 2023 at 04:51 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `20230724`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `sid` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sex_sid` int(11) DEFAULT NULL,
  `member_level_sid` int(11) NOT NULL DEFAULT '1',
  `hero_icon` varchar(255) DEFAULT NULL,
  `role_sid` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `providerData` text,
  `google_uid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`sid`, `email`, `password`, `name`, `mobile`, `birth`, `address`, `sex_sid`, `member_level_sid`, `hero_icon`, `role_sid`, `created_at`, `active`, `providerData`, `google_uid`) VALUES
(1, 'admin@gmail.com', '$2y$10$lzVFJO5ye/oCECeTyeutTOZf3pvROB3xqnlKHoNPcJqP4mi/Kepcu', '王曉明', '0926159626', '1993-05-01', '新北市XX區XX路XX號XX樓', 1, 1, NULL, 3, '2023-05-01 14:23:09', 1, NULL, NULL),
(2, 'coach_test@gmail.com', '$2y$10$lzVFJO5ye/oCECeTyeutTOZf3pvROB3xqnlKHoNPcJqP4mi/Kepcu', '王教練', '0926159622', '1993-05-02', '台北市北投區復興二路29號', 1, 1, NULL, 2, '2023-05-02 10:40:28', 1, NULL, NULL),
(3, 'mail41097@test.com', '$2y$10$lzVFJO5ye/oCECeTyeutTOZf3pvROB3xqnlKHoNPcJqP4mi/Kepcu', '傅家豪', '0918183537', '1994-12-30', '基隆市', 1, 1, NULL, 1, '2023-05-10 14:48:43', 1, NULL, NULL),
(4, 'mail72866@test.com', '$2y$10$HZp1nthNlmvofpyo7Z//..4ZUSocl3XbKzXlN6j.DO8O7bofWyK/O', '楊宇軒', '0918993881', '1986-08-16', '苗栗縣', 2, 1, NULL, 2, '2023-05-10 14:48:43', 1, NULL, NULL),
(5, 'mail62055@test.com', '$2y$10$lsbWKzBpY5MgJ3u1u7M9BO1WsAg5W5YsXxKoikVzF/Pd2iL2zpmCe', '王緯宸', '0918768068', '1994-02-02', '台北市北投區復興二路29號', 1, 1, 'hero_icon1.jpg', 1, '2023-05-10 14:48:43', 1, NULL, NULL),
(6, 'mail18624@test.com', '$2y$10$fiWhorVDhMx3EVDiipPcuOtjsYCZq.WD.eaHBYFgJuHhoSfeO2m6W', '馮冠宇', '0918858698', '1987-06-08', '南投縣', 1, 1, NULL, 2, '2023-05-10 14:48:43', 0, NULL, NULL),
(7, 'mail64106@test.com', '$2y$10$M.PNGNDEQnA049zShEezC.k.CnRSZHq5/QTMezNfI2mgh2irnfAO2', '王家豪', '0918238467', '1989-02-23', '澎湖縣', 2, 1, NULL, 1, '2023-05-10 14:48:43', 1, NULL, NULL),
(8, 'mail95596@test.com', '$2y$10$JIcSC9xIUfOlU/dNCIn1SupnjA.YnUIuHZ2EDXFolZCDBgVtyH7nm', '林怡萱', '0918907781', '1994-01-24', '臺北市', 1, 1, NULL, 2, '2023-05-10 14:48:43', 0, NULL, NULL),
(9, 'mail79688@test.com', '$2y$10$zA3vYy4Z19asTcOjQoMcwus6X9/ua0pMdxwW28kj0u2e55.3ae1Nq', '林詩涵', '0918393843', '1990-06-09', '高雄市', 1, 1, NULL, 2, '2023-05-10 14:48:43', 1, NULL, NULL),
(10, 'mail41286@test.com', '$2y$10$947s60q3HUcEowiaAbSk8epPE6LDcele9GbTS2SoMHbJy63nGIOZa', '何怡萱', '0918563579', '1994-08-05', '桃園市', 1, 1, NULL, 1, '2023-05-10 14:48:43', 1, NULL, NULL),
(11, 'mail95707@test.com', '$2y$10$Z4i2gFlmcCcbS.XzoumhFOARCFtO1gPWLpeinKyq5I9S4fqJAlAnW', '馮宗翰', '0918567315', '1994-02-12', '南投縣', 2, 1, NULL, 1, '2023-05-10 14:48:43', 0, NULL, NULL),
(12, 'mail51857@test.com', '$2y$10$iVY6x5G9tRvUMJmyHX3CWOdlA/EJ/853orXuSmFxy5mR1qYWjTFuK', '謝冠宇', '0918164439', '1999-08-06', '彰化縣', 2, 1, NULL, 1, '2023-05-10 14:48:43', 0, NULL, NULL),
(13, 'mail81467@test.com', '$2y$10$5wWbJWepkUP3T8qc6I6FaODhU6brYg49pwVEhbg/v.bX50Bl1y8c2', '曹冠宇', '0918588027', '1985-07-05', '雲林縣', 2, 1, NULL, 2, '2023-05-10 14:48:43', 1, NULL, NULL),
(14, 'mail69737@test.com', '$2y$10$AZTGdBHv7KLoLjbUlyIwCuqoVIkDSJ7alvSHqUxTJbI5auQYHQMWq', '宋郁婷', '0918800316', '1993-07-25', '新竹市', 2, 1, NULL, 2, '2023-05-10 14:48:43', 0, NULL, NULL),
(15, 'mail84574@test.com', '$2y$10$liP6Tf.gM8N1U02zdJhps.60TP8DMVH.z.J4dHIsObjjNNwBB.Jne', '高宗翰', '0918263478', '1985-04-22', '屏東縣', 1, 1, NULL, 1, '2023-05-10 14:48:43', 1, NULL, NULL),
(16, 'mail41916@test.com', '$2y$10$DER14LyQkeptt8/ax8yiwuoC5kCYx4f/R7kWuM1N6RAy1JKL/sQ3W', '梁冠宇', '0918363079', '1986-03-28', '臺南市', 2, 1, NULL, 1, '2023-05-10 14:48:43', 0, NULL, NULL),
(17, 'mail77759@test.com', '$2y$10$x4DucM1Kl0TesKW1fixChOoXRMFHkteCDjsAL5dXOogWxIxaoPP0W', '郭怡婷', '0918705093', '1991-09-06', '臺東縣', 2, 1, NULL, 1, '2023-05-10 14:48:44', 0, NULL, NULL),
(18, 'mail81541@test.com', '$2y$10$IjF.QM1GQaVUJMWQfmGxHekvqWs2mpXSJ1Q94/CTIVxVvTX4FsCde', '於宗翰', '0918140405', '1986-08-18', '新竹市', 2, 1, NULL, 2, '2023-05-10 14:48:44', 0, NULL, NULL),
(19, 'mail34392@test.com', '$2y$10$wIFRw3btnN.AmXpIHsogRuzcdDmGn3BGAOzlJwMJdCz4cC25DZGpK', '何宗翰', '0918565617', '1994-04-26', '臺北市', 1, 1, NULL, 1, '2023-05-10 14:48:44', 0, NULL, NULL),
(20, 'mail83897@test.com', '$2y$10$Q7ycXuU8JYGcrlW11eSl3eedTlwyFhAWG0Tv7SkZA4wkBcMkUYuQ2', '趙彥廷', '0918593786', '1995-12-05', '金門縣', 2, 1, NULL, 2, '2023-05-10 14:48:44', 0, NULL, NULL),
(21, 'mail36733@test.com', '$2y$10$R3vD7Wz6gMEQl6mTUmUgW.CtjKYoSVGpxPnmaaFUh661oMoJd/gDe', '馮雅筑', '0918226469', '1990-12-27', '金門縣', 2, 1, NULL, 2, '2023-05-10 14:48:44', 1, NULL, NULL),
(22, 'mail89263@test.com', '$2y$10$AZJJoA9nMg0tCCuyC6wz6OAeKGn8HeMwKiKGENxMGSbvyRAZdsSxO', '劉彥廷', '0918553856', '1986-12-01', '苗栗縣', 1, 1, NULL, 1, '2023-05-10 14:48:44', 1, NULL, NULL),
(23, 'mail35367@test.com', '$2y$10$cN/N9/xbUF3yZD/sHujt5uODvtisstCw8/g8lOG1K.ARjJrtOuqoO', '劉郁婷', '0918563214', '1990-08-08', '桃園市', 1, 1, NULL, 2, '2023-05-10 14:48:44', 1, NULL, NULL),
(24, 'mail94051@test.com', '$2y$10$X7M/lBx4XOCCr1MGw3QPDeJBLRvD4BO9pCiw0RYolxgdBhe3u6Ofq', '曹怡婷', '0918698260', '1988-04-12', '澎湖縣', 1, 1, NULL, 2, '2023-05-10 14:48:44', 0, NULL, NULL),
(25, 'mail28878@test.com', '$2y$10$oEgQqfCnHWsd75s2FkSWx.PSBLA4et6Q1CpYNmr/hOPy7XLzw4ddy', '吳怡婷', '0918739749', '1986-07-10', '臺中市', 1, 1, NULL, 1, '2023-05-10 14:48:44', 1, NULL, NULL),
(26, 'mail62383@test.com', '$2y$10$NM/JPm/A4zYXifM3/ebMZe.YDPFWXgZMYPbnH/IU2P1sQNtjPZ.3m', '周鈺婷', '0918769780', '1997-12-21', '臺東縣', 2, 1, NULL, 2, '2023-05-10 14:48:44', 1, NULL, NULL),
(27, 'mail79408@test.com', '$2y$10$3GQQZWGRv1cmEqFBriMqluuYTMyezNgk.jy6BgKcjls0l4p4RoCxu', '於鈺婷', '0918215944', '1995-03-28', '南投縣', 2, 1, NULL, 1, '2023-05-10 14:48:44', 0, NULL, NULL),
(28, 'mail71559@test.com', '$2y$10$wOEDtcMJcSFe/cLu5UNZTe4Q.L0DVDNPEFdVeVmeZJs6JFSyxomEK', '梁柏翰', '0918370990', '1986-11-07', '花蓮縣', 2, 1, NULL, 1, '2023-05-10 14:48:44', 1, NULL, NULL),
(29, 'mail74318@test.com', '$2y$10$8LLKZB4wszxBbN4meX/gXOSJEEQAwIKN0888axzRgMJS8MULKk5Pu', '沈冠宇', '0918104150', '1989-09-23', '南投縣', 2, 1, NULL, 1, '2023-05-10 14:48:44', 0, NULL, NULL),
(30, 'mail22388@test.com', '$2y$10$CakyVf/WPanlh9kMI4NgGOnmgorrhJPjK5Hb5/zdyD9bctEgYo84K', '鄧怡君', '0918106356', '1990-07-11', '宜蘭縣', 2, 1, NULL, 1, '2023-05-10 14:48:44', 1, NULL, NULL),
(31, 'mail83133@test.com', '$2y$10$NcG34zp8trhc6OPRDJfLRuOt4inkqgrQN8vbKPtNBZUQxaRXTecIO', '董冠宇', '0918289453', '1986-03-16', '嘉義縣', 2, 1, NULL, 2, '2023-05-10 14:48:44', 1, NULL, NULL),
(32, 'mail41098@test.com', '$2y$10$J8n5bUguMPpqhol7qXoU6OVxyVzW8HrKP15xuVRwSZ5DuAswFX4o6', '曹冠廷', '0918205174', '1994-11-11', '高雄市', 2, 1, NULL, 1, '2023-05-10 14:48:44', 1, NULL, NULL),
(33, 'mail28638@test.com', '$2y$10$nTFl9J8nH/RLjiosOjo1rOvM8E4aV59D75YlZVWX6FN1lUWJYIMxa', '唐雅婷', '0918812549', '1994-10-26', '桃園市', 2, 1, NULL, 1, '2023-05-10 14:48:44', 1, NULL, NULL),
(34, 'mail31415@test.com', '$2y$10$bwiCpBbeEktMDgXds9wc5O0GO2anjYEhrUJvzrLMXBk/4XR0v/bKu', '周怡萱', '0918471890', '1996-02-23', '桃園市', 2, 1, NULL, 1, '2023-05-10 14:48:44', 0, NULL, NULL),
(35, 'mail37090@test.com', '$2y$10$xUoubUFAkD6as5ZwQrc.o.77tyoJQXkrSZy8qIiToxB9YCuQWaYlK', '郭冠霖', '0918749432', '1991-02-27', '嘉義市', 2, 1, NULL, 1, '2023-05-10 14:48:45', 0, NULL, NULL),
(36, 'mail25537@test.com', '$2y$10$s0ZjzQEuO.UJuaW02DpyDekSmagDy1CFixFwO2c8OBlbHSxfU.um2', '彭詩涵', '0918613250', '1999-07-12', '新竹縣', 1, 1, NULL, 2, '2023-05-10 14:48:45', 0, NULL, NULL),
(37, 'mail81248@test.com', '$2y$10$Z99NjbCFlMghzyhVw6USCOg769XCjW2HNjs6rlE79djaEm6YNhqra', '吳怡萱', '0918769841', '1985-11-21', '新北市', 2, 1, NULL, 2, '2023-05-10 14:48:45', 1, NULL, NULL),
(38, 'mail67577@test.com', '$2y$10$CTcLN.j6M7pp3MLDYeG44.dLL2teZoHhzdPbiWT3mjivjjFqAgMDy', '袁怡萱', '0918763671', '1986-07-17', '高雄市', 2, 1, NULL, 2, '2023-05-10 14:48:45', 0, NULL, NULL),
(39, 'mail69489@test.com', '$2y$10$r/agAt68wZeJW5TRda3uNuENnnP4XtVteDuQMy6SvaGYuWbSlG5Ei', '張宇軒', '0918655112', '1987-12-03', '臺南市', 2, 1, NULL, 2, '2023-05-10 14:48:45', 0, NULL, NULL),
(40, 'mail42535@test.com', '$2y$10$HQUFAw7.5gmoQctwN5vVhuzQMoby2dXcJ.31NhLbUrPi5Eu8ldbEC', '楊彥廷', '0918457015', '1995-11-09', '臺北市', 2, 1, NULL, 1, '2023-05-10 14:48:45', 1, NULL, NULL),
(41, 'mail15822@test.com', '$2y$10$km5F0HR8o21.7FgWrFk8uuSs60oeSZlc2g1Mxbch0C.Hlr8CEcuI.', '梁家豪', '0918728617', '1987-06-10', '宜蘭縣', 2, 1, NULL, 2, '2023-05-10 14:48:45', 1, NULL, NULL),
(42, 'mail69305@test.com', '$2y$10$cOCyNH713dYPlajUShWKX.K9zdZUNazbkicbsvdJ9seV7D4AZ3ge.', '蕭宜庭', '0918817607', '1986-08-11', '苗栗縣', 1, 1, NULL, 2, '2023-05-10 14:48:45', 0, NULL, NULL),
(43, 'mail45706@test.com', '$2y$10$zw9UcfKfUgrDpU9qWNJRmuvCEZMh77P9OrgGNa8FKvslC3W946NJa', '孫郁婷', '0918839937', '1987-07-08', '新北市', 2, 1, NULL, 2, '2023-05-10 14:48:45', 0, NULL, NULL),
(44, 'mail46501@test.com', '$2y$10$6FEpY6LLa4s6ODiOJxGoJ.C.gKZKW2AOOWPdzD44Gavnma6kHsmcG', '沈怡君', '0918657062', '1993-11-14', '臺北市', 2, 1, NULL, 1, '2023-05-10 14:48:45', 1, NULL, NULL),
(45, 'mail84083@test.com', '$2y$10$gkzPe7zIDaQJ0qWjD3wDOO3hx4s.4QnLPvQzKv9GWd.UWrPncnG0m', '朱冠宇', '0918765678', '1996-09-19', '嘉義縣', 2, 1, NULL, 1, '2023-05-10 14:48:45', 1, NULL, NULL),
(46, 'mail45989@test.com', '$2y$10$ZvPDYRzbJVk.pGys1hTb5Ot4gw6SbthsFUeQ2ZIoWKOVMYANJQkiW', '馮鈺婷', '0918515150', '1998-03-28', '臺中市', 1, 1, NULL, 2, '2023-05-10 14:48:45', 0, NULL, NULL),
(47, 'mail37119@test.com', '$2y$10$F8pOz.N9ctW60yLSVFxby.mBedOA0Numx3PPPRSjT7WN8.su6YUhG', '彭鈺婷', '0918294775', '1985-05-24', '臺東縣', 2, 1, NULL, 2, '2023-05-10 14:48:45', 0, NULL, NULL),
(48, 'mail53023@test.com', '$2y$10$k7u1vBYHjqciIUPL5Cx68.t9KOAzM4pwO6Vq50Q65rwBEn2r/zrka', '朱柏翰', '0918304317', '1992-04-13', '彰化縣', 2, 1, NULL, 2, '2023-05-10 14:48:45', 0, NULL, NULL),
(49, 'mail49649@test.com', '$2y$10$Th32gRyr4ZMnCQdgbNSRi.kpz4JpewBvLCE04TDq0A42vGDl9ukIO', '趙怡君', '0918113580', '1991-01-19', '澎湖縣', 1, 1, NULL, 1, '2023-05-10 14:48:45', 1, NULL, NULL),
(50, 'mail97663@test.com', '$2y$10$041GmPBY8iEFDxwglqXPcOOWNEU6i5XoKmFTaPcyGfqpZJ6GSFJdu', '周怡萱', '0918829804', '1986-01-18', '桃園市', 2, 1, NULL, 1, '2023-05-10 14:48:45', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member_favorite_lessons`
--

CREATE TABLE `member_favorite_lessons` (
  `sid` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member_favorite_lessons`
--

INSERT INTO `member_favorite_lessons` (`sid`, `lesson_id`, `member_id`) VALUES
(1, 1, 5),
(2, 2, 5),
(3, 3, 5),
(4, 4, 5),
(5, 5, 5),
(6, 6, 5),
(7, 7, 5),
(8, 8, 5),
(9, 9, 5),
(10, 10, 5),
(11, 11, 5),
(12, 12, 5),
(13, 13, 5),
(14, 14, 5),
(15, 15, 5),
(16, 16, 5),
(17, 17, 5),
(18, 18, 5),
(19, 19, 5),
(20, 20, 5);

-- --------------------------------------------------------

--
-- Table structure for table `member_favorite_products`
--

CREATE TABLE `member_favorite_products` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `product_sid` int(11) NOT NULL,
  `category_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member_favorite_products`
--

INSERT INTO `member_favorite_products` (`sid`, `member_sid`, `product_sid`, `category_sid`) VALUES
(1, 5, 1, 1),
(2, 5, 1, 2),
(3, 5, 1, 3),
(4, 5, 2, 1),
(5, 5, 2, 2),
(6, 5, 2, 3),
(7, 5, 3, 1),
(8, 5, 3, 2),
(9, 5, 3, 3),
(10, 5, 4, 1),
(11, 5, 4, 2),
(12, 5, 4, 3),
(13, 5, 5, 1),
(14, 5, 5, 2),
(15, 5, 5, 3),
(16, 5, 6, 1),
(17, 5, 6, 2),
(18, 5, 6, 3),
(19, 5, 7, 1),
(20, 5, 7, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD KEY `sex_sid` (`sex_sid`),
  ADD KEY `hero_icon_sid` (`hero_icon`),
  ADD KEY `member_level_sid` (`member_level_sid`),
  ADD KEY `role_sid` (`role_sid`);

--
-- Indexes for table `member_favorite_lessons`
--
ALTER TABLE `member_favorite_lessons`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `member_favorite_products`
--
ALTER TABLE `member_favorite_products`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `member_favorite_lessons`
--
ALTER TABLE `member_favorite_lessons`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `member_favorite_products`
--
ALTER TABLE `member_favorite_products`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`member_level_sid`) REFERENCES `member_level` (`sid`),
  ADD CONSTRAINT `member_ibfk_2` FOREIGN KEY (`role_sid`) REFERENCES `member_role` (`sid`),
  ADD CONSTRAINT `member_ibfk_3` FOREIGN KEY (`sex_sid`) REFERENCES `member_sex` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
