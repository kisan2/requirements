-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2020 at 08:27 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` text NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_contact` varchar(20) NOT NULL,
  `admin_type` int(11) NOT NULL,
  `admin_profile_photo` varchar(255) DEFAULT NULL,
  `admin_password` varchar(100) DEFAULT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `last_login` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `click` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_contact`, `admin_type`, `admin_profile_photo`, `admin_password`, `salt`, `last_login`, `status`, `click`) VALUES
(1, 'Sanjok', 'sanzokgyawali123@gmail.com', '9812927525', 1, NULL, 'be605a9f27928547ffeb4e9b261839b52f5ca512', '5e379343d4f6b', '2020-01-21', 1, 4),
(54, 'Hotel Yak & Yeti', 'yakyeti@gmail.com', '98007777', 2, '5e3793d7d0bae.jpg', '3794ec8219135e315e1f97ecbb699afbd53b3e43', '5e3793d7d0b8d', '2020-02-03', 1, 35),
(55, 'Hotel Radisson', 'radisson@gmail.com', '980077734', 2, '5e3794021a4ec.jpg', 'c02d80326004fc0a63215919de8ffe79d0e6939e', '5e3794021a4d3', '2020-02-03', 1, 1),
(56, 'Hotel Shanker', 'shanker@gmail.com', '980077737', 2, '5e37943a388ba.jpg', '944b1f977940cce677e3181605cc1219d3804363', '5e37943a388a4', '2020-02-03', 1, 0),
(57, 'Hotel Green park', 'greenpark@gmail.com', '980077756', 2, '5e3794b42e01c.jpg', '3c1dadd2bb44c115222adab089f68888e8b74586', '5e3794b42e004', '2020-02-03', 1, 0),
(58, 'Kesara Resort', 'kesararesort@gmail.com', '980077745', 2, '5e3794d49a9f6.jpg', '29b74ff3ea10ed0ccc8594c97361547a127efa2f', '5e3794d49a9d9', '2020-02-03', 1, 0),
(59, 'Galaxy Guest House', 'galaxyguesthouse@gmail.com', '980077756', 2, '5e37951328ef1.jpg', 'e2a1805d7506433571570648e777e068fe4b4c57', '5e37951328eda', '2020-02-03', 1, 0),
(60, 'Hotel Bodhi Redsun', 'bodhiredsun@gmail.com', '9800777598', 2, '5e37953c84f9e.jpeg', '3da91a670a72cda86b7e25090c2eef5f45bb6ccf', '5e37953c84f88', '2020-02-03', 1, 0),
(61, 'Hotel Tulip', 'tulip@gmail.com', '985705674', 2, '5e37956e1430a.jpg', '776cab393e41d037c32b0d5e1292624d1941f52f', '5e37956e142f3', '2020-02-03', 1, 0),
(62, 'Club Denovo Hotel', 'clubdenovo@gmail.com', '98670578', 2, '5e37958ddd4d1.jpg', '03557aedc41a6e132eca49ad6d5d7397e290bfb7', '5e37958ddd4ba', '2020-02-03', 1, 0),
(63, 'Hotel Grand Shambhala', 'grand@gmail.com', '98706858', 2, '5e3795bd3c459.jpg', '530867738288377814f1621c73f10e39b0b185aa', '5e3795bd3c443', '2020-02-03', 1, 0),
(64, 'Hotel Mustang Monalisa', 'monalisa@gmail.con', '98786959', 2, '5e3795ddf0f0f.jpg', '07674642bc106a3dfdb3ddf161d2dcf6c68b9229', '5e3795ddf0efa', '2020-02-03', 1, 0),
(65, 'Atithi Resort & Spa', 'atithi@gmail.com', '98768949', 2, '5e3796280f957.jpg', '03f0a6efce1ce9976944cdf62dba370c6fe2e1f6', '5e3796280f93b', '2020-02-03', 1, 0),
(66, 'Hotel Zostel', 'zostel@gmail.com', '98475234', 2, '5e379644113b7.jpg', '24791a0abdc777e20313ea8746ce9c00c7bead94', '5e3796441139c', '2020-02-03', 1, 0),
(67, 'Hotel Pokhara Grande', 'grande@gmail.com', '9848545', 2, '5e3796656f56b.jpg', '05298d224d2af32839dc0bcf57ba121f0acafd3b', '5e3796656f554', '2020-02-03', 1, 0),
(71, 'Jon Snow', 'Jondai@gmail.com', '9800777206', 3, '5e37994f80288.jpeg', '1160fe218431a38a071d77f932ac43a719a05744', '5e37994f80273', '2020-02-03', 1, 1),
(72, 'Daenerys Targaryan', 'madktmoh@gmail.com', '980077767', 3, '5e37998198475.jpg', '89e84489e2660fe28eef4098bf5e4cb0693fc1e7', '5e3799819845d', '2020-02-03', 1, 0),
(73, 'Tyrion Laninster', 'tyrionsmallboy@gmail.com', '984545252', 3, '5e3799a35c034.jpg', '52dbe2746c6aedcb5f74b173daf6cc208a2ede8a', '5e3799a35c01e', '2020-02-03', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_available`
--

CREATE TABLE `tbl_available` (
  `id` int(11) NOT NULL,
  `admin_email` varchar(100) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_available`
--

INSERT INTO `tbl_available` (`id`, `admin_email`, `route_id`) VALUES
(4, 'hoteltulip@gmail.com', 6),
(7, 'asian@gmail.com', 10),
(8, 'yakyeti@gmail.com', 18),
(9, 'radisson@gmail.com', 18),
(10, 'tyrionsmallboy@gmail.com', 18),
(11, 'Jondai@gmail.com', 18);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `route_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `comment`, `email`, `name`, `route_id`) VALUES
(2, 'hency', 'hancy@hancy.com', 'Hancy kto moh', 5),
(3, 'lnshjdjasdhsajdnsadbjsajnd', 'bibek@dkjhashdjksa', 'Bibek', 5),
(4, 'jhsahhjashjkdhsajkdhjkashjkdsa', 'hello@jdshjdajshk', 'hello', 5),
(5, 'JHHBSADHASHDHAJSHDA', 'HGJSHASB@DBHJASHDB', 'sanbsbHBA', 5),
(6, 'JHHBSADHASHDHAJSHDA', 'HGJSHASB@DBHJASHDB', 'sanbsbHBA', 5),
(7, 'hkjdasjbdbjkashjkd', 'hjkfsjhkahjs@hgjdahsdhashd.huhudhaus', 'vshdshb', 5),
(8, 'hjdhjdahjhjajhads', 'gjdshgdsa@jhsjhdshjas.com', 'dhsmgdhgjhgs', 5),
(9, 'kjhdahjahkjdhkjsadhkjashkdja', 'hello@jdsjdajjajkashkj', 'hello', 5),
(10, 'kjhdahjahkjdhkjsadhkjashkdja', 'hello@jdsjdajjajkashkj', 'hello', 5),
(11, 'hello world', 'krishnagopal0112@gmail.com', 'bibek', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donate`
--

CREATE TABLE `tbl_donate` (
  `id` int(11) NOT NULL,
  `donate_name` varchar(255) NOT NULL,
  `ref_code` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_donate`
--

INSERT INTO `tbl_donate` (`id`, `donate_name`, `ref_code`, `email`, `contact`, `event_id`) VALUES
(1, 'INGO', '123VBP', 'sanzokgyawali123@gmail.com', '9812927525', 1),
(2, 'Sanjok', '2245', 'sanzokgyawali123@gmail.com', '9812927525', 4),
(3, 'Sanjok', '225', 'sanzokgyawali123@gmail.com', '9812927525', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE `tbl_event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(200) NOT NULL,
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `event_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_event`
--

INSERT INTO `tbl_event` (`event_id`, `event_title`, `start_date_time`, `end_date_time`, `event_description`) VALUES
(6, 'EDUCATION FOR ALL.', '2020-02-23 05:00:00', '2020-02-23 19:00:00', '<p>EDUCATION for all is a programme, organized by Youth from butwal to educate and aware the children&nbsp;who are from remote areas.</p>\r\n'),
(7, 'Inauguration of Tilottama Peace Park.', '2020-02-28 10:00:00', '2020-02-28 16:00:00', '<p>Tillotama Peace Park is recently built&nbsp;in this Tilottama Municipality which Inauguration Programme is going to be held on&nbsp;this coming&nbsp; FEB28th.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `route_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `id` int(11) NOT NULL,
  `rec` varchar(100) NOT NULL,
  `sen` varchar(100) NOT NULL,
  `message` text DEFAULT NULL,
  `message_datetime` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_message`
--

INSERT INTO `tbl_message` (`id`, `rec`, `sen`, `message`, `message_datetime`, `status`) VALUES
(1, 'hello@hello.com', 'hoteltulip@gmail.com', 'I would like to know you can you provide me the details', '2020-02-02 03:00:00', 0),
(2, 'hoteltulip@gmail.com', 'hdsahdhshdsa@hdsjhdjhas', 'Hello Nepal', '2020-02-02 04:00:00', 0),
(3, 'hoteltulip@gmail.com', 'hoteltulip@gmail.com', '<p>dhsahdjsajhhjkashjkahksjsahjkd</p>\r\n', '0000-00-00 00:00:00', 0),
(4, 'hoteltulip@gmail.com', 'hoteltulip@gmail.com', '<p>djsdhashjdsajkdsa</p>\r\n', '2020-02-02 17:11:41', 0),
(5, 'hoteltulip@gmail.com', 'hoteltulip@gmail.com', '<p>djsdhashjdsajkdsa</p>\r\n', '2020-02-02 17:13:24', 0),
(12, 'asian@gmail.com', 'ndasn@ndansjdnj', 'nkdanjkdnkasnjda', '2020-02-03 04:24:39', 0),
(13, 'asian@gmail.com', 'ndasn@ndansjdnj', 'nkdanjkdnkasnjda', '2020-02-03 04:26:01', 0),
(14, 'asian@gmail.com', 'ndasn@ndansjdnj', 'nkdanjkdnkasnjda', '2020-02-03 04:26:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place`
--

CREATE TABLE `tbl_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `venue_photo` varchar(100) DEFAULT NULL,
  `click` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_place`
--

INSERT INTO `tbl_place` (`place_id`, `place_name`, `address`, `remarks`, `venue_photo`, `click`) VALUES
(3, 'Lumbini', 'Lumbini Rupandehi', 'It is the birthplace of lord buddha.', '5e36a000979cd.jpg', NULL),
(6, 'Mustang', 'Mustang, Nepal', 'Mustang District (Nepali: मुस्ताङ जिल्लाAbout this soundListen (help·info)) is one of the seventy-se', '5e37a49348324.jpg', NULL),
(8, 'Pokhara', 'Pokhara, Nepal', 'Pokhara is a city on Phewa Lake, in central Nepal. It’s known as a gateway to the Annapurna Circuit,', '5e37a5410ecd4.jpg', NULL),
(9, 'Illam', 'Illam, Nepal', 'Ilam is one of four urban municipalities of Ilam District, which lies in the Mahabharata hilly range', '5e37a5aee3cc6.jpg', NULL),
(10, 'Butwal', 'Butwal, Nepal', 'Butwal officially Butwal Sub-Metropolitan is one of the twin cities of rapidly growing Butwal-Bhaira', '5e37a6d8f1428.jpg', NULL),
(12, 'Kathmandu', 'Kathmandu, Nepal', 'Kathmandu is the capital city of Nepal. ', '5e37b9fd61710.jpg', NULL),
(13, 'Chitwan National Park', 'Chitwan, Nepal', 'Chitwan National Park is a preserved area in the Terai Lowlands of south-central Nepal, known for it', '5e37ba514a018.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_researcher`
--

CREATE TABLE `tbl_researcher` (
  `id` int(11) NOT NULL,
  `traveller_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_researcher`
--

INSERT INTO `tbl_researcher` (`id`, `traveller_name`) VALUES
(1, 'Sanjok Gyawali'),
(2, 'Sanjok Gyawali'),
(3, 'Sanjok Gyawali'),
(4, 'Sanjok Gyawali'),
(5, ''),
(6, 'Sanjok Gyawali'),
(7, 'Bhalwari City'),
(8, 'Bhalwari City'),
(9, 'Bhalwari City'),
(10, 'Bhalwari City'),
(11, 'Bhalwari City'),
(12, 'Sudan'),
(13, 'Sudan'),
(14, ''),
(15, 'Asmita'),
(16, 'Dhiren'),
(17, 'Dhiren'),
(18, 'Dhiren'),
(19, 'Krishna Gopal Chaudhary'),
(20, 'Krishna Gopal Chaudhary'),
(21, 'Krishna Gopal Chaudhary'),
(22, 'Krishna Gopal Chaudhary'),
(23, 'Krishna Gopal Chaudhary'),
(24, 'Krishna Gopal Chaudhary'),
(25, 'Bibek'),
(26, 'Sanjok Gyawali'),
(27, 'Dhiren'),
(28, 'Dhiren'),
(29, 'Dhiren'),
(30, 'Bhalwari City'),
(31, 'Krishna Gopal Chaudhary'),
(32, 'Asmita'),
(33, 'dnjsadanjsnbadnsj'),
(34, 'hello'),
(35, 'hello'),
(36, 'hello'),
(37, 'hello'),
(38, 'hello'),
(39, 'hello'),
(40, 'Bibek Adhikari'),
(41, 'smith'),
(42, 'Dhiren'),
(43, 'Dhiren'),
(44, 'Dhiren'),
(45, 'Dhiren'),
(46, 'Dhiren'),
(47, 'Dhiren'),
(48, 'Dhiren'),
(49, 'Dhiren'),
(50, 'Dhiren'),
(51, 'Dhiren'),
(52, 'Dhiren'),
(53, 'Bibek Adhikari'),
(54, 'Bibek Adhikari'),
(55, 'Bibek Adhikari'),
(56, 'yak'),
(57, 'bibek adhikari'),
(58, 'gfffgfhgfhg'),
(59, 'Sanju'),
(60, 'Bhalwari City'),
(61, 'Bhalwari City'),
(62, 'Bhalwari City'),
(63, 'Bhalwari City'),
(64, 'Krishna Gopal Chaudhary');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_route`
--

CREATE TABLE `tbl_route` (
  `id` int(11) NOT NULL,
  `dest_name` varchar(100) NOT NULL,
  `start_name` varchar(100) NOT NULL,
  `route_desc` text NOT NULL,
  `adv_routes` text NOT NULL,
  `des_routes` text NOT NULL,
  `other_places` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_route`
--

INSERT INTO `tbl_route` (`id`, `dest_name`, `start_name`, `route_desc`, `adv_routes`, `des_routes`, `other_places`) VALUES
(11, 'Mustang', 'Butwal', '<p>Butwal - Mugling</p>\r\n\r\n<p>Mugling - Pokhara</p>\r\n\r\n<p>Pokhara - Beni</p>\r\n\r\n<p>Beni - Mustang</p>\r\n', '', '', ''),
(13, 'Lumbini', 'Butwal', '<p>Lumbini - Bhairahawa</p>\r\n\r\n<p>Bhairahawa - Butwal</p>\r\n', '', '', ''),
(17, 'Illam', 'Mustang', '<table border=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>Mustang - Beni</p>\r\n\r\n			<p>Beni - Pokhara</p>\r\n\r\n			<p>Pokhara - Mugling</p>\r\n\r\n			<p>Mugling - Kathmandu</p>\r\n\r\n			<p>Kathmandu - Illam</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '', ''),
(18, 'Kathmandu', 'Butwal', '<p>Butwal - Narayangardh</p>\r\n\r\n<p>Narayangardh&nbsp;- Mugling</p>\r\n\r\n<p>Mugling - Kathmandu</p>\r\n', '<p>This Route is faster than the Route that goes through Palpa - Pokhara to Kathmandu.</p>\r\n\r\n<p>Safe Road.</p>\r\n', '<p>Traffic rate is High.</p>\r\n', '<p>Chitwan</p>\r\n\r\n<p>Lumbini</p>\r\n\r\n<p>Jalbire (Lamo Jharana)</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_start`
--

CREATE TABLE `tbl_start` (
  `id` int(11) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_start`
--

INSERT INTO `tbl_start` (`id`, `place_name`, `address`, `remarks`) VALUES
(7, 'Butwal', 'Butwal, Nepal', 'Butwal is lies in TERAI.'),
(8, 'Lumbini', 'Lumbini Rupandehi', 'Lumbini is the birth place of Gautam Buddha.'),
(9, 'Chitwan National Park', 'Chitwan, Nepal', 'Chitwan National Park is a preserved area in the Terai Lowlands of south-central Nepal, known for it'),
(10, 'Mustang', 'Mustang, Nepal', 'Mustang District (Nepali: मुस्ताङ जिल्लाAbout this soundListen (help·info)) is one of the seventy-se'),
(11, 'Kathmandu', 'Kathmandu, Nepal', 'Kathmandu is the capital city of Nepal. '),
(12, 'Pokhara', 'Pokhara, Nepal', 'Pokhara is a city on Phewa Lake, in central Nepal. It’s known as a gateway to the Annapurna Circuit,'),
(13, 'Mustang', 'Mustang, Nepal', 'Mustang District (Nepali: मुस्ताङ जिल्लाAbout this soundListen (help·info)) is one of the seventy-se'),
(14, 'Butwal', 'Kathmandu, Nepal', 'Kathmandu is the capital city of Nepal. ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_email` (`admin_email`);

--
-- Indexes for table `tbl_available`
--
ALTER TABLE `tbl_available`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_donate`
--
ALTER TABLE `tbl_donate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_place`
--
ALTER TABLE `tbl_place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `tbl_researcher`
--
ALTER TABLE `tbl_researcher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_route`
--
ALTER TABLE `tbl_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_start`
--
ALTER TABLE `tbl_start`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tbl_available`
--
ALTER TABLE `tbl_available`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_donate`
--
ALTER TABLE `tbl_donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_researcher`
--
ALTER TABLE `tbl_researcher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_route`
--
ALTER TABLE `tbl_route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_start`
--
ALTER TABLE `tbl_start`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
