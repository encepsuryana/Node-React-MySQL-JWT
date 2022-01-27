-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2022 at 05:47 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `refresh_token`, `createdAt`, `updatedAt`) VALUES
(1, 'Encep Suryana', 'encep@gmail.com', '$2b$10$NzPlXE7raRTaojxidpgNK.pp6Bg1Sv963dDbMPmxec3jLtZz61gnu', NULL, '2022-01-11 08:51:54', '2022-01-11 10:05:00'),
(2, 'Nayla', 'nayla@gmail.com', '$2b$10$St4bTaoTlrZVgecEUDGyQO5mLwYCAPR4rV/sQJvgEHX0aHdf31s6W', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJOYXlsYSIsImVtYWlsIjoibmF5bGFAZ21haWwuY29tIiwiaWF0IjoxNjQxOTc0ODc0LCJleHAiOjE2NDIwNjEyNzR9.J9Rr8Ow5KI5of5ulv4wpQabW31lVETWzjgt8AlurJMg', '2022-01-12 07:25:50', '2022-01-12 08:07:54'),
(3, 'Nayla1', 'nayla1@gmail.com', '$2b$10$bQP.bqpLzAMHkJfIfQYN5u1DfiW6WBRxVk4CwyDHJz45O3eR8MRJG', NULL, '2022-01-12 07:28:38', '2022-01-12 07:28:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
