-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 01, 2023 at 02:52 PM
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
-- Database: `0724_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `member_favorite_products`
--

DROP TABLE IF EXISTS `member_favorite_products`;
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
(20, 5, 7, 2),
(21, 50, 1, 1),
(25, 50, 1, 2),
(28, 50, 1, 3),
(26, 50, 2, 2),
(27, 50, 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member_favorite_products`
--
ALTER TABLE `member_favorite_products`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `member_sid` (`member_sid`,`product_sid`,`category_sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member_favorite_products`
--
ALTER TABLE `member_favorite_products`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
