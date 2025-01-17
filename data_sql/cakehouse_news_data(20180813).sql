-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- 主機: 127.0.0.1
-- 產生時間： 2018-08-13 10:52:03
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
(2, '2018-08-10', '上課心得', '課程過半了喔 !', '2018-08-10 11:33:01', '2018-08-13 13:25:01'),
(3, '2018-08-12', '老戲骨梅芳 開槍爆頭不手軟', '82歲資深演員梅芳投身演藝事業超過半世紀，拍過的作品無數，「國民奶奶」形象深植人心，最近她拍攝公視新創電影「水槍」，劇照一曝光，手拿水槍爆頭畫面，令人大吃一驚。\r\n\r\n公視新創電影挑戰以黑色幽默包裝類型喜劇短片「水槍」，由新銳導演樓耀中執導，國寶級演員梅芳、高振鵬主演，「老戲骨」出手不同凡響，梅芳演起「開槍」戲不手軟，動作戲全都來真的，摔倒、跳舞、崩潰摔東西等等不適合長者做的大動作戲劇表演，全都親自上陣，而且改造過的道具槍為了配合劇情裝了機關，頗有點重量，沒想到，梅芳阿姨玩沒兩次就上手，而且「開槍」完全不手軟，導演大讚：「梅芳阿姨真的超猛的！」\r\n\r\n「水槍」描寫老婦在相依為命的老伴過世後，以水槍模擬丈夫尿聲，緩解失眠症狀，編導樓耀中將過去母親照顧膀胱癌外公的生命經驗寫入劇本，並把女兒的角色替換成老婆，加入戲劇奇幻元素，將夫妻的愛情與親情，以及老婆對死去老公的思念，做更深刻的描寫。\r\n\r\n高齡90歲的高振鵬在戲裡演出梅芳的老伴，一場半夜尿不出來，最後尿出血尿，表情痛苦猙獰畫面，極具戲劇張力，導演看了很不忍心，高振鵬則謙虛地說：「生活體驗、常識，再加上自我揣摩，導演合意就好！」他也感謝老天爺還賞飯吃，表示梅芳才是全劇靈魂，自己只是盡責做到綠葉陪襯，印象最深的是與梅芳共舞，他笑說：「有再談一次戀愛的感覺 ！」', '2018-08-12 15:41:12', '2018-08-13 11:28:22'),
(4, '2018-08-12', '【搶鏡頭】腐味十足 朱智勛被貼心保全從後面來', '電影《與神同行：最終審判》即將於8月8日在台灣上映，日前在北市府廣場舉行紅毯記者會，朱智勛以亮粉色西裝率先抵達現場，188公分有著名模身材的他，立刻讓粉絲尖叫：「超帥！」朱智勛看到手機便自動接過與粉絲玩自拍，還會配合身高蹲低合照，真的超親民。', '2018-08-13 11:18:13', '2018-08-13 13:28:13'),
(5, '2018-08-13', '單親孫沁岳渴望成家', '中國時報【報導林淑娟】\r\n\r\n中視八點檔17日起推出由苗可麗、謝祖武、孫沁岳、陽詠存、李維維和紀言愷（JR）等主演的溫馨好戲《真情之家》，故事圍繞在一群沒有血緣關係的人，因際遇安排而成為一家人。戲外的孫沁岳，爸爸是資深小生劉尚謙，父母在他3歲時離婚，他從小由媽媽帶大，他從不避諱自己是在單親家庭中成長，但這背景不但沒讓他恐婚，反而更渴望成家。\r\n\r\n巨蟹座的孫沁岳感性透露，自己是非常戀家、很能宅在家的人，「家是一個能夠包容我一切的地方，是我最後一個避風港，不管犯了錯，闖了禍，難過、失落，家永遠都會成為我最堅強的後盾。」渴望成家的他，希望未來在家裡扮演不同角色，或許是爸爸，或許是丈夫，「這些對我而言都會是人生另一階段的體驗」。\r\n\r\n赴北京精進專業\r\n\r\n孫沁岳曾和洪小鈴、蔡黃汝等女星合作，卻不曾傳出緋聞，他說其實沒有設定不和圈內人交往，只要感覺對了都有可能，現在的他認為談戀愛，就要以結婚為前提交往，但內心卻覺得能力還不夠支撐一個家庭，所以期許自己再努力，等準備好了再談感情。\r\n\r\n即使已累積不錯的演藝成績，孫沁岳對自我要求甚高，今年初還暫緩演藝工作，到北京中央戲劇學院精進專業，期待接下來的演藝路更廣，有機會嘗試不同類型的戲劇、電影、舞台劇，挑戰更多元角色。', '2018-08-13 09:14:11', '2018-08-13 11:14:52');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
