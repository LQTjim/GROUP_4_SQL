-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 28, 2023 at 07:55 AM
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
(2, 5, 1, 3, 3, '2023-07-28 07:28:26'),
(3, 5, 2, 5, 4, '2023-07-28 07:28:40'),
(4, 5, 3, 7, 1, '2023-07-28 07:28:40'),
(5, 5, 4, 4, 1, '2023-07-28 07:28:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_cart`
--
ALTER TABLE `order_cart`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_cart`
--
ALTER TABLE `order_cart`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
