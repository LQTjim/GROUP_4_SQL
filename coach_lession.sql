-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 12, 2023 at 10:44 AM
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
-- Database: `coach_lession`
--

-- --------------------------------------------------------

--
-- Table structure for table `c_l_blog`
--

CREATE TABLE `c_l_blog` (
  `sid` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `coach_sid` int(11) NOT NULL,
  `browse_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_blog_comments`
--

CREATE TABLE `c_l_blog_comments` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `blog_sid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_blog_likes`
--

CREATE TABLE `c_l_blog_likes` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `blog_sid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_certification`
--

CREATE TABLE `c_l_certification` (
  `sid` int(11) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_l_certification`
--

INSERT INTO `c_l_certification` (`sid`, `name`) VALUES
(17, 'ACE-CPT 私人教練證照'),
(18, 'ACE-GFI 團課教練證照'),
(19, 'ACE-HC 健康教練證照'),
(20, 'ACE-MES 醫學運動專家'),
(4, 'ACSM-CEP 醫療運動生理師'),
(1, 'ACSM-CPT 私人教練證照'),
(3, 'ACSM-EPC 運動生理學家證照'),
(2, 'ACSM-GEI 團課教練證照'),
(5, 'ACSM-RCEP 註冊醫療運動生理師'),
(23, 'AFAA-FDI國際體適能有氧舞蹈指導員'),
(26, 'AFAA-KB拳擊體適能'),
(24, 'AFAA-MAT墊上核心訓練'),
(21, 'AFAA-PFT個人體適能顧問'),
(25, 'AFAA-STEP階梯有氧'),
(22, 'AFAA-WT重量訓練'),
(45, 'FTC功能訓練師'),
(48, 'GTC團體訓練師'),
(13, 'NASM-CES 矯正運動專家'),
(16, 'NASM-CNC 營養教練認證'),
(11, 'NASM-CPT 私人教練證照'),
(12, 'NASM-PES 表現提升專家'),
(15, 'NASM-SFS 銀髮族訓練專家'),
(14, 'NASM-YES 青少年體能訓練專家'),
(41, 'NCSF-CPT 私人教練認證'),
(42, 'NCSF-CSC 肌力教練証認'),
(43, 'NCSF-SNS 運動營養專家'),
(10, 'NSCA-CPSS 運動表現科學家'),
(6, 'NSCA-CPT 私人教練證照'),
(7, 'NSCA-CSCS 肌力與體能訓練專家'),
(8, 'NSCA-CSPS 特殊族群訓練專家'),
(9, 'NSCA-TSAC 戰術肌力與體能訓練師'),
(37, 'PTAG-CPT 私人教練認證'),
(39, 'PTAG-ESM Lv1 情緒與壓力管理Lv1'),
(36, 'PTAG-Foundation 基礎課程'),
(38, 'PTAG-Mentorship Lv1 引導力Lv1'),
(40, 'PTAG-Mentorship Lv2 引導力Lv2'),
(46, 'RTC彈力棍訓練師'),
(49, 'SMSTC運動醫學懸吊訓練師'),
(44, 'STC懸吊訓練師'),
(47, 'YOGA瑜珈'),
(30, 'Zumba-AQUA'),
(27, 'Zumba-Basic1&2'),
(28, 'Zumba-Gold'),
(34, 'Zumba-JamSession'),
(29, 'Zumba-Kids+Kids Jr.'),
(33, 'Zumba-Pro Skills'),
(31, 'Zumba-Step'),
(35, 'Zumba-Strong'),
(32, 'Zumba-TONING');

-- --------------------------------------------------------

--
-- Table structure for table `c_l_classroom`
--

CREATE TABLE `c_l_classroom` (
  `sid` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `max_capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_l_classroom`
--

INSERT INTO `c_l_classroom` (`sid`, `name`, `max_capacity`) VALUES
(1, '202', 20),
(2, '203', 40),
(3, '204', 40);

-- --------------------------------------------------------

--
-- Table structure for table `c_l_coach`
--

CREATE TABLE `c_l_coach` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `experience` varchar(512) DEFAULT NULL,
  `introduction` varchar(512) NOT NULL,
  `photo` varchar(512) NOT NULL DEFAULT './img/coach_img/',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_l_coach`
--

INSERT INTO `c_l_coach` (`sid`, `member_sid`, `nickname`, `experience`, `introduction`, `photo`, `created_at`) VALUES
(1, 6, 'Jason', '擁有5年健身教練經驗，曾在多家知名健身中心擔任教練，專長是重訓和體能訓練。', '嗨我是健森，也可以叫我Jason。我熱愛運動和健身，希望能幫助大家達到健康和理想的身材目標。我專注於提供個人化的訓練計劃和鼓勵，讓你在訓練中不斷進步。', './img/coach_img/', '2023-05-11 06:38:16'),
(2, 8, 'Bin', '擁有8年健身教練經驗，曾在健身俱樂部和私人訓練室工作，專長是有氧運動和核心訓練。', '大家好，我是陳學彬，Bin。我相信運動對於身心健康的重要性，我喜歡帶領人們享受運動的樂趣並達到他們的健身目標。無論你是初學者還是有經驗的運動員，我都會根據你的需求提供專業的指導和支持。', './img/coach_img/', '2023-05-11 06:38:16'),
(3, 9, 'Andy', '擁有3年健身教練經驗，曾在健身工作室和健身訓練營工作，專長是柔軟度和核心訓練。', '大家好，我是湯臨安，也可以叫我Andy。我熱衷於幫助人們改善柔軟度和增強核心力量。無論你是想改善體態還是提升運動表現，我都能提供適合你的訓練計劃。', './img/coach_img/', '2023-05-11 06:38:16'),
(4, 11, 'CJ', '擁有6年健身教練經驗，曾在健身俱樂部和健康中心工作，專長是有氧運動和體態調整。', '大家好，我是世傑，大家都叫我CJ。我喜歡結合有氧運動和體態調整，幫助人們塑造健康而有自信的身體。我相信運動不僅能改善身體，還能提升心理健康。', './img/coach_img/', '2023-05-11 06:38:16'),
(5, 12, 'Max', '擁有4年健身教練經驗，曾在運動中心和健身訓練營任職，專長是重訓和增肌。', '大家好，我是陳明志，也可以叫我Max。我熱愛健身和力量訓練，喜歡幫助人們增加肌肉量並達到身材塑造的目標。我會提供個人化的訓練計劃和營養建議，讓你達到理想的身體成果。', './img/coach_img/', '2023-05-11 06:38:16'),
(6, 14, 'Linda', '擁有6年健身教練經驗，曾在健身俱樂部擔任私人訓練師，專長是瑜珈和普拉提。', 'Hello 我是林瑜，也可以叫我Linda。我對瑜珈和普拉提充滿熱情，相信這些運動對於塑造身體和平衡心靈都有著重要的作用。我期待與大家一起探索身心的平衡，並幫助你們實現健康和靈活的目標。', './img/coach_img/', '2023-05-11 06:38:16'),
(7, 22, 'Kai', '擁有7年健身教練經驗，曾在多家健身中心擔任教練，專長是重訓和徒手訓練。', '大家好，我是徐凱傑 Kai。我對於重訓和徒手訓練有著深深的熱愛，相信這些訓練方式可以塑造強健的身體和提升肌力。我將根據你的目標和能力，設計個人化的訓練課表', './img/coach_img/', '2023-05-11 06:38:16'),
(8, 26, 'Samantha', '擁有5年健身教練經驗，曾在私人健身工作室擔任主管教練，專長是舞蹈訓練和伸展運動。', '大家好，我是林思婷，也可以叫我Samantha。我熱愛舞蹈和伸展運動，並相信它們對於身體靈活性和身心平衡的重要性。我期待與你一起享受運動的樂趣，並幫助你提升柔軟度和身體的協調性。', './img/coach_img/', '2023-05-11 06:38:16');

-- --------------------------------------------------------

--
-- Table structure for table `c_l_coach_comments`
--

CREATE TABLE `c_l_coach_comments` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `coach_sid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_coach_likes`
--

CREATE TABLE `c_l_coach_likes` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `coach_sid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_expertise`
--

CREATE TABLE `c_l_expertise` (
  `sid` int(11) NOT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_l_expertise`
--

INSERT INTO `c_l_expertise` (`sid`, `name`) VALUES
(2, 'TRX課程訓練'),
(61, '代謝調節和體脂控制'),
(73, '休閒運動和健身活動策劃'),
(41, '伸展與放鬆訓練'),
(71, '健身比賽和競技活動的預備訓練'),
(48, '前後推進訓練'),
(33, '力量訓練'),
(16, '動態伸展訓練'),
(44, '協調性訓練'),
(65, '團體運動和團隊建設'),
(3, '增肌減脂訓練'),
(9, '壺鈴課程訓練'),
(52, '女性健康體適能訓練'),
(15, '平衡訓練'),
(34, '循環訓練'),
(72, '心肺復健和運動治療'),
(12, '心肺訓練'),
(26, '忍耐力訓練'),
(47, '手臂訓練'),
(49, '手部訓練'),
(36, '持久力訓練'),
(19, '敏捷性訓練'),
(50, '整體身體訓練'),
(56, '有氧訓練'),
(8, '有氧間歇訓練'),
(10, '柔軟度訓練'),
(18, '核心力量訓練'),
(57, '核心訓練'),
(40, '格鬥技訓練'),
(14, '槓鈴訓練'),
(39, '機能性訓練'),
(22, '游泳訓練'),
(45, '爆發力訓練'),
(25, '瑜伽訓練'),
(51, '產後婦女指導訓練'),
(68, '產後復健和健身'),
(67, '老年人健身和功能訓練'),
(11, '耐力訓練'),
(53, '肌力與體能訓練'),
(37, '肌耐力訓練'),
(1, '肌肥大訓練'),
(31, '肩膀訓練'),
(30, '背部訓練'),
(29, '胸肌訓練'),
(46, '腳踝訓練'),
(13, '腹肌訓練'),
(28, '腹部訓練'),
(27, '腿部訓練'),
(32, '臂部訓練'),
(43, '舉重訓練'),
(21, '舞蹈訓練'),
(38, '跑步訓練'),
(17, '跳繩訓練'),
(42, '跳躍力訓練'),
(20, '運動傷害預防'),
(60, '運動傷害預防和康復'),
(5, '運動功能性檢測'),
(4, '運動員體能訓練'),
(23, '運動康復訓練'),
(63, '運動心理學和動力學'),
(69, '運動特殊群體（如孕婦、兒童、殘障人士）的訓練'),
(64, '運動生理學和解剖學'),
(70, '運動補充品和營養補助品指導'),
(66, '運動訓練計劃和目標設定'),
(55, '重量訓練'),
(24, '長跑訓練'),
(58, '靈活性訓練'),
(62, '飲食指導和營養計劃'),
(59, '體態矯正'),
(7, '體態評估及雕塑'),
(54, '體能訓練'),
(6, '體適能指導訓練'),
(35, '高強度間歇訓練（HIIT）');

-- --------------------------------------------------------

--
-- Table structure for table `c_l_lession`
--

CREATE TABLE `c_l_lession` (
  `sid` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `coach_sid` int(11) NOT NULL,
  `classroom_sid` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `photo` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `max_capacity` int(11) NOT NULL,
  `enrollment_quantity` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_lession_comments`
--

CREATE TABLE `c_l_lession_comments` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `lession_sid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_lession_likes`
--

CREATE TABLE `c_l_lession_likes` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `lession_sid` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_rela_blog_tag`
--

CREATE TABLE `c_l_rela_blog_tag` (
  `sid` int(11) NOT NULL,
  `blog_sid` int(11) NOT NULL,
  `tag_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_rela_coach_certification`
--

CREATE TABLE `c_l_rela_coach_certification` (
  `sid` int(11) NOT NULL,
  `coach_sid` int(11) NOT NULL,
  `certification_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_rela_coach_expertise`
--

CREATE TABLE `c_l_rela_coach_expertise` (
  `sid` int(11) NOT NULL,
  `coach_sid` int(11) NOT NULL,
  `expertise_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_rela_lession_tag`
--

CREATE TABLE `c_l_rela_lession_tag` (
  `sid` int(11) NOT NULL,
  `lession_sid` int(11) NOT NULL,
  `tag_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `c_l_tag`
--

CREATE TABLE `c_l_tag` (
  `sid` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_l_tag`
--

INSERT INTO `c_l_tag` (`sid`, `name`, `created_at`) VALUES
(1, '健身日誌', '2023-05-11 07:04:53'),
(2, '健身計畫', '2023-05-11 07:04:53'),
(3, '飲食指南', '2023-05-11 07:04:53'),
(4, '運動科學', '2023-05-11 07:04:53'),
(5, '健身器材', '2023-05-11 07:04:53'),
(6, '體能訓練', '2023-05-11 07:04:53'),
(7, '健康生活', '2023-05-11 07:04:53'),
(8, '肌肉解剖', '2023-05-11 07:04:53'),
(9, '運動傷害', '2023-05-11 07:04:53'),
(10, '運動心理學', '2023-05-11 07:04:53'),
(11, '跑步技巧', '2023-05-11 07:04:53'),
(12, '體態改善', '2023-05-11 07:04:53'),
(13, '增肌減脂', '2023-05-11 07:04:53'),
(14, '瑜伽練習', '2023-05-11 07:04:53'),
(15, '運動營養', '2023-05-11 07:04:53'),
(16, '運動彈性', '2023-05-11 07:04:53'),
(17, '核心訓練', '2023-05-11 07:04:53'),
(18, '徒手訓練', '2023-05-11 07:04:53'),
(19, '跳繩訓練', '2023-05-11 07:04:53'),
(20, '有氧運動', '2023-05-11 07:04:53'),
(21, '核心力量', '2023-05-11 07:04:53'),
(22, '靜態伸展', '2023-05-11 07:04:53'),
(23, '徒步健行', '2023-05-11 07:04:53'),
(24, '心肺耐力', '2023-05-11 07:04:53'),
(25, '脊柱健康', '2023-05-11 07:04:53'),
(26, '復健訓練', '2023-05-11 07:04:53'),
(27, '泳池運動', '2023-05-11 07:04:53'),
(28, '健身競技', '2023-05-11 07:04:53'),
(29, '代謝加速', '2023-05-11 07:04:53'),
(30, '肌耐力訓練', '2023-05-11 07:04:53'),
(31, '循環訓練', '2023-05-11 07:04:53'),
(32, '心理健康', '2023-05-11 07:04:53'),
(33, '運動動機', '2023-05-11 07:04:53'),
(34, '柔軟度訓練', '2023-05-11 07:04:53'),
(35, '體適能測試', '2023-05-11 07:04:53'),
(36, '營養補充品', '2023-05-11 07:04:53'),
(37, '健身科技', '2023-05-11 07:04:53'),
(38, '高強度間歇訓練', '2023-05-11 07:04:53'),
(39, '姿勢矯正', '2023-05-11 07:04:53'),
(40, '全身訓練', '2023-05-11 07:04:53'),
(41, '徒手健身', '2023-05-11 07:04:53'),
(42, '健美比賽', '2023-05-11 07:04:53'),
(43, '肌肉平衡', '2023-05-11 07:04:53'),
(44, '高爆發力訓練', '2023-05-11 07:04:53'),
(45, '靜坐冥想', '2023-05-11 07:04:53'),
(46, '瑜伽呼吸法', '2023-05-11 07:04:53'),
(47, '徒步旅行', '2023-05-11 07:04:53'),
(48, '腹肌訓練', '2023-05-11 07:04:53'),
(49, '體脂分析', '2023-05-11 07:04:53'),
(50, '徒手拉力訓練', '2023-05-11 07:04:53'),
(51, '心理動力學', '2023-05-11 07:04:53'),
(52, '循環健身', '2023-05-11 07:04:53'),
(53, '懸垂訓練', '2023-05-11 07:04:53'),
(54, '柔軟度提升', '2023-05-11 07:04:53'),
(55, '健身挑戰', '2023-05-11 07:04:53'),
(56, '健身社群', '2023-05-11 07:04:53'),
(57, '訓練進展', '2023-05-11 07:04:53'),
(58, '運動康復', '2023-05-11 07:04:53'),
(59, '有氧舞蹈', '2023-05-11 07:04:53'),
(60, '休息與恢復', '2023-05-11 07:04:53'),
(61, '徒手核心訓練', '2023-05-11 07:04:53'),
(62, '健身飲食計畫', '2023-05-11 07:04:53'),
(63, '有氧搏擊訓練', '2023-05-11 07:04:53'),
(64, '徒手平衡訓練', '2023-05-11 07:04:53'),
(65, '靜態力量訓練', '2023-05-11 07:04:53'),
(66, '肌肉塑造', '2023-05-11 07:04:53'),
(67, '伸展與放鬆', '2023-05-11 07:04:53'),
(68, '健身目標設定', '2023-05-11 07:04:53'),
(69, '運動技巧', '2023-05-11 07:04:53'),
(70, '全身循環訓練', '2023-05-11 07:04:53'),
(71, '體重訓練', '2023-05-11 07:04:53'),
(72, '高效燃脂', '2023-05-11 07:04:53'),
(73, '徒步探險', '2023-05-11 07:04:53'),
(74, '健身器材選擇', '2023-05-11 07:04:53'),
(75, '徒手核心力量', '2023-05-11 07:04:53'),
(76, '健身動機', '2023-05-11 07:04:53'),
(77, '肌力與耐力訓練', '2023-05-11 07:04:53'),
(78, '運動按摩', '2023-05-11 07:04:53'),
(79, '健身賽事', '2023-05-11 07:04:53'),
(80, '徒手靜態訓練', '2023-05-11 07:04:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c_l_blog`
--
ALTER TABLE `c_l_blog`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `c_l_blog_ibfk_1` (`coach_sid`);

--
-- Indexes for table `c_l_blog_comments`
--
ALTER TABLE `c_l_blog_comments`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `blog_sid` (`blog_sid`);

--
-- Indexes for table `c_l_blog_likes`
--
ALTER TABLE `c_l_blog_likes`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `blog_sid` (`blog_sid`);

--
-- Indexes for table `c_l_certification`
--
ALTER TABLE `c_l_certification`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `c_l_classroom`
--
ALTER TABLE `c_l_classroom`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `c_l_coach`
--
ALTER TABLE `c_l_coach`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `member_sid` (`member_sid`);

--
-- Indexes for table `c_l_coach_comments`
--
ALTER TABLE `c_l_coach_comments`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `coach_sid` (`coach_sid`);

--
-- Indexes for table `c_l_coach_likes`
--
ALTER TABLE `c_l_coach_likes`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `coach_sid` (`coach_sid`);

--
-- Indexes for table `c_l_expertise`
--
ALTER TABLE `c_l_expertise`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `c_l_lession`
--
ALTER TABLE `c_l_lession`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `coach_sid` (`coach_sid`),
  ADD KEY `classroom_sid` (`classroom_sid`);

--
-- Indexes for table `c_l_lession_comments`
--
ALTER TABLE `c_l_lession_comments`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `lession_sid` (`lession_sid`);

--
-- Indexes for table `c_l_lession_likes`
--
ALTER TABLE `c_l_lession_likes`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `lession_sid` (`lession_sid`);

--
-- Indexes for table `c_l_rela_blog_tag`
--
ALTER TABLE `c_l_rela_blog_tag`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `blog_sid` (`blog_sid`),
  ADD KEY `tag_sid` (`tag_sid`);

--
-- Indexes for table `c_l_rela_coach_certification`
--
ALTER TABLE `c_l_rela_coach_certification`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `coach_sid` (`coach_sid`),
  ADD KEY `certification_sid` (`certification_sid`);

--
-- Indexes for table `c_l_rela_coach_expertise`
--
ALTER TABLE `c_l_rela_coach_expertise`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `coach_sid` (`coach_sid`),
  ADD KEY `expertise_sid` (`expertise_sid`);

--
-- Indexes for table `c_l_rela_lession_tag`
--
ALTER TABLE `c_l_rela_lession_tag`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `lession_sid` (`lession_sid`),
  ADD KEY `tag_sid` (`tag_sid`);

--
-- Indexes for table `c_l_tag`
--
ALTER TABLE `c_l_tag`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c_l_blog`
--
ALTER TABLE `c_l_blog`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_blog_comments`
--
ALTER TABLE `c_l_blog_comments`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_blog_likes`
--
ALTER TABLE `c_l_blog_likes`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_certification`
--
ALTER TABLE `c_l_certification`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `c_l_classroom`
--
ALTER TABLE `c_l_classroom`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `c_l_coach`
--
ALTER TABLE `c_l_coach`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `c_l_coach_comments`
--
ALTER TABLE `c_l_coach_comments`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_coach_likes`
--
ALTER TABLE `c_l_coach_likes`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_expertise`
--
ALTER TABLE `c_l_expertise`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `c_l_lession`
--
ALTER TABLE `c_l_lession`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_lession_comments`
--
ALTER TABLE `c_l_lession_comments`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_lession_likes`
--
ALTER TABLE `c_l_lession_likes`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_rela_blog_tag`
--
ALTER TABLE `c_l_rela_blog_tag`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_rela_coach_certification`
--
ALTER TABLE `c_l_rela_coach_certification`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_rela_coach_expertise`
--
ALTER TABLE `c_l_rela_coach_expertise`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_rela_lession_tag`
--
ALTER TABLE `c_l_rela_lession_tag`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_tag`
--
ALTER TABLE `c_l_tag`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `c_l_lession`
--
ALTER TABLE `c_l_lession`
  ADD CONSTRAINT `c_l_lession_ibfk_2` FOREIGN KEY (`classroom_sid`) REFERENCES `c_l_classroom` (`sid`);

--
-- Constraints for table `c_l_lession_comments`
--
ALTER TABLE `c_l_lession_comments`
  ADD CONSTRAINT `c_l_lession_comments_ibfk_1` FOREIGN KEY (`lession_sid`) REFERENCES `c_l_lession` (`sid`);

--
-- Constraints for table `c_l_lession_likes`
--
ALTER TABLE `c_l_lession_likes`
  ADD CONSTRAINT `c_l_lession_likes_ibfk_1` FOREIGN KEY (`lession_sid`) REFERENCES `c_l_lession` (`sid`);

--
-- Constraints for table `c_l_rela_blog_tag`
--
ALTER TABLE `c_l_rela_blog_tag`
  ADD CONSTRAINT `c_l_rela_blog_tag_ibfk_1` FOREIGN KEY (`blog_sid`) REFERENCES `c_l_blog` (`sid`),
  ADD CONSTRAINT `c_l_rela_blog_tag_ibfk_2` FOREIGN KEY (`tag_sid`) REFERENCES `c_l_tag` (`sid`);

--
-- Constraints for table `c_l_rela_coach_certification`
--
ALTER TABLE `c_l_rela_coach_certification`
  ADD CONSTRAINT `c_l_rela_coach_certification_ibfk_2` FOREIGN KEY (`certification_sid`) REFERENCES `c_l_certification` (`sid`);

--
-- Constraints for table `c_l_rela_coach_expertise`
--
ALTER TABLE `c_l_rela_coach_expertise`
  ADD CONSTRAINT `c_l_rela_coach_expertise_ibfk_2` FOREIGN KEY (`expertise_sid`) REFERENCES `c_l_expertise` (`sid`);

--
-- Constraints for table `c_l_rela_lession_tag`
--
ALTER TABLE `c_l_rela_lession_tag`
  ADD CONSTRAINT `c_l_rela_lession_tag_ibfk_1` FOREIGN KEY (`lession_sid`) REFERENCES `c_l_lession` (`sid`),
  ADD CONSTRAINT `c_l_rela_lession_tag_ibfk_2` FOREIGN KEY (`tag_sid`) REFERENCES `c_l_tag` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
