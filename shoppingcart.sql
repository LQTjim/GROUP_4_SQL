-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 04, 2023 at 06:32 AM
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
-- Database: `shoppingcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_cart`
--

DROP TABLE IF EXISTS `order_cart`;
CREATE TABLE `order_cart` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `products_type_sid` int(11) NOT NULL,
  `item_sid` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_cart`
--

INSERT INTO `order_cart` (`sid`, `member_sid`, `products_type_sid`, `item_sid`, `quantity`, `created_at`) VALUES
(50, 5, 1, 1, 1, '2023-08-01 07:34:27'),
(52, 5, 2, 1, 13, '2023-08-01 07:44:35'),
(53, 5, 4, 2, 1, '2023-08-01 07:44:41'),
(54, 5, 4, 1, 1, '2023-08-04 14:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_method`
--

DROP TABLE IF EXISTS `order_delivery_method`;
CREATE TABLE `order_delivery_method` (
  `sid` int(11) NOT NULL,
  `method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_delivery_method`
--

INSERT INTO `order_delivery_method` (`sid`, `method`) VALUES
(1, '超商取貨'),
(2, '宅配到家'),
(3, '來店取貨');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `sid` int(255) NOT NULL,
  `order_sid` int(255) NOT NULL,
  `member_sid` int(255) NOT NULL,
  `products_type_sid` int(255) NOT NULL,
  `item_sid` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`sid`, `order_sid`, `member_sid`, `products_type_sid`, `item_sid`, `quantity`, `created_at`) VALUES
(40, 13, 5, 1, 1, 1, '2023-08-02'),
(41, 13, 5, 2, 1, 13, '2023-08-02'),
(42, 13, 5, 4, 2, 1, '2023-08-02'),
(43, 14, 5, 1, 1, 1, '2023-08-03'),
(44, 14, 5, 2, 1, 13, '2023-08-03'),
(45, 14, 5, 4, 2, 1, '2023-08-03'),
(46, 19, 5, 2, 1, 13, '2023-08-03'),
(47, 19, 5, 1, 1, 1, '2023-08-03'),
(48, 19, 5, 4, 2, 1, '2023-08-03'),
(49, 20, 5, 2, 1, 13, '2023-08-03'),
(50, 20, 5, 1, 1, 1, '2023-08-03'),
(51, 20, 5, 4, 2, 1, '2023-08-03'),
(52, 21, 5, 2, 1, 13, '2023-08-03'),
(53, 21, 5, 1, 1, 1, '2023-08-03'),
(54, 21, 5, 4, 2, 1, '2023-08-03'),
(55, 22, 5, 2, 1, 13, '2023-08-03'),
(56, 22, 5, 1, 1, 1, '2023-08-03'),
(57, 22, 5, 4, 2, 1, '2023-08-03'),
(58, 22, 5, 1, 1, 1, '2023-08-03'),
(59, 22, 5, 2, 1, 13, '2023-08-03'),
(60, 22, 5, 4, 2, 1, '2023-08-03'),
(61, 22, 5, 1, 1, 1, '2023-08-03'),
(62, 22, 5, 2, 1, 13, '2023-08-03'),
(63, 22, 5, 4, 2, 1, '2023-08-03'),
(64, 22, 5, 1, 1, 1, '2023-08-03'),
(65, 22, 5, 2, 1, 13, '2023-08-03'),
(66, 22, 5, 4, 2, 1, '2023-08-03'),
(67, 26, 5, 1, 1, 1, '2023-08-03'),
(68, 26, 5, 2, 1, 13, '2023-08-03'),
(69, 26, 5, 4, 2, 1, '2023-08-03'),
(70, 26, 5, 1, 1, 1, '2023-08-03'),
(71, 26, 5, 2, 1, 13, '2023-08-03'),
(72, 26, 5, 4, 2, 1, '2023-08-03'),
(73, 26, 5, 1, 1, 1, '2023-08-03'),
(74, 26, 5, 2, 1, 13, '2023-08-03'),
(75, 26, 5, 4, 2, 1, '2023-08-03'),
(76, 29, 5, 1, 1, 1, '2023-08-03'),
(77, 29, 5, 2, 1, 13, '2023-08-03'),
(78, 29, 5, 4, 2, 1, '2023-08-03'),
(79, 30, 5, 4, 2, 1, '2023-08-03'),
(80, 30, 5, 1, 1, 1, '2023-08-03'),
(81, 30, 5, 2, 1, 13, '2023-08-03'),
(82, 31, 5, 2, 1, 13, '2023-08-03'),
(83, 31, 5, 1, 1, 1, '2023-08-03'),
(84, 31, 5, 4, 2, 1, '2023-08-03'),
(85, 32, 5, 2, 1, 13, '2023-08-03'),
(86, 32, 5, 1, 1, 1, '2023-08-03'),
(87, 32, 5, 4, 2, 1, '2023-08-03'),
(88, 33, 5, 2, 1, 13, '2023-08-03'),
(89, 33, 5, 1, 1, 1, '2023-08-03'),
(90, 33, 5, 4, 2, 1, '2023-08-03'),
(91, 34, 5, 2, 1, 13, '2023-08-03'),
(92, 34, 5, 1, 1, 1, '2023-08-03'),
(93, 34, 5, 4, 2, 1, '2023-08-03'),
(94, 35, 5, 1, 1, 1, '2023-08-04'),
(95, 35, 5, 2, 1, 13, '2023-08-04'),
(96, 35, 5, 4, 2, 1, '2023-08-04'),
(97, 36, 5, 2, 1, 13, '2023-08-04'),
(98, 36, 5, 4, 2, 1, '2023-08-04'),
(99, 36, 5, 1, 1, 1, '2023-08-04'),
(100, 37, 5, 4, 2, 1, '2023-08-04'),
(101, 37, 5, 1, 1, 1, '2023-08-04'),
(102, 37, 5, 2, 1, 13, '2023-08-04'),
(103, 38, 5, 1, 1, 1, '2023-08-04'),
(104, 38, 5, 4, 2, 1, '2023-08-04'),
(105, 38, 5, 2, 1, 13, '2023-08-04');

-- --------------------------------------------------------

--
-- Table structure for table `order_main`
--

DROP TABLE IF EXISTS `order_main`;
CREATE TABLE `order_main` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `buy_time` datetime NOT NULL,
  `pay_time` datetime DEFAULT NULL,
  `method_sid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_main`
--

INSERT INTO `order_main` (`sid`, `member_sid`, `amount`, `buy_time`, `pay_time`, `method_sid`, `name`, `address`, `phone`, `email`) VALUES
(13, 5, 3, '2023-08-02 16:15:14', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 5, 3, '2023-08-03 17:24:47', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 5, 3, '2023-08-03 19:10:09', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 5, 3, '2023-08-03 19:16:36', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 5, 3, '2023-08-03 19:17:48', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 5, 3, '2023-08-03 19:21:47', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 5, 3, '2023-08-03 19:22:09', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 5, 3, '2023-08-03 19:24:02', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 5, 3, '2023-08-03 19:24:04', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 5, 3, '2023-08-03 19:24:08', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 5, 3, '2023-08-03 19:24:08', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 5, 3, '2023-08-03 19:24:08', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 5, 3, '2023-08-03 19:24:08', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 5, 3, '2023-08-03 19:24:09', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 5, 3, '2023-08-03 19:24:09', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 5, 3, '2023-08-03 19:24:09', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 5, 3, '2023-08-03 19:24:11', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 5, 3, '2023-08-03 22:25:44', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 5, 3, '2023-08-03 22:31:16', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 5, 3, '2023-08-03 22:39:12', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 5, 3, '2023-08-03 23:09:04', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 5, 3, '2023-08-03 23:09:05', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 5, 3, '2023-08-04 02:09:21', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 5, 3, '2023-08-04 11:29:27', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 5, 3, '2023-08-04 11:43:13', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 5, 3, '2023-08-04 11:49:54', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_method`
--

DROP TABLE IF EXISTS `order_method`;
CREATE TABLE `order_method` (
  `sid` int(11) NOT NULL,
  `Method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_method`
--

INSERT INTO `order_method` (`sid`, `Method`) VALUES
(1, 'ATM'),
(2, 'LinePay'),
(3, 'ApplePay'),
(4, 'CreditCards'),
(5, 'CashOnDelivery');

-- --------------------------------------------------------

--
-- Table structure for table `order_payment`
--

DROP TABLE IF EXISTS `order_payment`;
CREATE TABLE `order_payment` (
  `sid` int(11) NOT NULL,
  `payment` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_payment`
--

INSERT INTO `order_payment` (`sid`, `payment`) VALUES
(1, 'finished');

-- --------------------------------------------------------

--
-- Table structure for table `order_product_type`
--

DROP TABLE IF EXISTS `order_product_type`;
CREATE TABLE `order_product_type` (
  `sid` int(11) NOT NULL,
  `product_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_product_type`
--

INSERT INTO `order_product_type` (`sid`, `product_type`) VALUES
(1, '課程(1)'),
(2, '衣服(2)'),
(3, '設備(3)'),
(4, '食品(4)');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_cart`
--
ALTER TABLE `order_cart`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `order_delivery_method`
--
ALTER TABLE `order_delivery_method`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `order_main`
--
ALTER TABLE `order_main`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `order_product_type`
--
ALTER TABLE `order_product_type`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_cart`
--
ALTER TABLE `order_cart`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `order_delivery_method`
--
ALTER TABLE `order_delivery_method`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `sid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `order_main`
--
ALTER TABLE `order_main`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `order_product_type`
--
ALTER TABLE `order_product_type`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
