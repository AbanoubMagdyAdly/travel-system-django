-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 20, 2019 at 03:13 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `places_locations`
--

CREATE TABLE `places_locations` (
  `id` int(11) NOT NULL,
  `location_name` varchar(200) NOT NULL,
  `city_id` int(11) NOT NULL,
  `location_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places_locations`
--

INSERT INTO `places_locations` (`id`, `location_name`, `city_id`, `location_image`) VALUES
(1, '01-loc', 1, 'loc 1'),
(2, '02-loc', 1, 'loc 1'),
(3, '03-loc', 1, 'loc 1'),
(4, '04-loc', 1, 'loc 1'),
(5, '01-loc', 2, 'loc'),
(6, '02-loc', 2, 'loc'),
(7, '03-loc', 2, 'loc'),
(8, '04-loc', 2, 'loc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `places_locations`
--
ALTER TABLE `places_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `places_locations_city_id_34355363_fk_places_cities_id` (`city_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `places_locations`
--
ALTER TABLE `places_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `places_locations`
--
ALTER TABLE `places_locations`
  ADD CONSTRAINT `places_locations_city_id_34355363_fk_places_cities_id` FOREIGN KEY (`city_id`) REFERENCES `places_cities` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
