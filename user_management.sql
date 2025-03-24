-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 24, 2025 at 07:15 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `boys_payments`
--

DROP TABLE IF EXISTS `boys_payments`;
CREATE TABLE IF NOT EXISTS `boys_payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_ref` varchar(255) NOT NULL,
  `payment_date` date NOT NULL,
  `receipt_path` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `reg_no` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `boys_users`
--

DROP TABLE IF EXISTS `boys_users`;
CREATE TABLE IF NOT EXISTS `boys_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `acc_type` varchar(20) DEFAULT NULL,
  `ph_no` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`reg_no`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `boys_users`
--

INSERT INTO `boys_users` (`id`, `reg_no`, `name`, `mail`, `password`, `dob`, `gender`, `acc_type`, `ph_no`) VALUES
(1, '5131', 'pipe', 'pipe@gmail.com', '$2y$10$6ma0Gepxr3ae.FSNWPDjZefgM9wSCON9ccS2OPCdU9SAs2aVkC.Ja', '2024-11-13', 'male', 'savings', '6380310279'),
(2, '513121104009', 'hari', 'hari9@gmail.com', '$2y$10$oEnBIgshQEu3jH3xRPgXcuJa5wowU7FJyF9ug5MgUJFK.fOyNzRSW', '0003-12-07', 'male', 'savings', '1234567890'),
(3, '513121104035', 'sanjay', 'sanjay25@gmail.com', '$2y$10$zAl0WqWdFSrzGn0JjVQTEeZI4niXIJVIPxotKCSpCYhKVC/CLl2p2', '2003-01-25', 'male', 'savings', '3456789012'),
(4, '513121104001', 'gokul', 'gokul09@gmail.com', '$2y$10$FSK6f2XKOIeDTzhvQbTBKO4x3cFwLuotUF1DONvjvJM/geyMXfOyu', '2003-09-09', 'male', 'savings', '7890123456'),
(7, '513121104008', 'soni', 'soni29@gmail.com', '$2y$10$dNRPIwj/B12jHbYz6Ka7Pu0GKMeTzGZRSlyd40X47pBJdbJTE3yQK', '2025-02-17', 'female', 'savings', '2345678901');

-- --------------------------------------------------------

--
-- Table structure for table `passwordboy_resets`
--

DROP TABLE IF EXISTS `passwordboy_resets`;
CREATE TABLE IF NOT EXISTS `passwordboy_resets` (
  `mail` varchar(100) NOT NULL,
  `otp` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `mail` varchar(100) NOT NULL,
  `otp` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`mail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transaction_ref` varchar(255) NOT NULL,
  `payment_date` date NOT NULL,
  `receipt_path` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `reg_no` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `transaction_ref`, `payment_date`, `receipt_path`, `status`, `reg_no`) VALUES
(1, 'hkhgffd', '2024-12-06', 'uploads/My Resume.pdf', 'Paid', '513121104045');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reg_no` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `acc_type` varchar(20) DEFAULT NULL,
  `ph_no` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `reg_no`, `name`, `mail`, `password`, `dob`, `gender`, `acc_type`, `ph_no`) VALUES
(16, '513121104010', 'Brindha', 'brindha25@gmail.com', '$2y$10$eAYBZ7/gxdggeEbG2E0jbedrV2rv3ySAoIKeSPh2v5UCmH96YvRcy', '2000-10-25', 'female', 'savings', '2345678901'),
(15, '513121104010', 'Brindha', 'brindha25@gmail.com', '$2y$10$XViQtvmOFujLv7YNhqNSG.ttP0vwzhL96VNXH8K/cDXhEsOhGokYK', '2000-10-25', 'female', 'savings', '2345678901'),
(6, '513121104045', 'udhaaya', 'udhaya17@gmail.com', '$2y$10$lemqwyLT4YkM2HOtPdJeG.PW44Nz7TaOLqCj1DQv6eHinFkgghT4S', '2003-12-17', 'female', 'savings', '6385215358'),
(5, '513121104044', 'theja', 'udhayarekham1712@gmail.com', '$2y$10$T1kvthjcMQtQpsiKkqsEXuPMj3VMy4g5SMdKjHqybfj6EbctM1jla', '2003-06-29', 'female', 'savings', '6380310279'),
(17, '513121104011', 'anu', 'anushiya28@gmail.com', '$2y$10$6NYrOWOqzZHoVct6sUO/AOdDeCqYx3mRCzV9eFmUgrNiuAxjdKCcq', '2000-09-28', 'female', 'savings', '2345678901'),
(18, '513121104011', 'anu', 'anushiya28@gmail.com', '$2y$10$gIEjnPc5tDmz8ozzb58QYeFsBMkB02.IBITvqLyaZBR2BJMw.j42K', '2000-09-28', 'female', 'savings', '2345678901'),
(19, '513121104040', 'sharmila', 'sharmi20@gmail.com', '$2y$10$M6/IBWmvzrg5RHK4cRD55OkJEMSHVz4RzNd.5/Wd4rZS8WuzZzwRa', '2025-03-17', 'female', 'savings', '1234567890');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
