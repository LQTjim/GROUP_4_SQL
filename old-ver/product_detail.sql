-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2023-05-18 15:53:22
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
-- 資料庫: `mfee_36_group_4`
--

-- --------------------------------------------------------

--
-- 資料表結構 `product_detail`
--

CREATE TABLE `product_detail` (
  `sid` int(19) NOT NULL,
  `product_id` int(19) NOT NULL,
  `price` int(19) NOT NULL,
  `stocks` int(19) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `color_id` int(19) NOT NULL,
  `size_id` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product_detail`
--

INSERT INTO `product_detail` (`sid`, `product_id`, `price`, `stocks`, `picture`, `created_at`, `color_id`, `size_id`) VALUES
(1, 111, 500, 100, 'xxx.jpg', '2023-05-18 15:45:16', 1, 2),
(2, 108, 1000, 100, 'xxx.jpg', '2023-05-18 15:45:16', 3, 3),
(3, 106, 1500, 100, 'xxx.jpg', '2023-05-18 15:45:16', 3, 2),
(4, 118, 1000, 99, 'xxx.jpg', '2023-05-18 15:45:16', 4, 2),
(5, 113, 1500, 56, 'xxx.jpg', '2023-05-18 15:45:16', 7, 3);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `sid` (`sid`,`price`,`product_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `size_id` (`size_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `product_detail_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `product_color` (`sid`),
  ADD CONSTRAINT `product_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_name` (`sid`),
  ADD CONSTRAINT `product_detail_ibfk_4` FOREIGN KEY (`size_id`) REFERENCES `product_size` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
