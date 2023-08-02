-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 02, 2023 at 07:46 AM
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
(53, 5, 4, 2, 1, '2023-08-01 07:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `sid` int(255) NOT NULL,
  `order_sid` int(255) NOT NULL,
  `member_sid` int(255) NOT NULL,
  `prduct_type_sid` int(255) NOT NULL,
  `item_sid` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`sid`, `order_sid`, `member_sid`, `prduct_type_sid`, `item_sid`, `quantity`, `created_at`) VALUES
(19, 6, 5, 1, 1, 1, '2023-08-02'),
(20, 6, 5, 2, 1, 13, '2023-08-02'),
(21, 6, 5, 4, 2, 1, '2023-08-02'),
(22, 7, 5, 4, 2, 1, '2023-08-02'),
(23, 7, 5, 2, 1, 13, '2023-08-02'),
(24, 7, 5, 1, 1, 1, '2023-08-02'),
(25, 8, 5, 2, 1, 13, '2023-08-02'),
(26, 8, 5, 4, 2, 1, '2023-08-02'),
(27, 8, 5, 1, 1, 1, '2023-08-02'),
(28, 9, 5, 4, 2, 1, '2023-08-02'),
(29, 9, 5, 2, 1, 13, '2023-08-02'),
(30, 9, 5, 1, 1, 1, '2023-08-02'),
(31, 10, 5, 2, 1, 13, '2023-08-02'),
(32, 10, 5, 4, 2, 1, '2023-08-02'),
(33, 10, 5, 1, 1, 1, '2023-08-02'),
(34, 10, 5, 1, 1, 1, '2023-08-02'),
(35, 10, 5, 2, 1, 13, '2023-08-02'),
(36, 10, 5, 4, 2, 1, '2023-08-02');

-- --------------------------------------------------------

--
-- Table structure for table `order_main`
--

CREATE TABLE `order_main` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `member_coupon_relation_sid` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `buy_time` datetime NOT NULL,
  `pay_time` datetime DEFAULT NULL,
  `method_sid` int(11) DEFAULT NULL,
  `payment` int(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_main`
--

INSERT INTO `order_main` (`sid`, `member_sid`, `member_coupon_relation_sid`, `amount`, `buy_time`, `pay_time`, `method_sid`, `payment`, `name`, `address`, `phone`, `email`) VALUES
(6, 5, NULL, 3, '2023-08-02 15:43:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 5, NULL, 3, '2023-08-02 15:43:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 5, NULL, 3, '2023-08-02 15:43:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 5, NULL, 3, '2023-08-02 15:43:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 5, NULL, 3, '2023-08-02 15:45:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 5, NULL, 3, '2023-08-02 15:45:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_method`
--

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
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `sid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `order_main`
--
ALTER TABLE `order_main`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_product_type`
--
ALTER TABLE `order_product_type`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
