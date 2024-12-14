-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2024 at 04:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `instructions`
--

CREATE TABLE `instructions` (
  `id` int(11) NOT NULL,
  `exam_title` varchar(255) NOT NULL,
  `general_instructions` text NOT NULL,
  `allowed_materials` text NOT NULL,
  `technical_requirements` text NOT NULL,
  `exam_format` varchar(255) NOT NULL,
  `time_limit` int(11) NOT NULL,
  `plagiarism_consequences` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructions`
--

INSERT INTO `instructions` (`id`, `exam_title`, `general_instructions`, `allowed_materials`, `technical_requirements`, `exam_format`, `time_limit`, `plagiarism_consequences`) VALUES
(25, 'mlk', ',njk', 'klnl', 'ljnl', 'kjlk', 0, 'jhjl'),
(26, 'sfgsfssaasssssssssssssssssss', 'fgs', 'sgs', 'sgg', 'sfg', 1, 'sdf'),
(27, 'OOP', '11', '1', '1', '1', 1, '2'),
(28, 'English', 'ttr rtrt r rtyt rrt  yrtyrtytryr   thy rtrt ', 'qq1', 'qqw1', 'qwerty', 4, '22');

-- --------------------------------------------------------

--
-- Table structure for table `questionbank`
--

CREATE TABLE `questionbank` (
  `questionID` int(11) NOT NULL,
  `questionName` varchar(45) NOT NULL,
  `option1` varchar(45) NOT NULL,
  `option2` varchar(45) DEFAULT NULL,
  `option3` varchar(45) DEFAULT NULL,
  `option4` varchar(45) NOT NULL,
  `option5` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questionbank`
--

INSERT INTO `questionbank` (`questionID`, `questionName`, `option1`, `option2`, `option3`, `option4`, `option5`) VALUES
(1, 'What is the capital of Sri Lanka?', 'colombo', 'Gallle', 'Kotte', 'kandy', 'Trincomalee'),
(16, 'What is the capital of Sri Lanka?\r\n', 'colombo', 'Gallle', 'London', 'Mumbai', 'Mannar');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subjectID` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `courseName` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subjectID`, `name`, `code`, `courseName`, `department`, `semester`) VALUES
(62, 'Introduction to Computer System', 'IT1020', 'Information Technology', 'Faculty of Computing', 1),
(63, 'Introduction to Programming', 'IT1010', 'Information Technology', 'Faculty of Computing', 1),
(73, 'Database Management System', 'IT1022', 'Information Technology', 'Faculty of Computing', 3);

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` int(11) NOT NULL,
  `slot_name` varchar(100) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `date` date NOT NULL,
  `duration` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL CHECK (`status` in ('Active','Inactive'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`id`, `slot_name`, `start_time`, `end_time`, `date`, `duration`, `status`) VALUES
(49, 'bkb', '15:24:00', '19:24:00', '2024-10-17', '9', 'Active'),
(50, 'hii', '14:09:00', '17:07:00', '2024-10-16', '9', 'Active'),
(51, 'juu', '00:09:00', '11:09:00', '2024-10-18', '3', 'Active'),
(52, 'English', '02:10:00', '03:10:00', '2024-10-18', '3', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'fifi', 'ekettipearachchi@gmail.com', 'manu', 'user', '2024-09-23 10:53:19'),
(2, 'hello', 'manu@gmail.com', 'chira', 'user', '2024-09-23 10:57:05'),
(3, 'Chiranjeewa', 'chiran@gmail.com', '12345', 'user', '2024-09-23 23:10:58'),
(6, 'Boliii ', 'boli@hotmail.com', 'boli', 'admin', '2024-09-23 23:12:59'),
(7, 'manu', 'manu@gmail.com', 'manu', 'user', '2024-09-24 01:06:03'),
(8, 'hello', 'it23234420@my.sliit.lk', 'manu', 'user', '2024-09-24 01:12:52'),
(9, 'world', 'w@gmail.com', '12345', 'user', '2024-09-24 01:43:11'),
(10, 'bole', 'bole@bole.com', 'bole', 'user', '2024-09-24 03:03:45'),
(11, 'manushi katipearachchi', 'mckettipearachchi@gmail.com', 'manu', 'user', '2024-09-24 12:02:12'),
(12, 'chiran', 'chira@gmail.com', '12345', 'admin', '2024-09-25 06:48:59'),
(13, 'manuuuu', 'm@gmail.com', 'manu', 'user', '2024-09-25 10:49:12'),
(14, 'manu', 'm@gmail.com', 'm123', 'user', '2024-10-04 13:46:52'),
(15, 'hello', 'manu@gmail.com', '123', 'user', '2024-10-04 22:36:00'),
(16, 'hello', 'manu@gmail.com', '123', 'user', '2024-10-04 22:36:00'),
(17, 'hljlk', 'fh@gmail.com', '123', 'user', '2024-10-13 07:43:03'),
(18, '.mn.', 'mn@gmail.com', 'manu', 'user', '2024-10-13 08:03:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instructions`
--
ALTER TABLE `instructions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionbank`
--
ALTER TABLE `questionbank`
  ADD PRIMARY KEY (`questionID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subjectID`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instructions`
--
ALTER TABLE `instructions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `questionbank`
--
ALTER TABLE `questionbank`
  MODIFY `questionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

