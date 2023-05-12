-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 12, 2023 at 05:40 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `GYM_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `record_body_part`
--

CREATE TABLE `record_body_part` (
  `sid` int(11) NOT NULL,
  `bodyPart_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_body_part`
--

INSERT INTO `record_body_part` (`sid`, `bodyPart_name`) VALUES
(11, '三頭'),
(6, '上背'),
(7, '下背'),
(12, '二頭'),
(9, '前臂'),
(10, '小腿'),
(2, '核心'),
(3, '肩膀'),
(1, '胸'),
(4, '腿前側'),
(5, '腿後側'),
(8, '臀部');

-- --------------------------------------------------------

--
-- Table structure for table `record_condition`
--

CREATE TABLE `record_condition` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `bodyfat` float NOT NULL,
  `record_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `record_condition`
--

INSERT INTO `record_condition` (`sid`, `member_sid`, `height`, `weight`, `bodyfat`, `record_time`) VALUES
(1, 1, 175.5, 61.8, 15, '2023-02-28 00:00:00'),
(2, 1, 175.5, 60.8, 15.4, '2023-01-31 00:00:00'),
(3, 1, 175.6, 61.9, 16.9, '2023-02-28 00:00:00'),
(4, 1, 175.9, 63, 16.1, '2023-04-30 00:00:00'),
(5, 1, 176, 61.7, 15.7, '2023-01-31 00:00:00'),
(6, 1, 175.1, 60, 15.3, '2023-03-31 00:00:00'),
(7, 1, 175.7, 63, 16.9, '2023-01-31 00:00:00'),
(8, 1, 175.5, 60.7, 15.1, '2023-03-31 00:00:00'),
(9, 1, 175.9, 61.3, 16.5, '2023-03-31 00:00:00'),
(10, 1, 175.2, 60.9, 17, '2023-01-31 00:00:00'),
(11, 1, 175.3, 60, 16.8, '2023-03-31 00:00:00'),
(12, 1, 176, 61.7, 15, '2023-04-30 00:00:00'),
(13, 1, 175.2, 62.2, 15, '2023-03-31 00:00:00'),
(14, 1, 175.8, 60.1, 16.6, '2023-02-28 00:00:00'),
(15, 1, 175.1, 60.7, 16.2, '2023-04-30 00:00:00'),
(16, 2, 181, 75.7, 20.7, '2023-03-31 00:00:00'),
(17, 2, 180.6, 75.7, 20.9, '2023-01-31 00:00:00'),
(18, 2, 180.8, 76.4, 20.5, '2023-03-31 00:00:00'),
(19, 2, 180.8, 76.4, 21.4, '2023-04-30 00:00:00'),
(20, 2, 180.9, 75.3, 21.1, '2023-01-31 00:00:00'),
(21, 2, 180.6, 76, 21.8, '2023-03-31 00:00:00'),
(22, 2, 180.2, 75.9, 21.9, '2023-03-31 00:00:00'),
(23, 2, 180.8, 76.4, 20.3, '2023-02-28 00:00:00'),
(24, 2, 180.2, 76.6, 22, '2023-05-31 00:00:00'),
(25, 2, 180.9, 76.6, 21, '2023-04-30 00:00:00'),
(26, 2, 180.8, 76.4, 21.1, '2023-02-28 00:00:00'),
(27, 2, 180.1, 75.5, 21.6, '2023-02-28 00:00:00'),
(28, 2, 180.3, 75, 20.4, '2023-01-31 00:00:00'),
(29, 2, 180.6, 75.4, 21.4, '2023-03-31 00:00:00'),
(30, 2, 180.3, 76.8, 21, '2023-02-28 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `record_diet_record`
--

CREATE TABLE `record_diet_record` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `food_sid` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `diet_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_diet_record`
--

INSERT INTO `record_diet_record` (`sid`, `member_sid`, `food_sid`, `quantity`, `diet_time`) VALUES
(1, 1, 19, 0.6, '2023-03-31 00:00:00'),
(2, 1, 22, 1.2, '2023-05-31 00:00:00'),
(3, 1, 14, 3, '2023-03-31 00:00:00'),
(4, 1, 21, 0.7, '2023-01-31 00:00:00'),
(5, 1, 13, 0.2, '2023-04-30 00:00:00'),
(6, 1, 31, 2.7, '2023-02-28 00:00:00'),
(7, 1, 11, 1.8, '2023-01-31 00:00:00'),
(8, 1, 14, 2.1, '2023-04-30 00:00:00'),
(9, 1, 26, 2.2, '2023-01-31 00:00:00'),
(10, 1, 14, 2.2, '2023-03-31 00:00:00'),
(11, 1, 21, 1.7, '2023-03-31 00:00:00'),
(12, 1, 29, 0.3, '2023-02-28 00:00:00'),
(13, 1, 23, 1.5, '2023-03-31 00:00:00'),
(14, 1, 15, 2.4, '2023-01-31 00:00:00'),
(15, 1, 18, 2.1, '2023-04-30 00:00:00'),
(16, 2, 13, 0.7, '2023-03-31 00:00:00'),
(17, 2, 15, 2.3, '2023-02-28 00:00:00'),
(18, 2, 30, 1.7, '2023-04-30 00:00:00'),
(19, 2, 17, 0.8, '2023-02-28 00:00:00'),
(20, 2, 11, 1.8, '2023-03-31 00:00:00'),
(21, 2, 24, 0.7, '2023-03-31 00:00:00'),
(22, 2, 14, 1, '2023-03-31 00:00:00'),
(23, 2, 13, 1.5, '2023-03-31 00:00:00'),
(24, 2, 11, 1.6, '2023-03-31 00:00:00'),
(25, 2, 29, 3, '2023-04-30 00:00:00'),
(26, 2, 24, 1.1, '2023-02-28 00:00:00'),
(27, 2, 15, 2.4, '2023-04-30 00:00:00'),
(28, 2, 22, 2, '2023-01-31 00:00:00'),
(29, 2, 17, 1.8, '2023-04-30 00:00:00'),
(30, 2, 13, 1, '2023-03-31 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `record_diet_Ref`
-- (See below for the actual view)
--
CREATE TABLE `record_diet_Ref` (
`sid` int(11)
,`name` varchar(255)
,`food_type` varchar(255)
,`quantity` float
,`diet_time` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `record_exercise_record`
--

CREATE TABLE `record_exercise_record` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `exe_type_sid` int(11) NOT NULL,
  `weight` float NOT NULL,
  `sets` int(11) NOT NULL,
  `reps` int(11) NOT NULL,
  `exe_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_exercise_record`
--

INSERT INTO `record_exercise_record` (`sid`, `member_sid`, `exe_type_sid`, `weight`, `sets`, `reps`, `exe_date`) VALUES
(1, 1, 4, 12.1, 2, 4, '2023-04-30 00:00:00'),
(2, 1, 11, 43.7, 1, 4, '2023-01-31 00:00:00'),
(3, 1, 12, 38.5, 6, 5, '2023-03-31 00:00:00'),
(4, 1, 14, 24.7, 4, 11, '2023-01-31 00:00:00'),
(5, 1, 21, 21.2, 2, 6, '2023-02-28 00:00:00'),
(6, 1, 21, 29.6, 3, 8, '2023-03-31 00:00:00'),
(7, 1, 21, 15.2, 5, 11, '2023-05-31 00:00:00'),
(8, 1, 20, 10.2, 1, 6, '2023-04-30 00:00:00'),
(9, 1, 18, 38, 3, 10, '2023-02-28 00:00:00'),
(10, 1, 22, 36.5, 1, 5, '2023-02-28 00:00:00'),
(11, 1, 1, 19.2, 5, 5, '2023-05-31 00:00:00'),
(12, 1, 4, 23.7, 6, 10, '2023-04-30 00:00:00'),
(13, 1, 8, 37.8, 1, 5, '2023-01-31 00:00:00'),
(14, 1, 21, 34.2, 6, 12, '2023-02-28 00:00:00'),
(15, 1, 3, 38.1, 5, 5, '2023-03-31 00:00:00'),
(16, 2, 13, 41.4, 5, 6, '2023-02-28 00:00:00'),
(17, 2, 3, 16.5, 1, 11, '2023-03-31 00:00:00'),
(18, 2, 4, 26.8, 1, 11, '2023-02-28 00:00:00'),
(19, 2, 20, 27.5, 6, 15, '2023-01-31 00:00:00'),
(20, 2, 19, 32.1, 5, 4, '2023-02-28 00:00:00'),
(21, 2, 8, 56.7, 1, 13, '2023-04-30 00:00:00'),
(22, 2, 20, 26.2, 4, 13, '2023-04-30 00:00:00'),
(23, 2, 14, 49.3, 5, 15, '2023-01-31 00:00:00'),
(24, 2, 8, 46.7, 1, 7, '2023-05-31 00:00:00'),
(25, 2, 11, 16.8, 5, 12, '2023-01-31 00:00:00'),
(26, 2, 5, 45.5, 2, 12, '2023-03-31 00:00:00'),
(27, 2, 12, 29.3, 2, 6, '2023-02-28 00:00:00'),
(28, 2, 17, 18.7, 4, 11, '2023-04-30 00:00:00'),
(29, 2, 22, 23.4, 3, 5, '2023-02-28 00:00:00'),
(30, 2, 19, 15.2, 5, 7, '2023-03-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `record_exercise_type`
--

CREATE TABLE `record_exercise_type` (
  `sid` int(11) NOT NULL,
  `exercise_name` varchar(255) NOT NULL,
  `exercise_description` varchar(255) NOT NULL,
  `exercise_img` varchar(255) DEFAULT NULL,
  `exercise_vid` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_exercise_type`
--

INSERT INTO `record_exercise_type` (`sid`, `exercise_name`, `exercise_description`, `exercise_img`, `exercise_vid`, `status`) VALUES
(1, '槓鈴深蹲', '雙腳與肩同寬，腳尖朝前。彎曲膝蓋，降低身體直到大腿與地面平行，然後站起來。', NULL, NULL, 1),
(2, '槓鈴卧推', '躺在平板凳上，抓住槓鈴使手臂與肩同寬，然後將槓鈴降低到胸前，再推回原位。', NULL, NULL, 1),
(3, '槓鈴硬舉', '雙腳與肩同寬，握住槓鈴，然後通過膝蓋和臀部的伸展將重量從地面上抬起。', NULL, NULL, 1),
(4, '弓箭步', '一腳向前邁步，降低身體直到兩腿都彎曲成90度，然後向上推起，換另一隻腳重複練習。', NULL, NULL, 1),
(5, '引體向上', '以肩同寬握住橫向的懸浮杠，然後拉起身體直到下巴高於橫杆，再降下身體。', NULL, NULL, 1),
(6, '伏地挺身', '從平板支撐的姿勢開始，以肩同寬的手距降低身體，直到胸部碰到地面，然後推回原位。', NULL, NULL, 1),
(7, '啞鈴二頭彎舉', '雙腳與肩同寬，握住一支啞鈴，將其向上彎曲到肩膀，然後降低到原位。', NULL, NULL, 1),
(8, '三頭肌板凳撐體', '坐在長凳邊緣，雙手握住後方邊緣，然後彎曲肘部降低身體，再推回原位。', NULL, NULL, 1),
(9, '機器腿推舉', '坐在機器上，腳踏在平台上，然後用腿推開平台，再降低到原位。', NULL, NULL, 1),
(10, '纜繩下拉', '坐在設備下面，握住橫槓，然後向下拉到胸部，然後緩慢地讓拉線返回原位。', NULL, NULL, 1),
(11, '仰臥起坐', '這是一種腹肌鍛煉，主要鍛煉腹肌。 你平躺在地上，抬起雙腿，收緊腹部，使上半身離地，然後再慢慢放下。 ', NULL, NULL, 1),
(12, '啞鈴側平舉', '這是一種鍛煉，主要鍛煉胸部肌肉的鍛煉。 你躺在板凳上，用啞鈴做“V”字型，然後慢慢下放，再向上舉起。 ', NULL, NULL, 1),
(13, '側平板支撐', '這是一種腰腹肌鍛煉，主要鍛煉腹橫肌和腰肌。 你側著身子，用手肘和膝蓋支撐地面，然後使身體離地，維持一定的時間。 ', NULL, NULL, 1),
(14, '提踵', '這是一種腿部鍛煉，主要鍛煉小腿肌肉。 你站在踏板上，先讓腳跟下降到低點，然後用小腿力量將身體提起來，再慢慢放下。 ', NULL, NULL, 1),
(15, '平板支撐', '這是一種腹肌鍛煉，主要鍛煉腹部肌肉。 你採取仰臥的姿勢，支撐膝蓋和前臂，使身體保持平衡狀態，直到時間結束。 ', NULL, NULL, 1),
(16, '啞鈴頸后推舉', '這是一種肩部鍛煉，主要鍛煉肩前束和三角肌。 你雙腳併攏站立，將負重啞鈴放在後頸，用雙手向上推舉，直到臂展完全伸直。 ', NULL, NULL, 1),
(17, '啞鈴俯身划船', '這是一種鍛煉，主要鍛煉背部和手臂的鍛煉。 你俯身，抓住啞鈴，手臂伸直，然後將啞鈴拉向胸部，再慢慢放下。 ', NULL, NULL, 1),
(18, '槓鈴肩推', '這是一種肩部鍛煉，主要鍛煉肩前束和三角肌。 你雙腳併攏站立，將槓鈴放在肩膀前方，用雙手向上推舉，直到臂展完全伸直。 ', NULL, NULL, 1),
(19, '窄距伏地挺身', '這是一種鍛煉，主要鍛煉三頭肌的鍛煉。你雙手放在地上，兩手指尖相碰，然後彎曲肘部，使身體向地面靠近，再用三頭肌力量將身體推回到起始位置。', NULL, NULL, 1),
(20, '雙槓撐體', '這是一種鍛煉，主要鍛煉三頭肌的鍛煉。用雙手握住杠桿，將身體向上推，然後彎曲肘部，直到上臂與地面成平行，然後再慢慢放回到起始位置。', NULL, NULL, 1),
(21, '直腿硬舉', '如同傳統硬舉一樣，動作起始直接從向心收縮開始，但它臀位更高，且上半身更平行於地面。', NULL, NULL, 1),
(22, '羅馬椅', '手拿槓片或是徒手的方式，將身體靠在羅馬椅上，確保椅墊約在髖關節的地方。用腿後側與臀部的力量，並注意核心與束脊肌穩定收緊，將上半身往上抬起，讓身體與羅馬椅呈現平行的一直線。', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `record_exercis_bodyPart_ref`
--

CREATE TABLE `record_exercis_bodyPart_ref` (
  `sid` int(11) NOT NULL,
  `exerciseType_sid` int(11) NOT NULL,
  `bodyPart_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_exercis_bodyPart_ref`
--

INSERT INTO `record_exercis_bodyPart_ref` (`sid`, `exerciseType_sid`, `bodyPart_sid`) VALUES
(1, 1, 4),
(2, 1, 8),
(3, 2, 1),
(4, 2, 11),
(6, 3, 5),
(11, 3, 7),
(5, 3, 8),
(8, 4, 4),
(7, 4, 8),
(10, 5, 6),
(9, 5, 12),
(13, 6, 1),
(12, 6, 2),
(14, 7, 12),
(15, 8, 11),
(16, 9, 4),
(17, 10, 11),
(18, 11, 2),
(19, 12, 3),
(20, 13, 2),
(21, 14, 10),
(22, 15, 2),
(23, 16, 3),
(24, 17, 6),
(26, 19, 1),
(25, 19, 11),
(28, 20, 1),
(27, 20, 11),
(29, 21, 5),
(31, 22, 5),
(30, 22, 8);

-- --------------------------------------------------------

--
-- Stand-in structure for view `record_exe_bodypart_Ref`
-- (See below for the actual view)
--
CREATE TABLE `record_exe_bodypart_Ref` (
`sid` int(11)
,`exercise_name` varchar(255)
,`bodyPart_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `record_exe_record_Ref`
-- (See below for the actual view)
--
CREATE TABLE `record_exe_record_Ref` (
`sid` int(11)
,`name` varchar(255)
,`exercise_name` varchar(255)
,`weight` float
,`sets` int(11)
,`reps` int(11)
,`exe_date` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `record_food_category`
--

CREATE TABLE `record_food_category` (
  `sid` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_food_category`
--

INSERT INTO `record_food_category` (`sid`, `category_name`) VALUES
(1, '海鮮'),
(2, '肉類'),
(3, '豆類'),
(4, '米食'),
(5, '奶製品'),
(6, '堅果'),
(7, '蔬菜'),
(8, '蛋'),
(9, '麥類');

-- --------------------------------------------------------

--
-- Stand-in structure for view `record_food_category_Ref`
-- (See below for the actual view)
--
CREATE TABLE `record_food_category_Ref` (
`sid` int(11)
,`food_type` varchar(255)
,`category_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `record_food_type`
--

CREATE TABLE `record_food_type` (
  `sid` int(11) NOT NULL,
  `food_type` varchar(255) NOT NULL,
  `food_description` varchar(255) NOT NULL,
  `calories` float NOT NULL,
  `protein` float NOT NULL,
  `unit` enum('100g','100ml') NOT NULL,
  `food_img` varchar(255) DEFAULT NULL,
  `category_sid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_food_type`
--

INSERT INTO `record_food_type` (`sid`, `food_type`, `food_description`, `calories`, `protein`, `unit`, `food_img`, `category_sid`, `status`) VALUES
(11, '雞胸肉', '低脂肪低卡路里的蛋白質來源。', 165, 31, '100g', NULL, 2, 1),
(12, '希臘優格', '一種豐富的蛋白質和低卡路里的奶製品。', 73, 10, '100g', NULL, 5, 1),
(13, '杏仁', '富含健康脂肪，蛋白質和纖維的堅果。', 576, 21, '100g', NULL, 6, 1),
(14, '鮪魚', '高蛋白質和低卡路里的魚類。', 116, 25, '100g', NULL, 1, 1),
(15, '扁豆', '富含蛋白質和纖維的豆類。', 116, 9, '100g', NULL, 3, 1),
(17, '起司', '富含蛋白質和鈣的牛奶製品', 98, 11, '100g', NULL, 5, 1),
(18, '蝦', '低卡路里高蛋白質的海鮮。', 99, 20, '100g', NULL, 1, 1),
(19, '蛋白', '高蛋白質低卡路里的蛋清。', 52, 11, '100g', NULL, 8, 1),
(20, '脫脂奶', '高蛋白質和各種維生素和礦物質的低脂肪奶製品。', 35, 3.5, '100ml', NULL, 5, 1),
(21, '牛肉', '富含蛋白質和鐵質的肉類。', 250, 26, '100g', NULL, 2, 1),
(22, '燕麥片', '富含蛋白質、纖維和碳水化合物的穀物。', 389, 17, '100g', NULL, 9, 1),
(23, '雞蛋', '含有高品質蛋白質、維生素和礦物質的食物。', 155, 13, '100g', NULL, 8, 1),
(24, '南瓜子', '富含蛋白質、纖維和健康脂肪的堅果。', 446, 19, '100g', NULL, 6, 1),
(25, '鴨肉', '富含蛋白質和鐵質的肉類。', 337, 16, '100g', NULL, 2, 1),
(26, '黑豆', '富含蛋白質、纖維和礦物質的豆類。', 341, 21, '100g', NULL, 3, 1),
(28, '杏仁奶', '富含蛋白質、健康脂肪和維生素的植物性奶。', 56, 1, '100ml', NULL, 6, 1),
(29, '豆漿', '富含蛋白質、纖維和維生素的植物性奶。', 45, 3, '100ml', NULL, 3, 1),
(30, '火雞胸肉', '低脂肪低卡路里的蛋白質來源。', 104, 22, '100g', NULL, 2, 1),
(31, '白飯', '以米為原料製作的主食。', 130, 2.7, '100g', NULL, 4, 1);

-- --------------------------------------------------------

--
-- Structure for view `record_diet_Ref`
--
DROP TABLE IF EXISTS `record_diet_Ref`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `record_diet_ref`  AS   (select `dr`.`sid` AS `sid`,`mb`.`name` AS `name`,`ft`.`food_type` AS `food_type`,`dr`.`quantity` AS `quantity`,`dr`.`diet_time` AS `diet_time` from ((`record_diet_record` `dr` join `member` `mb`) join `record_food_type` `ft`) where ((`dr`.`member_sid` = `mb`.`sid`) and (`dr`.`food_sid` = `ft`.`sid`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `record_exe_bodypart_Ref`
--
DROP TABLE IF EXISTS `record_exe_bodypart_Ref`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `record_exe_bodypart_ref`  AS   (select `ref`.`sid` AS `sid`,`et`.`exercise_name` AS `exercise_name`,`bp`.`bodyPart_name` AS `bodyPart_name` from ((`record_body_part` `bp` join `record_exercise_type` `et`) join `record_exercis_bodypart_ref` `ref`) where ((`bp`.`sid` = `ref`.`bodyPart_sid`) and (`et`.`sid` = `ref`.`exerciseType_sid`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `record_exe_record_Ref`
--
DROP TABLE IF EXISTS `record_exe_record_Ref`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `record_exe_record_ref`  AS   (select `er`.`sid` AS `sid`,`mb`.`name` AS `name`,`et`.`exercise_name` AS `exercise_name`,`er`.`weight` AS `weight`,`er`.`sets` AS `sets`,`er`.`reps` AS `reps`,`er`.`exe_date` AS `exe_date` from ((`record_exercise_record` `er` join `member` `mb`) join `record_exercise_type` `et`) where ((`er`.`member_sid` = `mb`.`sid`) and (`er`.`exe_type_sid` = `et`.`sid`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `record_food_category_Ref`
--
DROP TABLE IF EXISTS `record_food_category_Ref`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `record_food_category_ref`  AS   (select `ft`.`sid` AS `sid`,`ft`.`food_type` AS `food_type`,`fc`.`category_name` AS `category_name` from (`record_food_type` `ft` join `record_food_category` `fc`) where (`ft`.`category_sid` = `fc`.`sid`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `record_body_part`
--
ALTER TABLE `record_body_part`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `bodyPart_name` (`bodyPart_name`);

--
-- Indexes for table `record_condition`
--
ALTER TABLE `record_condition`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `member` (`member_sid`);

--
-- Indexes for table `record_diet_record`
--
ALTER TABLE `record_diet_record`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `member_sid` (`member_sid`),
  ADD KEY `food_sid` (`food_sid`);

--
-- Indexes for table `record_exercise_record`
--
ALTER TABLE `record_exercise_record`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `exeType_to_exeID` (`exe_type_sid`),
  ADD KEY `member_sid` (`member_sid`);

--
-- Indexes for table `record_exercise_type`
--
ALTER TABLE `record_exercise_type`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `exercise_name` (`exercise_name`),
  ADD UNIQUE KEY `exercise_img` (`exercise_img`),
  ADD UNIQUE KEY `exercise_vid` (`exercise_vid`);

--
-- Indexes for table `record_exercis_bodyPart_ref`
--
ALTER TABLE `record_exercis_bodyPart_ref`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `exerciseType_sid` (`exerciseType_sid`,`bodyPart_sid`),
  ADD KEY `bodyPart_sid` (`bodyPart_sid`);

--
-- Indexes for table `record_food_category`
--
ALTER TABLE `record_food_category`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `record_food_type`
--
ALTER TABLE `record_food_type`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `food_type` (`food_type`),
  ADD UNIQUE KEY `food_img` (`food_img`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `record_body_part`
--
ALTER TABLE `record_body_part`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `record_condition`
--
ALTER TABLE `record_condition`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `record_diet_record`
--
ALTER TABLE `record_diet_record`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `record_exercise_record`
--
ALTER TABLE `record_exercise_record`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `record_exercise_type`
--
ALTER TABLE `record_exercise_type`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `record_exercis_bodyPart_ref`
--
ALTER TABLE `record_exercis_bodyPart_ref`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `record_food_category`
--
ALTER TABLE `record_food_category`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `record_food_type`
--
ALTER TABLE `record_food_type`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `record_condition`
--
ALTER TABLE `record_condition`
  ADD CONSTRAINT `member` FOREIGN KEY (`member_sid`) REFERENCES `member` (`sid`);

--
-- Constraints for table `record_diet_record`
--
ALTER TABLE `record_diet_record`
  ADD CONSTRAINT `record_diet_record_ibfk_1` FOREIGN KEY (`member_sid`) REFERENCES `member` (`sid`),
  ADD CONSTRAINT `record_diet_record_ibfk_2` FOREIGN KEY (`food_sid`) REFERENCES `record_food_type` (`sid`);

--
-- Constraints for table `record_exercise_record`
--
ALTER TABLE `record_exercise_record`
  ADD CONSTRAINT `exeType_to_exeID` FOREIGN KEY (`exe_type_sid`) REFERENCES `record_exercise_type` (`sid`),
  ADD CONSTRAINT `record_exercise_record_ibfk_1` FOREIGN KEY (`member_sid`) REFERENCES `member` (`sid`);

--
-- Constraints for table `record_exercis_bodyPart_ref`
--
ALTER TABLE `record_exercis_bodyPart_ref`
  ADD CONSTRAINT `record_exercis_bodypart_ref_ibfk_1` FOREIGN KEY (`bodyPart_sid`) REFERENCES `record_body_part` (`sid`),
  ADD CONSTRAINT `record_exercis_bodypart_ref_ibfk_2` FOREIGN KEY (`exerciseType_sid`) REFERENCES `record_exercise_type` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
