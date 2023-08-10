-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 10, 2023 at 08:09 AM
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
-- Truncate table before insert `order_cart`
--

TRUNCATE TABLE `order_cart`;
--
-- Dumping data for table `order_cart`
--

INSERT INTO `order_cart` (`sid`, `member_sid`, `products_type_sid`, `item_sid`, `quantity`, `created_at`) VALUES
(50, 5, 1, 1, 12, '2023-08-01 07:34:27'),
(52, 5, 2, 1, 23, '2023-08-01 07:44:35'),
(54, 5, 4, 1, 10, '2023-08-04 14:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_method`
--

CREATE TABLE `order_delivery_method` (
  `sid` int(11) NOT NULL,
  `method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `order_delivery_method`
--

TRUNCATE TABLE `order_delivery_method`;
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
-- Truncate table before insert `order_detail`
--

TRUNCATE TABLE `order_detail`;
--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`sid`, `order_sid`, `member_sid`, `products_type_sid`, `item_sid`, `quantity`, `created_at`) VALUES
(314, 91, 5, 1, 1, 1, '2023-08-08'),
(315, 91, 5, 2, 1, 13, '2023-08-08'),
(316, 91, 5, 4, 2, 1, '2023-08-08'),
(317, 91, 5, 4, 1, 1, '2023-08-08'),
(318, 92, 5, 2, 1, 13, '2023-08-09'),
(319, 92, 5, 4, 2, 1, '2023-08-09'),
(320, 92, 5, 1, 1, 1, '2023-08-09'),
(321, 92, 5, 4, 1, 1, '2023-08-09'),
(322, 93, 5, 2, 1, 13, '2023-08-09'),
(323, 93, 5, 4, 2, 1, '2023-08-09'),
(324, 93, 5, 1, 1, 1, '2023-08-09'),
(325, 93, 5, 4, 1, 1, '2023-08-09'),
(326, 94, 5, 1, 1, 1, '2023-08-09'),
(327, 94, 5, 2, 1, 13, '2023-08-09'),
(328, 94, 5, 4, 2, 1, '2023-08-09'),
(329, 94, 5, 4, 1, 1, '2023-08-09'),
(330, 95, 5, 4, 2, 1, '2023-08-09'),
(331, 95, 5, 1, 1, 1, '2023-08-09'),
(332, 95, 5, 2, 1, 12, '2023-08-09'),
(333, 95, 5, 4, 1, 1, '2023-08-09'),
(334, 96, 5, 2, 1, 12, '2023-08-09'),
(335, 96, 5, 4, 1, 1, '2023-08-09'),
(336, 96, 5, 1, 1, 1, '2023-08-09'),
(337, 96, 5, 4, 2, 1, '2023-08-09'),
(338, 97, 5, 2, 1, 12, '2023-08-09'),
(339, 97, 5, 4, 2, 1, '2023-08-09'),
(340, 97, 5, 1, 1, 1, '2023-08-09'),
(341, 97, 5, 4, 1, 1, '2023-08-09'),
(342, 98, 5, 2, 1, 12, '2023-08-09'),
(343, 98, 5, 4, 1, 1, '2023-08-09'),
(344, 98, 5, 4, 2, 1, '2023-08-09'),
(345, 98, 5, 1, 1, 1, '2023-08-09'),
(346, 99, 5, 4, 2, 1, '2023-08-09'),
(347, 99, 5, 2, 1, 7, '2023-08-09'),
(348, 99, 5, 1, 1, 1, '2023-08-09'),
(349, 99, 5, 4, 1, 1, '2023-08-09'),
(350, 100, 5, 1, 1, 1, '2023-08-09'),
(351, 100, 5, 4, 2, 1, '2023-08-09'),
(352, 100, 5, 2, 1, 7, '2023-08-09'),
(353, 100, 5, 4, 1, 1, '2023-08-09'),
(354, 101, 5, 4, 1, 1, '2023-08-09'),
(355, 101, 5, 1, 1, 2, '2023-08-09'),
(356, 101, 5, 2, 1, 6, '2023-08-09'),
(357, 102, 5, 2, 1, 6, '2023-08-09'),
(358, 102, 5, 1, 1, 2, '2023-08-09'),
(359, 102, 5, 4, 1, 1, '2023-08-09'),
(360, 103, 5, 4, 1, 1, '2023-08-10'),
(361, 103, 5, 1, 1, 2, '2023-08-10'),
(362, 103, 5, 2, 1, 6, '2023-08-10'),
(363, 104, 5, 4, 1, 1, '2023-08-10'),
(364, 104, 5, 1, 1, 2, '2023-08-10'),
(365, 104, 5, 2, 1, 6, '2023-08-10'),
(366, 105, 5, 4, 1, 1, '2023-08-10'),
(367, 105, 5, 1, 1, 2, '2023-08-10'),
(368, 105, 5, 2, 1, 6, '2023-08-10'),
(369, 106, 5, 2, 1, 11, '2023-08-10'),
(370, 106, 5, 4, 1, 5, '2023-08-10'),
(371, 106, 5, 1, 1, 5, '2023-08-10'),
(372, 107, 5, 2, 1, 5, '2023-08-10'),
(373, 107, 5, 4, 1, 5, '2023-08-10'),
(374, 107, 5, 1, 1, 5, '2023-08-10'),
(375, 108, 5, 1, 1, 7, '2023-08-10'),
(376, 108, 5, 2, 1, 2, '2023-08-10'),
(377, 108, 5, 4, 1, 7, '2023-08-10'),
(378, 109, 5, 1, 1, 7, '2023-08-10'),
(379, 109, 5, 2, 1, 2, '2023-08-10'),
(380, 109, 5, 4, 1, 7, '2023-08-10'),
(381, 110, 5, 1, 1, 9, '2023-08-10'),
(382, 110, 5, 2, 1, 1, '2023-08-10'),
(383, 110, 5, 4, 1, 10, '2023-08-10'),
(384, 111, 5, 4, 1, 10, '2023-08-10'),
(385, 111, 5, 1, 1, 9, '2023-08-10'),
(386, 111, 5, 2, 1, 28, '2023-08-10'),
(387, 112, 5, 2, 1, 28, '2023-08-10'),
(388, 112, 5, 1, 1, 9, '2023-08-10'),
(389, 112, 5, 4, 1, 10, '2023-08-10'),
(390, 113, 5, 1, 1, 9, '2023-08-10'),
(391, 113, 5, 2, 1, 28, '2023-08-10'),
(392, 113, 5, 4, 1, 10, '2023-08-10'),
(393, 114, 5, 2, 1, 28, '2023-08-10'),
(394, 114, 5, 1, 1, 9, '2023-08-10'),
(395, 114, 5, 4, 1, 10, '2023-08-10'),
(396, 115, 5, 1, 1, 9, '2023-08-10'),
(397, 115, 5, 2, 1, 28, '2023-08-10'),
(398, 115, 5, 4, 1, 10, '2023-08-10'),
(399, 116, 5, 2, 1, 28, '2023-08-10'),
(400, 116, 5, 1, 1, 9, '2023-08-10'),
(401, 116, 5, 4, 1, 10, '2023-08-10'),
(402, 117, 5, 2, 1, 28, '2023-08-10'),
(403, 117, 5, 4, 1, 10, '2023-08-10'),
(404, 117, 5, 1, 1, 9, '2023-08-10'),
(405, 118, 5, 2, 1, 28, '2023-08-10'),
(406, 118, 5, 4, 1, 10, '2023-08-10'),
(407, 118, 5, 1, 1, 9, '2023-08-10'),
(408, 119, 5, 2, 1, 28, '2023-08-10'),
(409, 119, 5, 1, 1, 9, '2023-08-10'),
(410, 119, 5, 4, 1, 10, '2023-08-10'),
(411, 120, 5, 2, 1, 28, '2023-08-10'),
(412, 120, 5, 1, 1, 9, '2023-08-10'),
(413, 120, 5, 4, 1, 10, '2023-08-10'),
(414, 121, 5, 2, 1, 28, '2023-08-10'),
(415, 121, 5, 1, 1, 9, '2023-08-10'),
(416, 121, 5, 4, 1, 10, '2023-08-10'),
(417, 122, 5, 2, 1, 28, '2023-08-10'),
(418, 122, 5, 4, 1, 10, '2023-08-10'),
(419, 122, 5, 1, 1, 9, '2023-08-10'),
(420, 123, 5, 4, 1, 10, '2023-08-10'),
(421, 123, 5, 1, 1, 9, '2023-08-10'),
(422, 123, 5, 2, 1, 23, '2023-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `order_main`
--

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
-- Truncate table before insert `order_main`
--

TRUNCATE TABLE `order_main`;
--
-- Dumping data for table `order_main`
--

INSERT INTO `order_main` (`sid`, `member_sid`, `amount`, `buy_time`, `pay_time`, `method_sid`, `name`, `address`, `phone`, `email`) VALUES
(91, 5, 4, '2023-08-08 15:42:16', NULL, 5, '林咖波', '台北市北投區復興二路29號', '0918768068', 'mail62055@test.com'),
(92, 5, 4, '2023-08-09 14:33:27', NULL, 4, '林咖波', '台北市北投區復興二路29號', '0918768068', 'mail62055@test.com'),
(93, 5, 4, '2023-08-09 15:49:19', NULL, 5, '林咖波', '台北市北投區復興二路29號', '0918768068', 'mail62055@test.com'),
(94, 5, 4, '2023-08-09 16:44:00', NULL, 4, '林咖波', '台北市北投區復興二路29號', '0918768068', 'mail62055@test.com'),
(95, 5, 4, '2023-08-09 16:45:44', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 5, 4, '2023-08-09 16:52:29', NULL, 4, '林咖波', '台北市北投區復興二路29號', '0918768068', 'mail62055@test.com'),
(97, 5, 4, '2023-08-09 16:56:50', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 5, 4, '2023-08-09 16:59:45', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 5, 4, '2023-08-09 17:23:30', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 5, 4, '2023-08-09 17:24:06', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 5, 3, '2023-08-09 17:31:38', NULL, 4, '林咖波', '台北市北投區復興二路29號', '0918768068', 'mail62055@test.com'),
(102, 5, 3, '2023-08-09 17:33:18', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 5, 3, '2023-08-10 11:42:58', NULL, 4, '林咖波', '台北市北投區復興二路29號', '0918768068', 'mail62055@test.com'),
(104, 5, 3, '2023-08-10 12:09:15', NULL, 4, '林咖波', '台北市北投區復興二路29號', '0918768068', 'mail62055@test.com'),
(105, 5, 3, '2023-08-10 12:14:38', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 5, 3, '2023-08-10 12:14:47', NULL, 5, '林咖波', '台北市北投區復興二路29號', '0918768068', 'mail62055@test.com'),
(107, 5, 3, '2023-08-10 12:15:28', NULL, 4, '林咖波', '台北市北投區復興二路29號', '0918768068', 'mail62055@test.com'),
(108, 5, 3, '2023-08-10 12:20:59', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 5, 3, '2023-08-10 12:21:00', NULL, 5, '林咖波', '台北市北投區復興二路29號', '0918768068', 'mail62055@test.com'),
(110, 5, 3, '2023-08-10 12:21:31', NULL, 1, '林咖波', '台北市北投區復興二路29號', '0918768068', 'mail62055@test.com'),
(112, 5, 3, '2023-08-10 12:23:57', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 5, 3, '2023-08-10 12:24:02', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 5, 3, '2023-08-10 12:24:12', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 5, 3, '2023-08-10 12:24:17', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 5, 3, '2023-08-10 14:57:42', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 5, 3, '2023-08-10 15:07:11', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 5, 3, '2023-08-10 15:07:36', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 5, 3, '2023-08-10 15:08:17', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 5, 3, '2023-08-10 15:09:27', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 5, 3, '2023-08-10 15:25:48', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 5, 3, '2023-08-10 15:29:49', NULL, 4, '林咖波', '台北市北投區復興二路29號', '0918768068', 'mail62055@test.com'),
(123, 5, 3, '2023-08-10 15:34:36', NULL, 5, '林咖波', '台北市北投區復興二路29號', '0918768068', 'mail62055@test.com');

-- --------------------------------------------------------

--
-- Table structure for table `order_method`
--

CREATE TABLE `order_method` (
  `sid` int(11) NOT NULL,
  `Method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `order_method`
--

TRUNCATE TABLE `order_method`;
--
-- Dumping data for table `order_method`
--

INSERT INTO `order_method` (`sid`, `Method`) VALUES
(1, 'ATM轉帳'),
(2, 'LinePay'),
(3, 'ApplePay'),
(4, '信用卡支付'),
(5, '現金支付');

-- --------------------------------------------------------

--
-- Table structure for table `order_payment`
--

CREATE TABLE `order_payment` (
  `sid` int(11) NOT NULL,
  `payment` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncate table before insert `order_payment`
--

TRUNCATE TABLE `order_payment`;
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
-- Truncate table before insert `order_product_type`
--

TRUNCATE TABLE `order_product_type`;
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
  MODIFY `sid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;

--
-- AUTO_INCREMENT for table `order_main`
--
ALTER TABLE `order_main`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `order_product_type`
--
ALTER TABLE `order_product_type`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
