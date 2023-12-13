-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 11:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `selectbox_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `area_table`
--

CREATE TABLE `area_table` (
  `area_id` int(11) NOT NULL,
  `area_name` text NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `area_table`
--

INSERT INTO `area_table` (`area_id`, `area_name`, `city_id`) VALUES
(1, 'Pak Aavane Colony Sahiwal', 1),
(2, 'Shadman Town Sahiwal', 1),
(3, 'Farid Town Sahiwal', 1),
(4, 'Faisal Bagh Lahore', 2),
(5, 'Qaiser lahore', 2),
(6, 'Dhair Lahore', 2),
(7, 'Samundri Town Faislabad', 3),
(8, ' Iqbal Town Faislabad', 3),
(9, 'Jinnah Town Faislabad', 3),
(10, 'Model Town Bhawalpur', 4),
(11, 'Shadman City Bhawalpur', 4),
(12, 'Satellite Town Bhawalpur', 4),
(13, 'Khairo Tehsil Jacobabad', 5),
(14, 'Jacobabad Tehsil', 5),
(15, 'Thul Tehsil Jacobabad', 5),
(16, 'Lyari Town Karachi', 6),
(17, 'Malir Town Karachi', 6),
(18, 'New Karachi Town', 6),
(19, 'Old Hyderabad City', 7),
(20, 'Saddar Hyderabad', 7),
(21, 'Jinnah Town Shikarpur', 8),
(22, 'Gulshan Town Shikarpur', 8),
(23, 'Quetta City', 9),
(24, 'Quetta Saddar', 9),
(25, 'Jiwani Gawadar', 10),
(26, 'Pasni Tehsil Gawadar', 10),
(27, 'Chaman Cantonment', 11),
(28, 'Chaman Bazaar', 11),
(29, 'Khuzdar University Road', 12),
(30, 'Sariab Road Khuzdar', 12),
(31, 'Qissa Khwani Bazaar Peshawar', 17),
(32, 'Charsadda Road Peshawar', 17),
(33, 'Peshawar City Center', 17),
(34, 'Bagh-e-Haram Mardan', 18),
(35, 'Shiekh Maltoon Town Mardan', 18),
(36, 'Latamber Kohat', 19),
(37, 'City Center Kohat', 19),
(38, 'Nawanshehr Abbottabad', 20),
(39, 'Kakul Abbottabad', 20),
(40, 'Pine View Road Abbottabad', 20);

-- --------------------------------------------------------

--
-- Table structure for table `city_table`
--

CREATE TABLE `city_table` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(200) NOT NULL,
  `province_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city_table`
--

INSERT INTO `city_table` (`city_id`, `city_name`, `province_id`) VALUES
(1, 'Sahiwal', 1),
(2, 'Lahore', 1),
(3, 'Faislabad', 1),
(4, 'Bhawalpur', 1),
(5, 'Jacobabad', 2),
(6, 'Karachi', 2),
(7, 'Hyderabad', 2),
(8, 'Shikarpur', 2),
(9, 'Quetta', 3),
(10, 'Gwadar', 3),
(11, 'Chaman', 3),
(12, 'Khuzdar', 3),
(17, 'Peshawar', 5),
(18, 'Mardan', 5),
(19, 'Kohat', 5),
(20, 'Abbottabad', 5);

-- --------------------------------------------------------

--
-- Table structure for table `province_table`
--

CREATE TABLE `province_table` (
  `province_id` int(11) NOT NULL,
  `province_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `province_table`
--

INSERT INTO `province_table` (`province_id`, `province_name`) VALUES
(1, 'Punjab'),
(2, 'Sindh'),
(3, 'Balochistan'),
(4, 'Islamabad Capital territory'),
(5, 'Khyber Pakhtunkhwa ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area_table`
--
ALTER TABLE `area_table`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `city_table`
--
ALTER TABLE `city_table`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `province_table`
--
ALTER TABLE `province_table`
  ADD PRIMARY KEY (`province_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area_table`
--
ALTER TABLE `area_table`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `city_table`
--
ALTER TABLE `city_table`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `province_table`
--
ALTER TABLE `province_table`
  MODIFY `province_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
