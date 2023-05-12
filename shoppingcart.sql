-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2023-05-12 16:30:26
-- 伺服器版本： 5.7.24
-- PHP 版本： 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `shoppingcart`
--

-- --------------------------------------------------------

--
-- 資料表結構 `order_cart`
--

CREATE TABLE `order_cart` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `products_type_sid` int(11) NOT NULL,
  `item_sid` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `order_cart`
--

INSERT INTO `order_cart` (`sid`, `member_sid`, `products_type_sid`, `item_sid`, `price`, `quantity`, `amount`, `created_at`) VALUES
(1, 4, 1, 4, '3000', '1', '3000', '2023-05-12 11:41:32'),
(2, 1, 2, 3, '500', '3', '1500', '2023-05-12 11:41:32'),
(3, 15, 1, 4, '1200', '1', '1200', '2023-05-12 14:48:42'),
(4, 12, 1, 10, '2500', '1', '2500', '2023-05-12 14:50:50'),
(5, 8, 1, 7, '2000', '1', '2000', '2023-05-12 14:50:50');

-- --------------------------------------------------------

--
-- 資料表結構 `order_detail`
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

-- --------------------------------------------------------

--
-- 資料表結構 `order_main`
--

CREATE TABLE `order_main` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `member_coupon_relation_sid` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `buy_time` datetime NOT NULL,
  `pay_time` datetime NOT NULL,
  `method_sid` int(11) NOT NULL,
  `payment` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `order_method`
--

CREATE TABLE `order_method` (
  `sid` int(11) NOT NULL,
  `Method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order_method`
--

INSERT INTO `order_method` (`sid`, `Method`) VALUES
(1, 'ATM'),
(2, 'LinePay'),
(3, 'ApplePay'),
(4, 'CreditCards'),
(5, 'CashOnDelivery');

-- --------------------------------------------------------

--
-- 資料表結構 `order_payment`
--

CREATE TABLE `order_payment` (
  `sid` int(11) NOT NULL,
  `payment` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `order_payment`
--

INSERT INTO `order_payment` (`sid`, `payment`) VALUES
(1, 'finished');

-- --------------------------------------------------------

--
-- 資料表結構 `order_product_type`
--

CREATE TABLE `order_product_type` (
  `sid` int(11) NOT NULL,
  `product_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `order_product_type`
--

INSERT INTO `order_product_type` (`sid`, `product_type`) VALUES
(1, 'lesson'),
(2, 'cloth'),
(3, 'equipment'),
(4, 'food');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `order_cart`
--
ALTER TABLE `order_cart`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `products_type_sid` (`products_type_sid`);

--
-- 資料表索引 `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `order_sid` (`order_sid`),
  ADD KEY `prduct_type_sid` (`prduct_type_sid`);

--
-- 資料表索引 `order_main`
--
ALTER TABLE `order_main`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `method_sid` (`method_sid`),
  ADD KEY `payment` (`payment`);

--
-- 資料表索引 `order_method`
--
ALTER TABLE `order_method`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `order_payment`
--
ALTER TABLE `order_payment`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `order_product_type`
--
ALTER TABLE `order_product_type`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_cart`
--
ALTER TABLE `order_cart`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `sid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_main`
--
ALTER TABLE `order_main`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_method`
--
ALTER TABLE `order_method`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_payment`
--
ALTER TABLE `order_payment`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_product_type`
--
ALTER TABLE `order_product_type`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `order_cart`
--
ALTER TABLE `order_cart`
  ADD CONSTRAINT `order_cart_ibfk_1` FOREIGN KEY (`products_type_sid`) REFERENCES `order_product_type` (`sid`);

--
-- 資料表的限制式 `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_sid`) REFERENCES `order_main` (`sid`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`prduct_type_sid`) REFERENCES `order_product_type` (`sid`);

--
-- 資料表的限制式 `order_main`
--
ALTER TABLE `order_main`
  ADD CONSTRAINT `order_main_ibfk_1` FOREIGN KEY (`method_sid`) REFERENCES `order_method` (`sid`),
  ADD CONSTRAINT `order_main_ibfk_2` FOREIGN KEY (`payment`) REFERENCES `order_payment` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
