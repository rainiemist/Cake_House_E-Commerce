-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-08-30 13:50:19
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
-- 資料表結構 `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `customer_orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `customer_orders_id`, `products_id`, `picture`, `name`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 20, 'sun_cake.jpg', '太陽餅', 150, 1, '2018-08-30 19:33:17', NULL),
(2, 1, 13, '和風抹茶蒙布朗.jpg', '和風抹茶蒙布朗 GREEN TEA ', 130, 1, '2018-08-30 19:33:17', NULL),
(3, 1, 23, '芋頭酥.jpg', '彩虹螺旋芋頭酥', 180, 1, '2018-08-30 19:33:17', NULL),
(4, 1, 18, 'Lemon_Sherbet.jpg', '檸檬雪貝  LEMON SHERBET', 580, 1, '2018-08-30 19:33:17', NULL),
(5, 1, 11, '8064featured.jpg', '馬卡龍 Macaron', 120, 1, '2018-08-30 19:33:17', NULL),
(6, 1, 15, 'madeleines.jpg', '瑪德蓮  MADELEINE', 85, 5, '2018-08-30 19:33:17', NULL);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `customer_orders_id` (`customer_orders_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
