-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 13, 2022 at 04:52 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `pois`
--

DROP TABLE IF EXISTS `pois`;
CREATE TABLE IF NOT EXISTS `pois` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `rating_n` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pois`
--

INSERT INTO `pois` (`id`, `name`, `address`, `rating`, `rating_n`, `latitude`, `longitude`) VALUES
('ChIJYW7ZL-hJXhMR9ve2dpMf5Io', 'Ελληνικά Ταχυδρομεία (ΕΛΤΑ)', 'Maizonos 32, Patra', '1.5', '175', '38.2498044', '21.7389391'),
('ChIJr5-c39hJXhMRwfGwb6llWq8', 'DARAVALIS CLINIC (Γ. Δαραβάλης Δερματολόγος - Αφροδισιολόγος Πάτρα)', 'Riga Fereou 32-34, Patra', '4.7', '77', '38.250377', '21.7379673'),
('ChIJHf2oKOhJXhMRU48jxmo1y6s', 'Zolotas S.A.', 'Riga Fereou 32, Patra', '4.2', '78', '38.2501092', '21.7378917'),
('ChIJSap7relJXhMRUkopSQsXwuI', 'spelectronics.gr - ΗΛΕΚΤΡΟΝΙΚΑ ΗΛΕΚΤΡΟΛΟΓΙΚΑ ΠΑΤΡΑΣ', 'Satovriandou 43-47, Patra', '4.8', '62', '38.250167', '21.739824'),
('ChIJFxIYOehJXhMRTnfIBMK7Cjw', 'eCig Hellas Ηλεκτρονικο Τσιγαρο - Πάτρα', 'Maizonos 47, Patra', '4.8', '209', '38.2496632', '21.7390509'),
('ChIJhT1xJuhJXhMRB_dOMAB9G8A', 'Κατσαρόλα της Τούλας', 'Riga Fereou 49, Patra', '4.6', '569', '38.2499822', '21.7379614'),
('ChIJ4d-vIOhJXhMRCSKJ5zHiF5E', 'Superdry', 'Spanos Ch & Sia O.E. - 15, Aratou Street, 26, Patra', '4.7', '42', '38.249763', '21.737806'),
('ChIJOeK7WuhJXhMRp1dmjE1OOmo', 'ΑΝΑΣΤΑΣΟΠΟΥΛΟΣ ΙΩΑΝΝΗΣ', 'Korinthou 156, Patra', '4.5', '44', '38.249649', '21.7399194');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(254) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `pasword` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `pasword`, `email`) VALUES
(1, 'test', 'Testing1!', 'test@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
