-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2023-05-12 10:40:13
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
-- 資料庫: `mfee_36_group_4_product`
--

-- --------------------------------------------------------

--
-- 資料表結構 `equipment_color`
--

CREATE TABLE `equipment_color` (
  `sid` int(19) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `equipment_color`
--

INSERT INTO `equipment_color` (`sid`, `color_name`) VALUES
(1, '黑'),
(2, '粉紅'),
(3, '淺藍'),
(4, '黃'),
(5, '綠');

-- --------------------------------------------------------

--
-- 資料表結構 `equipment_detail`
--

CREATE TABLE `equipment_detail` (
  `sid` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `stocks` int(19) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `added_time` datetime NOT NULL,
  `color_id` int(19) NOT NULL,
  `size_id` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `equipment_detail`
--

INSERT INTO `equipment_detail` (`sid`, `equipment_id`, `price`, `stocks`, `picture`, `added_time`, `color_id`, `size_id`) VALUES
(1, 1, 349, 100, 'xxx.jpg', '2023-05-11 17:17:42', 5, 5),
(2, 2, 999, 100, 'xxx.jpg', '2023-05-11 17:17:42', 1, 7);

-- --------------------------------------------------------

--
-- 資料表結構 `equipment_name`
--

CREATE TABLE `equipment_name` (
  `sid` int(19) NOT NULL,
  `equipment_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_id` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `equipment_name`
--

INSERT INTO `equipment_name` (`sid`, `equipment_name`, `description`, `category_id`) VALUES
(1, '六角啞鈴', '框架100%Iron外殼80%乾式丁苯橡膠,20%橡膠-順丁橡膠（BR）\r\n\r\n', 10),
(2, '壺鈴', '框架100% Iron保護套 80%乾天然橡膠,20%橡膠-異戊二烯橡膠（IR）彈力帶100%橡膠-乙烯丙烯橡膠（EPDM）', 12);

-- --------------------------------------------------------

--
-- 資料表結構 `equipment_size`
--

CREATE TABLE `equipment_size` (
  `sid` int(19) NOT NULL,
  `size` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `equipment_size`
--

INSERT INTO `equipment_size` (`sid`, `size`) VALUES
(1, '0.5kg'),
(2, '1kg'),
(3, '1.5kg'),
(4, '2kg'),
(5, '2.5kg'),
(6, '5kg'),
(7, '10kg'),
(8, '15kg'),
(9, '20kg'),
(10, '25kg');

-- --------------------------------------------------------

--
-- 資料表結構 `product_categories`
--

CREATE TABLE `product_categories` (
  `sid` int(19) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `parent_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product_categories`
--

INSERT INTO `product_categories` (`sid`, `categories_name`, `parent_sid`) VALUES
(1, '運動衣物', 0),
(2, '健身用品', 0),
(3, '食品', 0),
(4, '上衣', 1),
(5, '外套', 1),
(6, '下身', 1),
(8, '鞋類', 1),
(10, '啞鈴', 2),
(11, '槓鈴', 2),
(12, '壺鈴', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `product_color`
--

CREATE TABLE `product_color` (
  `sid` int(19) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product_color`
--

INSERT INTO `product_color` (`sid`, `color_name`) VALUES
(4, '橘'),
(9, '深藍'),
(2, '白'),
(3, '紅'),
(8, '紫'),
(6, '綠'),
(7, '藍'),
(5, '黃'),
(1, '黑');

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
  `added_data` datetime NOT NULL,
  `color_id` int(19) NOT NULL,
  `size_id` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product_detail`
--

INSERT INTO `product_detail` (`sid`, `product_id`, `price`, `stocks`, `picture`, `added_data`, `color_id`, `size_id`) VALUES
(1, 1, 500, 100, 'xxx.jpg', '2023-05-11 15:21:13', 3, 3),
(2, 4, 1200, 100, 'xxx.jpg', '2023-05-11 15:21:13', 7, 2),
(3, 5, 700, 100, 'xxx.jpg', '2023-05-11 15:21:13', 1, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `product_name`
--

CREATE TABLE `product_name` (
  `sid` int(19) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `category_id` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product_name`
--

INSERT INTO `product_name` (`sid`, `product_name`, `product_description`, `category_id`) VALUES
(1, '男款透氣快乾跑步背心\r\n', '主要布料 100% 聚酯纖維 背部布料 100% 聚酯纖維', 4),
(2, '男款初階健身短袖上衣', '主要布料 100% 聚酯纖維', 4),
(3, '男款登山健行2000mm防水外套', '主要布料100%聚酯纖維塗層100%聚氨酯纖維（PU）', 5),
(4, '男款防風連帽跑步外套', '主要布料100%聚酯纖維拼接面料100%聚酯纖維', 5),
(5, '男款初階健身短褲\r\n', '主要布料100%聚酯纖維', 6),
(6, '男款透氣穩定跑步緊身長褲RunDry', '主要布料87%聚酯纖維,13%彈性纖維', 6),
(7, '男款輕量緩震跑鞋', '鞋底70%乙烯醋酸乙烯共聚物（EVA）,30% 橡膠-再生手套鞋面95%聚酯纖維,5%熱塑性聚氨酯內底／鞋墊100%聚酯纖維', 8),
(8, '男款輕量緩震健行鞋(懶人鞋)\r\n', '鞋底 50%乙烯醋酸乙烯共聚物（EVA）,50%乾天然橡膠鞋面100%聚酯纖維內底／鞋墊100%聚酯纖維', 8);

-- --------------------------------------------------------

--
-- 資料表結構 `product_size`
--

CREATE TABLE `product_size` (
  `sid` int(19) NOT NULL,
  `size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product_size`
--

INSERT INTO `product_size` (`sid`, `size`) VALUES
(5, '2XL'),
(6, '3XL'),
(3, 'L'),
(2, 'M'),
(1, 'S'),
(4, 'XL');

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `test`
-- (請參考以下實際畫面)
--
CREATE TABLE `test` (
`sid` int(19)
,`product_name` varchar(255)
,`color_name` varchar(255)
,`size` varchar(255)
);

-- --------------------------------------------------------

--
-- 檢視表結構 `test`
--
DROP TABLE IF EXISTS `test`;

CREATE ALGORITHM=UNDEFINED DEFINER=`lin`@`%` SQL SECURITY DEFINER VIEW `test`  AS SELECT `pd`.`sid` AS `sid`, `pn`.`product_name` AS `product_name`, `pc`.`color_name` AS `color_name`, `ps`.`size` AS `size` FROM ((((`product_detail` `pd` join `product_color` `pc`) join `product_name` `pn`) join `product_size` `ps`) join `product_categories` `pcat`) WHERE ((`pd`.`product_id` = `pn`.`sid`) AND (`pd`.`color_id` = `pc`.`sid`) AND (`pd`.`size_id` = `ps`.`sid`))  ;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `equipment_color`
--
ALTER TABLE `equipment_color`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `equipment_detail`
--
ALTER TABLE `equipment_detail`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `equipment_id` (`equipment_id`,`size_id`,`color_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `size_id` (`size_id`);

--
-- 資料表索引 `equipment_name`
--
ALTER TABLE `equipment_name`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `equipment_name` (`equipment_name`),
  ADD KEY `category_id` (`category_id`);

--
-- 資料表索引 `equipment_size`
--
ALTER TABLE `equipment_size`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `color_name` (`color_name`);

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
-- 資料表索引 `product_name`
--
ALTER TABLE `product_name`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `product_name` (`product_name`),
  ADD KEY `category_id` (`category_id`);

--
-- 資料表索引 `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `product_size` (`size`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `equipment_color`
--
ALTER TABLE `equipment_color`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `equipment_detail`
--
ALTER TABLE `equipment_detail`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `equipment_name`
--
ALTER TABLE `equipment_name`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `equipment_size`
--
ALTER TABLE `equipment_size`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_color`
--
ALTER TABLE `product_color`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_name`
--
ALTER TABLE `product_name`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_size`
--
ALTER TABLE `product_size`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `equipment_detail`
--
ALTER TABLE `equipment_detail`
  ADD CONSTRAINT `equipment_detail_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `equipment_color` (`sid`),
  ADD CONSTRAINT `equipment_detail_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `equipment_size` (`sid`),
  ADD CONSTRAINT `equipment_detail_ibfk_3` FOREIGN KEY (`equipment_id`) REFERENCES `equipment_name` (`sid`);

--
-- 資料表的限制式 `equipment_name`
--
ALTER TABLE `equipment_name`
  ADD CONSTRAINT `equipment_name_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`sid`);

--
-- 資料表的限制式 `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `product_detail_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `product_color` (`sid`),
  ADD CONSTRAINT `product_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_name` (`sid`),
  ADD CONSTRAINT `product_detail_ibfk_4` FOREIGN KEY (`size_id`) REFERENCES `product_size` (`sid`);

--
-- 資料表的限制式 `product_name`
--
ALTER TABLE `product_name`
  ADD CONSTRAINT `product_name_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
