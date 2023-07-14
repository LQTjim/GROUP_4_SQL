-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 14, 2023 at 01:28 PM
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
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Table structure for table `c_l_category`
--

CREATE TABLE `c_l_category` (
  `sid` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_l_category`
--

INSERT INTO `c_l_category` (`sid`, `name`, `description`) VALUES
(1, '瑜珈流動與冥想課程', '這個課程以流動的瑜伽動作和呼吸練習為基礎，融合了力量、靈活性和平衡。透過連貫的動作流，你將提升身體柔軟度、強化肌肉，同時培養身心的平靜和集中力。'),
(2, '核心強化與腹肌鍛鍊課程', '這個課程專注於鍛煉和加強核心肌群，包括腹肌、腰部和背部肌肉。透過一系列的練習，你將提升核心穩定性、改善姿勢，同時增強身體的力量和平衡能力。'),
(3, '皮拉提斯體態塑造', '本課程旨在提升身體的姿態和塑造曲線美。透過一系列的皮拉提斯運動和專注呼吸的指導，培養核心肌群的力量、改善身體的平衡和柔軟度。這個課程強調身體的對稱性和對體態的敏感度，幫助調整姿勢並鍛鍊深層肌肉。'),
(4, '強化肌力與力量提升課程', '這個課程專注於增強全身肌肉力量與最大肌肉力量的提升，尤其幫助對於遇到力量停滯期與PR瓶頸的你提供個人化的課程規劃與課表安排。'),
(5, '專業拳擊技巧訓練系列課程', '此系列課程提供全面的拳擊技巧指導，包括拳擊基礎、攻擊和防守、腳步和身體操控，以及戰略和戰術訓練。目標在提高學員的技術、反應速度和身體協調性。'),
(6, '臥推專項訓練課程', '此系列課程由高專業度的教練帶領，注重臥推技巧的精進和細節的修正。透過個別指導和安全的訓練，你將學習到正確的臥推技巧與發力模式，改善動作流暢度，讓你的臥推能力更上一層樓。'),
(7, '肌肥大循環課表訓練課程', '這個課程以增加肌肉量為目標，根據個人的身體能力安排適宜的課程內容與訓練菜單，以求最高效率的增肌成效，讓你能塑造個人理想中完美的身材與體格。'),
(8, '長跑有氧耐力專門課程', '這個課程將專注於長距離跑的訓練和策略，以參加競賽為標準的訓練規格。在提高肌耐力和持久力的同時學習有效的跑步節奏控制與補給策略，以提高跑步效率和競賽表現。'),
(9, '硬拉專門訓練課程', '此系列課程由高專業度的教練帶領，專注硬拉技巧提升及動作細節調整。透過一對一的個別指導與訓練規劃學習正確的硬拉技巧，增強最大力量輸出，降低受傷機率，讓你從素人脫離，往職業運動員的方向邁進。'),
(10, '飛輪心肺有氧耐力課程', '這個課程將模擬各類騎行的環境，你能體驗不同到的地形和阻力。透過調整坡度與阻力設定，學員將學習如何調整速度和強度，以增強心肺功能、腿部力量和肌耐力。'),
(11, '靜態拉伸、肌肉放鬆與運動傷害預防課程', '本課程由具有運動傷害預防與物理治療相關背景的教練進行，提供專業的暖身與伸展相關知識，讓你學習如何以正確的方式從事各項活動，能夠熟悉並理解身體狀態，降低受傷風險。'),
(12, '瑜珈與身體活動度訓練課程', '本課程旨在增加學員身體的活動度與伸展範圍，專注於提升身體靈活度和促進整體健康。透過與瑜珈結合的訓練，改善身體姿勢和平衡，增加柔軟度和靈活性，讓您在愉悅的氛圍中享受身心平衡和增強體能的好處。'),
(13, '壺鈴綜合訓練課程', '這是以壺鈴為主題設計的系列課程，學員將透過各項壺鈴的訓練動作，鍛煉身體不同部位的肌肉力量與整體協調能力。由只有壺鈴能夠提供的特殊訓練方式，給您不一樣的全新體驗。'),
(14, '藥球綜合訓練課程', '這是以藥球為主題設計的系列課程，融合了力量、爆發力和核心訓練，透過動態的擲擊、揮舞和抓握動作，促進身體的力量發展和功能性運動能力。'),
(15, '女性體態雕塑與健美健體專門訓練', '專為女性量身打造的訓練課程，旨在塑造女性優雅的體態和健美健體的身材，在提升肌肉力量的同時雕塑曲線與體態。針對腹部核心肌群、臀部等部位的專項訓練，讓您增強體力與提升自信，歡迎所有女性學員加入，共同享受鍛煉的樂趣和成就感。'),
(16, '個人飲食及訓練專業諮詢規劃', '依照您的目標、需求和限制，設計一個適合您的個人化計劃。從飲食指導到訓練規劃，我們將提供專業建議和支持，無論您是追求減重、增肌還是提升整體健康，本課程將使您能夠實現最佳的飲食和訓練結果。'),
(17, 'HIIT高強度間歇性鍛鍊課程', '透過快速的爆發性運動和短暫的休息間歇，學員將挑戰心肺功能極限，提高心肺耐力和快速恢復的能力，燃燒卡路里，並提升耐力和代謝率。'),
(18, '划船機專項訓練課程', '這個課程將教授正確的划船機姿勢和技巧，並結合不同的訓練計畫，幫助學員提升心肺耐力、增強肌肉力量和改善身體的整體協調性。透過有氧和耐力訓練的結合，您將體驗到划船機所帶來的全身運動效果和身心挑戰。');

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
-- Table structure for table `c_l_coach`
--

CREATE TABLE `c_l_coach` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `nickname` varchar(32) DEFAULT NULL,
  `experience` varchar(512) DEFAULT NULL,
  `introduction` varchar(512) NOT NULL,
  `photo` varchar(512) NOT NULL DEFAULT './imgs/coach_imgs/coach.png',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_l_coach`
--

INSERT INTO `c_l_coach` (`sid`, `member_sid`, `nickname`, `experience`, `introduction`, `photo`, `created_at`) VALUES
(1, 6, 'Jason', '擁有5年健身教練經驗，在多家知名健身中心擔任教練，專長是重訓和體能訓練。', '你好我是健森，也可以叫我 Jason 。我熱愛運動和健身，希望能幫助大家達到健康和理想的身材目標。我專注於提供個人化的訓練計劃和鼓勵，讓你在訓練中不斷進步。', './imgs/coach_imgs/3b47c1f884e5262e00509dec648a1b615c99c2e9.jpg', '2023-02-17 16:00:00'),
(2, 8, 'Bin', '擁有9年健身教練經驗，曾在健身俱樂部和私人訓練室工作，專長是有氧運動和核心訓練。', '大家好，我是陳學彬，Bin。我相信運動對於身心健康的重要性，我喜歡帶領人們享受運動的樂趣並達到他們的健身目標。無論你是初學者還是有經驗的運動員，我都會根據你的需求提供專業的指導和支持。', './imgs/coach_imgs/c10c32fd68d2cb3edbfa260266176db6a718be6d.png', '2023-05-02 16:00:00'),
(3, 9, 'Andy', '擁有3年健身教練經驗，曾在健身工作室和健身訓練營工作，專長是柔軟度和核心訓練。', '大家好，我是湯臨安，也可以叫我Andy。我熱衷於幫助人們改善柔軟度和增強核心力量。無論你是想改善體態還是提升運動表現，我都能提供適合你的訓練計劃。', './imgs/coach_imgs/400317baf73a9e30cedac715cdacf989a0a119af.png', '2023-05-11 06:38:16'),
(4, 11, 'CJ', '擁有6年健身教練經驗，曾在健身俱樂部和健康中心工作，專長是有氧運動和體態調整。', '大家好，我是世傑，大家都叫我CJ。我喜歡結合有氧運動和體態調整，幫助人們塑造健康而有自信的身體。我相信運動不僅能改善身體，還能提升心理健康。', './imgs/coach_imgs/86e6cce5d07e2684f661a37567d82bc73cdd77cd.jpg', '2023-05-11 06:38:16'),
(5, 12, 'Max', '擁有4年健身教練經驗，曾在運動中心和健身訓練營任職，專長是重訓和增肌。', '大家好，我是謝冠宇，也可以叫我Max。我熱愛健身和力量訓練，喜歡幫助人們增加肌肉量並達到身材塑造的目標。我會提供個人化的訓練計劃和營養建議，讓你達到理想的身體成果。', './imgs/coach_imgs/81ca8c20fe814b7121c320f69d34ac8a74eaf68b.jpg', '2023-05-11 06:38:16'),
(6, 14, 'Linda', '擁有6年健身教練經驗，曾在健身俱樂部擔任私人訓練師，專長是瑜珈和普拉提。', 'Hello 我是林瑜，也可以叫我Linda。我對瑜珈和普拉提充滿熱情，相信這些運動對於塑造身體和平衡心靈都有著重要的作用。我期待與大家一起探索身心的平衡，並幫助你們實現健康和靈活的目標。', './imgs/coach_imgs/a006e364f939e3e22e01b1731813ff1947451be8.jpg', '2023-05-11 06:38:16'),
(7, 22, 'Kai', '擁有7年健身教練經驗，曾在多家健身中心擔任教練，專長是重訓和徒手訓練。', '大家好，我是徐凱傑 Kai。我對於重訓和徒手訓練有著深深的熱愛，相信這些訓練方式可以塑造強健的身體和提升肌力。我將根據你的目標和能力，設計個人化的訓練課表', './imgs/coach_imgs/9a9903f9762f1d637c4b99c2a3ee5ff10bfd976e.jpg', '2023-05-11 06:38:16'),
(8, 26, 'Samantha', '擁有5年健身教練經驗，曾在私人健身工作室擔任主管教練，專長是舞蹈訓練和伸展運動。', '大家好，我是周鈺婷，也可以叫我Samantha。我熱愛舞蹈和伸展運動，並相信它們對於身體靈活性和身心平衡的重要性。我期待與你一起享受運動的樂趣，並幫助你提升柔軟度和身體的協調性。', './imgs/coach_imgs/26956f3cebbdca8e0b3536131c2105e9f1baaec7.jpg', '2021-02-01 16:00:00');

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
  `end_time` datetime DEFAULT NULL,
  `photo` varchar(256) NOT NULL DEFAULT './img/lession_img/',
  `price` int(11) NOT NULL,
  `max_capacity` int(11) NOT NULL DEFAULT '20',
  `enrollment_quantity` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_l_lession`
--

INSERT INTO `c_l_lession` (`sid`, `name`, `description`, `coach_sid`, `classroom_sid`, `start_time`, `end_time`, `photo`, `price`, `max_capacity`, `enrollment_quantity`, `created_at`) VALUES
(1, '核心強化班', '這個課程專注於鍛煉和加強核心肌群，包括腹肌、腰部和背部肌肉。透過一系列的練習，你將提升核心穩定性、改善姿勢，同時增強身體的力量和平衡能力。', 2, 1, '2023-06-04 00:00:00', NULL, './img/lession_img/', 2500, 20, 0, '2023-05-12 06:29:32'),
(2, 'HIIT 爆發訓練', '這個高強度間歇訓練課程結合了快速而高效的有氧運動和力量訓練。透過短暫但高強度的運動間歇和休息，你將挑戰心肺耐力、燃燒卡路里並增強肌肉力量。', 7, 2, '2023-06-04 00:00:00', NULL, './img/lession_img/', 2300, 20, 0, '2023-05-12 06:29:32'),
(3, '瑜伽流動課程', '這個課程以流動的瑜伽動作和呼吸練習為基礎，融合了力量、靈活性和平衡。透過連貫的動作流，你將提升身體柔軟度、強化肌肉，同時培養身心的平靜和集中力。', 3, 1, '2023-06-04 00:00:00', NULL, './img/lession_img/', 2499, 20, 0, '2023-05-12 06:29:32'),
(4, '腹肌塑造挑戰', '這個課程專注於訓練和塑造腹肌區域。透過一系列針對腹部肌肉的運動，包括仰臥起坐、腹肌收縮和側屈等，你將增強腹部力量、改善腹肌線條和核心穩定性。', 5, 3, '2023-06-04 00:00:00', NULL, './img/lession_img/', 1200, 20, 0, '2023-05-12 06:29:32'),
(5, '功能性訓練班', '這個課程旨在提升日常生活中所需的功能性運動能力。透過模擬日常活動的運動模式，如推、拉、提、抬等，你將增強肌肉平衡、改善身體姿勢和運動效能。', 1, 1, '2023-06-04 00:00:00', NULL, './img/lession_img/', 1400, 20, 0, '2023-05-12 06:29:32'),
(6, '有氧踏板課程', '這個課程利用特殊設計的踏板設備進行有氧運動。透過快節奏的踏步運動，你將提升心肺耐力、增加下半身肌肉力量，同時燃燒卡路里，塑造結實的腿部和臀部肌肉。', 2, 2, '2023-06-04 00:00:00', NULL, './img/lession_img/', 1200, 20, 0, '2023-05-12 06:29:32'),
(7, '舞蹈健身課堂', '這個課程結合了舞蹈動作和有氧運動，讓你在活力四溢的音樂節奏中享受運動。透過跳舞和身體的協調運動，你將增加心肺耐力、提升靈活度，同時享受快樂的運動體驗。', 8, 1, '2023-06-04 00:00:00', NULL, './img/lession_img/', 2000, 20, 0, '2023-05-12 06:29:32'),
(8, '強化肌力訓練', '這個課程專注於增強全身肌肉力量。透過使用重量訓練器材、彈力帶和自重訓練，你將挑戰肌肉，增加力量和肌耐力，同時塑造結實的身體線條。', 5, 3, '2023-06-04 00:00:00', NULL, './img/lession_img/', 3000, 20, 0, '2023-05-12 06:29:32'),
(9, '循環鍛煉課程', '這個課程結合了有氧運動和踏板訓練，通常在室內騎車設備上進行。透過快速的節奏和不同強度的訓練段落，你將挑戰心肺耐力、增強下半身肌肉力量，同時消耗大量的卡路里。', 4, 2, '2023-06-04 00:00:00', NULL, './img/lession_img/', 3500, 20, 0, '2023-05-12 06:29:32'),
(10, '身體平衡與靈活性訓練', '這個課程著重於提升身體的平衡和靈活性。透過各種平衡練習、伸展動作和身體控制訓練，你將增強身體的協調性、改善關節靈活度，同時降低受傷風險，維持身體的柔軟和穩定性。', 6, 1, '2023-06-04 00:00:00', NULL, './img/lession_img/', 2500, 20, 0, '2023-05-12 06:29:32');

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
-- Table structure for table `c_l_location`
--

CREATE TABLE `c_l_location` (
  `sid` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_l_location`
--

INSERT INTO `c_l_location` (`sid`, `name`) VALUES
(1, 'taipei'),
(2, 'taichung'),
(3, 'kaohsiung');

-- --------------------------------------------------------

--
-- Table structure for table `c_l_rela_coach_certification`
--

CREATE TABLE `c_l_rela_coach_certification` (
  `sid` int(11) NOT NULL,
  `coach_sid` int(11) NOT NULL,
  `certification_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_l_rela_coach_certification`
--

INSERT INTO `c_l_rela_coach_certification` (`sid`, `coach_sid`, `certification_sid`) VALUES
(60, 1, 1),
(61, 1, 2),
(106, 1, 3),
(63, 1, 4),
(94, 2, 2),
(92, 2, 3),
(91, 2, 5),
(93, 2, 6),
(95, 2, 24),
(90, 3, 21),
(89, 3, 22),
(88, 3, 26),
(87, 3, 36),
(37, 4, 1),
(38, 4, 35),
(4, 5, 1),
(84, 5, 6),
(86, 5, 42),
(85, 5, 44),
(68, 6, 39),
(67, 6, 40),
(66, 6, 41),
(64, 6, 47),
(65, 6, 49),
(69, 7, 3),
(70, 7, 26),
(76, 7, 30),
(72, 7, 41),
(71, 7, 43),
(73, 7, 44),
(75, 7, 45),
(74, 7, 48),
(77, 8, 36),
(78, 8, 38),
(79, 8, 41),
(80, 8, 43),
(83, 8, 47),
(81, 8, 48),
(82, 8, 49),
(112, 10, 1),
(105, 11, 2),
(104, 11, 3),
(108, 13, 1),
(107, 13, 4),
(115, 17, 7),
(116, 17, 8),
(114, 18, 1),
(113, 18, 4),
(118, 19, 4),
(117, 19, 20);

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
  `lesson_sid` int(11) NOT NULL,
  `tag_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_l_rela_lession_tag`
--

INSERT INTO `c_l_rela_lession_tag` (`sid`, `lesson_sid`, `tag_sid`) VALUES
(1, 1, 6),
(2, 1, 12),
(3, 1, 13),
(4, 1, 15),
(5, 1, 18),
(6, 1, 22),
(7, 1, 23),
(8, 2, 10),
(9, 2, 12),
(10, 2, 13),
(11, 2, 14),
(12, 2, 15),
(13, 2, 18),
(14, 2, 19),
(15, 2, 21),
(16, 2, 22),
(17, 2, 23),
(18, 3, 2),
(19, 3, 11),
(20, 3, 12),
(21, 3, 13),
(22, 3, 16),
(23, 3, 18),
(24, 3, 19),
(25, 3, 20),
(26, 3, 21),
(27, 3, 22),
(28, 3, 23),
(29, 4, 8),
(30, 4, 9),
(31, 4, 10),
(32, 4, 11),
(33, 4, 12),
(34, 4, 14),
(35, 4, 15),
(36, 4, 18),
(37, 4, 20),
(38, 4, 21),
(39, 4, 27),
(40, 5, 2),
(41, 5, 3),
(42, 5, 4),
(43, 5, 5),
(44, 5, 12),
(45, 5, 14),
(46, 5, 15),
(47, 5, 18),
(48, 5, 19),
(49, 5, 20),
(50, 5, 22),
(51, 5, 23),
(52, 5, 24),
(53, 5, 27),
(54, 6, 8),
(55, 6, 9),
(56, 6, 10),
(57, 6, 11),
(58, 6, 12),
(59, 6, 14),
(60, 6, 18),
(61, 6, 20),
(62, 6, 24),
(63, 6, 27),
(64, 7, 8),
(65, 7, 9),
(66, 7, 10),
(67, 7, 11),
(68, 7, 12),
(69, 7, 13),
(70, 7, 14),
(71, 7, 18),
(72, 7, 20),
(73, 7, 21),
(74, 7, 22),
(75, 7, 23),
(76, 7, 27),
(77, 8, 2),
(78, 8, 3),
(79, 8, 12),
(80, 8, 15),
(81, 8, 18),
(82, 8, 19),
(83, 8, 21),
(84, 8, 24),
(85, 8, 27),
(86, 9, 8),
(87, 9, 9),
(88, 9, 10),
(89, 9, 14),
(90, 9, 18),
(91, 9, 20),
(92, 9, 21),
(93, 9, 24),
(94, 9, 27),
(95, 10, 2),
(96, 10, 3),
(97, 10, 10),
(98, 10, 12),
(99, 10, 13),
(100, 10, 15),
(101, 10, 18),
(102, 10, 19),
(103, 10, 21),
(104, 10, 23),
(105, 11, 8),
(106, 11, 9),
(107, 11, 10),
(108, 11, 22),
(109, 11, 25),
(110, 11, 26),
(111, 11, 27),
(112, 12, 2),
(113, 12, 6),
(114, 12, 11),
(115, 12, 12),
(116, 12, 13),
(117, 12, 22),
(118, 12, 23),
(119, 12, 26),
(120, 13, 2),
(121, 13, 3),
(122, 13, 7),
(123, 13, 9),
(124, 13, 10),
(125, 13, 11),
(126, 13, 12),
(127, 13, 13),
(128, 13, 14),
(129, 13, 15),
(130, 13, 18),
(131, 13, 19),
(132, 13, 20),
(133, 13, 21),
(134, 13, 22),
(135, 13, 23),
(136, 14, 1),
(137, 14, 2),
(138, 14, 3),
(139, 14, 9),
(140, 14, 10),
(141, 14, 11),
(142, 14, 12),
(143, 14, 13),
(144, 14, 14),
(145, 14, 15),
(146, 14, 17),
(147, 14, 18),
(148, 14, 19),
(149, 14, 20),
(150, 14, 21),
(151, 14, 22),
(152, 14, 23),
(153, 15, 2),
(154, 15, 3),
(155, 15, 7),
(156, 15, 9),
(157, 15, 10),
(158, 15, 11),
(159, 15, 12),
(160, 15, 13),
(161, 15, 14),
(162, 15, 15),
(163, 15, 18),
(164, 15, 19),
(165, 15, 20),
(166, 15, 21),
(167, 15, 22),
(168, 15, 23),
(169, 16, 8),
(170, 16, 9),
(171, 16, 10),
(172, 16, 13),
(173, 16, 14),
(174, 16, 15),
(175, 16, 27),
(176, 17, 1),
(177, 17, 3),
(178, 17, 12),
(179, 17, 13),
(180, 17, 15),
(181, 17, 18),
(182, 17, 19),
(183, 17, 20),
(184, 17, 21),
(185, 17, 22),
(186, 17, 23),
(187, 18, 2),
(188, 18, 3),
(189, 18, 10),
(190, 18, 11),
(191, 18, 12),
(192, 18, 13),
(193, 18, 15),
(194, 18, 18),
(195, 18, 19),
(196, 18, 20),
(197, 18, 21),
(198, 18, 22),
(199, 18, 23);

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
(1, 'HIIT', '2023-07-12 08:10:34'),
(2, '有氧', '2023-07-12 08:10:34'),
(3, '心肺', '2023-07-12 08:10:34'),
(4, '拳擊', '2023-07-12 08:10:34'),
(5, '格鬥', '2023-07-12 08:10:34'),
(6, '瑜珈', '2023-07-12 08:10:34'),
(7, '壺鈴', '2023-07-12 08:10:34'),
(8, '健力', '2023-07-12 08:10:34'),
(9, '健美', '2023-07-12 08:10:34'),
(10, '健體', '2023-07-12 08:10:34'),
(11, '核心', '2023-07-12 08:10:34'),
(12, '體能', '2023-07-12 08:10:34'),
(13, '體態雕塑', '2023-07-12 08:10:34'),
(14, '增肌', '2023-07-12 08:10:34'),
(15, '減脂', '2023-07-12 08:10:34'),
(16, '皮拉提斯', '2023-07-12 08:10:34'),
(17, '藥球', '2023-07-12 08:10:34'),
(18, '肌力', '2023-07-12 08:10:34'),
(19, '耐力', '2023-07-12 08:10:34'),
(20, '上肢力量', '2023-07-12 08:10:34'),
(21, '下肢力量', '2023-07-12 08:10:34'),
(22, '功能性訓練', '2023-07-12 08:10:34'),
(23, '全身性訓練', '2023-07-13 02:13:51'),
(24, '專項訓練', '2023-07-13 02:13:51'),
(25, '傷害預防', '2023-07-13 02:13:51'),
(26, '伸展', '2023-07-13 02:13:51'),
(27, '專業建議', '2023-07-13 02:13:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c_l_category`
--
ALTER TABLE `c_l_category`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `c_l_certification`
--
ALTER TABLE `c_l_certification`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `c_l_coach`
--
ALTER TABLE `c_l_coach`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `member_sid` (`member_sid`);

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
-- Indexes for table `c_l_location`
--
ALTER TABLE `c_l_location`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `c_l_rela_coach_certification`
--
ALTER TABLE `c_l_rela_coach_certification`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `coach_sid_2` (`coach_sid`,`certification_sid`),
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
  ADD KEY `lession_sid` (`lesson_sid`),
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
-- AUTO_INCREMENT for table `c_l_category`
--
ALTER TABLE `c_l_category`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `c_l_certification`
--
ALTER TABLE `c_l_certification`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `c_l_coach`
--
ALTER TABLE `c_l_coach`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `c_l_expertise`
--
ALTER TABLE `c_l_expertise`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `c_l_lession`
--
ALTER TABLE `c_l_lession`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT for table `c_l_location`
--
ALTER TABLE `c_l_location`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `c_l_rela_coach_certification`
--
ALTER TABLE `c_l_rela_coach_certification`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `c_l_rela_coach_expertise`
--
ALTER TABLE `c_l_rela_coach_expertise`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_l_rela_lession_tag`
--
ALTER TABLE `c_l_rela_lession_tag`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `c_l_tag`
--
ALTER TABLE `c_l_tag`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `c_l_lession`
--
ALTER TABLE `c_l_lession`
  ADD CONSTRAINT `c_l_lession_ibfk_2` FOREIGN KEY (`classroom_sid`) REFERENCES `c_l_location` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
