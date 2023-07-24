-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:3306
-- 產生時間： 2023-07-24 16:14:01
-- 伺服器版本： 5.7.24
-- PHP 版本： 8.0.1
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET
  time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8mb4 */
;

--
-- 資料庫: `mfee_36_group_4_product`
--
-- --------------------------------------------------------
DROP TABLE IF EXISTS `product_categories`;

DROP TABLE IF EXISTS `equipment_description`;

DROP TABLE IF EXISTS `equipment_name`;

DROP TABLE IF EXISTS `food_description`;

DROP TABLE IF EXISTS `food_name`;

-- DROP TABLE IF EXISTS `product_color`;

DROP TABLE IF EXISTS `product_size`;

DROP TABLE IF EXISTS `product_comment`;

DROP TABLE IF EXISTS `product_description`;

DROP TABLE IF EXISTS `product_detail`;

DROP TABLE IF EXISTS `product_name`;

DROP TABLE IF EXISTS `product_rating`;

--
-- 資料表結構 `equipment_description`
--
CREATE TABLE `equipment_description` (
  `sid` int(19) NOT NULL,
  `col1` varchar(255) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
  `picture` varchar(700) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- 傾印資料表的資料 `equipment_name`
--
INSERT INTO
  `equipment_name` (
    `sid`,
    `equipment_name`,
    `category_id`,
    `price`,
    `stocks`,
    `picture`,
    `created_at`
  )
VALUES
  (
    1,
    '啞鈴 0.5kg',
    12,
    249,
    100,
    'eq_dumbbell_type01_005_01.jpg,eq_dumbbell_type01_005_02.jpg,eq_dumbbell_type01_005_03.jpg',
    '2023-05-17 02:17:00'
  ),
  (
    2,
    '啞鈴1kg',
    12,
    299,
    100,
    'eq_dumbbell_type01_010_01.jpg,eq_dumbbell_type01_010_02.jpg,eq_dumbbell_type01_010_03.jpg',
    '2023-05-18 02:17:00'
  ),
  (
    3,
    '啞鈴1.5kg',
    12,
    349,
    100,
    'eq_dumbbell_type01_015_01.jpg,eq_dumbbell_type01_015_02.jpg,eq_dumbbell_type01_015_03.jpg',
    '2023-05-19 02:17:00'
  ),
  (
    4,
    '啞鈴2kg',
    12,
    399,
    100,
    'eq_dumbbell_type01_020_01.jpg,eq_dumbbell_type01_020_02.jpg,eq_dumbbell_type01_020_03.jpg',
    '2023-05-20 02:17:00'
  ),
  (
    5,
    '啞鈴3kg',
    12,
    449,
    100,
    'eq_dumbbell_type01_030_01.jpg,eq_dumbbell_type01_030_02.jpg,eq_dumbbell_type01_030_03.jpg',
    '2023-05-21 02:17:00'
  ),
  (
    6,
    '啞鈴5kg',
    12,
    499,
    100,
    'eq_dumbbell_type01_050_01.jpg,eq_dumbbell_type01_050_02.jpg,eq_dumbbell_type01_050_03.jpg,eq_dumbbell_type01_050_04.jpg,eq_dumbbell_type01_050_05.jpg',
    '2023-05-22 02:17:00'
  ),
  (
    7,
    '啞鈴2.5kg',
    12,
    900,
    100,
    'eq_dumbbell_type02_025_01.jpg,eq_dumbbell_type02_025_02.jpg,eq_dumbbell_type02_025_03.jpg,eq_dumbbell_type02_025_04.jpg,eq_dumbbell_type02_025_05.jpg',
    '2023-05-23 02:17:00'
  ),
  (
    8,
    '啞鈴7.5kg',
    12,
    900,
    100,
    'eq_dumbbell_type02_075_01.jpg,eq_dumbbell_type02_075_02.jpg,eq_dumbbell_type02_075_03.jpg,eq_dumbbell_type02_075_04.jpg,eq_dumbbell_type02_075_05.jpg',
    '2023-05-24 02:17:00'
  ),
  (
    9,
    '組合式啞鈴3kg',
    12,
    750,
    100,
    'eq_dumbbell_type03_002_01.jpg,eq_dumbbell_type03_002_02.jpg,eq_dumbbell_type03_002_03.jpg,eq_dumbbell_type03_002_04.jpg,eq_dumbbell_type03_002_05.jpg',
    '2023-05-25 02:17:00'
  ),
  (
    10,
    '組合式啞鈴套裝組',
    12,
    3600,
    100,
    'eq_dumbbell_type03_set_01.jpg,eq_dumbbell_type03_set_02.jpg,eq_dumbbell_type03_set_03.jpg,eq_dumbbell_type03_set_04.jpg,eq_dumbbell_type03_set_05.jpg,eq_dumbbell_type03_set_06.jpg,eq_dumbbell_type03_set_07.jpg,eq_dumbbell_type03_set_08.jpg,eq_dumbbell_type03_set_09.jpg,eq_dumbbell_type03_set_10.jpg',
    '2023-05-26 02:17:00'
  ),
  (
    11,
    '六角形啞鈴10磅',
    12,
    300,
    100,
    'eq_dumbbell_type04_010_01.jpg',
    '2023-05-27 02:17:00'
  ),
  (
    12,
    '六角形啞鈴15磅',
    12,
    600,
    100,
    'eq_dumbbell_type04_015_01.jpg',
    '2023-05-28 02:17:00'
  ),
  (
    13,
    '六角形啞鈴20磅',
    12,
    900,
    100,
    'eq_dumbbell_type04_020_01.jpg',
    '2023-05-29 02:17:00'
  ),
  (
    14,
    '六角形啞鈴25磅',
    12,
    1200,
    100,
    'eq_dumbbell_type04_025_01.jpg',
    '2023-05-30 02:17:00'
  ),
  (
    15,
    '六角形啞鈴30磅',
    12,
    1500,
    100,
    'eq_dumbbell_type04_030_01.jpg',
    '2023-05-31 02:17:00'
  ),
  (
    16,
    '六角形啞鈴35磅',
    12,
    1600,
    100,
    'eq_dumbbell_type04_035_01.jpg',
    '2023-06-01 02:17:00'
  ),
  (
    17,
    '六角形啞鈴40磅',
    12,
    1700,
    100,
    'eq_dumbbell_type04_040_01.jpg',
    '2023-06-02 02:17:00'
  ),
  (
    18,
    '六角形啞鈴45磅',
    12,
    1800,
    100,
    'eq_dumbbell_type04_045_01.jpg',
    '2023-06-03 02:17:00'
  ),
  (
    19,
    '六角形啞鈴50磅',
    12,
    1900,
    100,
    'eq_dumbbell_type04_050_01.jpg',
    '2023-06-04 02:17:00'
  ),
  (
    20,
    '壺鈴4kg',
    12,
    1050,
    100,
    'eq_kettlebell_type01_004_01.jpg,eq_kettlebell_type01_004_02.jpg,eq_kettlebell_type01_004_03.jpg',
    '2023-06-05 02:17:00'
  ),
  (
    21,
    '壺鈴6kg',
    12,
    1499,
    100,
    'eq_kettlebell_type01_060_01.jpg,eq_kettlebell_type01_060_02.jpg,eq_kettlebell_type01_060_03.jpg,eq_kettlebell_type01_060_04.jpg,eq_kettlebell_type01_060_05.jpg',
    '2023-06-06 02:17:00'
  ),
  (
    22,
    '壺鈴8kg',
    12,
    1699,
    100,
    'eq_kettlebell_type01_080_01.jpg,eq_kettlebell_type01_080_05.jpg,eq_kettlebell_type01_080_04.jpg,eq_kettlebell_type01_080_03.jpg,eq_kettlebell_type01_080_02.jpg',
    '2023-06-07 02:17:00'
  ),
  (
    23,
    '壺鈴12kg',
    12,
    1899,
    100,
    'eq_kettlebell_type01_120_05.jpg,eq_kettlebell_type01_120_01.jpg,eq_kettlebell_type01_120_02.jpg,eq_kettlebell_type01_120_03.jpg,eq_kettlebell_type01_120_04.jpg',
    '2023-06-08 02:17:00'
  ),
  (
    24,
    '壺鈴16kg',
    12,
    2099,
    100,
    'eq_kettlebell_type01_160_05.jpg,eq_kettlebell_type01_160_01.jpg,eq_kettlebell_type01_160_02.jpg,eq_kettlebell_type01_160_03.jpg,eq_kettlebell_type01_160_04.jpg',
    '2023-06-09 02:17:00'
  ),
  (
    25,
    '壺鈴20kg',
    12,
    2299,
    100,
    'eq_kettlebell_type01_200_05.jpg,eq_kettlebell_type01_200_04.jpg,eq_kettlebell_type01_200_03.jpg,eq_kettlebell_type01_200_02.jpg,eq_kettlebell_type01_200_01.jpg',
    '2023-06-10 02:17:00'
  ),
  (
    26,
    '壺鈴24kg',
    12,
    2499,
    100,
    'eq_kettlebell_type01_240_05.jpg,eq_kettlebell_type01_240_04.jpg,eq_kettlebell_type01_240_03.jpg,eq_kettlebell_type01_240_02.jpg,eq_kettlebell_type01_240_01.jpg',
    '2023-06-11 02:17:00'
  ),
  (
    27,
    '槓鈴75kg',
    12,
    2250,
    100,
    'eq_barbell_type01_075_01.jpg,eq_barbell_type01_075_02.jpg,eq_barbell_type01_075_03.jpg,eq_barbell_type01_075_04.jpg,eq_barbell_type01_075_05.jpg,eq_barbell_type01_075_06.jpg,eq_barbell_type01_075_07.jpg,eq_barbell_type01_075_08.jpg',
    '2023-06-12 02:17:00'
  ),
  (
    28,
    '槓片0.5kg',
    12,
    600,
    100,
    'eq_weightplates_type01_005_01.jpg',
    '2023-06-13 02:17:00'
  ),
  (
    29,
    '槓片1kg',
    12,
    800,
    100,
    'eq_weightplates_type01_010_01.jpg',
    '2023-06-14 02:17:00'
  ),
  (
    30,
    '槓片2kg',
    12,
    1000,
    100,
    'eq_weightplates_type01_020_01.jpg',
    '2023-06-15 02:17:00'
  ),
  (
    31,
    '槓片5kg',
    12,
    1600,
    100,
    'eq_weightplates_type01_050_01.jpg',
    '2023-06-16 02:17:00'
  ),
  (
    32,
    '槓片10kg',
    12,
    1900,
    100,
    'eq_weightplates_type01_100_01.jpg',
    '2023-06-17 02:17:00'
  ),
  (
    33,
    '槓片20kg',
    12,
    2200,
    100,
    'eq_weightplates_type01_200_01.jpg',
    '2023-06-18 02:17:00'
  ),
  (
    34,
    '橡膠槓片1.25kg',
    12,
    500,
    100,
    'eq_weightplates_type02_025_01.jpg,eq_weightplates_type02_025_02.jpg,eq_weightplates_type02_025_03.jpg,eq_weightplates_type02_025_04.jpg,eq_weightplates_type02_025_05.jpg,eq_weightplates_type02_025_06.jpg,eq_weightplates_type02_025_07.jpg',
    '2023-06-19 02:17:00'
  ),
  (
    35,
    '橡膠槓片2.5kg',
    12,
    1000,
    100,
    'eq_weightplates_type02_012_01.jpg,eq_weightplates_type02_012_02.jpg,eq_weightplates_type02_012_03.jpg,eq_weightplates_type02_012_04.jpg,eq_weightplates_type02_012_05.jpg,eq_weightplates_type02_012_06.jpg,eq_weightplates_type02_012_07.jpg',
    '2023-06-20 02:17:00'
  ),
  (
    36,
    '橡膠槓片5kg',
    12,
    1500,
    100,
    'eq_weightplates_type02_050_01.jpg,eq_weightplates_type02_050_02.jpg,eq_weightplates_type02_050_03.jpg,eq_weightplates_type02_050_04.jpg,eq_weightplates_type02_050_05.jpg,eq_weightplates_type02_050_06.jpg,eq_weightplates_type02_050_07.jpg',
    '2023-06-21 02:17:00'
  );

-- --------------------------------------------------------
--
-- 資料表結構 `food_description`
--
CREATE TABLE `food_description` (
  `sid` int(11) NOT NULL,
  `col1` varchar(255) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- 傾印資料表的資料 `food_name`
--
INSERT INTO
  `food_name` (
    `sid`,
    `food_name`,
    `category_id`,
    `price`,
    `stocks`,
    `picture`,
    `created_at`
  )
VALUES
  (
    1,
    '【門市限定】ON全乳清蛋白(雙倍濃郁巧克力/2.26kg)',
    10,
    2699,
    100,
    'fd00101.jpg',
    '2023-05-17 02:17:00'
  ),
  (
    2,
    '【門市限定】ON 黃金比例分離乳清 (巧克力/2.36kg)',
    10,
    3799,
    100,
    'fd00201.jpg',
    '2023-05-18 02:17:00'
  ),
  (
    3,
    'Carman\'s 海鹽巧克力杏仁蛋白棒 (40g x 5包入)',
    11,
    179,
    100,
    'fd00301.jpg',
    '2023-05-19 02:17:00'
  ),
  (
    4,
    '能量水果軟糖 (草莓口味) 10gx9顆入',
    11,
    99,
    100,
    'fd00401.jpg',
    '2023-05-20 02:17:00'
  ),
  (
    5,
    'Carman\'s 莓果希臘優格蛋白棒 (40g x 5包入)',
    11,
    179,
    100,
    'fd00501.jpg',
    '2023-05-21 02:17:00'
  ),
  (
    6,
    'GNC Pro Performance Weight Gainer - 草莓和奶油,6 份,蛋白質可增加重量',
    10,
    900,
    100,
    'fd00601.jpg',
    '2023-05-22 02:17:00'
  ),
  (
    7,
    'GNC Pro Performance Bulk 1340 - 草莓和奶油,9 份,支持肌肉能量,恢復和成長',
    10,
    1500,
    100,
    'fd00701.jpg',
    '2023-05-23 02:17:00'
  ),
  (
    8,
    '斯旺森全潛能素食蛋白 - 巧克力',
    10,
    1900,
    100,
    'fd00801.jpg',
    '2023-05-24 02:17:00'
  ),
  (
    9,
    'Garden of Life 生有機蛋白巧克力粉，20 份，認證素食，無麩質，有機，非轉基因 植物基無糖蛋白奶昔，含益生菌和酵素',
    10,
    1399,
    100,
    'fd00901.jpg',
    '2023-05-25 02:17:00'
  ),
  (
    10,
    'Garden of Life Sport 認證草飼清潔乳清分離蛋白,香草,25 盎司(約 639.8 毫升)',
    10,
    1400,
    100,
    'fd01001.jpg',
    '2023-05-26 02:17:00'
  ),
  (
    11,
    'Nutricost 濃縮乳清蛋白(巧克力花生醬) 5 磅(約 2.3 公斤) - 不含麩質和非轉基因',
    10,
    1700,
    100,
    'fd01101.jpg',
    '2023-05-27 02:17:00'
  ),
  (
    12,
    'Ascent Native Fuel 乳清蛋白粉',
    10,
    500,
    100,
    'fd01201.jpg',
    '2023-05-28 02:17:00'
  ),
  (
    13,
    'Jay Robb 乳清蛋白 (巧克力,5 磅 (約 2.3 克)',
    10,
    3690,
    100,
    'fd01301.jpg',
    '2023-05-29 02:17:00'
  ),
  (
    14,
    'Designer Wellness,Designer Lite,低卡路里天然蛋白,益生元纖維,關鍵維生素和礦物質,巧克力餅乾和奶油,25 盎司(約 735.7 克)',
    10,
    840,
    100,
    'fd01401.jpg',
    '2023-05-30 02:17:00'
  ),
  (
    15,
    'ISOPURE INFUSIONS 清爽清淡的水果口味乳清分離蛋白粉',
    10,
    1300,
    100,
    'fd01501.jpg',
    '2023-05-31 02:17:00'
  ),
  (
    16,
    'Ascent 冰咖啡蛋白粉 - 高蛋白咖啡粉,20 克蛋白質和 100 毫克咖啡因來自優質哥倫比亞咖啡,零人工香料和甜味劑 - 15 份',
    10,
    1050,
    100,
    'fd01601.jpg',
    '2023-06-01 02:17:00'
  ),
  (
    17,
    'It\'s Just!- 濃縮乳清蛋白,1 磅(約 0.6 公斤),美國製造,80% 蛋白質含量,無味粉末,20 盎司(約 597.0 克)(草飼/無味,20 盎司(約 597.0 克)(1 包))',
    10,
    700,
    100,
    'fd01701.jpg',
    '2023-06-02 02:17:00'
  ),
  (
    18,
    'Black Magic Protein 2 磅(約 0.9 公斤)(巧克力泡泡糖)',
    10,
    720,
    100,
    'fd01801.jpg',
    '2023-06-03 02:17:00'
  ),
  (
    19,
    'Myprotein Impact 乳清蛋白 混合餅乾 奶油 5 磅(約 2.5 公斤) (100 份)',
    10,
    2500,
    100,
    'fd01901.jpg',
    '2023-06-04 02:17:00'
  ),
  (
    20,
    'Black Magic Protein 2 磅(約 0.9 公斤)(原味歐恰塔)',
    10,
    720,
    100,
    'fd02001.jpg',
    '2023-06-05 02:17:00'
  ),
  (
    21,
    'GNC AMP 持續蛋白質混合 - 女童子軍薄薄荷糖',
    10,
    1299,
    100,
    'fd02101.jpg',
    '2023-06-06 02:17:00'
  ),
  (
    22,
    '大豆香草 2 件組',
    10,
    900,
    100,
    'fd02201.jpg',
    '2023-06-07 02:17:00'
  ),
  (
    23,
    'MRM Nutrition 素食蛋白 含超級食物 | 巧克力口味 | 22 克完整蛋白 | 超過 8.8 克必需氨基酸 | 13 種超級食物 | 含 Omega 3s 和 Omega6s | 生酮友好 | 30 份',
    10,
    1800,
    100,
    'fd02301.jpg',
    '2023-06-08 02:17:00'
  ),
  (
    24,
    'drink wholesome 香草蛋白色蛋白粉 | 易於消化和腸道友好 | 全天然成分 | 最低加工 | 不含乳製品 | 無添加劑,無乳糖 | 20 克蛋白質',
    10,
    1300,
    100,
    'fd02401.jpg',
    '2023-06-09 02:17:00'
  ),
  (
    25,
    'Myprotein® - WHEY Forward - 無動物乳清蛋白粉飲料混合 - 支持肌肉恢復 - 素食友好 - 乳糖,無糖 - 乳製品相同蛋白質 - 肉桂穀片 1 磅(約 0.5 公斤)(20 份)',
    10,
    1100,
    100,
    'fd02501.jpg',
    '2023-06-10 02:17:00'
  ),
  (
    26,
    'PlantFusion 純植物蛋白粉',
    10,
    999,
    100,
    'fd02601.jpg',
    '2023-06-11 02:17:00'
  ),
  (
    27,
    'True Athlete 天然乳清蛋白香草,每份益生菌 20 克蛋白質,促進消化健康,無激素 NSF認證,適用於運動(3 磅(約 1.1 公斤)。',
    10,
    900,
    100,
    'fd02701.jpg',
    '2023-06-12 02:17:00'
  ),
  (
    28,
    'Levels Grass Fed 100% 乳清蛋白,無激素,卡布奇諾,2 磅(約 0.9 公斤)',
    10,
    900,
    100,
    'fd02801.jpg',
    '2023-06-13 02:17:00'
  ),
  (
    29,
    'Isopure,Zero Carb 100% 分離乳清蛋白',
    10,
    800,
    100,
    'fd02901.jpg',
    '2023-06-14 02:17:00'
  ),
  (
    30,
    'NutraBio 經典乳清蛋白粉 - 每勺 25 公克蛋白質 - 全光譜氨基酸特徵 - 不含填充物、人造色素、防腐劑 - 低升糖指數 - 冰淇淋餅乾夢想,5 磅(約 2.3 公斤)',
    10,
    2100,
    100,
    'fd03001.jpg',
    '2023-06-15 02:17:00'
  ),
  (
    31,
    'NutraBio 經典乳清蛋白粉 - 每勺 25 公克蛋白質 - 全光譜氨基酸特徵 - 不含填充物、人造色素、防腐劑 - 低升糖指數 - 冰淇淋餅乾夢想,5 磅(約 2.3 公斤)',
    10,
    2100,
    100,
    'fd03101.jpg',
    '2023-06-16 02:17:00'
  ),
  (
    32,
    'GNC AMP Wheybolic - 餅乾和奶油',
    10,
    1199,
    100,
    'fd03201.jpg',
    '2023-06-17 02:17:00'
  ),
  (
    33,
    'Vega Protein and Greens 素食蛋白粉 巧克力(19 份) - 20 克植物蛋白質 外加素食 非轉基因 豌豆蛋白 男女皆宜 1 磅(約 0.6 公斤)(包裝可能有所不同)',
    10,
    1500,
    100,
    'fd03301.jpg',
    '2023-06-18 02:17:00'
  ),
  (
    34,
    'GNC Pro Performance Bulk 1340 - 香草冰淇淋,9 份,支持肌肉能量,恢復和成長',
    10,
    1500,
    100,
    'fd03401.jpg',
    '2023-06-19 02:17:00'
  ),
  (
    35,
    'Source Organic Norcal 有機花生醬粉 2 磅 | 11 克蛋白質,100 卡路里,41 份 | 素食,天然,有機,低卡路里',
    10,
    1100,
    100,
    'fd03501.jpg',
    '2023-06-20 02:17:00'
  ),
  (
    36,
    'NOW Sports Nutrition,植物蛋白質複合物 22 公克,奶油香草粉,2 磅',
    10,
    1200,
    100,
    'fd03601.jpg',
    '2023-06-21 02:17:00'
  ),
  (
    37,
    'Alani Nu 能量棒包,含水活化,200 毫克咖啡因,0 顆糖,30 微克生物素,配方含氨基酸,如 L-茶氨酸,防止碰撞,夏威夷刨冰,每包 10 根',
    11,
    399,
    100,
    'fd03701.jpg',
    '2023-06-22 02:17:00'
  ),
  (
    38,
    'Alani Nu 能量棒包,含水活化,200 毫克咖啡因,零糖,30 微克生物素,配方氨基酸,如 L-茶氨酸,防止碰撞,微風莓,每包 10 根',
    11,
    399,
    100,
    'fd03801.jpg',
    '2023-06-23 02:17:00'
  ),
  (
    39,
    'Alani Nu 能量棒包,含水活化,200 毫克咖啡因,零糖,30 微克生物素,配方含氨基酸,如 L-茶氨酸,防止碰撞,宇宙星塵,每包 10 根',
    11,
    399,
    100,
    'fd03901.jpg',
    '2023-06-24 02:17:00'
  ),
  (
    40,
    'Honey Stinger 有機蜂蜜鬆餅 | 能量棒 適用於運動、耐力和表現 | 家庭和健身房運動營養 鍛煉前後 | 一盒 16 個鬆餅,17 盎司(約 480.8 克)(16 件裝)',
    11,
    799,
    100,
    'fd04001.jpg',
    '2023-06-25 02:17:00'
  ),
  (
    41,
    'Elan Organic Fiji Mix,非轉基因,純素食,無麩質,5 盎司(約 136.1 克)',
    11,
    210,
    100,
    'fd04101.jpg',
    '2023-06-26 02:17:00'
  ),
  (
    42,
    'Power Up 混合堅果 非轉基因 素食 無麩質 無人工成分',
    11,
    799,
    100,
    'fd04201.jpg',
    '2023-06-27 02:17:00'
  ),
  (
    43,
    'Skratch Labs Energy Chews | 跑步、騎自行車和運動的能量軟糖 | 能量凝膠替代品 | 覆盆子(10 入) | 無麩質 素食',
    11,
    700,
    100,
    'fd04301.jpg',
    '2023-06-28 02:17:00'
  ),
  (
    44,
    'Honey Stinger 有機能量咀嚼綜合包 | 水果冰沙、石榴百香果和櫻花各 3 件組 | 不含麩質和咖啡因 | 9 入(1 入',
    11,
    599,
    100,
    'fd04401.jpg',
    '2023-06-29 02:17:00'
  ),
  (
    45,
    'Huma Plus(雙電解質)奇亞籽能量凝膠,多種包裝',
    11,
    900,
    100,
    'fd04501.jpg',
    '2023-06-30 02:17:00'
  ),
  (
    46,
    'Caffeine Bullet 16 薄荷咖啡因咀嚼錠 = 1600 毫克咖啡因踢球,速度比能量凝膠和自行車咀嚼更快,適合中賽 耐力運動和遊戲咖啡因能量提升',
    11,
    600,
    100,
    'fd04601.jpg',
    '2023-07-01 02:17:00'
  ),
  (
    47,
    'think!蛋白質棒 高蛋白零食 無麩質 無糖 能量棒 分離乳清蛋白 檸檬喜悅 營養棒 不含人工甜味劑 2 盎司(約 59.5 克) (10 入)',
    11,
    900,
    100,
    'fd04701.jpg',
    '2023-07-02 02:17:00'
  ),
  (
    48,
    'GU Energy 原創運動營養能量凝膠,24 入,各種水果口味',
    11,
    1050,
    100,
    'fd04801.jpg',
    '2023-07-03 02:17:00'
  );

-- --------------------------------------------------------
--
-- 資料表結構 `product_categories`
--
CREATE TABLE `product_categories` (
  `sid` int(19) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `parent_sid` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- 傾印資料表的資料 `product_categories`
--
INSERT INTO
  `product_categories` (`sid`, `categories_name`, `parent_sid`)
VALUES
  (1, '運動衣物', 0),
  (2, '健身食品', 0),
  (3, '健身器材', 0),
  (4, '教練課程', 0),
  (5, '上衣類', 1),
  (6, '外套類', 1),
  (7, '下身類', 1),
  (8, '鞋類', 1),
  (9, '襪子', 1),
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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- 傾印資料表的資料 `product_color`
--
INSERT INTO
  `product_color` (`sid`, `color_name`, `color_code`)
VALUES
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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------
--
-- 資料表結構 `product_description`
--
CREATE TABLE `product_description` (
  `sid` int(19) NOT NULL,
  `col1` varchar(255) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- 傾印資料表的資料 `product_detail`
--
INSERT INTO
  `product_detail` (
    `sid`,
    `product_name_sid`,
    `stocks`,
    `picture`,
    `created_at`,
    `color_id`,
    `size_id`
  )
VALUES
  (
    1,
    '1',
    100,
    'st0010101.jpg,st0010102.jpg,st0010103.jpg,st0010104.jpg',
    '2023-05-16 10:17:13',
    10,
    1
  ),
  (
    2,
    '1',
    100,
    'st0010101.jpg,st0010102.jpg,st0010103.jpg,st0010104.jpg',
    '2023-05-16 10:17:13',
    10,
    2
  ),
  (
    3,
    '1',
    100,
    'st0010101.jpg,st0010102.jpg,st0010103.jpg,st0010104.jpg',
    '2023-05-16 10:17:13',
    10,
    3
  ),
  (
    4,
    '1',
    100,
    'st0010101.jpg,st0010102.jpg,st0010103.jpg,st0010104.jpg',
    '2023-05-16 10:17:13',
    10,
    4
  ),
  (
    5,
    '1',
    100,
    'st0010201.jpg',
    '2023-05-16 10:17:13',
    3,
    1
  ),
  (
    6,
    '1',
    100,
    'st0010201.jpg',
    '2023-05-16 10:17:13',
    3,
    2
  ),
  (
    7,
    '1',
    100,
    'st0010201.jpg',
    '2023-05-16 10:17:13',
    3,
    3
  ),
  (
    8,
    '1',
    100,
    'st0010201.jpg',
    '2023-05-16 10:17:13',
    3,
    4
  ),
  (
    9,
    '2',
    100,
    'st0020101.jpg,st0020102.jpg,st0020103.jpg,st0020104.jpg,st0020105.jpg',
    '2023-05-16 10:17:13',
    7,
    1
  ),
  (
    10,
    '2',
    100,
    'st0020101.jpg,st0020102.jpg,st0020103.jpg,st0020104.jpg,st0020105.jpg',
    '2023-05-16 10:17:13',
    7,
    5
  ),
  (
    11,
    '2',
    100,
    'st0020101.jpg,st0020102.jpg,st0020103.jpg,st0020104.jpg,st0020105.jpg',
    '2023-05-16 10:17:13',
    7,
    6
  ),
  (
    12,
    '2',
    100,
    'st0020101.jpg,st0020102.jpg,st0020103.jpg,st0020104.jpg,st0020105.jpg',
    '2023-05-16 10:17:13',
    7,
    4
  ),
  (
    13,
    '2',
    100,
    'st0020201.jpg,st0020202.jpg,st0020203.jpg,st0020204.jpg,st0020205.jpg,st0020206.jpg,st0020207.jpg,st0020208.jpg',
    '2023-05-16 10:17:13',
    10,
    1
  ),
  (
    14,
    '2',
    100,
    'st0020201.jpg,st0020202.jpg,st0020203.jpg,st0020204.jpg,st0020205.jpg,st0020206.jpg,st0020207.jpg,st0020208.jpg',
    '2023-05-16 10:17:13',
    10,
    2
  ),
  (
    15,
    '2',
    100,
    'st0020201.jpg,st0020202.jpg,st0020203.jpg,st0020204.jpg,st0020205.jpg,st0020206.jpg,st0020207.jpg,st0020208.jpg',
    '2023-05-16 10:17:13',
    10,
    3
  ),
  (
    16,
    '2',
    100,
    'st0020201.jpg,st0020202.jpg,st0020203.jpg,st0020204.jpg,st0020205.jpg,st0020206.jpg,st0020207.jpg,st0020208.jpg',
    '2023-05-16 10:17:13',
    10,
    4
  ),
  (
    17,
    '3',
    100,
    'st0030101.jpg,st0030102.jpg,st0030103.jpg,st0030104.jpg,st0030105.jpg,st0030106.jpg',
    '2023-05-16 10:17:13',
    2,
    1
  ),
  (
    18,
    '3',
    100,
    'st0030101.jpg,st0030102.jpg,st0030103.jpg,st0030104.jpg,st0030105.jpg,st0030106.jpg',
    '2023-05-16 10:17:13',
    2,
    2
  ),
  (
    19,
    '3',
    100,
    'st0030101.jpg,st0030102.jpg,st0030103.jpg,st0030104.jpg,st0030105.jpg,st0030106.jpg',
    '2023-05-16 10:17:13',
    2,
    3
  ),
  (
    20,
    '3',
    100,
    'st0030101.jpg,st0030102.jpg,st0030103.jpg,st0030104.jpg,st0030105.jpg,st0030106.jpg',
    '2023-05-16 10:17:13',
    2,
    4
  ),
  (
    21,
    '3',
    100,
    'st0030201.jpg,st0030202.jpg,st0030203.jpg,st0030204.jpg,st0030205.jpg',
    '2023-05-16 10:17:13',
    1,
    1
  ),
  (
    22,
    '3',
    100,
    'st0030201.jpg,st0030202.jpg,st0030203.jpg,st0030204.jpg,st0030205.jpg',
    '2023-05-16 10:17:13',
    1,
    2
  ),
  (
    23,
    '3',
    100,
    'st0030201.jpg,st0030202.jpg,st0030203.jpg,st0030204.jpg,st0030205.jpg',
    '2023-05-16 10:17:13',
    1,
    3
  ),
  (
    24,
    '3',
    100,
    'st0030201.jpg,st0030202.jpg,st0030203.jpg,st0030204.jpg,st0030205.jpg',
    '2023-05-16 10:17:13',
    1,
    4
  ),
  (
    25,
    '4',
    100,
    'st0040101.jpg,st0040102.jpg,st0040103.jpg,st0040104.jpg,st0040105.jpg,st0040106.jpg,st0040107.jpg',
    '2023-05-16 10:17:13',
    1,
    1
  ),
  (
    26,
    '4',
    100,
    'st0040101.jpg,st0040102.jpg,st0040103.jpg,st0040104.jpg,st0040105.jpg,st0040106.jpg,st0040107.jpg',
    '2023-05-16 10:17:13',
    1,
    2
  ),
  (
    27,
    '4',
    100,
    'st0040101.jpg,st0040102.jpg,st0040103.jpg,st0040104.jpg,st0040105.jpg,st0040106.jpg,st0040107.jpg',
    '2023-05-16 10:17:13',
    1,
    3
  ),
  (
    28,
    '4',
    100,
    'st0040101.jpg,st0040102.jpg,st0040103.jpg,st0040104.jpg,st0040105.jpg,st0040106.jpg,st0040107.jpg',
    '2023-05-16 10:17:13',
    1,
    4
  ),
  (
    29,
    '4',
    100,
    'st0040201.jpg,st0040202.jpg,st0040203.jpg,st0040204.jpg,st0040205.jpg',
    '2023-05-16 10:17:13',
    2,
    1
  ),
  (
    30,
    '4',
    100,
    'st0040201.jpg,st0040202.jpg,st0040203.jpg,st0040204.jpg,st0040205.jpg',
    '2023-05-16 10:17:13',
    2,
    2
  ),
  (
    31,
    '4',
    100,
    'st0040201.jpg,st0040202.jpg,st0040203.jpg,st0040204.jpg,st0040205.jpg',
    '2023-05-16 10:17:13',
    2,
    3
  ),
  (
    32,
    '4',
    100,
    'st0040201.jpg,st0040202.jpg,st0040203.jpg,st0040204.jpg,st0040205.jpg',
    '2023-05-16 10:17:13',
    2,
    4
  ),
  (
    33,
    '5',
    100,
    'st0050101.jpg,st0050102.jpg,st0050103.jpg,st0050104.jpg,st0050105.jpg,st0050106.jpg,st0050107.jpg',
    '2023-05-16 10:17:13',
    1,
    1
  ),
  (
    34,
    '5',
    100,
    'st0050101.jpg,st0050102.jpg,st0050103.jpg,st0050104.jpg,st0050105.jpg,st0050106.jpg,st0050107.jpg',
    '2023-05-16 10:17:13',
    1,
    2
  ),
  (
    35,
    '5',
    100,
    'st0050101.jpg,st0050102.jpg,st0050103.jpg,st0050104.jpg,st0050105.jpg,st0050106.jpg,st0050107.jpg',
    '2023-05-16 10:17:13',
    1,
    3
  ),
  (
    36,
    '5',
    100,
    'st0050101.jpg,st0050102.jpg,st0050103.jpg,st0050104.jpg,st0050105.jpg,st0050106.jpg,st0050107.jpg',
    '2023-05-16 10:17:13',
    1,
    4
  ),
  (
    37,
    '5',
    100,
    'st0050201.jpg,st0050202.jpg,st0050203.jpg,st0050204.jpg,st0050205.jpg,st0050206.jpg',
    '2023-05-16 10:17:13',
    7,
    1
  ),
  (
    38,
    '5',
    100,
    'st0050201.jpg,st0050202.jpg,st0050203.jpg,st0050204.jpg,st0050205.jpg,st0050206.jpg',
    '2023-05-16 10:17:13',
    7,
    2
  ),
  (
    39,
    '5',
    100,
    'st0050201.jpg,st0050202.jpg,st0050203.jpg,st0050204.jpg,st0050205.jpg,st0050206.jpg',
    '2023-05-16 10:17:13',
    7,
    3
  ),
  (
    40,
    '5',
    100,
    'st0050201.jpg,st0050202.jpg,st0050203.jpg,st0050204.jpg,st0050205.jpg,st0050206.jpg',
    '2023-05-16 10:17:13',
    7,
    4
  );

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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- 傾印資料表的資料 `product_name`
--
INSERT INTO
  `product_name` (
    `sid`,
    `product_name`,
    `category_id`,
    `price`,
    `picture`,
    `created_at`
  )
VALUES
  (
    1,
    '男士合成短袖遠足T恤',
    5,
    100,
    'st0010101.jpg',
    '2023-06-30 07:25:46'
  ),
  (
    2,
    '男士透氣圓領 Essential Fitness T恤 - 斑駁灰色',
    5,
    100,
    'st0020101.jpg',
    '2023-06-30 07:25:46'
  ),
  (
    3,
    '男士健身 T 卹 100 Sportee - 白色',
    5,
    100,
    'st0030101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    4,
    '男士圓領透氣健身 T 卹 - 米色',
    5,
    100,
    'st0040101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    5,
    'Triban Essential 吸濕排汗短袖公路自行車騎行服男式',
    5,
    100,
    'st0050101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    6,
    '男士跑步透氣 T 卹 Dry+ - 黑色',
    5,
    100,
    'st0060101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    7,
    'Inesis，短袖高爾夫 Polo 衫，男士',
    5,
    100,
    'st0070101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    8,
    'Forclaz Travel 100 美利奴羊毛遠足 T 恤男式',
    5,
    100,
    'st0080101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    9,
    '男士基本款短袖網球 T 恤 - 白色',
    5,
    100,
    'st0090101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    10,
    'Van Rysel 透氣公路自行車賽車服男式',
    5,
    100,
    'st0100101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    11,
    '男士基本款短袖網球 Polo 衫 - 海軍藍',
    5,
    100,
    'st0110101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    12,
    '男士徒步合成短袖 T 卹 MH500',
    5,
    100,
    'st0120101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    13,
    '男式 Quechua NH500 棉混紡遠足 T 卹',
    5,
    100,
    'st0130101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    14,
    'NH550 Fresh 徒步旅行 T 卹男式',
    5,
    100,
    'st0140101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    15,
    'Forclaz Trek 500 長袖美利奴羊毛徒步 T 卹男式',
    5,
    100,
    'st0150101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    16,
    '男士短袖公路自行車夏季騎行服 RC500 - 海軍藍',
    5,
    100,
    'st0160101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    17,
    '男式短袖棉質迷彩狩獵 T 卹',
    5,
    100,
    'st0170101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    18,
    '男士普拉提和溫和健身房修身運動 T 卹 520',
    5,
    100,
    'st0180101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    19,
    'Nyamba 500 彈力棉質健身 T 卹男式',
    5,
    100,
    'st0190101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    20,
    'Forclaz Trek 500 拉鍊長袖美利奴羊毛徒步 T 卹男式',
    5,
    100,
    'st0200101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    21,
    'Inesis 男士輕質高爾夫 Polo 衫',
    5,
    100,
    'st0210101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    22,
    'Domyos 動悅適 無縫短袖力量瑜伽 T 卹 男士',
    5,
    100,
    'st0220101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    23,
    'Kiprun Skincare 男士透氣跑步 T 卹',
    5,
    100,
    'st0230101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    24,
    'Neo Racer 男式公路自行車騎行服',
    5,
    100,
    'st0240101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    25,
    '男式高爾夫馬球長袖 - MW500 海軍藍',
    5,
    100,
    'st0250101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    26,
    'Kiprun Care 男式透氣跑步 T 卹',
    5,
    100,
    'st0260101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    27,
    'Solognac 100 男士透氣短袖狩獵 T 卹',
    5,
    100,
    'st0270101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    28,
    'Kiprun 男士輕薄透氣跑步 T 卹',
    5,
    100,
    'st0280101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    29,
    'Forclaz Travel 500 男式可調節登山襯衫',
    5,
    100,
    'st0290101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    30,
    '男士長袖健身 T 卹 100 - 黑色',
    5,
    100,
    'st0300101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    31,
    '男士步行長褲 - 灰色',
    7,
    100,
    'pt0010101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    32,
    '城市騎行防雨褲帶內置套鞋 100 - 黑色',
    7,
    100,
    'pt0020101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    33,
    'Quechua MH150 多種穿法登山褲 男士',
    7,
    100,
    'pt0030101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    34,
    '男士山地徒步耐用二合一拉鍊長褲 MT100',
    7,
    100,
    'pt0040101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    35,
    'Kalenji Run 男式保暖跑步緊身褲',
    7,
    100,
    'pt0050101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    36,
    '男士防水登山褲 NH500 Imper',
    7,
    100,
    'pt0060101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    37,
    'Btwin 100 男士公路自行車緊身褲',
    7,
    100,
    'pt0070101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    38,
    'Quechua SH100 X-Warm 防水男式雪地徒步褲',
    7,
    100,
    'pt0080101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    39,
    'Travel 100 男士旅行背包工裝褲',
    7,
    100,
    'pt0090101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    40,
    '男士保暖滑雪褲 100 - 黑色',
    7,
    100,
    'pt0100101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    41,
    '男士跑步透氣長褲襪 - 黑色',
    7,
    100,
    'pt0110101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    42,
    'Quechua MH100M 男士登山褲',
    7,
    100,
    'pt0120101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    43,
    '男式堅固山地背包褲 - MT500',
    7,
    100,
    'pt0130101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    44,
    'Quechua SH500 X-Warm 防水雪地徒步褲男式',
    7,
    100,
    'pt0140101.jpg',
    '0000-00-00 00:00:00'
  ),
  (
    45,
    '男士保暖滑雪褲 180 - 黑色',
    7,
    100,
    'pt0150101.jpg',
    '0000-00-00 00:00:00'
  );