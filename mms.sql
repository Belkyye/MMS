-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2025 at 05:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mms`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `movie_id` int(255) NOT NULL,
  `nr_tickets` int(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `user_id`, `movie_id`, `nr_tickets`, `date`, `time`) VALUES
(1, 1, 1, 2, '2025-01-15', '19:30:00'),
(2, 2, 2, 1, '2025-01-16', '21:00:00'),
(3, 3, 3, 3, '2025-01-17', '18:45:00'),
(4, 4, 4, 4, '2025-01-18', '20:00:00'),
(5, 5, 5, 2, '2025-01-19', '22:15:00'),
(6, 6, 6, 1, '2025-01-20', '19:00:00'),
(7, 7, 7, 5, '2025-01-21', '21:30:00'),
(8, 8, 8, 2, '2025-01-22', '20:45:00'),
(9, 9, 9, 3, '2025-01-23', '18:00:00'),
(10, 10, 10, 4, '2025-01-24', '22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(255) NOT NULL,
  `movie_name` varchar(255) NOT NULL,
  `movie_desc` varchar(255) NOT NULL,
  `movie_quality` varchar(255) NOT NULL,
  `movie_rating` int(255) NOT NULL,
  `movie_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `movie_name`, `movie_desc`, `movie_quality`, `movie_rating`, `movie_image`) VALUES
(1, 'Inception', 'A mind-bending thriller about dreams within dreams.', 'HD', 9, 'inception.jpg'),
(2, 'The Matrix', 'A hacker discovers a dystopian reality controlled by machines.', '4K', 10, 'matrix.jpg'),
(3, 'The Dark Knight', 'Batman faces off against the Joker in a battle for Gotham.', 'HD', 9, 'dark_knight.jpg'),
(4, 'Avatar', 'A paraplegic marine becomes part of a native alien tribe on Pandora.', '3D', 8, 'avatar.jpg'),
(5, 'Titanic', 'A love story unfolds aboard the doomed RMS Titanic.', 'HD', 7, 'titanic.jpg'),
(6, 'Interstellar', 'A team of astronauts explores space to save humanity.', '4K', 9, 'interstellar.jpg'),
(7, 'The Shawshank Redemption', 'A man wrongly imprisoned forms a friendship and seeks justice.', 'HD', 10, 'shawshank.jpg'),
(8, 'Pulp Fiction', 'Interwoven stories of crime and redemption in Los Angeles.', 'HD', 9, 'pulp_fiction.jpg'),
(9, 'The Godfather', 'The powerful story of a mafia family and its rise to power.', '4K', 10, 'godfather.jpg'),
(10, 'Forrest Gump', 'A simple man leads an extraordinary life in the midst of historical events.', 'HD', 8, 'forrest_gump.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL,
  `is_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `password`, `confirm_password`, `is_admin`) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 'password123', 'password123', '0'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 'securePass1', 'securePass1', '1'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', 'alicePass2', 'alicePass2', '0'),
(4, 'Bob', 'Brown', 'bob.brown@example.com', 'bob1234Pass', 'bob1234Pass', '1'),
(5, 'Charlie', 'Davis', 'charlie.davis@example.com', 'charlie5678', 'charlie5678', '0'),
(6, 'Eve', 'Miller', 'eve.miller@example.com', 'evepassword2025', 'evepassword2025', '0'),
(7, 'David', 'Wilson', 'david.wilson@example.com', 'davidPW88', 'davidPW88', '1'),
(8, 'Grace', 'Moore', 'grace.moore@example.com', 'grace2025', 'grace2025', '0'),
(9, 'Henry', 'Taylor', 'henry.taylor@example.com', 'taylorPass99', 'taylorPass99', '1'),
(10, 'Olivia', 'Martinez', 'olivia.martinez@example.com', 'olivia321', 'olivia321', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
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
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
