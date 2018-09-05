-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-08-30 13:21:25
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
(1, 1, 'close-up-of-loaves-of-bread.jpg', '歐式麵包', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style=\"color: #f0a8a8; background-color: #f7eded;\"><strong>歐式麵包</strong></span></h3>\r\n</body>\r\n</html>', '80', '2018-08-06', '2018-08-29 14:58:03', 0),
(2, 1, 'bread-brown-cooking-food.jpg', '蘋果麵包', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style=\"color: #07a8ad; background-color: #d0f2f2;\"><strong>蘋果麵包</strong></span></h3>\r\n</body>\r\n</html>', '30', NULL, '2018-08-29 15:00:44', 0),
(3, 1, 'wood-food-bread.jpg', '奶油麵包', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style=\"background-color: #f5ebf5; color: #cc99ff;\"><strong>奶油麵包</strong></span></h3>\r\n</body>\r\n</html>', '30', '2018-08-06', '2018-08-29 14:59:16', 0),
(4, 1, '8562011138_27c590f525_c.jpg', '咖啡奶酥麵包', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style=\"background-color: #d2f0f7; color: #004ea1;\"><strong>咖啡奶酥麵包</strong></span></h3>\r\n</body>\r\n</html>', '40', '2018-08-06', '2018-08-29 15:02:22', 0),
(5, 2, 'butter-and-fruit-cake-on-glass-plate.jpg', '檸檬戚風蛋糕', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style=\"color: #0000ff; background-color: #ccffff;\"><strong>6吋</strong></span></h3>\r\n</body>\r\n</html>', '300', '2018-08-10', '2018-08-29 15:18:47', 1),
(6, 2, 'chocolate-chip_cupcake.jpg', '香草巧克力 杯子蛋糕', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><code><span style=\"color: #333399; background-color: #ccffff;\"><strong>3個入</strong></span></code></h3>\r\n</body>\r\n</html>', '50', '2018-08-11', '2018-08-29 17:49:44', 0),
(7, 2, 'kasutera.jpg', '長崎 抹茶 蛋糕', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style=\"color: #ff6600; background-color: #ffff99;\"><strong>1條</strong></span></h3>\r\n</body>\r\n</html>', '350', '2018-08-11', '2018-08-29 15:41:14', 0),
(8, 2, '36898524176_3506cc6cfd_c.jpg', '北海道奶油小蛋糕', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style=\"background-color: #d2f7d2; color: #008000;\"><strong>6入</strong></span></h3>\r\n</body>\r\n</html>', '199', '2018-08-03', '2018-08-29 15:17:30', 0),
(9, 3, 'christmas-1818598_1280.jpg', '俄式雪球餅', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style=\"background-color: #ccffcc; color: #339966;\"><strong>1包 / 6入</strong></span></h3>\r\n</body>\r\n</html>', '85', '2018-08-01', '2018-08-29 15:14:13', 0),
(10, 3, 'breakfast-843230_640.jpg', '巧克力杏仁餅', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style=\"color: #99cc00; background-color: #f7f7d5;\"><strong>1袋</strong></span></h3>\r\n</body>\r\n</html>', '120', '2018-08-01', '2018-08-29 15:15:21', 0),
(11, 4, '8064featured.jpg', '馬卡龍 Macaron', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h2><em><strong><span style=\"color: #ff6600;\">馬卡龍&nbsp;&nbsp;Macaron</span></strong></em></h2>\r\n<h5><strong><span style=\"color: #ff6600;\">大&nbsp; @ 85 / pc<br />小 @ 40 / pc<br /></span></strong><strong><span style=\"color: #ff6600;\">___________<br /></span></strong><strong><span style=\"color: #ff6600;\">一包&nbsp; 6入</span></strong></h5>\r\n</body>\r\n</html>', '120', NULL, '2018-08-21 11:19:48', 0),
(12, 4, '4427976168_0c45a2169b_b.jpg', '可麗露 Canelé', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><code><span style=\"background-color: #ffff99; color: #ff6600;\"><strong>可麗露 Canel&eacute;</strong></span></code></h3>\r\n</body>\r\n</html>', '120', NULL, '2018-08-29 17:34:10', 0),
(13, 4, '和風抹茶蒙布朗.jpg', '和風抹茶蒙布朗 GREEN TEA \"MATCHA\" MONT-BLANC', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><code><strong><span style=\"color: #00ccff; background-color: #ccffcc;\">和風抹茶蒙布朗 <br /><em>GREEN TEA \"MATCHA\" MONT-BLANC</em></span></strong></code></h3>\r\n<h4><code><strong><span style=\"color: #00ccff; background-color: #ccffcc;\"><em>NT$ 130 / PC</em></span></strong></code></h4>\r\n</body>\r\n</html>', '130', NULL, '2018-08-23 18:15:18', 0),
(14, 4, 'le-saint-honor-a-la-framboise.jpg', '聖奧諾黑塔 Saint-Honoré', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style=\"background-color: #ccffff; color: #5252cc;\"><strong>1入</strong></span></h3>\r\n</body>\r\n</html>', '200', NULL, '2018-08-29 17:42:32', 0),
(15, 4, 'madeleines.jpg', '瑪德蓮  MADELEINE', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h4><span style=\"background-color: #ccffff; color: #ff00ff;\"><code><strong>瑪德蓮&nbsp; MADELEINE <br /></strong></code></span><span style=\"background-color: #ccffff; color: #ff00ff;\"><code><strong>6 pcs 入</strong></code></span></h4>\r\n</body>\r\n</html>', '85', '2018-08-15 10:20:18', '2018-08-19 10:16:25', 0),
(17, 5, 'watermelonsorbet-770x513.jpg', '西瓜雪貝 WATERMELON SHERBET', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h4 style=\"margin-top: 0px; margin-bottom: 0.5rem; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.2; color: #212529; font-size: 1.5rem; background-color: #ffffff;\"><span style=\"color: #ff00ff;\"><code style=\"font-family: SFMono-Regular, Menlo, Monaco, Consolas, \'Liberation Mono\', \'Courier New\', monospace; font-size: 21px; color: #e83e8c; word-break: break-word;\"><span style=\"font-weight: bolder;\">西瓜雪貝 WATERMELON SHERBET</span></code></span><br /><span style=\"color: #ff00ff;\"><code style=\"font-family: SFMono-Regular, Menlo, Monaco, Consolas, \'Liberation Mono\', \'Courier New\', monospace; font-size: 21px; color: #e83e8c; word-break: break-word;\"><span style=\"font-weight: bolder;\">1桶 500 ML</span></code></span></h4>\r\n</body>\r\n</html>', '580', '2018-08-18 14:06:57', '2018-08-18 16:16:50', 1),
(18, 5, 'Lemon_Sherbet.jpg', '檸檬雪貝  LEMON SHERBET', '<<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<pre style=\"margin-top: 0px; margin-bottom: 0.5rem; font-family: -apple-system, system-ui, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; line-height: 1.2; color: #212529; font-size: 1.75rem; background-color: #ffffff;\"><span style=\"color: #008000;\"><code style=\"font-family: SFMono-Regular, Menlo, Monaco, Consolas, \'Liberation Mono\', \'Courier New\', monospace; font-size: 24.5px; word-break: break-word;\"><span style=\"font-weight: bolder;\">檸檬雪貝&nbsp; LEMON SHERBET&nbsp;<br /></span></code><code style=\"font-family: SFMono-Regular, Menlo, Monaco, Consolas, \'Liberation Mono\', \'Courier New\', monospace; font-size: 24.5px; word-break: break-word;\"><span style=\"font-weight: bolder;\">一桶&nbsp; 500 ML</span></code></span></pre>\r\n</body>\r\n</html>', '580', '2018-08-18 14:09:04', '2018-08-29 17:26:16', 2),
(19, 2, 'chocolate-cake-with-orange-slices.jpg', '巧克力 柳橙蛋糕', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style=\"color: #339966;\"><strong>巧克力 柳橙蛋糕 8 寸</strong></span></h3>\r\n</body>\r\n</html>', '480', '2018-08-29 15:57:05', '2018-08-29 15:58:41', 2),
(20, 7, 'sun_cake.jpg', '太陽餅', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><code><span style=\"color: #ff6600; background-color: #ffff99;\"><strong>一盒 12 入</strong></span></code></h3>\r\n</body>\r\n</html>', '150', '2018-08-29 17:57:25', NULL, 2),
(21, 7, 'laopo_cake.jpg', '老婆餅', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><code><span style=\"color: #008000; background-color: #ccffcc;\"><strong>一盒 12 入</strong></span></code></h3>\r\n</body>\r\n</html>', '180', '2018-08-29 18:03:12', '2018-08-29 18:08:25', 2),
(22, 7, '芋泥鍋餅.jpg', '芋泥鍋餅', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style=\"background-color: #ccffcc; color: #008000;\"><strong>一袋 8片</strong><strong> 入</strong></span></h3>\r\n</body>\r\n</html>', '150', '2018-08-30 09:01:50', '2018-08-30 09:05:09', 2),
(23, 7, '芋頭酥.jpg', '彩虹螺旋芋頭酥', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h4><code><span style=\"background-color: #f7e1cb; color: #d14c04;\"><strong>芋頭酥&nbsp;&nbsp;<br /></strong><strong>一盒 6 入</strong></span></code></h4>\r\n</body>\r\n</html>', '180', '2018-08-30 09:19:54', '2018-08-30 09:25:12', 2);

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
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
