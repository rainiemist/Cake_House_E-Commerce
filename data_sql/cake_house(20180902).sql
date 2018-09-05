-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2018 年 09 月 02 日 04:51
-- 伺服器版本: 5.6.37
-- PHP 版本： 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

CREATE TABLE IF NOT EXISTS `customer_orders` (
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `customer_orders`
--

INSERT INTO `customer_orders` (`customer_orders_id`, `order_no`, `order_date`, `members_id`, `total_price`, `shipping`, `name`, `phone`, `mobile`, `zipcode`, `county`, `district`, `address`, `memo`, `payment`, `delivery`, `created_at`, `updated_at`, `status`, `status_name`) VALUES
(1, 'CA20180830193235', '2018-08-30 19:32:35', 1, 1585, 80, 'HEIDI KUO', '02-26687279', '0952056917', '238', '新北市', '樹林區', '學勤路326號26樓', '這是要送禮的 , 麻煩包漂亮一點 !', '信用卡', '超商取貨', '2018-08-30 19:33:17', NULL, 0, '');

-- --------------------------------------------------------

--
-- 資料表結構 `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `members_id` int(11) NOT NULL,
  `account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL COMMENT '0:女 1:男',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `county` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vip` int(11) DEFAULT NULL COMMENT '0:一般會員 1: VIP會員',
  `money_points` int(11) DEFAULT NULL COMMENT '購物金 / 點數',
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `members`
--

INSERT INTO `members` (`members_id`, `account`, `password`, `name`, `phone`, `mobile`, `birthday`, `gender`, `email`, `zipcode`, `county`, `district`, `address`, `vip`, `money_points`, `created_at`, `updated_at`) VALUES
(1, 'rainie.mist@gmail.com', 'aimoney0808', 'HEIDI KUO', '02-26687279', '0952056917', '19821215', 0, 'rainie.mist@gmail.com', '23853', '新北市', '樹林區', '學勤路326號26樓', NULL, NULL, '2018-08-23 10:16:50', '2018-08-27 10:48:44');

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL,
  `published_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `news`
--

INSERT INTO `news` (`news_id`, `published_date`, `title`, `content`, `created_at`, `updated_at`, `author`) VALUES
(1, '2018-08-03', '超驚人護駕費用！臉書CEO保安費2年花5億', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class="picbox1" style="border-style: none; margin-right: auto; margin-left: auto; outline: none 0px; position: relative; color: #000000; font-family: ''Microsoft JhengHei'', sans-serif; font-size: 16px; background-color: #ffffff;">\r\n<div class="picbox2" style="border-style: none; outline: none 0px; position: relative; overflow: hidden; height: auto;"><a class="t1" style="border-style: none; outline: none medium; text-decoration-line: none; cursor: pointer; color: #000000;" title="臉書CEO祖克伯。(美聯社資料照片)" href="http://img.chinatimes.com/newsphoto/2018-08-03/656/20180803002672.jpg"><img style="outline: none 0px; width: 670px;" src="http://img.chinatimes.com/newsphoto/2018-08-03/656/20180803002672.jpg" /></a></div>\r\n</div>\r\n<div style="border-style: none; outline: none 0px; color: #000000; font-family: ''Microsoft JhengHei'', sans-serif; font-size: 16px; background-color: #ffffff; clear: both;">&nbsp;</div>\r\n<div class="pictext" style="border-style: none; margin: 10px auto; outline: none 0px; line-height: 1.4; color: #000000; font-family: ''Microsoft JhengHei'', sans-serif; font-size: 16px; background-color: #ffffff;">\r\n<p style="border-style: none; margin-top: 0px; margin-bottom: 0px; outline: none 0px; font-size: 18px;">臉書CEO祖克伯。(美聯社資料照片)</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p style="border-style: none; margin-top: 0px; margin-bottom: 30px; outline: none 0px; font-size: 18px; line-height: 1.7; color: #000000; font-family: ''Microsoft JhengHei'', sans-serif;">Facebook(臉書)創辦人祖克柏(MarkZuckerberg)的保安費用驚人！根據外媒報導，祖克柏年薪酬只有1美元(折合約30元台幣)，但該公司為他在個人安全方面支出金額，2年加總超過5億元台幣。</p>\r\n<div id="div-gpt-ad-1489561879560-0" style="border-style: none; outline: none 0px; color: #000000; font-family: ''Microsoft JhengHei'', sans-serif; font-size: 18px; text-align: center;">&nbsp;</div>\r\n<p style="border-style: none; margin-top: 0px; margin-bottom: 30px; outline: none 0px; font-size: 18px; line-height: 1.7; color: #000000; font-family: ''Microsoft JhengHei'', sans-serif;">美國財經媒體報導，臉書執行長祖克柏身家約有686億美元(折合約2.1兆元台幣)，名列全球第6大富豪，臉書去年支出733萬美元(折合約2.25億元台幣)保護他的人身安全，今年這筆支出將進一步提高到1000萬美金(折合約3億元台幣)，比全球首富亞馬遜創辦人暨執行長貝佐斯(Jeff Bezos)保全支出費用還要高。資料顯示，貝佐斯去年保全費年砸160萬美元，今年保全費預估與去年相當。</p>\r\n<p style="border-style: none; margin-top: 0px; margin-bottom: 30px; outline: none 0px; font-size: 18px; line-height: 1.7; color: #000000; font-family: ''Microsoft JhengHei'', sans-serif;">臉書對此表示，祖克柏身兼臉書創辦人、董事長和執行長，可能面臨人身安全威脅，加上臉書近期因隱私權爭議遭受輿論攻擊，甚至有激進份子放話要對祖克柏不利，因此，這些包括私人客機等的保安措施是恰當且必要的。</p>\r\n<p style="border-style: none; margin-top: 0px; margin-bottom: 30px; outline: none 0px; font-size: 18px; line-height: 1.7; color: #000000; font-family: ''Microsoft JhengHei'', sans-serif;">(中時電子報)</p>\r\n</body>\r\n</html>', '2018-08-03-15:29:11', '2018-08-21 15:52:01', ' 中時電子報 邱怡萱/整理報導'),
(2, '2018-08-10', '上課心得', '課程過半了喔 !', '2018-08-10 11:33:01', '2018-08-13 13:25:01', '嵐芯雨'),
(3, '2018-08-12', '老戲骨梅芳 開槍爆頭不手軟', '82歲資深演員梅芳投身演藝事業超過半世紀，拍過的作品無數，「國民奶奶」形象深植人心，最近她拍攝公視新創電影「水槍」，劇照一曝光，手拿水槍爆頭畫面，令人大吃一驚。\r\n\r\n公視新創電影挑戰以黑色幽默包裝類型喜劇短片「水槍」，由新銳導演樓耀中執導，國寶級演員梅芳、高振鵬主演，「老戲骨」出手不同凡響，梅芳演起「開槍」戲不手軟，動作戲全都來真的，摔倒、跳舞、崩潰摔東西等等不適合長者做的大動作戲劇表演，全都親自上陣，而且改造過的道具槍為了配合劇情裝了機關，頗有點重量，沒想到，梅芳阿姨玩沒兩次就上手，而且「開槍」完全不手軟，導演大讚：「梅芳阿姨真的超猛的！」\r\n\r\n「水槍」描寫老婦在相依為命的老伴過世後，以水槍模擬丈夫尿聲，緩解失眠症狀，編導樓耀中將過去母親照顧膀胱癌外公的生命經驗寫入劇本，並把女兒的角色替換成老婆，加入戲劇奇幻元素，將夫妻的愛情與親情，以及老婆對死去老公的思念，做更深刻的描寫。\r\n\r\n高齡90歲的高振鵬在戲裡演出梅芳的老伴，一場半夜尿不出來，最後尿出血尿，表情痛苦猙獰畫面，極具戲劇張力，導演看了很不忍心，高振鵬則謙虛地說：「生活體驗、常識，再加上自我揣摩，導演合意就好！」他也感謝老天爺還賞飯吃，表示梅芳才是全劇靈魂，自己只是盡責做到綠葉陪襯，印象最深的是與梅芳共舞，他笑說：「有再談一次戀愛的感覺 ！」', '2018-08-12 15:41:12', '2018-08-13 11:28:22', ''),
(4, '08/12/2018', '【搶鏡頭】腐味十足 朱智勛被貼心保全從後面來', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div class="brief fb-quotable" style="box-sizing: inherit; margin-top: 30px; line-height: 36px; font-size: 18px; color: rgba(65, 65, 65, 0.61); font-family: ''Noto Sans TC'', STHeitiTC-Light, ''Microsoft JhengHei'', sans-serif; background-color: #ffffff;">\r\n<div style="box-sizing: inherit;">\r\n<div style="box-sizing: inherit;">\r\n<p style="box-sizing: inherit; font-weight: bold; text-align: justify; color: #08639e; font-size: 1.2rem;">電影《與神同行：最終審判》即將於8月8日在台灣上映，日前在北市府廣場舉行紅毯記者會，朱智勛以亮粉色西裝率先抵達現場，188公分有著名模身材的他，立刻讓粉絲尖叫：「超帥！」朱智勛看到手機便自動接過與粉絲玩自拍，還會配合身高蹲低合照，真的超親民。</p>\r\n<div class="fb-quote fb_iframe_widget" style="box-sizing: inherit; display: inline-block; position: absolute; left: 179px; top: 1px;" data-v-d00969e8=""><span style="box-sizing: inherit; display: inline-block; position: relative; text-align: justify; vertical-align: bottom; width: 146px; height: 48px;"><iframe class="" style="box-sizing: inherit; position: absolute; border-width: initial; border-style: none; visibility: visible; width: 146px; height: 48px;" title="fb:quote Facebook Social Plugin" src="https://www.facebook.com/v2.9/plugins/quote.php?app_id=175313259598308&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2FQX17B8fU-Vm.js%3Fversion%3D42%23cb%3Df3ff1de7bb34568%26domain%3Dwww.mirrormedia.mg%26origin%3Dhttps%253A%252F%252Fwww.mirrormedia.mg%252Ff27e89f44460568%26relation%3Dparent.parent&amp;container_width=1903&amp;href=https%3A%2F%2Fwww.mirrormedia.mg%2Fstory%2F20180807ent016&amp;locale=zh_TW&amp;sdk=joey" name="f256b1449624dd" width="1000px" height="1000px" frameborder="0" scrolling="no" allowfullscreen="allowfullscreen"></iframe></span></div>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="split-line" style="box-sizing: inherit; clear: both; color: #34495e; font-family: ''Noto Sans TC'', STHeitiTC-Light, ''Microsoft JhengHei'', sans-serif; font-size: 16px; background-color: #ffffff;">&nbsp;</div>\r\n<article class="content" style="box-sizing: inherit; color: #34495e; font-family: ''Noto Sans TC'', STHeitiTC-Light, ''Microsoft JhengHei'', sans-serif; font-size: 16px; background-color: #ffffff;">\r\n<div style="box-sizing: inherit;">\r\n<div style="box-sizing: inherit;">\r\n<h2 style="box-sizing: inherit; font-size: 32px; color: #000000; margin-top: 40px;">&nbsp;</h2>\r\n</div>\r\n</div>\r\n<div style="box-sizing: inherit;">\r\n<div class="swiper-container per-slide swiper-container-horizontal" style="box-sizing: inherit; margin-top: 1.5em; margin-bottom: 1.5em; position: relative; overflow: hidden; z-index: 1; width: 695px; cursor: grab;">\r\n<div class="swiper-wrapper" style="box-sizing: content-box; position: relative; width: 2780px; height: 513px; z-index: 1; display: flex; transition-property: transform; transform: translate3d(-695px, 0px, 0px); -webkit-box-align: center; align-items: center; transition-duration: 0ms;">\r\n<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev swiper-slide-duplicate-next" style="box-sizing: inherit; flex-shrink: 0; width: 695px; height: 513px; position: relative; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;" data-swiper-slide-index="1">\r\n<div style="box-sizing: inherit; width: 695px;">\r\n<div class="slideshowImg" style="box-sizing: inherit;"><img style="box-sizing: inherit; border-style: none; width: 695px; object-fit: contain; object-position: center center; max-height: 450px;" src="https://www.mirrormedia.com.tw/assets/images/20180807111432-443a1486ca5e432ebf763e2765af1c78-tablet.jpg" srcset="https://www.mirrormedia.com.tw/assets/images/20180807111432-443a1486ca5e432ebf763e2765af1c78-mobile.jpg 800w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111432-443a1486ca5e432ebf763e2765af1c78-tablet.jpg 1200w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111432-443a1486ca5e432ebf763e2765af1c78-desktop.jpg 2000w" alt="真實世界中王淨也是林柏叡的女友，露面工作難免也要肢體觸碰一陣。" />\r\n<div class="img-caption" style="box-sizing: inherit; width: 486.5px; margin-right: auto; margin-left: auto; padding: 8px; color: rgba(0, 0, 0, 0.498); font-size: 1rem; text-align: center; line-height: 1.4rem;">真實世界中王淨也是林柏叡的女友，露面工作難免也要肢體觸碰一陣。</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="swiper-slide swiper-slide-active" style="box-sizing: inherit; flex-shrink: 0; width: 695px; height: 513px; position: relative; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;" data-swiper-slide-index="0">\r\n<div style="box-sizing: inherit; width: 695px;">\r\n<div class="slideshowImg" style="box-sizing: inherit;"><img style="box-sizing: inherit; border-style: none; width: 695px; object-fit: contain; object-position: center center; max-height: 450px;" src="https://www.mirrormedia.com.tw/assets/images/20180807111414-24fd9cf3afba456dfce52dfaae62f835-tablet.jpg" srcset="https://www.mirrormedia.com.tw/assets/images/20180807111414-24fd9cf3afba456dfce52dfaae62f835-mobile.jpg 800w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111414-24fd9cf3afba456dfce52dfaae62f835-tablet.jpg 1200w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111414-24fd9cf3afba456dfce52dfaae62f835-desktop.jpg 2000w" alt="林柏叡（左）跟王淨（中）有別於多年前的《鬥魚》偶像劇版，弄出自己的話題，而且長炒了好一陣子，讓毛弟（右）翻白眼完全合理。" />\r\n<div class="img-caption" style="box-sizing: inherit; width: 486.5px; margin-right: auto; margin-left: auto; padding: 8px; color: rgba(0, 0, 0, 0.498); font-size: 1rem; text-align: center; line-height: 1.4rem;">林柏叡（左）跟王淨（中）有別於多年前的《鬥魚》偶像劇版，弄出自己的話題，而且長炒了好一陣子，讓毛弟（右）翻白眼完全合理。</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="swiper-slide swiper-slide-next swiper-slide-duplicate-prev" style="box-sizing: inherit; flex-shrink: 0; width: 695px; height: 513px; position: relative; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;" data-swiper-slide-index="1">\r\n<div style="box-sizing: inherit; width: 695px;">\r\n<div class="slideshowImg" style="box-sizing: inherit;"><img style="box-sizing: inherit; border-style: none; width: 695px; object-fit: contain; object-position: center center; max-height: 450px;" src="https://www.mirrormedia.com.tw/assets/images/20180807111432-443a1486ca5e432ebf763e2765af1c78-tablet.jpg" srcset="https://www.mirrormedia.com.tw/assets/images/20180807111432-443a1486ca5e432ebf763e2765af1c78-mobile.jpg 800w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111432-443a1486ca5e432ebf763e2765af1c78-tablet.jpg 1200w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111432-443a1486ca5e432ebf763e2765af1c78-desktop.jpg 2000w" alt="真實世界中王淨也是林柏叡的女友，露面工作難免也要肢體觸碰一陣。" />\r\n<div class="img-caption" style="box-sizing: inherit; width: 486.5px; margin-right: auto; margin-left: auto; padding: 8px; color: rgba(0, 0, 0, 0.498); font-size: 1rem; text-align: center; line-height: 1.4rem;">真實世界中王淨也是林柏叡的女友，露面工作難免也要肢體觸碰一陣。</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" style="box-sizing: inherit; flex-shrink: 0; width: 695px; height: 513px; position: relative; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;" data-swiper-slide-index="0">\r\n<div style="box-sizing: inherit; width: 695px;">\r\n<div class="slideshowImg" style="box-sizing: inherit;"><img style="box-sizing: inherit; border-style: none; width: 695px; object-fit: contain; object-position: center center; max-height: 450px;" src="https://www.mirrormedia.com.tw/assets/images/20180807111414-24fd9cf3afba456dfce52dfaae62f835-tablet.jpg" srcset="https://www.mirrormedia.com.tw/assets/images/20180807111414-24fd9cf3afba456dfce52dfaae62f835-mobile.jpg 800w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111414-24fd9cf3afba456dfce52dfaae62f835-tablet.jpg 1200w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111414-24fd9cf3afba456dfce52dfaae62f835-desktop.jpg 2000w" alt="林柏叡（左）跟王淨（中）有別於多年前的《鬥魚》偶像劇版，弄出自己的話題，而且長炒了好一陣子，讓毛弟（右）翻白眼完全合理。" />\r\n<div class="img-caption" style="box-sizing: inherit; width: 486.5px; margin-right: auto; margin-left: auto; padding: 8px; color: rgba(0, 0, 0, 0.498); font-size: 1rem; text-align: center; line-height: 1.4rem;">林柏叡（左）跟王淨（中）有別於多年前的《鬥魚》偶像劇版，弄出自己的話題，而且長炒了好一陣子，讓毛弟（右）翻白眼完全合理。</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="egcgq-pagination" class="swiper-pagination" style="box-sizing: inherit; position: relative; text-align: center; transition: all 0.3s ease 0s; transform: translateZ(0px); z-index: 10; top: 20px;">&nbsp;</div>\r\n<div class="swiper-button swiper-button-prev enabled" style="box-sizing: inherit; position: absolute; top: 256.5px; width: 27px; height: 44px; margin-top: -22px; z-index: 10; cursor: pointer; background-size: 27px 44px; background-position: 50% center; background-image: url(''../../../public/icon/arrow1-2017.png''); left: 10px; right: auto;">&nbsp;</div>\r\n<div class="swiper-button swiper-button-next enabled" style="box-sizing: inherit; position: absolute; top: 256.5px; width: 27px; height: 44px; margin-top: -22px; z-index: 10; cursor: pointer; background-size: 27px 44px; background-position: 50% center; background-image: url(''../../../public/icon/arrow2-2017.png''); right: 10px; left: auto;">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div style="box-sizing: inherit;">\r\n<div style="box-sizing: inherit;">\r\n<h2 style="box-sizing: inherit; font-size: 32px; color: #000000; margin-top: 40px;"><span style="box-sizing: inherit; font-weight: bolder;">毛弟翻白眼　林柏叡合體王淨沒反硬</span></h2>\r\n</div>\r\n</div>\r\n<div style="box-sizing: inherit;">\r\n<div style="box-sizing: inherit;">\r\n<p style="box-sizing: inherit; color: #171717; font-size: 18px; line-height: 36px; margin-top: 1.5em; margin-bottom: 1.5em; text-align: justify;">林柏叡跟王淨這對因為《鬥魚》電影版而假戲真做的情侶，在上半年也因林柏叡跟雷婕熙未婚生女、分手而一陣風風火火，鬧到電影終於上映，毛弟要翻他們白眼也是正常啦！林柏叡＆王淨這對CP也配合攝影需求，硬是黏在一起拍了一陣，好險林柏叡瞄了瞄自己的下面，呈現一片平坦。</p>\r\n</div>\r\n</div>\r\n<div style="box-sizing: inherit;">\r\n<div style="box-sizing: inherit;">\r\n<p style="box-sizing: inherit; color: #171717; font-size: 18px; line-height: 36px; margin-top: 1.5em; margin-bottom: 1.5em; text-align: justify;">　</p>\r\n</div>\r\n</div>\r\n<div style="box-sizing: inherit;">\r\n<div class="swiper-container per-slide swiper-container-horizontal" style="box-sizing: inherit; margin-top: 1.5em; margin-bottom: 1.5em; position: relative; overflow: hidden; z-index: 1; width: 695px; cursor: grab;">\r\n<div class="swiper-wrapper" style="box-sizing: content-box; position: relative; width: 2780px; height: 513px; z-index: 1; display: flex; transition-property: transform; transform: translate3d(-695px, 0px, 0px); -webkit-box-align: center; align-items: center; transition-duration: 0ms;">\r\n<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev swiper-slide-duplicate-next" style="box-sizing: inherit; flex-shrink: 0; width: 695px; height: 513px; position: relative; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;" data-swiper-slide-index="1">\r\n<div style="box-sizing: inherit; width: 695px;">\r\n<div class="slideshowImg" style="box-sizing: inherit;"><img style="box-sizing: inherit; border-style: none; width: 695px; object-fit: contain; object-position: center center; max-height: 450px;" src="https://www.mirrormedia.com.tw/assets/images/20180807111500-a1b2aa20089f08d77d441e49b403f026-tablet.jpg" srcset="https://www.mirrormedia.com.tw/assets/images/20180807111500-a1b2aa20089f08d77d441e49b403f026-mobile.jpg 800w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111500-a1b2aa20089f08d77d441e49b403f026-tablet.jpg 1200w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111500-a1b2aa20089f08d77d441e49b403f026-desktop.jpg 2000w" alt="河正宇非常獨自立主，面對粉絲可以落單，相對也沒朱智勛那樣浩浩蕩蕩。" />\r\n<div class="img-caption" style="box-sizing: inherit; width: 486.5px; margin-right: auto; margin-left: auto; padding: 8px; color: rgba(0, 0, 0, 0.498); font-size: 1rem; text-align: center; line-height: 1.4rem;">河正宇非常獨自立主，面對粉絲可以落單，相對也沒朱智勛那樣浩浩蕩蕩。</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="swiper-slide swiper-slide-active" style="box-sizing: inherit; flex-shrink: 0; width: 695px; height: 513px; position: relative; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;" data-swiper-slide-index="0">\r\n<div style="box-sizing: inherit; width: 695px;">\r\n<div class="slideshowImg" style="box-sizing: inherit;"><img style="box-sizing: inherit; border-style: none; width: 695px; object-fit: contain; object-position: center center; max-height: 450px;" src="https://www.mirrormedia.com.tw/assets/images/20180807111251-87b06be95d5fe34de0debea93c831c1a-tablet.jpg" srcset="https://www.mirrormedia.com.tw/assets/images/20180807111251-87b06be95d5fe34de0debea93c831c1a-mobile.jpg 800w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111251-87b06be95d5fe34de0debea93c831c1a-tablet.jpg 1200w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111251-87b06be95d5fe34de0debea93c831c1a-desktop.jpg 2000w" alt="「我欲甲你攬牢牢～乎你袂驚袂擱號～」江蕙那首〈甲你攬牢牢〉，很適合當朱智勛跟男保全這幅畫面的配樂。" />\r\n<div class="img-caption" style="box-sizing: inherit; width: 486.5px; margin-right: auto; margin-left: auto; padding: 8px; color: rgba(0, 0, 0, 0.498); font-size: 1rem; text-align: center; line-height: 1.4rem;">「我欲甲你攬牢牢～乎你袂驚袂擱號～」江蕙那首〈甲你攬牢牢〉，很適合當朱智勛跟男保全這幅畫面的配樂。</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="swiper-slide swiper-slide-next swiper-slide-duplicate-prev" style="box-sizing: inherit; flex-shrink: 0; width: 695px; height: 513px; position: relative; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;" data-swiper-slide-index="1">\r\n<div style="box-sizing: inherit; width: 695px;">\r\n<div class="slideshowImg" style="box-sizing: inherit;"><img style="box-sizing: inherit; border-style: none; width: 695px; object-fit: contain; object-position: center center; max-height: 450px;" src="https://www.mirrormedia.com.tw/assets/images/20180807111500-a1b2aa20089f08d77d441e49b403f026-tablet.jpg" srcset="https://www.mirrormedia.com.tw/assets/images/20180807111500-a1b2aa20089f08d77d441e49b403f026-mobile.jpg 800w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111500-a1b2aa20089f08d77d441e49b403f026-tablet.jpg 1200w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111500-a1b2aa20089f08d77d441e49b403f026-desktop.jpg 2000w" alt="河正宇非常獨自立主，面對粉絲可以落單，相對也沒朱智勛那樣浩浩蕩蕩。" />\r\n<div class="img-caption" style="box-sizing: inherit; width: 486.5px; margin-right: auto; margin-left: auto; padding: 8px; color: rgba(0, 0, 0, 0.498); font-size: 1rem; text-align: center; line-height: 1.4rem;">河正宇非常獨自立主，面對粉絲可以落單，相對也沒朱智勛那樣浩浩蕩蕩。</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" style="box-sizing: inherit; flex-shrink: 0; width: 695px; height: 513px; position: relative; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;" data-swiper-slide-index="0">\r\n<div style="box-sizing: inherit; width: 695px;">\r\n<div class="slideshowImg" style="box-sizing: inherit;"><img style="box-sizing: inherit; border-style: none; width: 695px; object-fit: contain; object-position: center center; max-height: 450px;" src="https://www.mirrormedia.com.tw/assets/images/20180807111251-87b06be95d5fe34de0debea93c831c1a-tablet.jpg" srcset="https://www.mirrormedia.com.tw/assets/images/20180807111251-87b06be95d5fe34de0debea93c831c1a-mobile.jpg 800w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111251-87b06be95d5fe34de0debea93c831c1a-tablet.jpg 1200w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111251-87b06be95d5fe34de0debea93c831c1a-desktop.jpg 2000w" alt="「我欲甲你攬牢牢～乎你袂驚袂擱號～」江蕙那首〈甲你攬牢牢〉，很適合當朱智勛跟男保全這幅畫面的配樂。" />\r\n<div class="img-caption" style="box-sizing: inherit; width: 486.5px; margin-right: auto; margin-left: auto; padding: 8px; color: rgba(0, 0, 0, 0.498); font-size: 1rem; text-align: center; line-height: 1.4rem;">「我欲甲你攬牢牢～乎你袂驚袂擱號～」江蕙那首〈甲你攬牢牢〉，很適合當朱智勛跟男保全這幅畫面的配樂。</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="185j3-pagination" class="swiper-pagination" style="box-sizing: inherit; position: relative; text-align: center; transition: all 0.3s ease 0s; transform: translateZ(0px); z-index: 10; top: 20px;">&nbsp;</div>\r\n<div class="swiper-button swiper-button-prev enabled" style="box-sizing: inherit; position: absolute; top: 256.5px; width: 27px; height: 44px; margin-top: -22px; z-index: 10; cursor: pointer; background-size: 27px 44px; background-position: 50% center; background-image: url(''../../../public/icon/arrow1-2017.png''); left: 10px; right: auto;">&nbsp;</div>\r\n<div class="swiper-button swiper-button-next enabled" style="box-sizing: inherit; position: absolute; top: 256.5px; width: 27px; height: 44px; margin-top: -22px; z-index: 10; cursor: pointer; background-size: 27px 44px; background-position: 50% center; background-image: url(''../../../public/icon/arrow2-2017.png''); right: 10px; left: auto;">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div style="box-sizing: inherit;">\r\n<div style="box-sizing: inherit;">\r\n<h2 style="box-sizing: inherit; font-size: 32px; color: #000000; margin-top: 40px;"><span style="box-sizing: inherit; font-weight: bolder;">腐味保全同行　朱智勛腰被攬牢牢</span></h2>\r\n</div>\r\n</div>\r\n<div style="box-sizing: inherit;">\r\n<div style="box-sizing: inherit;">\r\n<p style="box-sizing: inherit; color: #171717; font-size: 18px; line-height: 36px; margin-top: 1.5em; margin-bottom: 1.5em; text-align: justify;">《與神同行》來台大規模宣傳，光是紅毯粉絲就陣仗驚人，只是感覺男星之間有差別待遇；像是河正宇就落單，感覺好像什麼邊咖沒人理他，但是朱智勛就有《保全同行》，重點是男性保全一手抓他手臂，一手把他腰攬得牢牢，眼神也充滿關愛，飄出陣陣腐味。</p>\r\n</div>\r\n<span id="innity-custom-adnetwork-span-63518" style="box-sizing: inherit;" data-v-d00969e8=""></span><span id="innity-custom-premium-span-12738" style="box-sizing: inherit;" data-v-d00969e8=""></span></div>\r\n<div style="box-sizing: inherit;">\r\n<div style="box-sizing: inherit;">\r\n<p style="box-sizing: inherit; color: #171717; font-size: 18px; line-height: 36px; margin-top: 1.5em; margin-bottom: 1.5em; text-align: justify;">　</p>\r\n</div>\r\n</div>\r\n<div style="box-sizing: inherit;">\r\n<div class="swiper-container per-slide swiper-container-horizontal" style="box-sizing: inherit; margin-top: 1.5em; margin-bottom: 1.5em; position: relative; overflow: hidden; z-index: 1; width: 695px; cursor: grab;">\r\n<div class="swiper-wrapper" style="box-sizing: content-box; position: relative; width: 2780px; height: 513px; z-index: 1; display: flex; transition-property: transform; transform: translate3d(-695px, 0px, 0px); -webkit-box-align: center; align-items: center; transition-duration: 0ms;">\r\n<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev swiper-slide-duplicate-next" style="box-sizing: inherit; flex-shrink: 0; width: 695px; height: 491px; position: relative; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;" data-swiper-slide-index="1">\r\n<div style="box-sizing: inherit; width: 695px;">\r\n<div class="slideshowImg" style="box-sizing: inherit;"><img style="box-sizing: inherit; border-style: none; width: 695px; object-fit: contain; object-position: center center; max-height: 450px;" src="https://www.mirrormedia.com.tw/assets/images/20180807111347-15745ce3d8b3a94247e6ab490f39fb4b-tablet.jpg" srcset="https://www.mirrormedia.com.tw/assets/images/20180807111347-15745ce3d8b3a94247e6ab490f39fb4b-mobile.jpg 800w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111347-15745ce3d8b3a94247e6ab490f39fb4b-tablet.jpg 1200w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111347-15745ce3d8b3a94247e6ab490f39fb4b-desktop.jpg 2000w" alt="最近張軒睿跟林明禎的短命戀情變成他揮之不去的新聞話題。" />\r\n<div class="img-caption" style="box-sizing: inherit; width: 486.5px; margin-right: auto; margin-left: auto; padding: 8px; color: rgba(0, 0, 0, 0.498); font-size: 1rem; text-align: center; line-height: 1.4rem;">最近張軒睿跟林明禎的短命戀情變成他揮之不去的新聞話題。</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="swiper-slide swiper-slide-active" style="box-sizing: inherit; flex-shrink: 0; width: 695px; height: 513px; position: relative; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;" data-swiper-slide-index="0">\r\n<div style="box-sizing: inherit; width: 695px;">\r\n<div class="slideshowImg" style="box-sizing: inherit;"><img style="box-sizing: inherit; border-style: none; width: 695px; object-fit: contain; object-position: center center; max-height: 450px;" src="https://www.mirrormedia.com.tw/assets/images/20180807111327-bb2102875ad1210e1b9cadf07f4cbca1-tablet.jpg" srcset="https://www.mirrormedia.com.tw/assets/images/20180807111327-bb2102875ad1210e1b9cadf07f4cbca1-mobile.jpg 800w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111327-bb2102875ad1210e1b9cadf07f4cbca1-tablet.jpg 1200w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111327-bb2102875ad1210e1b9cadf07f4cbca1-desktop.jpg 2000w" alt="張軒睿以佛系手勢回應戀情，問題是一切明明就他把戀情搞得見光死，最後只好自己收拾，而Ella完全只能在旁看好戲。" />\r\n<div class="img-caption" style="box-sizing: inherit; width: 486.5px; margin-right: auto; margin-left: auto; padding: 8px; color: rgba(0, 0, 0, 0.498); font-size: 1rem; text-align: center; line-height: 1.4rem;">張軒睿以佛系手勢回應戀情，問題是一切明明就他把戀情搞得見光死，最後只好自己收拾，而Ella完全只能在旁看好戲。</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="swiper-slide swiper-slide-next swiper-slide-duplicate-prev" style="box-sizing: inherit; flex-shrink: 0; width: 695px; height: 491px; position: relative; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;" data-swiper-slide-index="1">\r\n<div style="box-sizing: inherit; width: 695px;">\r\n<div class="slideshowImg" style="box-sizing: inherit;"><img style="box-sizing: inherit; border-style: none; width: 695px; object-fit: contain; object-position: center center; max-height: 450px;" src="https://www.mirrormedia.com.tw/assets/images/20180807111347-15745ce3d8b3a94247e6ab490f39fb4b-tablet.jpg" srcset="https://www.mirrormedia.com.tw/assets/images/20180807111347-15745ce3d8b3a94247e6ab490f39fb4b-mobile.jpg 800w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111347-15745ce3d8b3a94247e6ab490f39fb4b-tablet.jpg 1200w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111347-15745ce3d8b3a94247e6ab490f39fb4b-desktop.jpg 2000w" alt="最近張軒睿跟林明禎的短命戀情變成他揮之不去的新聞話題。" />\r\n<div class="img-caption" style="box-sizing: inherit; width: 486.5px; margin-right: auto; margin-left: auto; padding: 8px; color: rgba(0, 0, 0, 0.498); font-size: 1rem; text-align: center; line-height: 1.4rem;">最近張軒睿跟林明禎的短命戀情變成他揮之不去的新聞話題。</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" style="box-sizing: inherit; flex-shrink: 0; width: 695px; height: 513px; position: relative; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;" data-swiper-slide-index="0">\r\n<div style="box-sizing: inherit; width: 695px;">\r\n<div class="slideshowImg" style="box-sizing: inherit;"><img style="box-sizing: inherit; border-style: none; width: 695px; object-fit: contain; object-position: center center; max-height: 450px;" src="https://www.mirrormedia.com.tw/assets/images/20180807111327-bb2102875ad1210e1b9cadf07f4cbca1-tablet.jpg" srcset="https://www.mirrormedia.com.tw/assets/images/20180807111327-bb2102875ad1210e1b9cadf07f4cbca1-mobile.jpg 800w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111327-bb2102875ad1210e1b9cadf07f4cbca1-tablet.jpg 1200w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111327-bb2102875ad1210e1b9cadf07f4cbca1-desktop.jpg 2000w" alt="張軒睿以佛系手勢回應戀情，問題是一切明明就他把戀情搞得見光死，最後只好自己收拾，而Ella完全只能在旁看好戲。" />\r\n<div class="img-caption" style="box-sizing: inherit; width: 486.5px; margin-right: auto; margin-left: auto; padding: 8px; color: rgba(0, 0, 0, 0.498); font-size: 1rem; text-align: center; line-height: 1.4rem;">張軒睿以佛系手勢回應戀情，問題是一切明明就他把戀情搞得見光死，最後只好自己收拾，而Ella完全只能在旁看好戲。</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="e8j7t-pagination" class="swiper-pagination" style="box-sizing: inherit; position: relative; text-align: center; transition: all 0.3s ease 0s; transform: translateZ(0px); z-index: 10; top: 20px;">&nbsp;</div>\r\n<div class="swiper-button swiper-button-prev enabled" style="box-sizing: inherit; position: absolute; top: 256.5px; width: 27px; height: 44px; margin-top: -22px; z-index: 10; cursor: pointer; background-size: 27px 44px; background-position: 50% center; background-image: url(''../../../public/icon/arrow1-2017.png''); left: 10px; right: auto;">&nbsp;</div>\r\n<div class="swiper-button swiper-button-next enabled" style="box-sizing: inherit; position: absolute; top: 256.5px; width: 27px; height: 44px; margin-top: -22px; z-index: 10; cursor: pointer; background-size: 27px 44px; background-position: 50% center; background-image: url(''../../../public/icon/arrow2-2017.png''); right: 10px; left: auto;">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div style="box-sizing: inherit;">\r\n<div style="box-sizing: inherit;">\r\n<h2 style="box-sizing: inherit; font-size: 32px; color: #000000; margin-top: 40px;"><span style="box-sizing: inherit; font-weight: bolder;">Ella丈母娘式陪笑　情變張軒睿立馬成佛</span></h2>\r\n</div>\r\n</div>\r\n<div style="box-sizing: inherit;">\r\n<div style="box-sizing: inherit;">\r\n<p style="box-sizing: inherit; color: #171717; font-size: 18px; line-height: 36px; margin-top: 1.5em; margin-bottom: 1.5em; text-align: justify;">除了林柏叡跟王淨，張軒睿跟林明禎的早夭戀情也是上半年的注目話題，搞得那天黃仲崑覺得焦點都圍在他身上，還乾脆不爽離場；只見張軒睿身旁Ella嘴唇紅就算了，表情也根本是一副丈母娘的婆媽樣～雖然出聲解圍，張軒睿也是辛苦應對，並且立刻立地成佛，求饒順便表態自己沒有劈腿。</p>\r\n</div>\r\n</div>\r\n<div style="box-sizing: inherit;">\r\n<div style="box-sizing: inherit;">\r\n<p style="box-sizing: inherit; color: #171717; font-size: 18px; line-height: 36px; margin-top: 1.5em; margin-bottom: 1.5em; text-align: justify;">　</p>\r\n</div>\r\n<span id="innity-custom-adnetwork-span-68557" style="box-sizing: inherit;" data-v-d00969e8=""></span><span id="innity-custom-premium-span-12739" style="box-sizing: inherit;" data-v-d00969e8=""></span></div>\r\n<div style="box-sizing: inherit;">\r\n<div class="swiper-container per-slide swiper-container-horizontal" style="box-sizing: inherit; margin-top: 1.5em; margin-bottom: 1.5em; position: relative; overflow: hidden; z-index: 1; width: 695px; cursor: grab;">\r\n<div class="swiper-wrapper" style="box-sizing: content-box; position: relative; width: 2780px; height: 513px; z-index: 1; display: flex; transition-property: transform; transform: translate3d(-695px, 0px, 0px); -webkit-box-align: center; align-items: center; transition-duration: 0ms;">\r\n<div class="swiper-slide swiper-slide-duplicate swiper-slide-prev swiper-slide-duplicate-next" style="box-sizing: inherit; flex-shrink: 0; width: 695px; height: 513px; position: relative; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;" data-swiper-slide-index="1">\r\n<div style="box-sizing: inherit; width: 695px;">\r\n<div class="slideshowImg" style="box-sizing: inherit;"><img style="box-sizing: inherit; border-style: none; width: 695px; object-fit: contain; object-position: center center; max-height: 450px;" src="https://www.mirrormedia.com.tw/assets/images/20180807111534-2e38725ec8eeaf5bbf7824695731aa8e-tablet.jpg" srcset="https://www.mirrormedia.com.tw/assets/images/20180807111534-2e38725ec8eeaf5bbf7824695731aa8e-mobile.jpg 800w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111534-2e38725ec8eeaf5bbf7824695731aa8e-tablet.jpg 1200w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111534-2e38725ec8eeaf5bbf7824695731aa8e-desktop.jpg 2000w" alt="隋棠真的是路遙知馬力，尤其她的下顎非常吸睛，難怪屢屢登上〈搶鏡頭〉欄目。" />\r\n<div class="img-caption" style="box-sizing: inherit; width: 486.5px; margin-right: auto; margin-left: auto; padding: 8px; color: rgba(0, 0, 0, 0.498); font-size: 1rem; text-align: center; line-height: 1.4rem;">隋棠真的是路遙知馬力，尤其她的下顎非常吸睛，難怪屢屢登上〈搶鏡頭〉欄目。</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="swiper-slide swiper-slide-active" style="box-sizing: inherit; flex-shrink: 0; width: 695px; height: 513px; position: relative; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;" data-swiper-slide-index="0">\r\n<div style="box-sizing: inherit; width: 695px;">\r\n<div class="slideshowImg" style="box-sizing: inherit;"><img style="box-sizing: inherit; border-style: none; width: 695px; object-fit: contain; object-position: center center; max-height: 450px;" src="https://www.mirrormedia.com.tw/assets/images/20180807111557-796b6ad8d1930883f922cb9f5e1a52c0-tablet.jpg" srcset="https://www.mirrormedia.com.tw/assets/images/20180807111557-796b6ad8d1930883f922cb9f5e1a52c0-mobile.jpg 800w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111557-796b6ad8d1930883f922cb9f5e1a52c0-tablet.jpg 1200w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111557-796b6ad8d1930883f922cb9f5e1a52c0-desktop.jpg 2000w" alt="賀軍翔（左）發言時，隋棠（中）的下顎也是非常積極搶功，張睿家（右）則是一臉分心。" />\r\n<div class="img-caption" style="box-sizing: inherit; width: 486.5px; margin-right: auto; margin-left: auto; padding: 8px; color: rgba(0, 0, 0, 0.498); font-size: 1rem; text-align: center; line-height: 1.4rem;">賀軍翔（左）發言時，隋棠（中）的下顎也是非常積極搶功，張睿家（右）則是一臉分心。</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="swiper-slide swiper-slide-next swiper-slide-duplicate-prev" style="box-sizing: inherit; flex-shrink: 0; width: 695px; height: 513px; position: relative; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;" data-swiper-slide-index="1">\r\n<div style="box-sizing: inherit; width: 695px;">\r\n<div class="slideshowImg" style="box-sizing: inherit;"><img style="box-sizing: inherit; border-style: none; width: 695px; object-fit: contain; object-position: center center; max-height: 450px;" src="https://www.mirrormedia.com.tw/assets/images/20180807111534-2e38725ec8eeaf5bbf7824695731aa8e-tablet.jpg" srcset="https://www.mirrormedia.com.tw/assets/images/20180807111534-2e38725ec8eeaf5bbf7824695731aa8e-mobile.jpg 800w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111534-2e38725ec8eeaf5bbf7824695731aa8e-tablet.jpg 1200w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111534-2e38725ec8eeaf5bbf7824695731aa8e-desktop.jpg 2000w" alt="隋棠真的是路遙知馬力，尤其她的下顎非常吸睛，難怪屢屢登上〈搶鏡頭〉欄目。" />\r\n<div class="img-caption" style="box-sizing: inherit; width: 486.5px; margin-right: auto; margin-left: auto; padding: 8px; color: rgba(0, 0, 0, 0.498); font-size: 1rem; text-align: center; line-height: 1.4rem;">隋棠真的是路遙知馬力，尤其她的下顎非常吸睛，難怪屢屢登上〈搶鏡頭〉欄目。</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active" style="box-sizing: inherit; flex-shrink: 0; width: 695px; height: 513px; position: relative; display: flex; -webkit-box-align: center; align-items: center; -webkit-box-pack: center; justify-content: center;" data-swiper-slide-index="0">\r\n<div style="box-sizing: inherit; width: 695px;">\r\n<div class="slideshowImg" style="box-sizing: inherit;"><img style="box-sizing: inherit; border-style: none; width: 695px; object-fit: contain; object-position: center center; max-height: 450px;" src="https://www.mirrormedia.com.tw/assets/images/20180807111557-796b6ad8d1930883f922cb9f5e1a52c0-tablet.jpg" srcset="https://www.mirrormedia.com.tw/assets/images/20180807111557-796b6ad8d1930883f922cb9f5e1a52c0-mobile.jpg 800w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111557-796b6ad8d1930883f922cb9f5e1a52c0-tablet.jpg 1200w,\r\n                                    https://www.mirrormedia.com.tw/assets/images/20180807111557-796b6ad8d1930883f922cb9f5e1a52c0-desktop.jpg 2000w" alt="賀軍翔（左）發言時，隋棠（中）的下顎也是非常積極搶功，張睿家（右）則是一臉分心。" />\r\n<div class="img-caption" style="box-sizing: inherit; width: 486.5px; margin-right: auto; margin-left: auto; padding: 8px; color: rgba(0, 0, 0, 0.498); font-size: 1rem; text-align: center; line-height: 1.4rem;">賀軍翔（左）發言時，隋棠（中）的下顎也是非常積極搶功，張睿家（右）則是一臉分心。</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id="6gb6p-pagination" class="swiper-pagination" style="box-sizing: inherit; position: relative; text-align: center; transition: all 0.3s ease 0s; transform: translateZ(0px); z-index: 10; top: 20px;">&nbsp;</div>\r\n<div class="swiper-button swiper-button-prev enabled" style="box-sizing: inherit; position: absolute; top: 256.5px; width: 27px; height: 44px; margin-top: -22px; z-index: 10; cursor: pointer; background-size: 27px 44px; background-position: 50% center; background-image: url(''../../../public/icon/arrow1-2017.png''); left: 10px; right: auto;">&nbsp;</div>\r\n<div class="swiper-button swiper-button-next enabled" style="box-sizing: inherit; position: absolute; top: 256.5px; width: 27px; height: 44px; margin-top: -22px; z-index: 10; cursor: pointer; background-size: 27px 44px; background-position: 50% center; background-image: url(''../../../public/icon/arrow2-2017.png''); right: 10px; left: auto;">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div style="box-sizing: inherit;">\r\n<div style="box-sizing: inherit;">\r\n<h2 style="box-sizing: inherit; font-size: 32px; color: #000000; margin-top: 40px;"><span style="box-sizing: inherit; font-weight: bolder;">趁阿嬌婚頭　隋棠下顎突刺～刺！</span></h2>\r\n</div>\r\n</div>\r\n<div style="box-sizing: inherit;">\r\n<div style="box-sizing: inherit;">\r\n<p style="box-sizing: inherit; color: #171717; font-size: 18px; line-height: 36px; margin-top: 1.5em; margin-bottom: 1.5em; text-align: justify;">《動物系戀人啊》辦媒體影迷見面會，之前都是阿嬌要結婚的話題，好在她這天沒來，隋棠真的有在好好表現，尤其她一上場就山根+下顎衝線，一副想要搶先上台的態勢；上了台大笑，隋棠也是用下顎看人，看來也頗有馬力夯的味道～</p>\r\n</div>\r\n</div>\r\n</article>\r\n</body>\r\n</html>', '2018-08-13 11:18:13', '2018-08-21 19:41:29', '余樂珠 '),
(5, '2018-08-13', '單親孫沁岳渴望成家', '中國時報【報導林淑娟】\r\n\r\n中視八點檔17日起推出由苗可麗、謝祖武、孫沁岳、陽詠存、李維維和紀言愷（JR）等主演的溫馨好戲《真情之家》，故事圍繞在一群沒有血緣關係的人，因際遇安排而成為一家人。戲外的孫沁岳，爸爸是資深小生劉尚謙，父母在他3歲時離婚，他從小由媽媽帶大，他從不避諱自己是在單親家庭中成長，但這背景不但沒讓他恐婚，反而更渴望成家。\r\n\r\n巨蟹座的孫沁岳感性透露，自己是非常戀家、很能宅在家的人，「家是一個能夠包容我一切的地方，是我最後一個避風港，不管犯了錯，闖了禍，難過、失落，家永遠都會成為我最堅強的後盾。」渴望成家的他，希望未來在家裡扮演不同角色，或許是爸爸，或許是丈夫，「這些對我而言都會是人生另一階段的體驗」。\r\n\r\n赴北京精進專業\r\n\r\n孫沁岳曾和洪小鈴、蔡黃汝等女星合作，卻不曾傳出緋聞，他說其實沒有設定不和圈內人交往，只要感覺對了都有可能，現在的他認為談戀愛，就要以結婚為前提交往，但內心卻覺得能力還不夠支撐一個家庭，所以期許自己再努力，等準備好了再談感情。\r\n\r\n即使已累積不錯的演藝成績，孫沁岳對自我要求甚高，今年初還暫緩演藝工作，到北京中央戲劇學院精進專業，期待接下來的演藝路更廣，有機會嘗試不同類型的戲劇、電影、舞台劇，挑戰更多元角色。', '2018-08-13 09:14:11', '2018-08-13 11:14:52', '');

-- --------------------------------------------------------

--
-- 資料表結構 `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `order_details_id` int(11) NOT NULL,
  `customer_orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

-- --------------------------------------------------------

--
-- 資料表結構 `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'tinymce',
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='頁面管理';

--
-- 資料表的匯出資料 `page`
--

INSERT INTO `page` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'CAKE HOUSE 簡介', 'CAKE HOUSE 簡介內容', '2018-08-01', '2018-08-06'),
(2, 'CAKE HOUSE 優惠活動', 'CAKE HOUSE 優惠活動內容', '2018-08-06', NULL),
(3, 'CAKE HOUSE 購物須知', '購物須知 內容', NULL, NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `products_id` int(11) NOT NULL,
  `product_categories_id` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `products`
--

INSERT INTO `products` (`products_id`, `product_categories_id`, `picture`, `name`, `description`, `price`, `created_at`, `updated_at`, `type`) VALUES
(1, 1, 'close-up-of-loaves-of-bread.jpg', '歐式麵包', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style="color: #f0a8a8; background-color: #f7eded;"><strong>歐式麵包</strong></span></h3>\r\n</body>\r\n</html>', '80', '2018-08-06', '2018-08-29 14:58:03', 0),
(2, 1, 'bread-brown-cooking-food.jpg', '蘋果麵包', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style="color: #07a8ad; background-color: #d0f2f2;"><strong>蘋果麵包</strong></span></h3>\r\n</body>\r\n</html>', '30', NULL, '2018-08-29 15:00:44', 0),
(3, 1, 'wood-food-bread.jpg', '奶油麵包', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style="background-color: #f5ebf5; color: #cc99ff;"><strong>奶油麵包</strong></span></h3>\r\n</body>\r\n</html>', '30', '2018-08-06', '2018-08-29 14:59:16', 0),
(4, 1, '8562011138_27c590f525_c.jpg', '咖啡奶酥麵包', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style="background-color: #d2f0f7; color: #004ea1;"><strong>咖啡奶酥麵包</strong></span></h3>\r\n</body>\r\n</html>', '40', '2018-08-06', '2018-08-29 15:02:22', 0),
(5, 2, 'butter-and-fruit-cake-on-glass-plate.jpg', '檸檬戚風蛋糕', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style="color: #0000ff; background-color: #ccffff;"><strong>6吋</strong></span></h3>\r\n</body>\r\n</html>', '300', '2018-08-10', '2018-08-29 15:18:47', 1),
(6, 2, 'chocolate-chip_cupcake.jpg', '香草巧克力 杯子蛋糕', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><code><span style="color: #333399; background-color: #ccffff;"><strong>3個入</strong></span></code></h3>\r\n</body>\r\n</html>', '50', '2018-08-11', '2018-08-29 17:49:44', 0),
(7, 2, 'kasutera.jpg', '長崎 抹茶 蛋糕', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style="color: #ff6600; background-color: #ffff99;"><strong>1條</strong></span></h3>\r\n</body>\r\n</html>', '350', '2018-08-11', '2018-08-29 15:41:14', 0),
(8, 2, '36898524176_3506cc6cfd_c.jpg', '北海道奶油小蛋糕', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style="background-color: #d2f7d2; color: #008000;"><strong>6入</strong></span></h3>\r\n</body>\r\n</html>', '199', '2018-08-03', '2018-08-29 15:17:30', 0),
(9, 3, 'christmas-1818598_1280.jpg', '俄式雪球餅', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style="background-color: #ccffcc; color: #339966;"><strong>1包 / 6入</strong></span></h3>\r\n</body>\r\n</html>', '85', '2018-08-01', '2018-08-29 15:14:13', 0),
(10, 3, 'breakfast-843230_640.jpg', '巧克力杏仁餅', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style="color: #99cc00; background-color: #f7f7d5;"><strong>1袋</strong></span></h3>\r\n</body>\r\n</html>', '120', '2018-08-01', '2018-08-29 15:15:21', 0),
(11, 4, '8064featured.jpg', '馬卡龍 Macaron', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h2><em><strong><span style="color: #ff6600;">馬卡龍&nbsp;&nbsp;Macaron</span></strong></em></h2>\r\n<h5><strong><span style="color: #ff6600;">大&nbsp; @ 85 / pc<br />小 @ 40 / pc<br /></span></strong><strong><span style="color: #ff6600;">___________<br /></span></strong><strong><span style="color: #ff6600;">一包&nbsp; 6入</span></strong></h5>\r\n</body>\r\n</html>', '120', NULL, '2018-08-21 11:19:48', 0),
(12, 4, '4427976168_0c45a2169b_b.jpg', '可麗露 Canelé', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><code><span style="background-color: #ffff99; color: #ff6600;"><strong>可麗露 Canel&eacute;</strong></span></code></h3>\r\n</body>\r\n</html>', '120', NULL, '2018-08-29 17:34:10', 0),
(13, 4, '和風抹茶蒙布朗.jpg', '和風抹茶蒙布朗 GREEN TEA "MATCHA" MONT-BLANC', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><code><strong><span style="color: #00ccff; background-color: #ccffcc;">和風抹茶蒙布朗 <br /><em>GREEN TEA "MATCHA" MONT-BLANC</em></span></strong></code></h3>\r\n<h4><code><strong><span style="color: #00ccff; background-color: #ccffcc;"><em>NT$ 130 / PC</em></span></strong></code></h4>\r\n</body>\r\n</html>', '130', NULL, '2018-08-23 18:15:18', 0),
(14, 4, 'le-saint-honor-a-la-framboise.jpg', '聖奧諾黑塔 Saint-Honoré', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style="background-color: #ccffff; color: #5252cc;"><strong>1入</strong></span></h3>\r\n</body>\r\n</html>', '200', NULL, '2018-08-29 17:42:32', 0),
(15, 4, 'madeleines.jpg', '瑪德蓮  MADELEINE', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h4><span style="background-color: #ccffff; color: #ff00ff;"><code><strong>瑪德蓮&nbsp; MADELEINE <br /></strong></code></span><span style="background-color: #ccffff; color: #ff00ff;"><code><strong>6 pcs 入</strong></code></span></h4>\r\n</body>\r\n</html>', '85', '2018-08-15 10:20:18', '2018-08-19 10:16:25', 0),
(17, 5, 'watermelonsorbet-770x513.jpg', '西瓜雪貝 WATERMELON SHERBET', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h4 style="margin-top: 0px; margin-bottom: 0.5rem; font-family: -apple-system, BlinkMacSystemFont, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; line-height: 1.2; color: #212529; font-size: 1.5rem; background-color: #ffffff;"><span style="color: #ff00ff;"><code style="font-family: SFMono-Regular, Menlo, Monaco, Consolas, ''Liberation Mono'', ''Courier New'', monospace; font-size: 21px; color: #e83e8c; word-break: break-word;"><span style="font-weight: bolder;">西瓜雪貝 WATERMELON SHERBET</span></code></span><br /><span style="color: #ff00ff;"><code style="font-family: SFMono-Regular, Menlo, Monaco, Consolas, ''Liberation Mono'', ''Courier New'', monospace; font-size: 21px; color: #e83e8c; word-break: break-word;"><span style="font-weight: bolder;">1桶 500 ML</span></code></span></h4>\r\n</body>\r\n</html>', '580', '2018-08-18 14:06:57', '2018-08-18 16:16:50', 1),
(18, 5, 'Lemon_Sherbet.jpg', '檸檬雪貝  LEMON SHERBET', '<<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<pre style="margin-top: 0px; margin-bottom: 0.5rem; font-family: -apple-system, system-ui, ''Segoe UI'', Roboto, ''Helvetica Neue'', Arial, sans-serif, ''Apple Color Emoji'', ''Segoe UI Emoji'', ''Segoe UI Symbol'', ''Noto Color Emoji''; line-height: 1.2; color: #212529; font-size: 1.75rem; background-color: #ffffff;"><span style="color: #008000;"><code style="font-family: SFMono-Regular, Menlo, Monaco, Consolas, ''Liberation Mono'', ''Courier New'', monospace; font-size: 24.5px; word-break: break-word;"><span style="font-weight: bolder;">檸檬雪貝&nbsp; LEMON SHERBET&nbsp;<br /></span></code><code style="font-family: SFMono-Regular, Menlo, Monaco, Consolas, ''Liberation Mono'', ''Courier New'', monospace; font-size: 24.5px; word-break: break-word;"><span style="font-weight: bolder;">一桶&nbsp; 500 ML</span></code></span></pre>\r\n</body>\r\n</html>', '580', '2018-08-18 14:09:04', '2018-08-29 17:26:16', 2),
(19, 2, 'chocolate-cake-with-orange-slices.jpg', '巧克力 柳橙蛋糕', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style="color: #339966;"><strong>巧克力 柳橙蛋糕 8 寸</strong></span></h3>\r\n</body>\r\n</html>', '480', '2018-08-29 15:57:05', '2018-08-29 15:58:41', 2),
(20, 7, 'sun_cake.jpg', '太陽餅', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><code><span style="color: #ff6600; background-color: #ffff99;"><strong>一盒 12 入</strong></span></code></h3>\r\n</body>\r\n</html>', '150', '2018-08-29 17:57:25', NULL, 2),
(21, 7, 'laopo_cake.jpg', '老婆餅', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><code><span style="color: #008000; background-color: #ccffcc;"><strong>一盒 12 入</strong></span></code></h3>\r\n</body>\r\n</html>', '180', '2018-08-29 18:03:12', '2018-08-29 18:08:25', 2),
(22, 7, '芋泥鍋餅.jpg', '芋泥鍋餅', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h3><span style="background-color: #ccffcc; color: #008000;"><strong>一袋 8片</strong><strong> 入</strong></span></h3>\r\n</body>\r\n</html>', '150', '2018-08-30 09:01:50', '2018-08-30 09:05:09', 2),
(23, 7, '芋頭酥.jpg', '彩虹螺旋芋頭酥', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h4><code><span style="background-color: #f7e1cb; color: #d14c04;"><strong>芋頭酥&nbsp;&nbsp;<br /></strong><strong>一盒 6 入</strong></span></code></h4>\r\n</body>\r\n</html>', '180', '2018-08-30 09:19:54', '2018-08-30 09:25:12', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `product_categories`
--

CREATE TABLE IF NOT EXISTS `product_categories` (
  `product_categories_id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL,
  `series_id` int(11) NOT NULL
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

CREATE TABLE IF NOT EXISTS `series` (
  `series_id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='產品系列管理';

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `users_id` int(11) NOT NULL,
  `account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `users`
--

INSERT INTO `users` (`users_id`, `account`, `password`, `level`, `created_at`, `updated_at`) VALUES
(1, 'rainiemist', 'aimoney0808', 1, '2018-08-16 16:30', NULL);

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
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`members_id`);

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- 資料表索引 `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `customer_orders_id` (`customer_orders_id`);

--
-- 資料表索引 `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

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
-- 資料表索引 `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`series_id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `customer_orders_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- 使用資料表 AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `members_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- 使用資料表 AUTO_INCREMENT `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- 使用資料表 AUTO_INCREMENT `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- 使用資料表 AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- 使用資料表 AUTO_INCREMENT `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `product_categories_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- 使用資料表 AUTO_INCREMENT `series`
--
ALTER TABLE `series`
  MODIFY `series_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
