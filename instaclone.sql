-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2020 at 04:43 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instaclone`
--

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `url` varchar(40) COLLATE utf8_bin NOT NULL,
  `caption` varchar(1000) COLLATE utf8_bin NOT NULL,
  `likes` int(8) NOT NULL,
  `username` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`url`, `caption`, `likes`, `username`) VALUES
('feed1_kucing.jpg', 'Hmmmm', 345, 'kucing_ouren'),
('feed4_bagas.jpg', 'Aku yang dulu', 675, 'bagas_dz');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `username` varchar(30) COLLATE utf8_bin NOT NULL,
  `name` varchar(32) COLLATE utf8_bin NOT NULL,
  `website` varchar(40) COLLATE utf8_bin NOT NULL,
  `bio` varchar(200) COLLATE utf8_bin NOT NULL,
  `email` varchar(32) COLLATE utf8_bin NOT NULL,
  `phone` varchar(12) COLLATE utf8_bin NOT NULL,
  `gender` varchar(15) COLLATE utf8_bin NOT NULL,
  `ava` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`username`, `name`, `website`, `bio`, `email`, `phone`, `gender`, `ava`) VALUES
('bagas_dz', 'Bagas Millen Alhafidz', 'https://www.instagram.com/bagas_dz', 'Yes, its me', 'bagasmillena@gmail.com', '0822XXXXXXXX', 'male', 'ava_bagas.JPG'),
('kucing_ouren', 'Miaw Miaw', 'https://www.whiskas.com/', 'I\'m special', 'kucing_oren@gmail.com', '0813XXXXXXXX', 'Male', 'ava_kucing_oren.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `profile_feeds`
--

CREATE TABLE `profile_feeds` (
  `url` varchar(40) COLLATE utf8_bin NOT NULL,
  `likes` int(8) NOT NULL,
  `comment` int(8) NOT NULL,
  `username` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `profile_feeds`
--

INSERT INTO `profile_feeds` (`url`, `likes`, `comment`, `username`) VALUES
('feed1_bagas.jpg', 486, 344, 'bagas_dz'),
('feed2_bagas.jpg', 444, 421, 'bagas_dz'),
('feed3_bagas.jpg', 501, 290, 'bagas_dz'),
('feed4_bagas.jpg', 675, 540, 'bagas_dz');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(30) COLLATE utf8_bin NOT NULL,
  `password` varchar(16) COLLATE utf8_bin NOT NULL,
  `email` varchar(32) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `email`) VALUES
('bagas_dz', 'qwer', 'bagasmillena@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`url`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `profile_feeds`
--
ALTER TABLE `profile_feeds`
  ADD PRIMARY KEY (`url`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
