-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 08:43 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `key` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'action'),
(2, 'horror'),
(3, 'comedy'),
(4, 'drama');

-- --------------------------------------------------------

--
-- Table structure for table `customermovies`
--

CREATE TABLE `customermovies` (
  `c_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `budget` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faviorat`
--

CREATE TABLE `faviorat` (
  `u_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faviorat`
--

INSERT INTO `faviorat` (`u_id`, `m_id`) VALUES
(1, 1),
(1, 4),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 26),
(1, 300);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`) VALUES
('iyadkharrosheh@hotmail.com', 'iyad11'),
('ahlamkharroshe@gmail.com', 'Ahlam00'),
('ibtisamkharrosheh@gmail.com', 'adminibtisam'),
('salamkh@gmail.com', 'salam12'),
('sanakh@gmail.com', 'sanaw'),
('ameer@gmail.com', 'ameer');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `imageurl` varchar(255) NOT NULL,
  `movieurl` varchar(255) NOT NULL,
  `rating` int(2) DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `disc` varchar(255) DEFAULT NULL,
  `year` date NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `time` time NOT NULL,
  `trending` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `name`, `imageurl`, `movieurl`, `rating`, `cat_id`, `disc`, `year`, `type`, `time`, `trending`) VALUES
(1, 'The Creatures Were Stirring ', 'movieposter.jpg', 'videoplayback (14).mp4', 15, 4, 'All The Creatures Were Stirring ', '2023-06-06', 0, '00:15:00', 1),
(2, 'The Red Turtle', 'image.jpg', 'videoplayback (15).mp4', 7, 3, 'The Red Turtle', '2023-05-13', 2, '11:27:00', 1),
(5, 'Thor', 'Thor1.jpg', 'video.mp4', 9, 1, 'hjhhhhhhhhhhhhhhhhhhh', '2018-04-13', 1, '07:34:00', 1),
(6, 'm3', 'Thor1.jpg', 'Thor.mp4', 4, 1, 'hjhhhhhhhhhhhhhdfdsvcbfhhhhhh', '2018-04-13', 2, '01:34:00', 1),
(8, 'The Godfather', 'm7.jpg', 'movie2.mp4', 25, 1, 'action movie\r\nnice film..\r\n2h 55m \r\n', '2023-05-09', 0, '12:38:00', 1),
(10, 'Black Panther: Wakanda Forever', 'm1.jpg', 'videoplayback (1).mp4', 30, 1, '120 min | Super Hero\r\n', '2023-06-07', 0, '23:03:00', 1),
(11, 'Shawshank ', 'm6.jpg', 'videoplayback (2).mp4', 20, 1, 'Redemption\r\n2h 22m| Drama', '2023-05-28', 0, '21:48:00', 1),
(12, 'The Green Mile', 'm10.jpg', 'videoplayback (3).mp4', 30, 1, '3h 9m | Crime\r\n', '2023-05-02', 0, '23:51:00', 1),
(13, 'Breaking Bad', 's1.jpg', 'series.mp4', 50, 1, '2008-2013 |Crime\r\n', '2023-06-09', 1, '23:56:00', 1),
(14, 'House', 's8.jpg', 'videoplayback (16).mp4', 20, 1, '2004-2012 | Drama\r\n', '2023-05-20', 1, '23:00:00', 1),
(15, 'The Crown', 's10.jpg', 'series.mp4', 20, 1, '2016-2023 | Biography\r\n', '2023-05-23', 1, '17:57:00', 1),
(16, 'House of Cards', 's9.jpg', 'movie2.mp4', 30, 1, '2013-2018 | Drama\r\n', '2023-05-04', 1, '01:12:00', 1),
(17, 'Hunter X Hunter', 'a6.jpg', 'videoplayback.mp4', 20, 1, 'Subtitled', '2023-05-15', 2, '01:30:00', 1),
(19, 'One punch man', 'a9.jpg', 'videoplayback (5).mp4', 11, 1, 'Subtitled', '2023-06-05', 2, '09:58:00', 1),
(20, 'My Hero Academia', 'a3.jpg', 'videoplayback (6).mp4', 5, 1, '120 min | Action', '2023-05-20', 2, '09:10:00', 1),
(21, 'Demon Slayer', 'a2.jpg', 'videoplayback (7).mp4', 5, 1, 'Kimetsu no Yaiba Swordsmith Village Arc', '2023-05-21', 2, '04:15:00', 1),
(23, 'Mad God', '815fZYJpZjL._RI_.jpg', 'videoplayback (8).mp4', 6, 2, ' A Shudder Original', '2023-04-30', 2, '10:55:00', 1),
(25, 'Junji Ito Maniac ', 'junji-ito-maniac-poster.png', 'videoplayback (9).mp4', 6, 2, 'Anime HORROR', '2023-06-21', 2, '11:42:00', 1),
(26, 'Scream VI', 's-l1600.jpg', 'videoplayback (10).mp4', 9, 2, 'Scream VI \r\nSeries Horror', '2023-07-08', 1, '10:15:00', 1),
(27, 'Knock at the Cabin', 'p7-1189880-1676025930.png', 'videoplayback (11).mp4', 10, 2, 'Knock at the Cabin \r\n', '2023-04-30', 0, '10:04:00', 1),
(28, 'The Pink Panther', 's-l1600 (1).jpg', 'videoplayback (13).mp4', 11, 3, 'The Pink Panther', '2023-05-10', 0, '11:11:00', 1),
(30, 'Venom', 'm2.jpg', 'videoplayback (3).mp4', 8, 1, '120 min | Action\r\n', '2023-05-02', 0, '01:49:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `singpage_up`
--

CREATE TABLE `singpage_up` (
  `name` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirmpassword` varchar(20) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  `bio` varchar(100) NOT NULL,
  `company` varchar(20) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `singpage_up`
--

INSERT INTO `singpage_up` (`name`, `email`, `password`, `confirmpassword`, `phone`, `lastname`, `bio`, `company`, `designation`, `photo`) VALUES
('ibtisam', 'ibtisamkharrosheh@gmail.com', 'adminibtisam', 'adminibtisam', '+972598624262', 'kharroushe', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore vero enim error similique quia numqu', 'I3hub', 'developer front and pack', 'ibtisamm.png'),
('ameer', 'ameer@gmail.com', 'ameer', 'ameer', '+9565652333', 'kharrosheh', '', '', '', ''),
('iyad', 'iyadkharrosheh@hotmail.com', 'iyad11', 'iyad11', '+972595555', 'kharrosheh', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore vero enim error similique quia numqu', 'excel', 'developer', 'ali.png'),
('salam', 'salamkh@gmail.com', 'salam12', 'salam12', '+0597889', 'kharrosheh', '', '', '', ''),
('sana', 'sanakh@gmail.com', 'sanaw', 'sanaw', '+972556678', 'kharrosheh', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore vero enim error similique quia numqu', '3hub', '?', 'girlnoeye.png');

-- --------------------------------------------------------

--
-- Table structure for table `usres`
--

CREATE TABLE `usres` (
  `id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `emaill` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `Company` varchar(50) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `Bio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customermovies`
--
ALTER TABLE `customermovies`
  ADD PRIMARY KEY (`c_id`,`m_id`),
  ADD KEY `fk_name6` (`m_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD KEY `fk_name1` (`id`);

--
-- Indexes for table `faviorat`
--
ALTER TABLE `faviorat`
  ADD PRIMARY KEY (`u_id`,`m_id`),
  ADD KEY `m_id` (`m_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_1` (`cat_id`);

--
-- Indexes for table `singpage_up`
--
ALTER TABLE `singpage_up`
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `usres`
--
ALTER TABLE `usres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `usres`
--
ALTER TABLE `usres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_name` FOREIGN KEY (`id`) REFERENCES `usres` (`id`);

--
-- Constraints for table `customermovies`
--
ALTER TABLE `customermovies`
  ADD CONSTRAINT `fk_name5` FOREIGN KEY (`c_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `fk_name6` FOREIGN KEY (`m_id`) REFERENCES `movie` (`id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `fk_name1` FOREIGN KEY (`id`) REFERENCES `usres` (`id`);

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `fk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
