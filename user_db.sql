-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2023 at 12:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `boarding_details`
--

CREATE TABLE `boarding_details` (
  `id` int(11) NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `boarding_address` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `students_count` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `boardingPictures` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boarding_details`
--

INSERT INTO `boarding_details` (`id`, `owner_name`, `boarding_address`, `gender`, `students_count`, `price`, `contact_number`, `boardingPictures`, `payment`) VALUES
(44, 'Shanaka', '87/A Wathumulla Udugampola', 'girls', 12, '12345.00', '94702891567', 'Screenshot (16).png', 'Screenshot (17).png'),
(45, 'ssss', 'jayagama,badulla', 'boys', 222, '133.00', '94702891587', 'Screenshot (19).png', 'Screenshot (22).png'),
(46, 'ssss', 'jayagama,badulla', 'boys', 222, '133.00', '94702891587', 'Screenshot (19).png', 'Screenshot (22).png');

-- --------------------------------------------------------

--
-- Table structure for table `save_table`
--

CREATE TABLE `save_table` (
  `id` int(100) NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `boarding_address` varchar(200) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `students_count` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `boardingPictures` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `save_table`
--

INSERT INTO `save_table` (`id`, `owner_name`, `boarding_address`, `gender`, `students_count`, `price`, `contact_number`, `boardingPictures`) VALUES
(1, 'ssss', 'jayagama,badulla', 'boys', 222, '133.00', '94702891587', 'Screenshot (19).png'),
(2, 'Shanaka', '87/A Wathumulla Udugampola', 'girls', 12, '12345.00', '94702891567', 'Screenshot (16).png');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(0, 'Madurangi ', 'member@demo.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(0, 'Ferin', 'member1@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(0, 'Sashini', 'member3@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(0, 'Matilda', 'member6@demo.com', 'e10adc3949ba59abbe56e057f20f883e', 'user'),
(0, 'Nethmi', 'member7@demo.com', 'e10adc3949ba59abbe56e057f20f883e', 'user'),
(0, 'Madurangi ', 'member@demo.com', 'e10adc3949ba59abbe56e057f20f883e', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boarding_details`
--
ALTER TABLE `boarding_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `save_table`
--
ALTER TABLE `save_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boarding_details`
--
ALTER TABLE `boarding_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `save_table`
--
ALTER TABLE `save_table`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
