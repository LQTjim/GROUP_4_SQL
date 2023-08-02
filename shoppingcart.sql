-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 02, 2023 at 03:52 AM
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
  `item_sid` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`sid`, `order_sid`, `member_sid`, `prduct_type_sid`, `item_sid`, `price`, `quantity`, `amount`) VALUES
(1, 11, 538, 1, '7', 2000, 1, '2000');

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
  `method_sid` int(11) NOT NULL,
  `payment` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_main`
--

INSERT INTO `order_main` (`sid`, `member_sid`, `member_coupon_relation_sid`, `amount`, `buy_time`, `pay_time`, `method_sid`, `payment`) VALUES
(1, 5, NULL, 1, '2023-08-02 03:51:28', NULL, 1, NULL),
(2, 5, NULL, 3, '2023-08-02 03:51:35', NULL, 3, NULL),
(3, 5, NULL, 2, '2023-08-02 03:51:40', NULL, 1, NULL),
(4, 5, NULL, 55, '2023-08-02 03:51:46', NULL, 2, NULL);

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
-- AUTO_INCREMENT for table `order_main`
--
ALTER TABLE `order_main`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_product_type`
--
ALTER TABLE `order_product_type`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
