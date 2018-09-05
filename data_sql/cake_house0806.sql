-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-08-06 05:08:14
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

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `published_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `news`
--

INSERT INTO `news` (`news_id`, `published_date`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, '2018-08-03', '超驚人護駕費用！臉書CEO保安費2年花5億', 'Facebook(臉書)創辦人祖克柏(MarkZuckerberg)的保安費用驚人！根據外媒報導，祖克柏年薪酬只有1美元(折合約30元台幣)，但該公司為他在個人安全方面支出金額，2年加總超過5億元台幣。\r\n\r\n美國財經媒體報導，臉書執行長祖克柏身家約有686億美元(折合約2.1兆元台幣)，名列全球第6大富豪，臉書去年支出733萬美元(折合約2.25億元台幣)保護他的人身安全，今年這筆支出將進一步提高到1000萬美金(折合約3億元台幣)，比全球首富亞馬遜創辦人暨執行長貝佐斯(Jeff Bezos)保全支出費用還要高，資料顯示，貝佐斯去年保全費年砸160萬美元，今年保全費預估與去年相當。\r\n\r\n臉書對此表示，祖克柏身兼臉書創辦人、董事長和執行長，可能面臨人身安全威脅，加上臉書近期因隱私權爭議遭受輿論攻擊，甚至有激進份子放話要對祖克柏不利，因此，這些包括私人客機等的保安措施是恰當且必要的。', '2018-08-03-15:29:11', NULL),
(3, '2018-08-05', 'test222', '西進浪潮狂襲，掏空台灣勞動力！台灣人大舉西進尋找工作機會，人數不斷攀升，據了解，目前長住大陸的台灣人口多達200萬，其中多數為勞動人口。以去年勞動人數為1183萬8千人對照，台灣流失勞動人口逾1成，這波西進浪潮來得又急又猛，令人怵目驚心。\r\n\r\n《遠見雜誌》新近公布調查， 近年來台灣人為追求更大舞台，西進已成不可抵擋的浪潮，不分年齡大小與資歷多寡。過去30年來，一波接著一波湧進對岸，如今又到了新的關鍵階段。\r\n\r\n2016年10月兩岸和平發展論壇有一數字指出，居住在大陸的台灣民眾，包括台商、台幹、台生、台眷等約為200萬人，將近台灣總人口的9％。從勞動人力來看，此200萬人中以青壯者居多，等於占去台灣勞動人口的一成，數量相當驚人。', '2018-08-05 15:41:12', '2018-08-06 09:15:22'),
(4, '2018-08-06', 'testTitle', 'Database', '2018-08-06 09:14:11', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `pages_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `product_categories_id` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(14, 4, NULL, '聖奧諾黑塔 Saint-Honoré', '1入', '200', NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories` (
  `product_categories_id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `product_categories`
--

INSERT INTO `product_categories` (`product_categories_id`, `category`, `created_at`, `updated_at`, `order`) VALUES
(1, '麵包類', '2018-08-06', NULL, 0),
(2, '蛋糕類', '2018-08-06', NULL, 0),
(3, '手工餅乾', '2018-08-06', NULL, 0),
(4, '法式甜點', '2018-08-06', NULL, 0);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- 資料表索引 `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`pages_id`);

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- 資料表索引 `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`product_categories_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表 AUTO_INCREMENT `pages`
--
ALTER TABLE `pages`
  MODIFY `pages_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表 AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用資料表 AUTO_INCREMENT `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `product_categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
