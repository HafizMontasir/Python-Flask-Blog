-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2022 at 12:30 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(20) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first post', 'firstpost@gmail.com', '1239459394', 'This is the first post', '2022-09-18 05:30:06'),
(2, 'hafiz', 'two@two.com', '1829092229', 'Hello Hafiz How Are You?', NULL),
(3, 'hafiz Return', 'one@one.com', '129847', 'hey buddy how are you doing!', '2022-09-18 06:51:46'),
(5, 'Rufus', 'two@two.com', '1829092229', 'Hi Man how are you doing?', '2022-09-19 11:43:25'),
(6, 'Rufus', 'two@two.com', '1829092229', 'Hi Man how are you doing?', '2022-09-19 11:50:32'),
(7, 'hafiz Return', 'zairahkhan122@gmail.com', '018228649474', 'Hi This is Zairah from a fake account ', '2022-09-19 11:57:56'),
(8, 'Montasir', 'two@two.com', '1829092229', 'Hello Good morning', '2022-09-19 12:19:49'),
(9, 'Rufus', 'two@two.com', '018228649474', 'Hi Abb mail aja bhai', '2022-09-19 12:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `tagline` text NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(15) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `slug`, `tagline`, `content`, `img_file`, `date`) VALUES
(1, 'first post', 'first-update_post', 'Hey I am a tagline here', 'This is Hafiz Montasir(It\'s my name) and I am very happy to create this blog website and posting something for the firsttime.', '', '2022-09-24 23:58:40'),
(2, 'Second Post', 'second-post', 'I am a second tagline here', 'This is Hafiz Montasir and it is my second post.', 'comp1.jpg', '2022-09-19 04:49:08'),
(3, 'Third Post', 'third-post', 'This is third tagline here', 'This is me and I am posting it for the third time.', 'comp2.jpg', '2022-09-19 12:50:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
