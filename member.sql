-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- START TRANSACTION;
-- SET time_zone = "+00:00";
--
-- Database: `group_4`
--
-- --------------------------------------------------------
--
-- Table structure for table `category`
--
-- CREATE TABLE `category` (
--     `sid` int(11) NOT NULL,
--     `name` varchar(30) NOT NULL,
--     `parent_sid` int(10) NOT NULL DEFAULT '0'
-- ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- --------------------------------------------------------
--
-- Table structure for table `cloth`
--
-- CREATE TABLE `cloth` (
--     `sid` int(11) NOT NULL,
--     `name` varchar(255) NOT NULL,
--     `category_id` int(11) DEFAULT NULL
-- ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
-- Dumping data for table `cloth`
--
-- INSERT INTO
--     `cloth` (`sid`, `name`, `category_id`)
-- VALUES
--     (1, '男款登山健行快乾透氣短袖上衣', NULL),
--     (2, '男款登山健行美麗諾羊毛透氣短袖上衣', NULL);
-- --------------------------------------------------------
--
-- Table structure for table `cloth_detail`
--
-- CREATE TABLE `cloth_detail` (
--     `sid` int(11) NOT NULL,
--     `cloth_id` int(11) NOT NULL,
--     `color_id` int(11) NOT NULL,
--     `size_id` int(11) NOT NULL,
--     `quantity` int(11) NOT NULL
-- ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
-- Dumping data for table `cloth_detail`
--
-- INSERT INTO
--     `cloth_detail` (
--         `sid`,
--         `cloth_id`,
--         `color_id`,
--         `size_id`,
--         `quantity`
--     )
-- VALUES
--     (1, 1, 2, 3, 15),
--     (2, 1, 3, 3, 10),
--     (4, 2, 2, 3, 20),
--     (5, 2, 1, 2, 20);
-- --------------------------------------------------------
--
-- Table structure for table `color`
-- 
-- CREATE TABLE `color` (
--     `sid` int(11) NOT NULL,
--     `name` varchar(255) NOT NULL
-- ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
-- Dumping data for table `color`
--
-- INSERT INTO
--     `color` (`sid`, `name`)
-- VALUES
--     (1, 'red'),
--     (2, 'blue'),
--     (3, 'green');
-- --------------------------------------------------------
--
-- Table structure for table `hero_icon`
--
CREATE TABLE `hero_icon` (
    `sid` int(11) NOT NULL,
    `hero_icon_location` varchar(255) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Dumping data for table `hero_icon`
--
INSERT INTO
    `hero_icon` (`sid`, `hero_icon_location`)
VALUES
    (1, '預設頭像位置');

-- --------------------------------------------------------
--
-- Table structure for table `member`
--
CREATE TABLE `member` (
    `sid` int(11) NOT NULL,
    `email` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL,
    `name` varchar(255) DEFAULT NULL,
    `mobile` varchar(255) DEFAULT NULL,
    `birth` date DEFAULT NULL,
    `address` varchar(255) DEFAULT NULL,
    `sex_sid` int(11) DEFAULT NULL,
    `member_level_sid` int(11) NOT NULL DEFAULT '1',
    `hero_icon_sid` int(11) NOT NULL,
    `role_sid` int(11) NOT NULL,
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Dumping data for table `member`
--
INSERT INTO
    `member` (
        `sid`,
        `email`,
        `password`,
        `name`,
        `mobile`,
        `birth`,
        `address`,
        `sex_sid`,
        `member_level_sid`,
        `hero_icon_sid`,
        `role_sid`,
        `created_at`,
        `active`
    )
VALUES
    (
        1,
        'asdfg@gmail.com',
        'asdfg123',
        '王曉明',
        '0926-123-456',
        '1993-05-01',
        '新北市XX區XX路XX號XX樓',
        1,
        1,
        1,
        1,
        '2023-05-01 14:23:09',
        1
    ),
    (
        2,
        'coach_test@gmail.com',
        'test1234',
        '王教練',
        '0926-123-457',
        '1993-05-02',
        '台北市XX區XX路XX號XX樓',
        1,
        1,
        1,
        2,
        '2023-05-02 10:40:28',
        1
    );

-- --------------------------------------------------------
--
-- Table structure for table `member_level`
--
CREATE TABLE `member_level` (
    `sid` int(11) NOT NULL,
    `tier` varchar(10) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Dumping data for table `member_level`
--
INSERT INTO
    `member_level` (`sid`, `tier`)
VALUES
    (1, '銅牌會員'),
    (2, '銀牌會員'),
    (3, '金牌會員'),
    (4, '白金會員'),
    (5, '讚石會員');

-- --------------------------------------------------------
--
-- Table structure for table `role`
--
CREATE TABLE `role` (
    `sid` int(11) NOT NULL,
    `role` varchar(10) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Dumping data for table `role`
--
INSERT INTO
    `role` (`sid`, `role`)
VALUES
    (1, 'user'),
    (2, 'coach'),
    (3, 'admin');

-- --------------------------------------------------------
--
-- Table structure for table `sex`
--
CREATE TABLE `sex` (
    `sid` int(11) NOT NULL,
    `name` varchar(5) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Dumping data for table `sex`
--
INSERT INTO
    `sex` (`sid`, `name`)
VALUES
    (1, '男'),
    (2, '女'),
    (3, '不透露');

-- --------------------------------------------------------
--
-- Table structure for table `size`
--
-- CREATE TABLE `size` (
--     `sid` int(11) NOT NULL,
--     `size` varchar(255) NOT NULL
-- ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
-- 
-- Dumping data for table `size`
--
-- INSERT INTO
--     `size` (`sid`, `size`)
-- VALUES
--     (3, 'l'),
--     (2, 'm'),
--     (1, 's'),
--     (4, 'xl');
--
-- Indexes for dumped tables
--
--
-- Indexes for table `category`
--
-- ALTER TABLE
--     `category`
-- ADD
--     PRIMARY KEY (`sid`);
--
-- Indexes for table `cloth`
--
-- ALTER TABLE
--     `cloth`
-- ADD
--     PRIMARY KEY (`sid`);
--
-- Indexes for table `cloth_detail`
--
-- ALTER TABLE
--     `cloth_detail`
-- ADD
--     PRIMARY KEY (`sid`),
-- ADD
--     UNIQUE KEY `cloth_id` (`cloth_id`, `color_id`, `size_id`),
-- ADD
--     KEY `color_id` (`color_id`),
-- ADD
--     KEY `size_id` (`size_id`);
--
-- Indexes for table `color`
--
-- ALTER TABLE
--     `color`
-- ADD
--     PRIMARY KEY (`sid`);
-- --
-- -- Indexes for table `hero_icon`
-- --
-- ALTER TABLE
--     `hero_icon`
-- ADD
--     PRIMARY KEY (`sid`);
--
-- Indexes for table `member`
--
ALTER TABLE
    `member`
ADD
    PRIMARY KEY (`sid`),
ADD
    UNIQUE KEY `mobile` (`mobile`),
ADD
    KEY `sex_sid` (`sex_sid`),
ADD
    KEY `hero_icon_sid` (`hero_icon_sid`),
ADD
    KEY `member_level_sid` (`member_level_sid`),
ADD
    KEY `role_sid` (`role_sid`);

--
-- Indexes for table `member_level`
--
ALTER TABLE
    `member_level`
ADD
    PRIMARY KEY (`sid`);

--
-- Indexes for table `role`
--
ALTER TABLE
    `role`
ADD
    PRIMARY KEY (`sid`);

--
-- Indexes for table `sex`
--
ALTER TABLE
    `sex`
ADD
    PRIMARY KEY (`sid`);

--
-- Indexes for table `size`
--
-- ALTER TABLE
--     `size`
-- ADD
--     PRIMARY KEY (`sid`),
-- ADD
--     UNIQUE KEY `size` (`size`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `category`
--
-- ALTER TABLE
--     `category`
-- MODIFY
--     `sid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cloth`
--
-- ALTER TABLE
--     `cloth`
-- MODIFY
--     `sid` int(11) NOT NULL AUTO_INCREMENT,
--     AUTO_INCREMENT = 3;
--
-- AUTO_INCREMENT for table `cloth_detail`
--
-- ALTER TABLE
--     `cloth_detail`
-- MODIFY
--     `sid` int(11) NOT NULL AUTO_INCREMENT,
--     AUTO_INCREMENT = 6;
--
-- AUTO_INCREMENT for table `color`
--
-- ALTER TABLE
-- `color`
-- MODIFY
-- `sid` int(11) NOT NULL AUTO_INCREMENT,
-- AUTO_INCREMENT = 4;
--
-- AUTO_INCREMENT for table `hero_icon`
--
ALTER TABLE
    `hero_icon`
MODIFY
    `sid` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE
    `member`
MODIFY
    `sid` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;

--
-- AUTO_INCREMENT for table `member_level`
--
ALTER TABLE
    `member_level`
MODIFY
    `sid` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 6;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE
    `role`
MODIFY
    `sid` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 4;

--
-- AUTO_INCREMENT for table `sex`
--
ALTER TABLE
    `sex`
MODIFY
    `sid` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 4;

--
-- AUTO_INCREMENT for table `size`
--
-- ALTER TABLE
--     `size`
-- MODIFY
--     `sid` int(11) NOT NULL AUTO_INCREMENT,
--     AUTO_INCREMENT = 5;
--
-- Constraints for dumped tables
--
--
-- Constraints for table `cloth_detail`
--
-- ALTER TABLE
--     `cloth_detail`
-- ADD
--     CONSTRAINT `cloth_detail_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`sid`),
-- ADD
--     CONSTRAINT `cloth_detail_ibfk_2` FOREIGN KEY (`cloth_id`) REFERENCES `cloth` (`sid`),
-- ADD
--     CONSTRAINT `cloth_detail_ibfk_3` FOREIGN KEY (`size_id`) REFERENCES `size` (`sid`);
--
-- Constraints for table `member`
--
ALTER TABLE
    `member`
ADD
    CONSTRAINT `member_ibfk_1` FOREIGN KEY (`sex_sid`) REFERENCES `sex` (`sid`),
ADD
    CONSTRAINT `member_ibfk_2` FOREIGN KEY (`hero_icon_sid`) REFERENCES `hero_icon` (`sid`),
ADD
    CONSTRAINT `member_ibfk_3` FOREIGN KEY (`member_level_sid`) REFERENCES `member_level` (`sid`),
ADD
    CONSTRAINT `member_ibfk_4` FOREIGN KEY (`role_sid`) REFERENCES `role` (`sid`);

COMMIT;