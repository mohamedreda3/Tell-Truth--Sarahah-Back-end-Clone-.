-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2022 at 08:45 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4169416_truth`
--
CREATE DATABASE IF NOT EXISTS `4169416_truth` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `4169416_truth`;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `messagecontent` text NOT NULL,
  `sent_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_public` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `useremail`, `messagecontent`, `sent_at`, `is_public`) VALUES
(7, 'mmoh33653@gmail.com', 'Incididunt enim voluptate do qui consectetur. Labore ad nostrud non mollit eiusmod fugiat dolor cillum laboris. Magna aute duis qui cillum excepteur ullamco nostrud aliquip labore enim laborum ad laborum. Excepteur aliqua ad nisi adipisicing dolor adipisicing mollit Lorem cillum culpa sunt. Dolor exercitation eiusmod culpa anim velit enim duis.', '2022-09-01 01:44:54', 0),
(21, 'mmoh33652@gmail.com', ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 01:00:13', 0),
(22, 'mmoh33651@gmail.com', ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 01:02:48', 0),
(25, 'mmoh33651@gmail.com', ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 01:37:06', 0),
(26, 'mmoh33651@gmail.com', ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 01:37:17', 0),
(28, 'mmoh33652@gmail.com', 'Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 19:30:54', 0),
(29, 'mmoh33653@gmail.com', 'Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 19:32:35', 0),
(30, 'mmoh33653@gmail.com', 'Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 19:32:36', 0),
(31, 'mmoh33652@gmail.com', 'Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 20:30:47', 0),
(32, 'mmoh33652@gmail.com', 'Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 20:34:21', 0),
(33, 'mmoh33652@gmail.com', 'Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 20:34:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `reply` text NOT NULL,
  `sent_at` datetime NOT NULL,
  `unknown` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `message_id`, `reply`, `sent_at`, `unknown`) VALUES
(2, 7, ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 18:03:53', 1),
(3, 7, ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 19:12:59', 1),
(4, 7, ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 19:12:59', 1),
(7, 31, ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 20:34:51', 1),
(8, 31, ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 20:34:52', 1),
(9, 31, ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 20:34:52', 1),
(10, 33, ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 20:34:56', 1),
(11, 33, ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 20:34:57', 1),
(12, 33, ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 20:34:59', 1),
(13, 33, ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 20:34:59', 1),
(14, 33, ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 20:34:59', 1),
(15, 33, ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', '2022-09-01 20:34:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `repliesonreplies`
--

CREATE TABLE `repliesonreplies` (
  `id` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `sent_at` datetime NOT NULL,
  `reply` text NOT NULL,
  `unknown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `repliesonreplies`
--

INSERT INTO `repliesonreplies` (`id`, `reply_id`, `sent_at`, `reply`, `unknown`) VALUES
(1, 2, '2022-09-01 20:28:54', ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', 1),
(4, 8, '2022-09-01 20:35:05', ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', 1),
(5, 8, '2022-09-01 20:35:05', ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', 1),
(6, 8, '2022-09-01 20:35:05', ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', 1),
(7, 8, '2022-09-01 20:35:05', ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', 1),
(8, 8, '2022-09-01 20:35:05', ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', 1),
(9, 7, '2022-09-01 20:35:10', ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', 1),
(10, 7, '2022-09-01 20:35:10', ' Veniam aute non cillum eu amet. Elit laboris ex ad enim nisi dolore sint officia aute proident. Id commodo ut sit duis aute adipisicing.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `resetcode` varchar(9) NOT NULL,
  `usertype` varchar(7) NOT NULL,
  `isConfirmed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL,
  `loc` varchar(150) NOT NULL,
  `about_u` varchar(200) NOT NULL,
  `sex` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `pass`, `username`, `phone`, `resetcode`, `usertype`, `isConfirmed`, `created_at`, `loc`, `about_u`, `sex`) VALUES
(16, 'mmoh33650@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Mohammed Reda ( Admin )', '01212745939', '400cbd', 'Admin', 0, '2022-08-30', 'EG - Gharbia - Al Maḩallah al Kubrá', '', ''),
(17, 'mmoh33651@gmail.com', '249c30b3e340363bf0278828a06e4abb', 'Mohammed Reda', '01212745939', '', 'User', 0, '2022-08-30', 'EG - Gharbia - Al Maḩallah al Kubrá', '', ''),
(18, 'mmoh33652@gmail.com', '249c30b3e340363bf0278828a06e4abb', 'Mohammed Reda', '01212745939', 'bde01c', 'User', 0, '2022-08-30', 'EG - Gharbia - Al Maḩallah al Kubrá', '', ''),
(19, 'mmoh33653@gmail.com', '04d22c2d0ff1e159e53cb3d821b628ac', 'Mona Elsayed', '01212745939', '', 'User', 0, '2022-08-30', ' -  - ', 'Fugiat aliquip ipsum aute eiusmod anim pariatur voluptate pariatur reprehenderit. Quis ut nostrud mollit sunt. Proident consequat qui veniam nisi nostrud dolor laborum consectetur Lorem nulla sint exe', 'female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_messages` (`useremail`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_reply_pk` (`message_id`);

--
-- Indexes for table `repliesonreplies`
--
ALTER TABLE `repliesonreplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reply_reply_pk` (`reply_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `repliesonreplies`
--
ALTER TABLE `repliesonreplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `user_messages` FOREIGN KEY (`useremail`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `message_reply_pk` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `repliesonreplies`
--
ALTER TABLE `repliesonreplies`
  ADD CONSTRAINT `reply_reply_pk` FOREIGN KEY (`reply_id`) REFERENCES `replies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
