-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-08-30 13:49:47
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
-- 資料表結構 `customer_orders`
--

CREATE TABLE `customer_orders` (
  `customer_orders_id` int(11) NOT NULL,
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
  `payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0:未付款 1:已付款 2:已出貨 3:已送達(交易完成) 99:取消訂單',
  `status_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `customer_orders`
--

INSERT INTO `customer_orders` (`customer_orders_id`, `order_no`, `order_date`, `members_id`, `total_price`, `shipping`, `name`, `phone`, `mobile`, `zipcode`, `county`, `district`, `address`, `memo`, `payment`, `delivery`, `created_at`, `updated_at`, `status`, `status_name`) VALUES
(1, 'CA20180830193235', '2018-08-30 19:32:35', 1, 1585, 80, 'HEIDI KUO', '02-26687279', '0952056917', '238', '新北市', '樹林區', '學勤路326號26樓', '這是要送禮的 , 麻煩包漂亮一點 !', '信用卡', '超商取貨', '2018-08-30 19:33:17', NULL, 0, '');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`customer_orders_id`),
  ADD KEY `members_id` (`members_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `customer_orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
