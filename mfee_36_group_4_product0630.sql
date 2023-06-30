-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2023-06-30 17:14:01
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
-- 資料表結構 `equipment_description`
--

CREATE TABLE `equipment_description` (
  `sid` int(19) NOT NULL,
  `col1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `equipment_name`
--

CREATE TABLE `equipment_name` (
  `sid` int(19) NOT NULL,
  `equipment_name` varchar(255) NOT NULL,
  `category_id` int(19) NOT NULL,
  `price` int(19) NOT NULL DEFAULT '1000',
  `stocks` int(19) NOT NULL DEFAULT '100',
  `picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `equipment_name`
--

INSERT INTO `equipment_name` (`sid`, `equipment_name`, `category_id`, `price`, `stocks`, `picture`, `created_at`) VALUES
(1, '啞鈴 0.5kg', 12, 600, 100, 'eq_dumbbell_type01_005_01.jpg,eq_dumbbell_type01_005_02.jpg,eq_dumbbell_type01_005_03.jpg', '2023-06-30 08:46:22'),
(2, '啞鈴1kg', 12, 660, 100, 'eq_dumbbell_type01_010_01.jpg,eq_dumbbell_type01_010_02.jpg,eq_dumbbell_type01_010_03.jpg', '2023-06-30 08:46:25'),
(3, '啞鈴1.5kg', 12, 720, 100, 'eq_dumbbell_type01_015_01.jpg,eq_dumbbell_type01_015_02.jpg,eq_dumbbell_type01_015_03.jpg', '2023-06-30 09:11:22'),
(4, '啞鈴2kg', 12, 780, 100, 'eq_dumbbell_type01_020_01.jpg,eq_dumbbell_type01_020_02.jpg,eq_dumbbell_type01_020_03.jpg', '2023-06-30 09:11:22'),
(5, '啞鈴3kg', 12, 840, 100, 'eq_dumbbell_type01_030_01.jpg,eq_dumbbell_type01_030_02.jpg,eq_dumbbell_type01_030_03.jpg', '2023-06-30 09:12:10');

-- --------------------------------------------------------

--
-- 資料表結構 `food_description`
--

CREATE TABLE `food_description` (
  `sid` int(11) NOT NULL,
  `col1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `food_name`
--

CREATE TABLE `food_name` (
  `sid` int(11) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `stocks` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `food_name`
--

INSERT INTO `food_name` (`sid`, `food_name`, `category_id`, `price`, `stocks`, `picture`, `created_at`) VALUES
(1, '【門市限定】ON全乳清蛋白(雙倍濃郁巧克力/2.26kg)', 10, 2699, 100, 'fd00101.jpg', '2023-06-30 09:02:50'),
(2, '【門市限定】ON 黃金比例分離乳清 (巧克力/2.36kg)', 10, 3799, 100, 'fd00201.jpg', '2023-06-30 09:03:28'),
(3, 'Carman\'s 海鹽巧克力杏仁蛋白棒 (40g x 5包入)', 11, 179, 100, 'fd00301.jpg', '2023-06-30 09:04:29'),
(4, '能量水果軟糖 (草莓口味) 10gx9顆入', 11, 99, 100, 'fd00401.jpg', '2023-06-30 09:09:00'),
(5, 'Carman\'s 莓果希臘優格蛋白棒 (40g x 5包入)', 11, 179, 100, 'fd00501.jpg', '2023-06-30 09:09:00');

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
(2, '健身食品', 0),
(3, '健身器材', 0),
(4, '教練課程', 0),
(5, '上衣類', 1),
(6, '外套類', 1),
(7, '下身類', 1),
(8, '鞋類', 1),
(9, '內衣褲類', 1),
(10, '蛋白粉', 2),
(11, '能量補給', 2),
(12, '重量訓練', 3),
(13, '瑜珈', 3),
(14, '有氧運動', 3),
(15, '短袖上衣', 5),
(16, '長袖上衣', 5),
(17, '內衣', 5);

-- --------------------------------------------------------

--
-- 資料表結構 `product_color`
--

CREATE TABLE `product_color` (
  `sid` int(19) NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `color_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product_color`
--

INSERT INTO `product_color` (`sid`, `color_name`, `color_code`) VALUES
(1, '黑', NULL),
(2, '白', NULL),
(3, '紅', NULL),
(4, '橘', NULL),
(5, '黃', NULL),
(6, '綠', NULL),
(7, '藍', NULL),
(8, '紫', NULL),
(9, '深藍', NULL),
(10, '灰', NULL),
(11, '咖啡', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `product_comment`
--

CREATE TABLE `product_comment` (
  `sid` int(19) NOT NULL,
  `member_sid` int(19) NOT NULL,
  `product_name_sid` int(19) NOT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `product_description`
--

CREATE TABLE `product_description` (
  `sid` int(19) NOT NULL,
  `col1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `product_detail`
--

CREATE TABLE `product_detail` (
  `sid` int(19) NOT NULL,
  `product_name_sid` varchar(255) NOT NULL,
  `stocks` int(19) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `color_id` int(19) NOT NULL,
  `size_id` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product_detail`
--

INSERT INTO `product_detail` (`sid`, `product_name_sid`, `stocks`, `picture`, `created_at`, `color_id`, `size_id`) VALUES
(1, '1', 100, 'st0010101.jpg,st0010102.jpg,st0010103.jpg,st0010104.jpg', '2023-05-16 10:17:13', 10, 1),
(2, '1', 100, 'st0010101.jpg,st0010102.jpg,st0010103.jpg,st0010104.jpg', '2023-05-16 10:17:13', 10, 2),
(3, '1', 100, 'st0010101.jpg,st0010102.jpg,st0010103.jpg,st0010104.jpg', '2023-05-16 10:17:13', 10, 3),
(4, '1', 100, 'st0010101.jpg,st0010102.jpg,st0010103.jpg,st0010104.jpg', '2023-05-16 10:17:13', 10, 4),
(5, '1', 100, 'st0010201.jpg', '2023-05-16 10:17:13', 3, 1),
(6, '1', 100, 'st0010201.jpg', '2023-05-16 10:17:13', 3, 2),
(7, '1', 100, 'st0010201.jpg', '2023-05-16 10:17:13', 3, 3),
(8, '1', 100, 'st0010201.jpg', '2023-05-16 10:17:13', 3, 4),
(9, '2', 100, 'st0020101.jpg,st0020102.jpg,st0020103.jpg,st0020104.jpg,st0020105.jpg', '2023-05-16 10:17:13', 7, 1),
(10, '2', 100, 'st0020101.jpg,st0020102.jpg,st0020103.jpg,st0020104.jpg,st0020105.jpg', '2023-05-16 10:17:13', 7, 5),
(11, '2', 100, 'st0020101.jpg,st0020102.jpg,st0020103.jpg,st0020104.jpg,st0020105.jpg', '2023-05-16 10:17:13', 7, 6),
(12, '2', 100, 'st0020101.jpg,st0020102.jpg,st0020103.jpg,st0020104.jpg,st0020105.jpg', '2023-05-16 10:17:13', 7, 4),
(13, '2', 100, 'st0020201.jpg,st0020202.jpg,st0020203.jpg,st0020204.jpg,st0020205.jpg,st0020206.jpg,st0020207.jpg,st0020208.jpg', '2023-05-16 10:17:13', 10, 1),
(14, '2', 100, 'st0020201.jpg,st0020202.jpg,st0020203.jpg,st0020204.jpg,st0020205.jpg,st0020206.jpg,st0020207.jpg,st0020208.jpg', '2023-05-16 10:17:13', 10, 2),
(15, '2', 100, 'st0020201.jpg,st0020202.jpg,st0020203.jpg,st0020204.jpg,st0020205.jpg,st0020206.jpg,st0020207.jpg,st0020208.jpg', '2023-05-16 10:17:13', 10, 3),
(16, '2', 100, 'st0020201.jpg,st0020202.jpg,st0020203.jpg,st0020204.jpg,st0020205.jpg,st0020206.jpg,st0020207.jpg,st0020208.jpg', '2023-05-16 10:17:13', 10, 4),
(17, '3', 100, 'st0030101.jpg,st0030102.jpg,st0030103.jpg,st0030104.jpg,st0030105.jpg,st0030106.jpg', '2023-05-16 10:17:13', 2, 1),
(18, '3', 100, 'st0030101.jpg,st0030102.jpg,st0030103.jpg,st0030104.jpg,st0030105.jpg,st0030106.jpg', '2023-05-16 10:17:13', 2, 2),
(19, '3', 100, 'st0030101.jpg,st0030102.jpg,st0030103.jpg,st0030104.jpg,st0030105.jpg,st0030106.jpg', '2023-05-16 10:17:13', 2, 3),
(20, '3', 100, 'st0030101.jpg,st0030102.jpg,st0030103.jpg,st0030104.jpg,st0030105.jpg,st0030106.jpg', '2023-05-16 10:17:13', 2, 4),
(21, '3', 100, 'st0030201.jpg,st0030202.jpg,st0030203.jpg,st0030204.jpg,st0030205.jpg', '2023-05-16 10:17:13', 1, 1),
(22, '3', 100, 'st0030201.jpg,st0030202.jpg,st0030203.jpg,st0030204.jpg,st0030205.jpg', '2023-05-16 10:17:13', 1, 2),
(23, '3', 100, 'st0030201.jpg,st0030202.jpg,st0030203.jpg,st0030204.jpg,st0030205.jpg', '2023-05-16 10:17:13', 1, 3),
(24, '3', 100, 'st0030201.jpg,st0030202.jpg,st0030203.jpg,st0030204.jpg,st0030205.jpg', '2023-05-16 10:17:13', 1, 4),
(25, '4', 100, 'st0040101.jpg,st0040102.jpg,st0040103.jpg,st0040104.jpg,st0040105.jpg,st0040106.jpg,st0040107.jpg', '2023-05-16 10:17:13', 1, 1),
(26, '4', 100, 'st0040101.jpg,st0040102.jpg,st0040103.jpg,st0040104.jpg,st0040105.jpg,st0040106.jpg,st0040107.jpg', '2023-05-16 10:17:13', 1, 2),
(27, '4', 100, 'st0040101.jpg,st0040102.jpg,st0040103.jpg,st0040104.jpg,st0040105.jpg,st0040106.jpg,st0040107.jpg', '2023-05-16 10:17:13', 1, 3),
(28, '4', 100, 'st0040101.jpg,st0040102.jpg,st0040103.jpg,st0040104.jpg,st0040105.jpg,st0040106.jpg,st0040107.jpg', '2023-05-16 10:17:13', 1, 4),
(29, '4', 100, 'st0040201.jpg,st0040202.jpg,st0040203.jpg,st0040204.jpg,st0040205.jpg', '2023-05-16 10:17:13', 2, 1),
(30, '4', 100, 'st0040201.jpg,st0040202.jpg,st0040203.jpg,st0040204.jpg,st0040205.jpg', '2023-05-16 10:17:13', 2, 2),
(31, '4', 100, 'st0040201.jpg,st0040202.jpg,st0040203.jpg,st0040204.jpg,st0040205.jpg', '2023-05-16 10:17:13', 2, 3),
(32, '4', 100, 'st0040201.jpg,st0040202.jpg,st0040203.jpg,st0040204.jpg,st0040205.jpg', '2023-05-16 10:17:13', 2, 4),
(33, '5', 100, 'st0050101.jpg,st0050102.jpg,st0050103.jpg,st0050104.jpg,st0050105.jpg,st0050106.jpg,st0050107.jpg', '2023-05-16 10:17:13', 1, 1),
(34, '5', 100, 'st0050101.jpg,st0050102.jpg,st0050103.jpg,st0050104.jpg,st0050105.jpg,st0050106.jpg,st0050107.jpg', '2023-05-16 10:17:13', 1, 2),
(35, '5', 100, 'st0050101.jpg,st0050102.jpg,st0050103.jpg,st0050104.jpg,st0050105.jpg,st0050106.jpg,st0050107.jpg', '2023-05-16 10:17:13', 1, 3),
(36, '5', 100, 'st0050101.jpg,st0050102.jpg,st0050103.jpg,st0050104.jpg,st0050105.jpg,st0050106.jpg,st0050107.jpg', '2023-05-16 10:17:13', 1, 4),
(37, '5', 100, 'st0050201.jpg,st0050202.jpg,st0050203.jpg,st0050204.jpg,st0050205.jpg,st0050206.jpg', '2023-05-16 10:17:13', 7, 1),
(38, '5', 100, 'st0050201.jpg,st0050202.jpg,st0050203.jpg,st0050204.jpg,st0050205.jpg,st0050206.jpg', '2023-05-16 10:17:13', 7, 2),
(39, '5', 100, 'st0050201.jpg,st0050202.jpg,st0050203.jpg,st0050204.jpg,st0050205.jpg,st0050206.jpg', '2023-05-16 10:17:13', 7, 3),
(40, '5', 100, 'st0050201.jpg,st0050202.jpg,st0050203.jpg,st0050204.jpg,st0050205.jpg,st0050206.jpg', '2023-05-16 10:17:13', 7, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `product_name`
--

CREATE TABLE `product_name` (
  `sid` int(19) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` int(19) DEFAULT NULL,
  `price` int(19) DEFAULT NULL,
  `picture` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product_name`
--

INSERT INTO `product_name` (`sid`, `product_name`, `category_id`, `price`, `picture`, `created_at`) VALUES
(1, '男士合成短袖遠足T恤', 5, 100, 'st0010101.jpg', '2023-06-30 07:25:46'),
(2, '男士透氣圓領 Essential Fitness T恤 - 斑駁灰色\r\n', 5, 100, 'st0020101.jpg', '2023-06-30 07:25:46'),
(3, '男士健身 T 卹 100 Sportee - 白色\r\n', 5, 100, 'st0030101.jpg', '0000-00-00 00:00:00'),
(4, '男士圓領透氣健身 T 卹 - 米色\r\n', 5, 100, 'st0040101.jpg', '0000-00-00 00:00:00'),
(5, 'Triban Essential 吸濕排汗短袖公路自行車騎行服男式\r\n', 5, 100, 'st0050101.jpg', '0000-00-00 00:00:00'),
(6, '男士跑步透氣 T 卹 Dry+ - 黑色\r\n', 5, 100, 'st0060101.jpg', '0000-00-00 00:00:00'),
(7, 'Inesis，短袖高爾夫 Polo 衫，男士', 5, 100, 'st0070101.jpg', '0000-00-00 00:00:00'),
(8, 'Forclaz Travel 100 美利奴羊毛遠足 T 恤男式', 5, 100, 'st0080101.jpg', '0000-00-00 00:00:00'),
(9, '男士基本款短袖網球 T 恤 - 白色', 5, 100, 'st0090101.jpg', '0000-00-00 00:00:00'),
(10, 'Van Rysel 透氣公路自行車賽車服男式\r\n', 5, 100, 'st0100101.jpg', '0000-00-00 00:00:00'),
(11, '男士基本款短袖網球 Polo 衫 - 海軍藍\r\n', 5, 100, 'st0110101.jpg', '0000-00-00 00:00:00'),
(12, '男士徒步合成短袖 T 卹 MH500\r\n', 5, 100, 'st0120101.jpg', '0000-00-00 00:00:00'),
(13, '男式 Quechua NH500 棉混紡遠足 T 卹\r\n', 5, 100, 'st0130101.jpg', '0000-00-00 00:00:00'),
(14, 'NH550 Fresh 徒步旅行 T 卹男式\r\n', 5, 100, 'st0140101.jpg', '0000-00-00 00:00:00'),
(15, 'Forclaz Trek 500 長袖美利奴羊毛徒步 T 卹男式\r\n', 5, 100, 'st0150101.jpg', '0000-00-00 00:00:00'),
(16, '男士短袖公路自行車夏季騎行服 RC500 - 海軍藍\r\n', 5, 100, 'st0160101.jpg', '0000-00-00 00:00:00'),
(17, '男式短袖棉質迷彩狩獵 T 卹\r\n', 5, 100, 'st0170101.jpg', '0000-00-00 00:00:00'),
(18, '男士普拉提和溫和健身房修身運動 T 卹 520\r\n', 5, 100, 'st0180101.jpg', '0000-00-00 00:00:00'),
(19, 'Nyamba 500 彈力棉質健身 T 卹男式\r\n', 5, 100, 'st0190101.jpg', '0000-00-00 00:00:00'),
(20, 'Forclaz Trek 500 拉鍊長袖美利奴羊毛徒步 T 卹男式\r\n', 5, 100, 'st0200101.jpg', '0000-00-00 00:00:00'),
(21, 'Inesis 男士輕質高爾夫 Polo 衫', 5, 100, 'st0210101.jpg', '0000-00-00 00:00:00'),
(22, 'Domyos 動悅適 無縫短袖力量瑜伽 T 卹 男士\r\n', 5, 100, 'st0220101.jpg', '0000-00-00 00:00:00'),
(23, 'Kiprun Skincare 男士透氣跑步 T 卹\r\n', 5, 100, 'st0230101.jpg', '0000-00-00 00:00:00'),
(24, 'Neo Racer 男式公路自行車騎行服\r\n', 5, 100, 'st0240101.jpg', '0000-00-00 00:00:00'),
(25, '男式高爾夫馬球長袖 - MW500 海軍藍\r\n', 5, 100, 'st0250101.jpg', '0000-00-00 00:00:00'),
(26, 'Kiprun Care 男式透氣跑步 T 卹\r\n', 5, 100, 'st0260101.jpg', '0000-00-00 00:00:00'),
(27, 'Solognac 100 男士透氣短袖狩獵 T 卹\r\n', 5, 100, 'st0270101.jpg', '0000-00-00 00:00:00'),
(28, 'Kiprun 男士輕薄透氣跑步 T 卹\r\n', 5, 100, 'st0280101.jpg', '0000-00-00 00:00:00'),
(29, 'Forclaz Travel 500 男式可調節登山襯衫\r\n', 5, 100, 'st0290101.jpg', '0000-00-00 00:00:00'),
(30, '男士長袖健身 T 卹 100 - 黑色\r\n', 5, 100, 'st0300101.jpg', '0000-00-00 00:00:00'),
(31, '男士步行長褲 - 灰色\r\n', 7, 100, 'pt0010101.jpg', '0000-00-00 00:00:00'),
(32, '城市騎行防雨褲帶內置套鞋 100 - 黑色\r\n', 7, 100, 'pt0020101.jpg', '0000-00-00 00:00:00'),
(33, 'Quechua MH150 多種穿法登山褲 男士\r\n', 7, 100, 'pt0030101.jpg', '0000-00-00 00:00:00'),
(34, '男士山地徒步耐用二合一拉鍊長褲 MT100\r\n', 7, 100, 'pt0040101.jpg', '0000-00-00 00:00:00'),
(35, 'Kalenji Run 男式保暖跑步緊身褲\r\n', 7, 100, 'pt0050101.jpg', '0000-00-00 00:00:00'),
(36, '男士防水登山褲 NH500 Imper\r\n', 7, 100, 'pt0060101.jpg', '0000-00-00 00:00:00'),
(37, 'Btwin 100 男士公路自行車緊身褲\r\n', 7, 100, 'pt0070101.jpg', '0000-00-00 00:00:00'),
(38, 'Quechua SH100 X-Warm 防水男式雪地徒步褲\r\n', 7, 100, 'pt0080101.jpg', '0000-00-00 00:00:00'),
(39, 'Travel 100 男士旅行背包工裝褲\r\n', 7, 100, 'pt0090101.jpg', '0000-00-00 00:00:00'),
(40, '男士保暖滑雪褲 100 - 黑色\r\n', 7, 100, 'pt0100101.jpg', '0000-00-00 00:00:00'),
(41, '男士跑步透氣長褲襪 - 黑色\r\n', 7, 100, 'pt0110101.jpg', '0000-00-00 00:00:00'),
(42, 'Quechua MH100M 男士登山褲\r\n', 7, 100, 'pt0120101.jpg', '0000-00-00 00:00:00'),
(43, '男式堅固山地背包褲 - MT500\r\n', 7, 100, 'pt0130101.jpg', '0000-00-00 00:00:00'),
(44, 'Quechua SH500 X-Warm 防水雪地徒步褲男式\r\n', 7, 100, 'pt0140101.jpg', '0000-00-00 00:00:00'),
(45, '男士保暖滑雪褲 180 - 黑色\r\n', 7, 100, 'pt0150101.jpg', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 資料表結構 `product_rating`
--

CREATE TABLE `product_rating` (
  `sid` int(19) NOT NULL,
  `rating` int(1) DEFAULT NULL,
  `product_name_sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- 資料表結構 `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `test`
-- (請參考以下實際畫面)
--
CREATE TABLE `test` (
);

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `test1`
-- (請參考以下實際畫面)
--
CREATE TABLE `test1` (
);

-- --------------------------------------------------------

--
-- 檢視表結構 `test`
--
DROP TABLE IF EXISTS `test`;

CREATE ALGORITHM=UNDEFINED DEFINER=`lin`@`%` SQL SECURITY DEFINER VIEW `test`  AS SELECT `pd`.`sid` AS `sid`, `pn`.`product_name` AS `product_name`, `pc`.`color_name` AS `color_name`, `ps`.`size` AS `size` FROM ((((`product_detail` `pd` join `product_color` `pc`) join `product_name` `pn`) join `product_size` `ps`) join `product_categories` `pcat`) WHERE ((`pd`.`product_id` = `pn`.`sid`) AND (`pd`.`color_id` = `pc`.`sid`) AND (`pd`.`size_id` = `ps`.`sid`))  ;

-- --------------------------------------------------------

--
-- 檢視表結構 `test1`
--
DROP TABLE IF EXISTS `test1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`lin`@`%` SQL SECURITY DEFINER VIEW `test1`  AS SELECT `pd`.`sid` AS `sid`, `pn`.`product_name` AS `product_name`, `pc`.`color_name` AS `color_name`, `ps`.`size` AS `size` FROM ((((`product_detail` `pd` join `product_color` `pc`) join `product_name` `pn`) join `product_size` `ps`) join `product_categories` `pcat`) WHERE ((`pd`.`product_id` = `pn`.`sid`) AND (`pd`.`color_id` = `pc`.`sid`) AND (`pd`.`size_id` = `ps`.`sid`))  ;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `equipment_description`
--
ALTER TABLE `equipment_description`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `equipment_name`
--
ALTER TABLE `equipment_name`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `food_description`
--
ALTER TABLE `food_description`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `food_name`
--
ALTER TABLE `food_name`
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
-- 資料表索引 `product_comment`
--
ALTER TABLE `product_comment`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `product_description`
--
ALTER TABLE `product_description`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `color_id` (`color_id`);

--
-- 資料表索引 `product_name`
--
ALTER TABLE `product_name`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `product_name` (`product_name`);

--
-- 資料表索引 `product_rating`
--
ALTER TABLE `product_rating`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `product_size` (`size`);

--
-- 資料表索引 `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `equipment_description`
--
ALTER TABLE `equipment_description`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `equipment_name`
--
ALTER TABLE `equipment_name`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `food_description`
--
ALTER TABLE `food_description`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `food_name`
--
ALTER TABLE `food_name`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_color`
--
ALTER TABLE `product_color`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_comment`
--
ALTER TABLE `product_comment`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_description`
--
ALTER TABLE `product_description`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_name`
--
ALTER TABLE `product_name`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_rating`
--
ALTER TABLE `product_rating`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_size`
--
ALTER TABLE `product_size`
  MODIFY `sid` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `product_detail_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `product_color` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
