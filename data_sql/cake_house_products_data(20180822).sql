-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-08-22 12:54:24
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
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `product_categories_id` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `products`
--

INSERT INTO `products` (`products_id`, `product_categories_id`, `picture`, `name`, `description`, `price`, `created_at`, `updated_at`, `type`) VALUES
(1, 1, NULL, '歐式麵包', 'test', '80', '2018-08-06', NULL, 0),
(2, 1, NULL, '蘋果麵包', '蘋果麵包', '30', NULL, NULL, 0),
(3, 1, NULL, '奶油麵包', '奶油麵包', '30', '2018-08-06', NULL, 0),
(4, 1, NULL, '咖啡奶酥麵包', '咖啡奶酥麵包', '40', '2018-08-06', NULL, 0),
(5, 2, NULL, '檸檬戚風蛋糕', '6吋', '300', '2018-08-10', NULL, 0),
(6, 2, NULL, '老奶奶檸檬蛋糕', '8吋', '500', '2018-08-11', NULL, 0),
(7, 2, NULL, '長崎蜂蜜蛋糕', '1條', '350', '2018-08-11', NULL, 0),
(8, 2, NULL, '北海道奶油小蛋糕', '6入', '199', '2018-08-03', NULL, 0),
(9, 3, NULL, '俄式雪球餅', '1包', '80', '2018-08-01', NULL, 0),
(10, 3, NULL, '巧克力杏仁餅', '1袋', '120', '2018-08-01', NULL, 0),
(11, 4, '8064featured.jpg', '馬卡龍 Macaron', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h2><em><strong><span style=\"color: #ff6600;\">馬卡龍&nbsp;&nbsp;Macaron</span></strong></em></h2>\r\n<h5><strong><span style=\"color: #ff6600;\">大&nbsp; @ 85 / pc<br />小 @ 40 / pc<br /></span></strong><strong><span style=\"color: #ff6600;\">___________<br /></span></strong><strong><span style=\"color: #ff6600;\">一包&nbsp; 6入</span></strong></h5>\r\n</body>\r\n</html>', '120', NULL, '2018-08-21 11:19:48', 0),
(12, 4, NULL, '可麗露 Canelé', '可麗露 Canelé', '120', NULL, NULL, 0),
(13, 4, NULL, '蒙布朗 Mont Blanc', '1入', '120', NULL, NULL, 0),
(14, 4, NULL, '聖奧諾黑塔 Saint-Honoré', '1入', '200', NULL, NULL, 0),
(15, 4, 'madeleines.jpg', '瑪德蓮  MADELEINE', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h4><span style=\"background-color: #ccffff; color: #ff00ff;\"><code><strong>瑪德蓮&nbsp; MADELEINE <br /></strong></code></span><span style=\"background-color: #ccffff; color: #ff00ff;\"><code><strong>6 pcs 入</strong></code></span></h4>\r\n</body>\r\n</html>', '85', '2018-08-15 10:20:18', '2018-08-19 10:16:25', 0),
(17, 5, 'watermelonsorbet-770x513.jpg', '西瓜雪貝 WATERMELON SHERBET', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h4 style=\"margin-top: 0px; margin-bottom: 0.5rem; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.2; color: #212529; font-size: 1.5rem; background-color: #ffffff;\"><span style=\"color: #ff00ff;\"><code style=\"font-family: SFMono-Regular, Menlo, Monaco, Consolas, \'Liberation Mono\', \'Courier New\', monospace; font-size: 21px; color: #e83e8c; word-break: break-word;\"><span style=\"font-weight: bolder;\">西瓜雪貝 WATERMELON SHERBET</span></code></span><br /><span style=\"color: #ff00ff;\"><code style=\"font-family: SFMono-Regular, Menlo, Monaco, Consolas, \'Liberation Mono\', \'Courier New\', monospace; font-size: 21px; color: #e83e8c; word-break: break-word;\"><span style=\"font-weight: bolder;\">1桶 500 ML</span></code></span></h4>\r\n</body>\r\n</html>', '580', '2018-08-18 14:06:57', '2018-08-18 16:16:50', 0),
(18, 5, '下載.jpg', '檸檬雪貝  LEMON SHERBET', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<pre style=\"margin-top: 0px; margin-bottom: 0.5rem; font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.2; color: #212529; font-size: 1.75rem; background-color: #ffffff;\"><span style=\"color: #008000;\"><code style=\"font-family: SFMono-Regular, Menlo, Monaco, Consolas, \'Liberation Mono\', \'Courier New\', monospace; font-size: 24.5px; word-break: break-word;\"><span style=\"font-weight: bolder;\">檸檬雪貝&nbsp; LEMON SHERBET&nbsp;<br /></span></code><code style=\"font-family: SFMono-Regular, Menlo, Monaco, Consolas, \'Liberation Mono\', \'Courier New\', monospace; font-size: 24.5px; word-break: break-word;\"><span style=\"font-weight: bolder;\">一桶&nbsp; 500 ML</span></code></span></pre>\r\n</body>\r\n</html>', '580', '2018-08-18 14:09:04', '2018-08-18 18:29:18', 0);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
