-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-08-14 11:19:16
-- 伺服器版本: 10.1.34-MariaDB
-- PHP 版本： 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `cake_house`
--
CREATE DATABASE IF NOT EXISTS `cake_house` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `cake_house`;

-- --------------------------------------------------------

--
-- 資料表結構 `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
CREATE TABLE IF NOT EXISTS `customer_orders` (
  `customer_orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `members_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `shipping` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `county` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `memo` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customer_orders_id`),
  KEY `members_id` (`members_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `members_id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL COMMENT '0:女 1:男',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `county` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vip` int(11) NOT NULL COMMENT '0:一般會員 1: VIP會員',
  `money_points` int(11) NOT NULL COMMENT '購物金 / 點數',
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`members_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `published_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `news`
--

INSERT INTO `news` (`news_id`, `published_date`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, '2018-08-03', '超驚人護駕費用！臉書CEO保安費2年花5億', 'Facebook(臉書)創辦人祖克柏(MarkZuckerberg)的保安費用驚人！根據外媒報導，祖克柏年薪酬只有1美元(折合約30元台幣)，但該公司為他在個人安全方面支出金額，2年加總超過5億元台幣。\r\n\r\n美國財經媒體報導，臉書執行長祖克柏身家約有686億美元(折合約2.1兆元台幣)，名列全球第6大富豪，臉書去年支出733萬美元(折合約2.25億元台幣)保護他的人身安全，今年這筆支出將進一步提高到1000萬美金(折合約3億元台幣)，比全球首富亞馬遜創辦人暨執行長貝佐斯(Jeff Bezos)保全支出費用還要高，資料顯示，貝佐斯去年保全費年砸160萬美元，今年保全費預估與去年相當。\r\n\r\n臉書對此表示，祖克柏身兼臉書創辦人、董事長和執行長，可能面臨人身安全威脅，加上臉書近期因隱私權爭議遭受輿論攻擊，甚至有激進份子放話要對祖克柏不利，因此，這些包括私人客機等的保安措施是恰當且必要的。', '2018-08-03-15:29:11', NULL),
(2, '2018-08-10', '上課心得', '課程過半了喔 !', '2018-08-10 11:33:01', '2018-08-13 13:25:01'),
(3, '2018-08-12', '老戲骨梅芳 開槍爆頭不手軟', '82歲資深演員梅芳投身演藝事業超過半世紀，拍過的作品無數，「國民奶奶」形象深植人心，最近她拍攝公視新創電影「水槍」，劇照一曝光，手拿水槍爆頭畫面，令人大吃一驚。\r\n\r\n公視新創電影挑戰以黑色幽默包裝類型喜劇短片「水槍」，由新銳導演樓耀中執導，國寶級演員梅芳、高振鵬主演，「老戲骨」出手不同凡響，梅芳演起「開槍」戲不手軟，動作戲全都來真的，摔倒、跳舞、崩潰摔東西等等不適合長者做的大動作戲劇表演，全都親自上陣，而且改造過的道具槍為了配合劇情裝了機關，頗有點重量，沒想到，梅芳阿姨玩沒兩次就上手，而且「開槍」完全不手軟，導演大讚：「梅芳阿姨真的超猛的！」\r\n\r\n「水槍」描寫老婦在相依為命的老伴過世後，以水槍模擬丈夫尿聲，緩解失眠症狀，編導樓耀中將過去母親照顧膀胱癌外公的生命經驗寫入劇本，並把女兒的角色替換成老婆，加入戲劇奇幻元素，將夫妻的愛情與親情，以及老婆對死去老公的思念，做更深刻的描寫。\r\n\r\n高齡90歲的高振鵬在戲裡演出梅芳的老伴，一場半夜尿不出來，最後尿出血尿，表情痛苦猙獰畫面，極具戲劇張力，導演看了很不忍心，高振鵬則謙虛地說：「生活體驗、常識，再加上自我揣摩，導演合意就好！」他也感謝老天爺還賞飯吃，表示梅芳才是全劇靈魂，自己只是盡責做到綠葉陪襯，印象最深的是與梅芳共舞，他笑說：「有再談一次戀愛的感覺 ！」', '2018-08-12 15:41:12', '2018-08-13 11:28:22'),
(4, '2018-08-12', '【搶鏡頭】腐味十足 朱智勛被貼心保全從後面來', '電影《與神同行：最終審判》即將於8月8日在台灣上映，日前在北市府廣場舉行紅毯記者會，朱智勛以亮粉色西裝率先抵達現場，188公分有著名模身材的他，立刻讓粉絲尖叫：「超帥！」朱智勛看到手機便自動接過與粉絲玩自拍，還會配合身高蹲低合照，真的超親民。', '2018-08-13 11:18:13', '2018-08-13 13:28:13'),
(5, '2018-08-13', '單親孫沁岳渴望成家', '中國時報【報導林淑娟】\r\n\r\n中視八點檔17日起推出由苗可麗、謝祖武、孫沁岳、陽詠存、李維維和紀言愷（JR）等主演的溫馨好戲《真情之家》，故事圍繞在一群沒有血緣關係的人，因際遇安排而成為一家人。戲外的孫沁岳，爸爸是資深小生劉尚謙，父母在他3歲時離婚，他從小由媽媽帶大，他從不避諱自己是在單親家庭中成長，但這背景不但沒讓他恐婚，反而更渴望成家。\r\n\r\n巨蟹座的孫沁岳感性透露，自己是非常戀家、很能宅在家的人，「家是一個能夠包容我一切的地方，是我最後一個避風港，不管犯了錯，闖了禍，難過、失落，家永遠都會成為我最堅強的後盾。」渴望成家的他，希望未來在家裡扮演不同角色，或許是爸爸，或許是丈夫，「這些對我而言都會是人生另一階段的體驗」。\r\n\r\n赴北京精進專業\r\n\r\n孫沁岳曾和洪小鈴、蔡黃汝等女星合作，卻不曾傳出緋聞，他說其實沒有設定不和圈內人交往，只要感覺對了都有可能，現在的他認為談戀愛，就要以結婚為前提交往，但內心卻覺得能力還不夠支撐一個家庭，所以期許自己再努力，等準備好了再談感情。\r\n\r\n即使已累積不錯的演藝成績，孫沁岳對自我要求甚高，今年初還暫緩演藝工作，到北京中央戲劇學院精進專業，期待接下來的演藝路更廣，有機會嘗試不同類型的戲劇、電影、舞台劇，挑戰更多元角色。', '2018-08-13 09:14:11', '2018-08-13 11:14:52');

-- --------------------------------------------------------

--
-- 資料表結構 `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `order_details_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_orders_id` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`order_details_id`),
  KEY `customer_orders_id` (`customer_orders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'tinymce',
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='頁面管理';

--
-- 資料表的匯出資料 `page`
--

INSERT INTO `page` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'CAKE HOUSE 簡介', 'CAKE HOUUSE 簡介內容', '2018-08-01', '2018-08-06'),
(2, 'CAKE HOUSE 優惠活動', 'CAKE HOUSE 優惠活動內容', '2018-08-06', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_categories_id` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `products`
--

INSERT INTO `products` (`products_id`, `product_categories_id`, `picture`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '歐式麵包', 'test', '80', '2018-08-06', NULL),
(2, 1, NULL, '蘋果麵包', '蘋果麵包', '30', NULL, NULL),
(3, 1, NULL, '奶油麵包', '奶油麵包', '30', '2018-08-06', NULL),
(4, 1, NULL, '咖啡奶酥麵包', '咖啡奶酥麵包', '40', '2018-08-06', NULL),
(5, 2, NULL, '檸檬戚風蛋糕', '6吋', '300', '2018-08-10', NULL),
(6, 2, NULL, '老奶奶檸檬蛋糕', '8吋', '500', '2018-08-11', NULL),
(7, 2, NULL, '長崎蜂蜜蛋糕', '1條', '350', '2018-08-11', NULL),
(8, 2, NULL, '北海道奶油小蛋糕', '6入', '199', '2018-08-03', NULL),
(9, 3, NULL, '俄式雪球餅', '1包', '80', '2018-08-01', NULL),
(10, 3, NULL, '巧克力杏仁餅', '1袋', '120', '2018-08-01', NULL),
(11, 4, NULL, '馬卡龍 Macaron', 'Macaron', '120', NULL, NULL),
(12, 4, NULL, '可麗露 Canelé', '可麗露 Canelé', '120', NULL, NULL),
(13, 4, NULL, '蒙布朗 Mont Blanc', '1入', '120', NULL, NULL),
(14, 4, NULL, '聖奧諾黑塔 Saint-Honoré', '1入', '200', NULL, NULL),
(15, 5, NULL, '西瓜雪貝 WATERMELON SHERBET', '西瓜雪貝 WATERMELON SHERBET\r\n\r\n1桶 500 ML  ', '580', NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `product_categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL,
  `series_id` int(11) NOT NULL,
  PRIMARY KEY (`product_categories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `product_categories`
--

INSERT INTO `product_categories` (`product_categories_id`, `category`, `created_at`, `updated_at`, `order`, `series_id`) VALUES
(1, '麵包類', '2018-08-01', '2018-08-14 14:50:32', 0, 0),
(2, '蛋糕類', '2018-08-02', '2018-08-14 14:50:52', 0, 0),
(3, '手工餅乾', '2018-08-03', '2018-08-14 14:50:56', 0, 0),
(4, '法式甜點', '2018-08-03', '2018-08-14 14:51:02', 0, 0),
(5, '手工冰品', '2018-08-03', '2018-08-14 14:52:23', 0, 0),
(6, '現打飲品', '2018-08-04', '2018-08-14 14:52:27', 0, 0),
(7, '糕餅類', '2018-08-05', '2018-08-14 14:52:30', 0, 0),
(8, '全素', '2018-08-06', '2018-08-14 14:52:33', 0, 0),
(9, '蛋奶素', '2018-08-06', '2018-08-14 14:52:36', 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `series`
--

DROP TABLE IF EXISTS `series`;
CREATE TABLE IF NOT EXISTS `series` (
  `series_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`series_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='產品系列管理';

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `users_id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
