-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 14, 2018 at 04:30 PM
-- Server version: 5.5.59-cll
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `decibels_neww`
--

-- --------------------------------------------------------

--
-- Table structure for table `cs_customer`
--

CREATE TABLE `cs_customer` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `group_member_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `date_join` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_customer`
--

INSERT INTO `cs_customer` (`id`, `email`, `pass`, `group_member_id`, `first_name`, `last_name`, `telp`, `date_join`, `last_login`, `status`, `data`) VALUES
(1, 'deoryzpandu@gmail.com', '564fda17f517ae04a86734c2b2341327ed4fd565', 0, 'test', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, ''),
(2, 'ibnu@markdesign.net', '56259dd1c4ea0117cd601fff7aefa0e8892a3b25', 0, 'Ibnu', 'Fajar', '08545645646', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, ''),
(3, 'tri@markdesign.net', '564fda17f517ae04a86734c2b2341327ed4fd565', 0, 'Tri', 'Kuriawan', '085655645451', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, ''),
(4, 'fajar@markdesign.net', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0, 'fajar', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `cs_customer_address`
--

CREATE TABLE `cs_customer_address` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_customer_address`
--

INSERT INTO `cs_customer_address` (`id`, `customer_id`, `first_name`, `last_name`, `address`, `city`, `postal_code`, `phone`, `country_code`, `data`) VALUES
(7, 2, 'Ibnu', 'Fajar', 'Jl Benowo no 123', 'Surabaya', '655854', '08545645646', 'IDN', '');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `code`, `sort`, `status`) VALUES
(2, 'English', 'en', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `linesup`
--

CREATE TABLE `linesup` (
  `id` int(70) NOT NULL,
  `name` varchar(225) NOT NULL,
  `logo` varchar(225) NOT NULL,
  `images` varchar(225) NOT NULL,
  `status` int(1) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `linesup`
--

INSERT INTO `linesup` (`id`, `name`, `logo`, `images`, `status`, `sort`) VALUES
(1, 'DJ Joana', '1e5cd-logo-spjoana.png', '1e5cd-lines-up-1.jpg', 1, 4),
(2, 'DJ Yasmin', 'd1c1a-logo-syasmin.png', 'd1c1a-lines-up-2.jpg', 1, 3),
(3, 'DJ Winky Wiryawan', 'db747-lgo-wink.png', 'db747-lines-up-3.jpg', 1, 2),
(4, 'Aldee', '56a10-LOGO-aldee.png', 'DECIBLESr-logo-allchl.jpg', 1, 5),
(5, 'Leo', '41057-LOGO-l3o.png', '', 1, 6),
(6, 'Onee', '0b6f4-LOGO-onee.png', '', 1, 7),
(7, 'William', '98ba8-LOGO-william.png', '', 1, 8),
(8, 'rehab', '0c4f4-lgo-rehab.png', '0c4f4-lines-up-4.jpg', 1, 1),
(9, 'MOTI', '4488a-moti.png', '4488a-DECIBELS3-1v.jpg', 1, 0),
(10, 'RIO FEBRIAN', '2972e-riofeb.png', '2972e-DECIBELS3-5.jpg', 1, 0),
(11, 'SAMMY SIMORANGKIR', 'b9ee4-sammy.png', 'b9ee4-DECIBELS3-4.png', 1, 0),
(12, 'AL-GHAZALI', '73ce1-AL-GHAZALI.png', '9bec3-AL-GHAZALI.png', 1, 0),
(13, 'GOLDIE EMERALDA', '2111b-de15c-GOLDIE.png', '2111b-de15c-GOLDIE-EMERALDA.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `username`, `activity`, `time`) VALUES
(1, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-11 15:44:39'),
(2, 'info@markdesign.net', 'ProductController Update 1', '2014-06-11 15:48:17'),
(3, 'info@markdesign.net', 'ProductController Update 2', '2014-06-11 15:50:00'),
(4, 'info@markdesign.net', 'ProductController Update 3', '2014-06-11 15:50:14'),
(5, 'info@markdesign.net', 'ProductController Update 4', '2014-06-11 15:50:30'),
(6, 'info@markdesign.net', 'ProductController Update 5', '2014-06-11 15:51:32'),
(7, 'info@markdesign.net', 'ProductController Update 6', '2014-06-11 15:51:55'),
(8, 'info@markdesign.net', 'ProductController Update 7', '2014-06-11 15:52:07'),
(9, 'info@markdesign.net', 'ProductController Update 8', '2014-06-11 15:54:24'),
(10, 'info@markdesign.net', 'ProductController Update 8', '2014-06-11 15:56:41'),
(11, 'info@markdesign.net', 'ProductController Update 8', '2014-06-11 15:58:47'),
(12, 'info@markdesign.net', 'ProductController Update 8', '2014-06-11 16:12:25'),
(13, 'info@markdesign.net', 'ProductController Update 22', '2014-06-11 16:45:58'),
(14, 'info@markdesign.net', 'ProductController Update 22', '2014-06-11 16:52:11'),
(15, 'info@markdesign.net', 'ProductController Update 9', '2014-06-12 02:01:02'),
(16, 'info@markdesign.net', 'ProductController Update 9', '2014-06-12 02:04:11'),
(17, 'info@markdesign.net', 'ProductController Update 9', '2014-06-12 02:04:48'),
(18, 'info@markdesign.net', 'ProductController Update 10', '2014-06-12 02:11:28'),
(19, 'info@markdesign.net', 'ProductController Update 10', '2014-06-12 02:12:37'),
(20, 'info@markdesign.net', 'ProductController Update 11', '2014-06-12 02:13:40'),
(21, 'info@markdesign.net', 'ProductController Update 12', '2014-06-12 02:14:48'),
(22, 'info@markdesign.net', 'ProductController Update 13', '2014-06-12 02:49:20'),
(23, 'info@markdesign.net', 'ProductController Update 14', '2014-06-12 02:50:28'),
(24, 'info@markdesign.net', 'ProductController Update 15', '2014-06-12 02:51:13'),
(25, 'info@markdesign.net', 'ProductController Update 16', '2014-06-12 02:52:06'),
(26, 'info@markdesign.net', 'ProductController Update 17', '2014-06-12 02:52:51'),
(27, 'info@markdesign.net', 'ProductController Update 18', '2014-06-12 02:54:29'),
(28, 'info@markdesign.net', 'ProductController Update 19', '2014-06-12 02:55:39'),
(29, 'info@markdesign.net', 'ProductController Update 20', '2014-06-12 02:56:43'),
(30, 'info@markdesign.net', 'ProductController Update 21', '2014-06-12 02:57:42'),
(31, 'info@markdesign.net', 'ProductController Update 23', '2014-06-12 02:59:07'),
(32, 'info@markdesign.net', 'ProductController Update 24', '2014-06-12 02:59:40'),
(33, 'info@markdesign.net', 'ProductController Update 25', '2014-06-12 03:04:39'),
(34, 'info@markdesign.net', 'ProductController Update 13', '2014-06-12 03:32:17'),
(35, 'info@markdesign.net', 'ProductController Update 13', '2014-06-12 04:18:04'),
(36, 'info@markdesign.net', 'ProductController Update 1', '2014-06-12 05:44:15'),
(37, 'info@markdesign.net', 'ProductController Update 2', '2014-06-12 05:44:21'),
(38, 'info@markdesign.net', 'ProductController Update 3', '2014-06-12 05:44:28'),
(39, 'info@markdesign.net', 'ProductController Update 4', '2014-06-12 05:44:32'),
(40, 'info@markdesign.net', 'ProductController Update 5', '2014-06-12 05:44:36'),
(41, 'info@markdesign.net', 'ProductController Update 6', '2014-06-12 05:44:41'),
(42, 'info@markdesign.net', 'ProductController Update 7', '2014-06-12 05:44:46'),
(43, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-12 19:46:29'),
(44, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-13 04:32:00'),
(45, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-13 04:39:08'),
(46, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-13 05:21:13'),
(47, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-13 05:21:35'),
(48, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-13 05:22:44'),
(49, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-13 09:46:10'),
(50, 'info@markdesign.net', 'Product Controller Create 27', '2014-06-13 09:55:33'),
(51, 'info@markdesign.net', 'ProductController Update 27', '2014-06-13 09:56:52'),
(52, 'info@markdesign.net', 'Product Controller Create 28', '2014-06-13 10:05:17'),
(53, 'info@markdesign.net', 'Product Controller Create 29', '2014-06-13 10:11:29'),
(54, 'info@markdesign.net', 'ProductController Update 29', '2014-06-13 10:12:31'),
(55, 'info@markdesign.net', 'Product Controller Create 30', '2014-06-13 10:17:03'),
(56, 'info@markdesign.net', 'ProductController Update 30', '2014-06-13 10:19:09'),
(57, 'info@markdesign.net', 'Product Controller Create 31', '2014-06-13 10:23:22'),
(58, 'info@markdesign.net', 'ProductController Update 31', '2014-06-13 10:24:10'),
(59, 'info@markdesign.net', 'Product Controller Create 32', '2014-06-13 10:26:48'),
(60, 'info@markdesign.net', 'Product Controller Create 33', '2014-06-13 10:33:05'),
(61, 'info@markdesign.net', 'Product Controller Create 34', '2014-06-13 10:39:27'),
(62, 'info@markdesign.net', 'ProductController Update 34', '2014-06-13 10:40:30'),
(63, 'info@markdesign.net', 'Product Controller Create 35', '2014-06-13 10:43:41'),
(64, 'info@markdesign.net', 'Product Controller Create 36', '2014-06-13 11:23:42'),
(65, 'info@markdesign.net', 'ProductController Update 36', '2014-06-13 11:26:54'),
(66, 'info@markdesign.net', 'ProductController Update 36', '2014-06-13 11:31:02'),
(67, 'info@markdesign.net', 'Bank Update 1', '2014-06-13 12:06:10'),
(68, 'info@markdesign.net', 'Bank Update 2', '2014-06-13 12:07:56'),
(69, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-13 12:27:54'),
(70, 'info@markdesign.net', 'ProductController Update 32', '2014-06-13 12:37:28'),
(71, 'info@markdesign.net', 'Product Controller Create 39', '2014-06-13 13:46:38'),
(72, 'info@markdesign.net', 'ProductController Update 39', '2014-06-13 13:46:54'),
(73, 'info@markdesign.net', 'Product Controller Create 40', '2014-06-13 13:54:28'),
(74, 'info@markdesign.net', 'Product Controller Copy 41', '2014-06-13 13:58:55'),
(75, 'info@markdesign.net', 'ProductController Update 41', '2014-06-13 14:00:11'),
(76, 'info@markdesign.net', 'Product Controller Create 42', '2014-06-13 14:03:29'),
(77, 'info@markdesign.net', 'ProductController Update 41', '2014-06-13 14:06:06'),
(78, 'info@markdesign.net', 'Product Controller Copy 43', '2014-06-13 14:06:25'),
(79, 'info@markdesign.net', 'ProductController Update 43', '2014-06-13 14:07:14'),
(80, 'info@markdesign.net', 'ProductController Update 41', '2014-06-13 14:08:27'),
(81, 'info@markdesign.net', 'Product Controller Create 44', '2014-06-13 14:12:09'),
(82, 'info@markdesign.net', 'Product Controller Copy 45', '2014-06-13 14:13:52'),
(83, 'info@markdesign.net', 'ProductController Update 45', '2014-06-13 14:14:42'),
(84, 'info@markdesign.net', 'Product Controller Copy 46', '2014-06-13 14:15:34'),
(85, 'info@markdesign.net', 'ProductController Update 46', '2014-06-13 14:16:19'),
(86, 'info@markdesign.net', 'Product Controller Create 47', '2014-06-13 14:19:04'),
(87, 'info@markdesign.net', 'ProductController Update 44', '2014-06-13 14:22:25'),
(88, 'info@markdesign.net', 'ProductController Update 46', '2014-06-13 14:22:32'),
(89, 'info@markdesign.net', 'ProductController Update 45', '2014-06-13 14:22:39'),
(90, 'info@markdesign.net', 'Product Controller Copy 48', '2014-06-13 14:22:53'),
(91, 'info@markdesign.net', 'Product Controller Create 49', '2014-06-13 14:26:59'),
(92, 'info@markdesign.net', 'ProductController Update 48', '2014-06-13 14:28:28'),
(93, 'info@markdesign.net', 'ProductController Update 48', '2014-06-13 14:31:14'),
(94, 'info@markdesign.net', 'Product Controller Create 50', '2014-06-13 14:34:03'),
(95, 'info@markdesign.net', 'Product Controller Copy 51', '2014-06-13 14:38:45'),
(96, 'info@markdesign.net', 'ProductController Update 51', '2014-06-13 14:39:36'),
(97, 'info@markdesign.net', 'Product Controller Copy 52', '2014-06-13 14:40:09'),
(98, 'info@markdesign.net', 'ProductController Update 52', '2014-06-13 14:40:59'),
(99, 'info@markdesign.net', 'Product Controller Create 53', '2014-06-13 15:08:24'),
(100, 'info@markdesign.net', 'Product Controller Create 54', '2014-06-13 15:16:46'),
(101, 'info@markdesign.net', 'Product Controller Copy 55', '2014-06-13 15:24:13'),
(102, 'info@markdesign.net', 'ProductController Update 55', '2014-06-13 15:25:21'),
(103, 'info@markdesign.net', 'ProductController Update 55', '2014-06-13 15:27:31'),
(104, 'info@markdesign.net', 'Product Controller Create 56', '2014-06-13 15:38:50'),
(105, 'info@markdesign.net', 'Product Controller Copy 57', '2014-06-13 15:40:47'),
(106, 'info@markdesign.net', 'ProductController Update 57', '2014-06-13 15:43:01'),
(107, 'info@markdesign.net', 'ProductController Update 57', '2014-06-13 15:43:03'),
(108, 'info@markdesign.net', 'Product Controller Create 58', '2014-06-13 15:47:20'),
(109, 'info@markdesign.net', 'Product Controller Copy 59', '2014-06-13 16:06:35'),
(110, 'info@markdesign.net', 'ProductController Update 59', '2014-06-13 16:07:36'),
(111, 'info@markdesign.net', 'ProductController Update 59', '2014-06-13 16:08:12'),
(112, 'info@markdesign.net', 'Product Controller Copy 60', '2014-06-13 16:08:45'),
(113, 'info@markdesign.net', 'ProductController Update 60', '2014-06-13 16:09:55'),
(114, 'info@markdesign.net', 'Product Controller Copy 61', '2014-06-13 16:11:17'),
(115, 'info@markdesign.net', 'ProductController Update 61', '2014-06-13 16:13:57'),
(116, 'info@markdesign.net', 'Product Controller Create 62', '2014-06-13 16:22:39'),
(117, 'info@markdesign.net', 'Product Controller Copy 63', '2014-06-13 16:34:54'),
(118, 'info@markdesign.net', 'ProductController Update 63', '2014-06-13 16:36:20'),
(119, 'info@markdesign.net', 'Product Controller Create 64', '2014-06-13 16:56:12'),
(120, 'info@markdesign.net', 'ProductController Update 64', '2014-06-13 16:57:12'),
(121, 'info@markdesign.net', 'Product Controller Copy 65', '2014-06-13 16:58:20'),
(122, 'info@markdesign.net', 'Product Controller Copy 66', '2014-06-13 16:58:21'),
(123, 'info@markdesign.net', 'Product Controller Copy 67', '2014-06-13 16:58:22'),
(124, 'info@markdesign.net', 'Product Controller Copy 68', '2014-06-13 16:58:31'),
(125, 'info@markdesign.net', 'ProductController Update 65', '2014-06-13 17:00:58'),
(126, 'info@markdesign.net', 'Product Controller Copy 69', '2014-06-13 17:01:40'),
(127, 'info@markdesign.net', 'ProductController Update 69', '2014-06-13 17:03:05'),
(128, 'info@markdesign.net', 'Product Controller Copy 70', '2014-06-13 17:03:31'),
(129, 'info@markdesign.net', 'ProductController Update 70', '2014-06-13 17:04:47'),
(130, 'info@markdesign.net', 'Product Controller Create 71', '2014-06-13 17:10:18'),
(131, 'info@markdesign.net', 'Product Controller Copy 72', '2014-06-13 17:20:30'),
(132, 'info@markdesign.net', 'ProductController Update 72', '2014-06-13 17:23:10'),
(133, 'info@markdesign.net', 'ProductController Update 72', '2014-06-13 17:24:38'),
(134, 'info@markdesign.net', 'Product Controller Copy 73', '2014-06-13 17:28:37'),
(135, 'info@markdesign.net', 'ProductController Update 73', '2014-06-13 17:29:57'),
(136, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-14 02:45:24'),
(137, 'info@markdesign.net', 'Product Controller Create 74', '2014-06-14 02:49:43'),
(138, 'info@markdesign.net', 'Product Controller Copy 75', '2014-06-14 02:50:04'),
(139, 'info@markdesign.net', 'ProductController Update 75', '2014-06-14 02:50:33'),
(140, 'info@markdesign.net', 'Product Controller Create 76', '2014-06-14 02:54:12'),
(141, 'info@markdesign.net', 'ProductController Update 76', '2014-06-14 04:20:54'),
(142, 'info@markdesign.net', 'Setting Update', '2014-06-14 04:28:50'),
(143, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-14 07:56:13'),
(144, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-15 04:52:16'),
(145, 'info@markdesign.net', 'ProductController Update 73', '2014-06-15 04:56:05'),
(146, 'info@markdesign.net', 'ProductController Update 72', '2014-06-15 04:56:32'),
(147, 'info@markdesign.net', 'Bank Update 2', '2014-06-15 04:59:02'),
(148, 'info@markdesign.net', 'Bank Update 2', '2014-06-15 04:59:10'),
(149, 'info@markdesign.net', 'ProductController Update 75', '2014-06-15 05:01:29'),
(150, 'info@markdesign.net', 'ProductController Update 74', '2014-06-15 05:01:32'),
(151, 'info@markdesign.net', 'ProductController Update 70', '2014-06-15 05:02:00'),
(152, 'info@markdesign.net', 'ProductController Update 69', '2014-06-15 05:02:08'),
(153, 'info@markdesign.net', 'ProductController Update 65', '2014-06-15 05:02:15'),
(154, 'info@markdesign.net', 'ProductController Update 63', '2014-06-15 05:03:13'),
(155, 'info@markdesign.net', 'Product Controller Create 77', '2014-06-16 06:15:07'),
(156, 'info@markdesign.net', 'Product Controller Create 78', '2014-06-16 06:21:26'),
(157, 'info@markdesign.net', 'Product Controller Create 79', '2014-06-16 06:24:18'),
(158, 'info@markdesign.net', 'Product Controller Copy 80', '2014-06-16 06:24:35'),
(159, 'info@markdesign.net', 'ProductController Update 80', '2014-06-16 06:25:11'),
(160, 'info@markdesign.net', 'Product Controller Create 82', '2014-06-16 09:17:06'),
(161, 'info@markdesign.net', 'ProductController Update 82', '2014-06-16 09:17:29'),
(162, 'info@markdesign.net', 'ProductController Update 82', '2014-06-16 09:18:26'),
(163, 'info@markdesign.net', 'Product Controller Copy 83', '2014-06-16 09:18:53'),
(164, 'info@markdesign.net', 'ProductController Update 83', '2014-06-16 09:19:28'),
(165, 'info@markdesign.net', 'ProductController Update 83', '2014-06-16 09:19:44'),
(166, 'info@markdesign.net', 'Product Controller Create 84', '2014-06-16 09:21:27'),
(167, 'info@markdesign.net', 'ProductController Update 84', '2014-06-16 09:21:58'),
(168, 'info@markdesign.net', 'Product Controller Create 85', '2014-06-16 09:25:46'),
(169, 'info@markdesign.net', 'Product Controller Copy 86', '2014-06-16 09:34:07'),
(170, 'info@markdesign.net', 'ProductController Update 86', '2014-06-16 09:34:39'),
(171, 'info@markdesign.net', 'ProductController Update 86', '2014-06-16 09:36:07'),
(172, 'info@markdesign.net', 'ProductController Update 85', '2014-06-16 09:38:41'),
(173, 'info@markdesign.net', 'Product Controller Create 88', '2014-06-16 09:42:26'),
(174, 'info@markdesign.net', 'ProductController Update 88', '2014-06-16 09:44:46'),
(175, 'info@markdesign.net', 'Product Controller Create 89', '2014-06-16 09:50:18'),
(176, 'info@markdesign.net', 'Product Controller Copy 90', '2014-06-16 09:51:21'),
(177, 'info@markdesign.net', 'ProductController Update 90', '2014-06-16 09:52:56'),
(178, 'info@markdesign.net', 'ProductController Update 90', '2014-06-16 09:55:07'),
(179, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-16 12:02:48'),
(180, 'info@markdesign.net', 'Setting Update', '2014-06-16 12:08:01'),
(181, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-16 12:21:12'),
(182, 'info@markdesign.net', 'CategoryController Create 52', '2014-06-16 12:29:55'),
(183, 'info@markdesign.net', 'CategoryController Update 52', '2014-06-16 12:31:11'),
(184, 'info@markdesign.net', 'CategoryController Create 53', '2014-06-16 12:37:44'),
(185, 'info@markdesign.net', 'CategoryController Create 54', '2014-06-16 12:38:36'),
(186, 'info@markdesign.net', 'CategoryController Create 55', '2014-06-16 12:52:29'),
(187, 'info@markdesign.net', 'CategoryController Create 56', '2014-06-16 12:52:46'),
(188, 'info@markdesign.net', 'CategoryController Create 57', '2014-06-16 12:54:06'),
(189, 'info@markdesign.net', 'CategoryController Create 58', '2014-06-16 12:54:39'),
(190, 'info@markdesign.net', 'CategoryController Create 59', '2014-06-16 12:54:51'),
(191, 'info@markdesign.net', 'CategoryController Create 60', '2014-06-16 12:55:36'),
(192, 'info@markdesign.net', 'Product Controller Create 92', '2014-06-16 15:42:38'),
(193, 'info@markdesign.net', 'Product Controller Create 93', '2014-06-16 15:44:11'),
(194, 'info@markdesign.net', 'Product Controller Create 94', '2014-06-16 15:46:34'),
(195, 'info@markdesign.net', 'Product Controller Create 95', '2014-06-16 15:47:33'),
(196, 'info@markdesign.net', 'Product Controller Create 96', '2014-06-16 15:49:13'),
(197, 'info@markdesign.net', 'ProductController Update 93', '2014-06-16 15:49:42'),
(198, 'info@markdesign.net', 'ProductController Update 92', '2014-06-16 15:50:05'),
(199, 'info@markdesign.net', 'Product Controller Create 95', '2014-06-16 15:50:33'),
(200, 'info@markdesign.net', 'Product Controller Create 94', '2014-06-16 15:50:50'),
(201, 'info@markdesign.net', 'Product Controller Create 98', '2014-06-16 15:58:32'),
(202, 'info@markdesign.net', 'Product Controller Create 98', '2014-06-16 16:00:46'),
(203, 'info@markdesign.net', 'Product Controller Create 99', '2014-06-16 16:01:12'),
(204, 'info@markdesign.net', 'Product Controller Copy 100', '2014-06-16 16:02:27'),
(205, 'info@markdesign.net', 'Product Controller Copy 101', '2014-06-16 16:02:38'),
(206, 'info@markdesign.net', 'Product Controller Copy 102', '2014-06-16 16:02:43'),
(207, 'info@markdesign.net', 'Product Controller Copy 103', '2014-06-16 16:03:02'),
(208, 'info@markdesign.net', 'Product Controller Copy 104', '2014-06-16 16:03:03'),
(209, 'info@markdesign.net', 'Product Controller Copy 105', '2014-06-16 16:03:06'),
(210, 'info@markdesign.net', 'ProductController Update 102', '2014-06-16 16:07:42'),
(211, 'info@markdesign.net', 'ProductController Update 104', '2014-06-16 16:08:25'),
(212, 'info@markdesign.net', 'ProductController Update 101', '2014-06-16 16:09:26'),
(213, 'info@markdesign.net', 'ProductController Update 102', '2014-06-16 16:09:31'),
(214, 'info@markdesign.net', 'ProductController Update 100', '2014-06-16 16:12:33'),
(215, 'info@markdesign.net', 'ProductController Update 100', '2014-06-16 16:14:35'),
(216, 'info@markdesign.net', 'ProductController Update 103', '2014-06-16 16:15:33'),
(217, 'info@markdesign.net', 'ProductController Update 105', '2014-06-16 16:16:37'),
(218, 'info@markdesign.net', 'Product Controller Copy 106', '2014-06-16 16:19:03'),
(219, 'info@markdesign.net', 'Product Controller Copy 107', '2014-06-16 16:19:13'),
(220, 'info@markdesign.net', 'ProductController Update 106', '2014-06-16 16:23:38'),
(221, 'info@markdesign.net', 'ProductController Update 107', '2014-06-16 16:24:15'),
(222, 'info@markdesign.net', 'ProductController Update 98', '2014-06-16 16:27:40'),
(223, 'info@markdesign.net', 'Product Controller Copy 108', '2014-06-17 03:29:37'),
(224, 'info@markdesign.net', 'ProductController Update 108', '2014-06-17 03:30:42'),
(225, 'info@markdesign.net', 'Product Controller Create 109', '2014-06-17 03:32:12'),
(226, 'info@markdesign.net', 'Product Controller Create 110', '2014-06-17 03:33:37'),
(227, 'info@markdesign.net', 'Product Controller Create 111', '2014-06-17 03:38:32'),
(228, 'info@markdesign.net', 'Product Controller Create 112', '2014-06-17 03:39:11'),
(229, 'info@markdesign.net', 'Product Controller Copy 114', '2014-06-17 03:39:31'),
(230, 'info@markdesign.net', 'Product Controller Copy 115', '2014-06-17 03:39:35'),
(231, 'info@markdesign.net', 'ProductController Update 114', '2014-06-17 03:41:11'),
(232, 'info@markdesign.net', 'ProductController Update 115', '2014-06-17 03:42:10'),
(233, 'info@markdesign.net', 'Product Controller Create 116', '2014-06-17 03:44:15'),
(234, 'info@markdesign.net', 'Product Controller Create 117', '2014-06-17 03:45:49'),
(235, 'info@markdesign.net', 'Product Controller Create 118', '2014-06-17 03:47:17'),
(236, 'info@markdesign.net', 'Product Controller Copy 119', '2014-06-17 03:47:40'),
(237, 'info@markdesign.net', 'Product Controller Copy 120', '2014-06-17 03:47:44'),
(238, 'info@markdesign.net', 'ProductController Update 119', '2014-06-17 03:48:31'),
(239, 'info@markdesign.net', 'ProductController Update 120', '2014-06-17 03:49:17'),
(240, 'info@markdesign.net', 'Product Controller Create 121', '2014-06-17 03:51:39'),
(241, 'info@markdesign.net', 'Product Controller Create 122', '2014-06-17 03:53:01'),
(242, 'info@markdesign.net', 'Product Controller Copy 124', '2014-06-17 03:55:09'),
(243, 'info@markdesign.net', 'Product Controller Copy 125', '2014-06-17 03:55:13'),
(244, 'info@markdesign.net', 'Product Controller Copy 126', '2014-06-17 03:55:22'),
(245, 'info@markdesign.net', 'Product Controller Create 123', '2014-06-17 03:55:39'),
(246, 'info@markdesign.net', 'ProductController Update 124', '2014-06-17 03:56:12'),
(247, 'info@markdesign.net', 'ProductController Update 124', '2014-06-17 03:56:54'),
(248, 'info@markdesign.net', 'ProductController Update 125', '2014-06-17 03:57:18'),
(249, 'info@markdesign.net', 'ProductController Update 126', '2014-06-17 03:58:03'),
(250, 'info@markdesign.net', 'ProductController Update 120', '2014-06-17 03:58:49'),
(251, 'info@markdesign.net', 'Product Controller Copy 127', '2014-06-17 03:59:12'),
(252, 'info@markdesign.net', 'Product Controller Copy 128', '2014-06-17 03:59:16'),
(253, 'info@markdesign.net', 'ProductController Update 127', '2014-06-17 04:00:03'),
(254, 'info@markdesign.net', 'ProductController Update 128', '2014-06-17 04:00:50'),
(255, 'info@markdesign.net', 'ProductController Update 128', '2014-06-17 04:03:43'),
(256, 'info@markdesign.net', 'ProductController Update 127', '2014-06-17 04:04:21'),
(257, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-17 06:04:09'),
(258, 'deoryzpandu@gmail.com', 'CategoryController Create 61', '2014-06-17 06:25:09'),
(259, 'deoryzpandu@gmail.com', 'CategoryController Update 61', '2014-06-17 06:25:39'),
(260, 'info@markdesign.net', 'Product Controller Create 129', '2014-06-17 08:56:57'),
(261, 'info@markdesign.net', 'Product Controller Create 130', '2014-06-17 08:58:59'),
(262, 'info@markdesign.net', 'Product Controller Copy 131', '2014-06-17 08:59:28'),
(263, 'info@markdesign.net', 'Product Controller Copy 132', '2014-06-17 08:59:34'),
(264, 'info@markdesign.net', 'ProductController Update 131', '2014-06-17 09:00:49'),
(265, 'info@markdesign.net', 'ProductController Update 132', '2014-06-17 09:01:52'),
(266, 'info@markdesign.net', 'Product Controller Copy 133', '2014-06-17 09:02:01'),
(267, 'info@markdesign.net', 'ProductController Update 133', '2014-06-17 09:03:13'),
(268, 'info@markdesign.net', 'Product Controller Create 134', '2014-06-17 09:06:03'),
(269, 'info@markdesign.net', 'Product Controller Create 135', '2014-06-17 09:07:48'),
(270, 'info@markdesign.net', 'Product Controller Create 137', '2014-06-17 09:10:24'),
(271, 'info@markdesign.net', 'Product Controller Create 136', '2014-06-17 09:11:33'),
(272, 'info@markdesign.net', 'Product Controller Copy 138', '2014-06-17 09:12:26'),
(273, 'info@markdesign.net', 'ProductController Update 138', '2014-06-17 09:13:25'),
(274, 'info@markdesign.net', 'Product Controller Create 139', '2014-06-17 09:16:57'),
(275, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-17 09:25:43'),
(276, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-17 09:25:58'),
(277, 'deoryzpandu@gmail.com', 'CategoryController Create 62', '2014-06-17 11:26:05'),
(278, 'deoryzpandu@gmail.com', 'CategoryController Update 62', '2014-06-17 11:26:42'),
(279, 'deoryzpandu@gmail.com', 'CategoryController Update 62', '2014-06-17 11:27:00'),
(280, 'deoryzpandu@gmail.com', 'CategoryController Update 62', '2014-06-17 11:27:58'),
(281, 'deoryzpandu@gmail.com', 'CategoryController Create 63', '2014-06-17 11:28:34'),
(282, 'deoryzpandu@gmail.com', 'CategoryController Create 64', '2014-06-17 11:29:00'),
(283, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-18 09:42:03'),
(284, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-18 09:58:02'),
(285, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-18 09:59:10'),
(286, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-18 10:36:45'),
(287, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-18 10:41:09'),
(288, 'deoryzpandu@gmail.com', 'CategoryController Update 12', '2014-06-18 10:48:01'),
(289, 'deoryzpandu@gmail.com', 'CategoryController Update 11', '2014-06-18 10:48:08'),
(290, 'deoryzpandu@gmail.com', 'CategoryController Update 10', '2014-06-18 10:48:28'),
(291, 'deoryzpandu@gmail.com', 'CategoryController Update 13', '2014-06-18 10:49:45'),
(292, 'deoryzpandu@gmail.com', 'CategoryController Update 14', '2014-06-18 10:49:54'),
(293, 'deoryzpandu@gmail.com', 'CategoryController Update 15', '2014-06-18 10:50:01'),
(294, 'deoryzpandu@gmail.com', 'CategoryController Update 16', '2014-06-18 10:50:12'),
(295, 'deoryzpandu@gmail.com', 'CategoryController Update 17', '2014-06-18 10:50:22'),
(296, 'deoryzpandu@gmail.com', 'CategoryController Update 18', '2014-06-18 10:50:46'),
(297, 'deoryzpandu@gmail.com', 'CategoryController Update 19', '2014-06-18 10:50:55'),
(298, 'deoryzpandu@gmail.com', 'CategoryController Update 20', '2014-06-18 10:51:07'),
(299, 'deoryzpandu@gmail.com', 'CategoryController Update 21', '2014-06-18 10:51:19'),
(300, 'deoryzpandu@gmail.com', 'CategoryController Update 42', '2014-06-18 10:51:31'),
(301, 'deoryzpandu@gmail.com', 'CategoryController Update 43', '2014-06-18 10:51:39'),
(302, 'deoryzpandu@gmail.com', 'CategoryController Update 44', '2014-06-18 10:51:55'),
(303, 'deoryzpandu@gmail.com', 'CategoryController Update 45', '2014-06-18 10:52:04'),
(304, 'deoryzpandu@gmail.com', 'CategoryController Update 12', '2014-06-18 10:54:23'),
(305, 'deoryzpandu@gmail.com', 'CategoryController Update 13', '2014-06-18 10:57:21'),
(306, 'deoryzpandu@gmail.com', 'CategoryController Update 14', '2014-06-18 10:57:34'),
(307, 'deoryzpandu@gmail.com', 'CategoryController Update 15', '2014-06-18 10:57:42'),
(308, 'deoryzpandu@gmail.com', 'CategoryController Update 16', '2014-06-18 10:57:50'),
(309, 'deoryzpandu@gmail.com', 'CategoryController Update 17', '2014-06-18 10:58:02'),
(310, 'deoryzpandu@gmail.com', 'CategoryController Update 18', '2014-06-18 10:58:14'),
(311, 'deoryzpandu@gmail.com', 'CategoryController Update 19', '2014-06-18 10:58:23'),
(312, 'deoryzpandu@gmail.com', 'CategoryController Update 20', '2014-06-18 10:58:34'),
(313, 'deoryzpandu@gmail.com', 'CategoryController Update 21', '2014-06-18 10:58:42'),
(314, 'deoryzpandu@gmail.com', 'CategoryController Update 42', '2014-06-18 10:58:57'),
(315, 'deoryzpandu@gmail.com', 'CategoryController Update 43', '2014-06-18 10:59:04'),
(316, 'deoryzpandu@gmail.com', 'CategoryController Update 44', '2014-06-18 10:59:12'),
(317, 'deoryzpandu@gmail.com', 'CategoryController Update 45', '2014-06-18 10:59:19'),
(318, 'deoryzpandu@gmail.com', 'CategoryController Create 65', '2014-06-18 11:26:30'),
(319, 'deoryzpandu@gmail.com', 'CategoryController Update 65', '2014-06-18 11:26:48'),
(320, 'deoryzpandu@gmail.com', 'CategoryController Create 66', '2014-06-18 11:26:59'),
(321, 'deoryzpandu@gmail.com', 'BlogController Update 25', '2014-06-18 11:41:22'),
(322, 'deoryzpandu@gmail.com', 'BlogController Update 89', '2014-06-18 11:41:37'),
(323, 'deoryzpandu@gmail.com', 'BlogController Update 15', '2014-06-18 11:48:23'),
(324, 'deoryzpandu@gmail.com', 'BlogController Update 124', '2014-06-18 11:48:43'),
(325, 'deoryzpandu@gmail.com', 'Blog Controller Create 1', '2014-06-18 12:24:30'),
(326, 'deoryzpandu@gmail.com', 'Blog Controller Create 2', '2014-06-18 12:27:26'),
(327, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2014-06-18 12:28:02'),
(328, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-18 13:03:30'),
(329, 'info@markdesign.net', 'ProductController Update 244', '2014-06-18 13:08:09'),
(330, 'info@markdesign.net', 'ProductController Update 245', '2014-06-18 13:09:28'),
(331, 'info@markdesign.net', 'ProductController Update 223', '2014-06-18 13:17:55'),
(332, 'info@markdesign.net', 'ProductController Update 222', '2014-06-18 13:18:13'),
(333, 'info@markdesign.net', 'ProductController Update 222', '2014-06-18 13:18:54'),
(334, 'info@markdesign.net', 'ProductController Update 221', '2014-06-18 13:19:20'),
(335, 'info@markdesign.net', 'ProductController Update 220', '2014-06-18 13:19:47'),
(336, 'info@markdesign.net', 'ProductController Update 219', '2014-06-18 13:20:23'),
(337, 'Info@markdesign.net', 'Login: Info@markdesign.net', '2014-06-19 01:28:30'),
(338, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-19 03:40:01'),
(339, 'info@markdesign.net', 'Blog Controller Create 3', '2014-06-19 03:43:43'),
(340, 'info@markdesign.net', 'Blog Controller Create 4', '2014-06-19 03:45:48'),
(341, 'info@markdesign.net', 'Blog Controller Create 5', '2014-06-19 03:48:43'),
(342, 'info@markdesign.net', 'Blog Controller Create 6', '2014-06-19 03:49:47'),
(343, 'info@markdesign.net', 'BlogController Update 2', '2014-06-19 03:52:11'),
(344, 'info@markdesign.net', 'BlogController Update 1', '2014-06-19 03:53:37'),
(345, 'deoryzpandu@gmail.com', 'Blog Controller Create 7', '2014-06-19 04:51:04'),
(346, 'deoryzpandu@gmail.com', 'Blog Controller Create 8', '2014-06-19 04:52:16'),
(347, 'Info@markdesign.net', 'Login: Info@markdesign.net', '2014-06-19 05:26:39'),
(348, 'Info@markdesign.net', 'ProductController Update 163', '2014-06-19 05:29:41'),
(349, 'Info@markdesign.net', 'ProductController Update 167', '2014-06-19 05:37:00'),
(350, 'info@markdesign.net', 'ProductController Update 172', '2014-06-19 05:49:22'),
(351, 'info@markdesign.net', 'ProductController Update 172', '2014-06-19 05:50:01'),
(352, 'info@markdesign.net', 'ProductController Update 171', '2014-06-19 05:50:39'),
(353, 'info@markdesign.net', 'ProductController Update 172', '2014-06-19 05:50:41'),
(354, 'info@markdesign.net', 'ProductController Update 171', '2014-06-19 05:52:20'),
(355, 'info@markdesign.net', 'ProductController Update 168', '2014-06-19 05:54:07'),
(356, 'info@markdesign.net', 'ProductController Update 171', '2014-06-19 05:54:10'),
(357, 'info@markdesign.net', 'ProductController Update 244', '2014-06-19 05:57:12'),
(358, 'info@markdesign.net', 'ProductController Update 168', '2014-06-19 05:57:26'),
(359, 'info@markdesign.net', 'ProductController Update 245', '2014-06-19 05:59:11'),
(360, 'info@markdesign.net', 'ProductController Update 170', '2014-06-19 06:01:06'),
(361, 'info@markdesign.net', 'ProductController Update 128', '2014-06-19 06:03:31'),
(362, 'info@markdesign.net', 'ProductController Update 128', '2014-06-19 06:03:40'),
(363, 'info@markdesign.net', 'Product Controller Create 249', '2014-06-19 06:14:15'),
(364, 'info@markdesign.net', 'ProductController Update 249', '2014-06-19 06:20:24'),
(365, 'info@markdesign.net', 'ProductController Update 249', '2014-06-19 06:23:09'),
(366, 'info@markdesign.net', 'ProductController Update 249', '2014-06-19 06:24:35'),
(367, 'deoryzpandu@gmail.com', 'Blog Controller Create 9', '2014-06-19 07:29:41'),
(368, 'deoryzpandu@gmail.com', 'Blog Controller Create 10', '2014-06-19 07:30:42'),
(369, 'deoryzpandu@gmail.com', 'Blog Controller Create 11', '2014-06-19 07:31:43'),
(370, 'deoryzpandu@gmail.com', 'Blog Controller Create 12', '2014-06-19 07:33:27'),
(371, 'deoryzpandu@gmail.com', 'BlogController Update 12', '2014-06-19 07:33:34'),
(372, 'deoryzpandu@gmail.com', 'Blog Controller Create 13', '2014-06-19 07:34:37'),
(373, 'info@markdesign.net', 'ProductController Update 244', '2014-06-19 07:35:34'),
(374, 'deoryzpandu@gmail.com', 'BlogController Update 11', '2014-06-19 07:36:09'),
(375, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-19 07:56:46'),
(376, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-19 07:57:03'),
(377, 'deoryzpandu@gmail.com', 'BlogController Update 13', '2014-06-19 08:29:00'),
(378, 'deoryzpandu@gmail.com', 'BlogController Update 12', '2014-06-19 08:30:05'),
(379, 'deoryzpandu@gmail.com', 'BlogController Update 11', '2014-06-19 08:30:59'),
(380, 'deoryzpandu@gmail.com', 'BlogController Update 10', '2014-06-19 08:32:44'),
(381, 'deoryzpandu@gmail.com', 'BlogController Update 9', '2014-06-19 08:33:52'),
(382, 'deoryzpandu@gmail.com', 'BlogController Update 8', '2014-06-19 08:34:40'),
(383, 'deoryzpandu@gmail.com', 'BlogController Update 7', '2014-06-19 08:35:00'),
(384, 'deoryzpandu@gmail.com', 'BlogController Update 7', '2014-06-19 08:36:38'),
(385, 'deoryzpandu@gmail.com', 'BlogController Update 8', '2014-06-19 08:37:20'),
(386, 'deoryzpandu@gmail.com', 'BlogController Update 9', '2014-06-19 08:38:10'),
(387, 'deoryzpandu@gmail.com', 'BlogController Update 10', '2014-06-19 08:38:35'),
(388, 'deoryzpandu@gmail.com', 'BlogController Update 11', '2014-06-19 08:38:58'),
(389, 'deoryzpandu@gmail.com', 'BlogController Update 12', '2014-06-19 08:39:24'),
(390, 'deoryzpandu@gmail.com', 'BlogController Update 13', '2014-06-19 08:39:50'),
(391, 'deoryzpandu@gmail.com', 'BlogController Update 13', '2014-06-19 08:42:53'),
(392, 'deoryzpandu@gmail.com', 'BlogController Update 12', '2014-06-19 08:43:49'),
(393, 'deoryzpandu@gmail.com', 'BlogController Update 12', '2014-06-19 08:44:05'),
(394, 'deoryzpandu@gmail.com', 'BlogController Update 11', '2014-06-19 08:44:33'),
(395, 'deoryzpandu@gmail.com', 'BlogController Update 10', '2014-06-19 08:44:42'),
(396, 'deoryzpandu@gmail.com', 'BlogController Update 9', '2014-06-19 08:44:52'),
(397, 'info@markdesign.net', 'ProductController Update 131', '2014-06-19 09:44:26'),
(398, 'info@markdesign.net', 'ProductController Update 132', '2014-06-19 09:46:47'),
(399, 'info@markdesign.net', 'ProductController Update 132', '2014-06-19 09:47:44'),
(400, 'info@markdesign.net', 'ProductController Update 132', '2014-06-19 09:49:16'),
(401, 'info@markdesign.net', 'ProductController Update 132', '2014-06-19 09:50:38'),
(402, 'info@markdesign.net', 'ProductController Update 132', '2014-06-19 09:52:00'),
(403, 'info@markdesign.net', 'ProductController Update 131', '2014-06-19 09:52:41'),
(404, 'info@markdesign.net', 'ProductController Update 133', '2014-06-19 09:54:28'),
(405, 'info@markdesign.net', 'ProductController Update 130', '2014-06-19 10:00:54'),
(406, 'info@markdesign.net', 'ProductController Update 128', '2014-06-19 10:31:07'),
(407, 'info@markdesign.net', 'ProductController Update 128', '2014-06-19 10:32:33'),
(408, 'info@markdesign.net', 'ProductController Update 128', '2014-06-19 10:33:11'),
(409, 'info@markdesign.net', 'ProductController Update 123', '2014-06-19 10:33:22'),
(410, 'info@markdesign.net', 'ProductController Update 124', '2014-06-19 10:34:28'),
(411, 'info@markdesign.net', 'ProductController Update 125', '2014-06-19 10:36:15'),
(412, 'info@markdesign.net', 'ProductController Update 126', '2014-06-19 10:37:37'),
(413, 'info@markdesign.net', 'ProductController Update 127', '2014-06-19 10:39:08'),
(414, 'info@markdesign.net', 'ProductController Update 122', '2014-06-19 10:41:09'),
(415, 'info@markdesign.net', 'ProductController Update 121', '2014-06-19 10:42:19'),
(416, 'info@markdesign.net', 'ProductController Update 120', '2014-06-19 10:43:59'),
(417, 'info@markdesign.net', 'ProductController Update 119', '2014-06-19 10:45:39'),
(418, 'info@markdesign.net', 'ProductController Update 118', '2014-06-19 10:46:47'),
(419, 'info@markdesign.net', 'ProductController Update 117', '2014-06-19 10:48:02'),
(420, 'info@markdesign.net', 'ProductController Update 116', '2014-06-19 10:49:12'),
(421, 'info@markdesign.net', 'ProductController Update 117', '2014-06-19 10:49:53'),
(422, 'info@markdesign.net', 'ProductController Update 115', '2014-06-19 10:50:56'),
(423, 'info@markdesign.net', 'ProductController Update 249', '2014-06-19 12:33:59'),
(424, 'info@markdesign.net', 'ProductController Update 36', '2014-06-19 12:35:45'),
(425, 'info@markdesign.net', 'ProductController Update 34', '2014-06-19 12:37:08'),
(426, 'info@markdesign.net', 'ProductController Update 33', '2014-06-19 12:38:28'),
(427, 'info@markdesign.net', 'ProductController Update 35', '2014-06-19 12:39:55'),
(428, 'info@markdesign.net', 'ProductController Update 32', '2014-06-19 12:41:02'),
(429, 'info@markdesign.net', 'ProductController Update 31', '2014-06-19 12:41:56'),
(430, 'info@markdesign.net', 'ProductController Update 36', '2014-06-19 12:42:12'),
(431, 'info@markdesign.net', 'ProductController Update 34', '2014-06-19 12:42:16'),
(432, 'info@markdesign.net', 'ProductController Update 33', '2014-06-19 12:42:20'),
(433, 'info@markdesign.net', 'ProductController Update 32', '2014-06-19 12:43:07'),
(434, 'info@markdesign.net', 'ProductController Update 30', '2014-06-19 12:44:15'),
(435, 'info@markdesign.net', 'ProductController Update 35', '2014-06-19 12:44:22'),
(436, 'info@markdesign.net', 'ProductController Update 29', '2014-06-19 12:48:34'),
(437, 'info@markdesign.net', 'ProductController Update 28', '2014-06-19 12:51:08'),
(438, 'info@markdesign.net', 'ProductController Update 27', '2014-06-19 12:52:56'),
(439, 'info@markdesign.net', 'ProductController Update 27', '2014-06-19 12:53:40'),
(440, 'info@markdesign.net', 'ProductController Update 12', '2014-06-19 13:10:59'),
(441, 'info@markdesign.net', 'ProductController Update 14', '2014-06-19 13:11:02'),
(442, 'info@markdesign.net', 'ProductController Update 15', '2014-06-19 13:11:34'),
(443, 'info@markdesign.net', 'ProductController Update 17', '2014-06-19 13:11:34'),
(444, 'info@markdesign.net', 'ProductController Update 11', '2014-06-19 13:11:41'),
(445, 'info@markdesign.net', 'ProductController Update 18', '2014-06-19 13:14:17'),
(446, 'info@markdesign.net', 'ProductController Update 16', '2014-06-19 13:14:24'),
(447, 'info@markdesign.net', 'ProductController Update 21', '2014-06-19 13:17:14'),
(448, 'info@markdesign.net', 'ProductController Update 23', '2014-06-19 13:17:22'),
(449, 'info@markdesign.net', 'ProductController Update 19', '2014-06-19 13:19:14'),
(450, 'info@markdesign.net', 'ProductController Update 24', '2014-06-19 13:19:22'),
(451, 'info@markdesign.net', 'ProductController Update 25', '2014-06-19 13:19:31'),
(452, 'info@markdesign.net', 'ProductController Update 4', '2014-06-19 13:23:10'),
(453, 'info@markdesign.net', 'ProductController Update 5', '2014-06-19 13:24:37'),
(454, 'info@markdesign.net', 'ProductController Update 6', '2014-06-19 13:24:41'),
(455, 'info@markdesign.net', 'ProductController Update 7', '2014-06-19 13:24:46'),
(456, 'info@markdesign.net', 'ProductController Update 1', '2014-06-19 13:25:05'),
(457, 'info@markdesign.net', 'ProductController Update 2', '2014-06-19 13:25:10'),
(458, 'info@markdesign.net', 'ProductController Update 3', '2014-06-19 13:25:14'),
(459, 'info@markdesign.net', 'ProductController Update 8', '2014-06-19 13:26:30'),
(460, 'info@markdesign.net', 'ProductController Update 22', '2014-06-19 13:46:56'),
(461, 'info@markdesign.net', 'ProductController Update 10', '2014-06-19 13:49:48'),
(462, 'info@markdesign.net', 'ProductController Update 135', '2014-06-20 02:05:30'),
(463, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-20 02:06:03'),
(464, 'info@markdesign.net', 'ProductController Update 248', '2014-06-20 02:09:38'),
(465, 'info@markdesign.net', 'ProductController Update 142', '2014-06-20 02:09:44'),
(466, 'info@markdesign.net', 'ProductController Update 139', '2014-06-20 02:09:49'),
(467, 'info@markdesign.net', 'ProductController Update 141', '2014-06-20 02:09:52'),
(468, 'info@markdesign.net', 'ProductController Update 247', '2014-06-20 02:09:57'),
(469, 'info@markdesign.net', 'ProductController Update 138', '2014-06-20 02:10:39'),
(470, 'info@markdesign.net', 'ProductController Update 137', '2014-06-20 02:10:41'),
(471, 'info@markdesign.net', 'ProductController Update 136', '2014-06-20 02:10:46'),
(472, 'info@markdesign.net', 'ProductController Update 135', '2014-06-20 02:10:50'),
(473, 'info@markdesign.net', 'ProductController Update 134', '2014-06-20 02:10:54'),
(474, 'info@markdesign.net', 'ProductController Update 133', '2014-06-20 02:10:57'),
(475, 'info@markdesign.net', 'ProductController Update 132', '2014-06-20 02:11:01'),
(476, 'info@markdesign.net', 'ProductController Update 131', '2014-06-20 02:11:04'),
(477, 'info@markdesign.net', 'ProductController Update 130', '2014-06-20 02:11:06'),
(478, 'info@markdesign.net', 'ProductController Update 129', '2014-06-20 02:11:11'),
(479, 'info@markdesign.net', 'ProductController Update 118', '2014-06-20 02:12:00'),
(480, 'info@markdesign.net', 'ProductController Update 117', '2014-06-20 02:12:02'),
(481, 'info@markdesign.net', 'ProductController Update 116', '2014-06-20 02:12:07'),
(482, 'info@markdesign.net', 'ProductController Update 115', '2014-06-20 02:12:10'),
(483, 'info@markdesign.net', 'ProductController Update 114', '2014-06-20 02:12:15'),
(484, 'info@markdesign.net', 'ProductController Update 111', '2014-06-20 02:12:20'),
(485, 'info@markdesign.net', 'ProductController Update 112', '2014-06-20 02:12:21'),
(486, 'info@markdesign.net', 'ProductController Update 110', '2014-06-20 02:12:26'),
(487, 'info@markdesign.net', 'ProductController Update 109', '2014-06-20 02:12:29'),
(488, 'info@markdesign.net', 'ProductController Update 108', '2014-06-20 02:12:38'),
(489, 'info@markdesign.net', 'ProductController Update 107', '2014-06-20 02:13:20'),
(490, 'info@markdesign.net', 'ProductController Update 106', '2014-06-20 02:13:24'),
(491, 'info@markdesign.net', 'ProductController Update 105', '2014-06-20 02:13:25'),
(492, 'info@markdesign.net', 'ProductController Update 104', '2014-06-20 02:13:30'),
(493, 'info@markdesign.net', 'ProductController Update 103', '2014-06-20 02:13:34'),
(494, 'info@markdesign.net', 'ProductController Update 102', '2014-06-20 02:13:35'),
(495, 'info@markdesign.net', 'ProductController Update 101', '2014-06-20 02:13:40'),
(496, 'info@markdesign.net', 'ProductController Update 100', '2014-06-20 02:13:44'),
(497, 'info@markdesign.net', 'ProductController Update 98', '2014-06-20 02:13:47'),
(498, 'info@markdesign.net', 'ProductController Update 99', '2014-06-20 02:13:51'),
(499, 'info@markdesign.net', 'ProductController Update 96', '2014-06-20 02:14:18'),
(500, 'info@markdesign.net', 'ProductController Update 95', '2014-06-20 02:14:20'),
(501, 'info@markdesign.net', 'ProductController Update 94', '2014-06-20 02:14:25'),
(502, 'info@markdesign.net', 'ProductController Update 92', '2014-06-20 02:14:30'),
(503, 'info@markdesign.net', 'ProductController Update 93', '2014-06-20 02:14:43'),
(504, 'info@markdesign.net', 'ProductController Update 90', '2014-06-20 02:15:06'),
(505, 'info@markdesign.net', 'ProductController Update 89', '2014-06-20 02:15:11'),
(506, 'info@markdesign.net', 'ProductController Update 88', '2014-06-20 02:15:15'),
(507, 'info@markdesign.net', 'ProductController Update 90', '2014-06-20 02:15:26'),
(508, 'info@markdesign.net', 'ProductController Update 89', '2014-06-20 02:15:31'),
(509, 'info@markdesign.net', 'ProductController Update 88', '2014-06-20 02:15:34'),
(510, 'info@markdesign.net', 'ProductController Update 86', '2014-06-20 02:15:40'),
(511, 'info@markdesign.net', 'ProductController Update 85', '2014-06-20 02:15:45'),
(512, 'info@markdesign.net', 'ProductController Update 84', '2014-06-20 02:16:23'),
(513, 'info@markdesign.net', 'ProductController Update 83', '2014-06-20 02:16:30'),
(514, 'info@markdesign.net', 'ProductController Update 82', '2014-06-20 02:16:31'),
(515, 'info@markdesign.net', 'ProductController Update 80', '2014-06-20 02:16:45'),
(516, 'info@markdesign.net', 'ProductController Update 79', '2014-06-20 02:17:23'),
(517, 'info@markdesign.net', 'ProductController Update 78', '2014-06-20 02:17:27'),
(518, 'info@markdesign.net', 'ProductController Update 77', '2014-06-20 02:17:31'),
(519, 'info@markdesign.net', 'ProductController Update 76', '2014-06-20 02:17:35'),
(520, 'info@markdesign.net', 'ProductController Update 75', '2014-06-20 02:18:28'),
(521, 'info@markdesign.net', 'ProductController Update 74', '2014-06-20 02:18:33'),
(522, 'info@markdesign.net', 'ProductController Update 73', '2014-06-20 02:18:36'),
(523, 'info@markdesign.net', 'ProductController Update 72', '2014-06-20 02:18:41'),
(524, 'info@markdesign.net', 'ProductController Update 71', '2014-06-20 02:18:44'),
(525, 'info@markdesign.net', 'ProductController Update 70', '2014-06-20 02:18:48'),
(526, 'info@markdesign.net', 'ProductController Update 69', '2014-06-20 02:18:51'),
(527, 'info@markdesign.net', 'ProductController Update 65', '2014-06-20 02:18:55'),
(528, 'info@markdesign.net', 'ProductController Update 64', '2014-06-20 02:18:57'),
(529, 'info@markdesign.net', 'ProductController Update 63', '2014-06-20 02:19:02'),
(530, 'info@markdesign.net', 'ProductController Update 62', '2014-06-20 02:19:06'),
(531, 'info@markdesign.net', 'ProductController Update 61', '2014-06-20 02:19:11'),
(532, 'info@markdesign.net', 'ProductController Update 60', '2014-06-20 02:19:55'),
(533, 'info@markdesign.net', 'ProductController Update 59', '2014-06-20 02:19:58'),
(534, 'info@markdesign.net', 'ProductController Update 58', '2014-06-20 02:20:02'),
(535, 'info@markdesign.net', 'ProductController Update 57', '2014-06-20 02:20:06'),
(536, 'info@markdesign.net', 'ProductController Update 55', '2014-06-20 02:20:10'),
(537, 'info@markdesign.net', 'ProductController Update 56', '2014-06-20 02:20:14'),
(538, 'info@markdesign.net', 'ProductController Update 54', '2014-06-20 02:20:14'),
(539, 'info@markdesign.net', 'ProductController Update 53', '2014-06-20 02:20:20'),
(540, 'info@markdesign.net', 'ProductController Update 52', '2014-06-20 02:20:24'),
(541, 'info@markdesign.net', 'ProductController Update 51', '2014-06-20 02:20:26'),
(542, 'info@markdesign.net', 'ProductController Update 50', '2014-06-20 02:21:38'),
(543, 'info@markdesign.net', 'ProductController Update 49', '2014-06-20 02:21:39'),
(544, 'info@markdesign.net', 'ProductController Update 48', '2014-06-20 02:21:40'),
(545, 'info@markdesign.net', 'ProductController Update 47', '2014-06-20 02:21:44'),
(546, 'info@markdesign.net', 'ProductController Update 46', '2014-06-20 02:21:45'),
(547, 'info@markdesign.net', 'ProductController Update 44', '2014-06-20 02:21:49'),
(548, 'info@markdesign.net', 'ProductController Update 45', '2014-06-20 02:21:51'),
(549, 'info@markdesign.net', 'ProductController Update 44', '2014-06-20 02:21:59'),
(550, 'info@markdesign.net', 'ProductController Update 42', '2014-06-20 02:21:59'),
(551, 'info@markdesign.net', 'ProductController Update 43', '2014-06-20 02:22:00'),
(552, 'info@markdesign.net', 'ProductController Update 41', '2014-06-20 02:22:04'),
(553, 'info@markdesign.net', 'ProductController Update 40', '2014-06-20 02:22:37'),
(554, 'info@markdesign.net', 'ProductController Update 39', '2014-06-20 02:22:40'),
(555, 'info@markdesign.net', 'ProductController Update 13', '2014-06-20 02:22:45'),
(556, 'info@markdesign.net', 'ProductController Update 222', '2014-06-20 02:23:37'),
(557, 'info@markdesign.net', 'ProductController Update 245', '2014-06-20 02:23:45'),
(558, 'info@markdesign.net', 'ProductController Update 168', '2014-06-20 02:23:52'),
(559, 'info@markdesign.net', 'ProductController Update 171', '2014-06-20 02:24:06'),
(560, 'info@markdesign.net', 'ProductController Update 173', '2014-06-20 02:24:11'),
(561, 'info@markdesign.net', 'ProductController Update 167', '2014-06-20 02:24:58'),
(562, 'info@markdesign.net', 'ProductController Update 169', '2014-06-20 02:25:02'),
(563, 'info@markdesign.net', 'ProductController Update 163', '2014-06-20 02:25:08'),
(564, 'info@markdesign.net', 'ProductController Update 168', '2014-06-20 02:25:16'),
(565, 'info@markdesign.net', 'ProductController Update 244', '2014-06-20 02:25:24'),
(566, 'info@markdesign.net', 'ProductController Update 128', '2014-06-20 02:27:35'),
(567, 'info@markdesign.net', 'ProductController Update 127', '2014-06-20 02:27:39'),
(568, 'info@markdesign.net', 'ProductController Update 126', '2014-06-20 02:27:45'),
(569, 'info@markdesign.net', 'ProductController Update 125', '2014-06-20 02:27:46'),
(570, 'info@markdesign.net', 'ProductController Update 124', '2014-06-20 02:27:52'),
(571, 'info@markdesign.net', 'ProductController Update 122', '2014-06-20 02:27:53'),
(572, 'info@markdesign.net', 'ProductController Update 121', '2014-06-20 02:27:54'),
(573, 'info@markdesign.net', 'ProductController Update 120', '2014-06-20 02:28:01'),
(574, 'info@markdesign.net', 'ProductController Update 119', '2014-06-20 02:28:04'),
(575, 'info@markdesign.net', 'ProductController Update 119', '2014-06-20 02:28:09'),
(576, 'info@markdesign.net', 'ProductController Update 88', '2014-06-20 02:32:26'),
(577, 'info@markdesign.net', 'ProductController Update 84', '2014-06-20 02:32:56'),
(578, 'info@markdesign.net', 'ProductController Update 188', '2014-06-20 03:22:30'),
(579, 'info@markdesign.net', 'ProductController Update 189', '2014-06-20 03:25:47'),
(580, 'info@markdesign.net', 'ProductController Update 189', '2014-06-20 03:26:47'),
(581, 'info@markdesign.net', 'ProductController Update 185', '2014-06-20 03:30:22'),
(582, 'info@markdesign.net', 'ProductController Update 190', '2014-06-20 03:30:53'),
(583, 'info@markdesign.net', 'ProductController Update 185', '2014-06-20 03:30:57'),
(584, 'info@markdesign.net', 'ProductController Update 190', '2014-06-20 03:31:03'),
(585, 'info@markdesign.net', 'ProductController Update 190', '2014-06-20 03:31:15'),
(586, 'info@markdesign.net', 'ProductController Update 202', '2014-06-20 03:34:04'),
(587, 'info@markdesign.net', 'ProductController Update 202', '2014-06-20 03:34:49'),
(588, 'info@markdesign.net', 'ProductController Update 203', '2014-06-20 03:39:26'),
(589, 'info@markdesign.net', 'ProductController Update 246', '2014-06-20 03:43:27'),
(590, 'info@markdesign.net', 'ProductController Update 246', '2014-06-20 03:44:02'),
(591, 'info@markdesign.net', 'ProductController Update 73', '2014-06-20 03:54:33'),
(592, 'info@markdesign.net', 'ProductController Update 73', '2014-06-20 03:54:34'),
(593, 'info@markdesign.net', 'ProductController Update 72', '2014-06-20 03:55:51'),
(594, 'info@markdesign.net', 'ProductController Update 71', '2014-06-20 03:57:24'),
(595, 'info@markdesign.net', 'ProductController Update 70', '2014-06-20 03:58:51'),
(596, 'info@markdesign.net', 'ProductController Update 69', '2014-06-20 04:00:14'),
(597, 'info@markdesign.net', 'ProductController Update 65', '2014-06-20 04:01:29'),
(598, 'info@markdesign.net', 'ProductController Update 64', '2014-06-20 04:07:19'),
(599, 'Info@markdesign.net', 'Login: Info@markdesign.net', '2014-06-20 04:37:35'),
(600, 'info@markdesign.net', 'Login: info@markdesign.net', '2014-06-23 03:23:01'),
(601, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-24 08:07:41'),
(602, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-24 10:07:26'),
(603, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-24 10:08:37'),
(604, 'deoryzpandu@gmail.com', 'Setting Update', '2014-06-24 10:17:26'),
(605, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-25 04:09:08'),
(606, 'deoryzpandu@gmail.com', 'ProductController Update 82', '2014-06-25 08:50:39'),
(607, 'deoryzpandu@gmail.com', 'ProductController Update 82', '2014-06-25 08:50:57'),
(608, 'deoryzpandu@gmail.com', 'CategoryController Update 50', '2014-06-25 08:56:17'),
(609, 'deoryzpandu@gmail.com', 'CategoryController Update 51', '2014-06-25 08:56:31');
INSERT INTO `log` (`id`, `username`, `activity`, `time`) VALUES
(610, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-26 04:17:43'),
(611, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 07:16:14'),
(612, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 07:17:02'),
(613, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 07:18:26'),
(614, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 07:23:43'),
(615, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 07:24:00'),
(616, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 07:35:59'),
(617, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 07:39:17'),
(618, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 07:39:29'),
(619, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 08:11:14'),
(620, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 08:23:48'),
(621, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 08:38:20'),
(622, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 08:38:34'),
(623, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 08:48:54'),
(624, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 08:49:37'),
(625, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 08:50:46'),
(626, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 08:51:38'),
(627, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 08:52:23'),
(628, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 08:52:50'),
(629, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 08:53:43'),
(630, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 08:54:08'),
(631, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 08:54:52'),
(632, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-06-26 08:55:15'),
(633, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-06-30 10:05:52'),
(634, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-07-01 08:24:44'),
(635, 'deoryzpandu@gmail.com', 'ProductController Update 249', '2014-07-01 08:28:27'),
(636, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-02 02:35:50'),
(637, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-02 03:53:35'),
(638, 'deoryzpandu@gmail.com', 'User Update 13 deoryz@yahoo.co.id', '2014-07-02 07:04:03'),
(639, 'deoryzpandu@gmail.com', 'User Update 13 deoryz@yahoo.co.id', '2014-07-02 07:04:41'),
(640, 'deoryzpandu@gmail.com', 'User Update 13 deoryz@yahoo.co.id', '2014-07-02 07:13:11'),
(641, 'deoryzpandu@gmail.com', 'User Update 13 deoryz@yahoo.co.id', '2014-07-02 07:16:11'),
(642, 'deoryzpandu@gmail.com', 'User Update 13 deoryz@yahoo.co.id', '2014-07-02 07:16:50'),
(643, 'deoryzpandu@gmail.com', 'User Update 13 deoryz@yahoo.co.id', '2014-07-02 07:18:04'),
(644, 'deoryzpandu@gmail.com', 'User Update 13 deoryz@yahoo.co.id', '2014-07-02 07:19:51'),
(645, 'deoryzpandu@gmail.com', 'User Update 13 deoryz@yahoo.co.id', '2014-07-02 07:20:45'),
(646, 'deoryzpandu@gmail.com', 'GroupController Create 32', '2014-07-02 07:21:59'),
(647, 'deoryzpandu@gmail.com', 'GroupController Update 8', '2014-07-02 07:49:42'),
(648, 'deoryzpandu@gmail.com', 'User Update 32 ibnu@markdesign.net', '2014-07-02 07:50:53'),
(649, 'deoryzpandu@gmail.com', 'GroupController Update 8', '2014-07-02 07:58:37'),
(650, 'deoryzpandu@gmail.com', 'LanguageController Update 2', '2014-07-02 08:16:42'),
(651, 'deoryzpandu@gmail.com', 'LanguageController Update 2', '2014-07-02 08:16:44'),
(652, 'deoryzpandu@gmail.com', 'LanguageController Update 2', '2014-07-02 08:16:45'),
(653, 'deoryzpandu@gmail.com', 'LanguageController Update 2', '2014-07-02 08:16:46'),
(654, 'deoryzpandu@gmail.com', 'LanguageController Update 2', '2014-07-02 08:16:47'),
(655, 'deoryzpandu@gmail.com', 'LanguageController Update 2', '2014-07-02 08:17:21'),
(656, 'deoryzpandu@gmail.com', 'LanguageController Update 1', '2014-07-02 08:17:30'),
(657, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-03 02:42:32'),
(658, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 08:37:48'),
(659, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 08:38:03'),
(660, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 08:38:41'),
(661, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 08:38:48'),
(662, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 08:39:49'),
(663, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 08:40:00'),
(664, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 08:40:03'),
(665, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 08:46:42'),
(666, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 08:47:59'),
(667, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 08:48:08'),
(668, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 08:49:54'),
(669, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-07-03 08:49:58'),
(670, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-07 02:21:12'),
(671, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-07 04:42:55'),
(672, 'deoryzpandu@gmail.com', 'LanguageController Update 1', '2014-07-07 05:01:44'),
(673, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-08 02:21:31'),
(674, 'deoryzpandu@gmail.com', 'Create Category 1', '2014-07-08 05:06:38'),
(675, 'deoryzpandu@gmail.com', 'Create Category 2', '2014-07-08 05:07:59'),
(676, 'deoryzpandu@gmail.com', 'Create Category 3', '2014-07-08 05:08:18'),
(677, 'deoryzpandu@gmail.com', 'Create Category 4', '2014-07-08 05:09:28'),
(678, 'deoryzpandu@gmail.com', 'Create Category 5', '2014-07-08 05:10:52'),
(679, 'deoryzpandu@gmail.com', 'Create Category 6', '2014-07-08 05:14:06'),
(680, 'deoryzpandu@gmail.com', 'Create Category 7', '2014-07-08 08:18:02'),
(681, 'deoryzpandu@gmail.com', 'Create Category 8', '2014-07-08 08:18:14'),
(682, 'deoryzpandu@gmail.com', 'Create Category 9', '2014-07-08 08:40:43'),
(683, 'deoryzpandu@gmail.com', 'Create Category 10', '2014-07-08 08:57:10'),
(684, 'deoryzpandu@gmail.com', 'Create Category 3', '2014-07-08 09:38:00'),
(685, 'deoryzpandu@gmail.com', 'Create Category 3', '2014-07-08 09:38:16'),
(686, 'deoryzpandu@gmail.com', 'Create Category 3', '2014-07-08 09:38:59'),
(687, 'deoryzpandu@gmail.com', 'Create Category 3', '2014-07-08 09:39:12'),
(688, 'deoryzpandu@gmail.com', 'Create Category 1', '2014-07-08 09:50:01'),
(689, 'deoryzpandu@gmail.com', 'Create Category 2', '2014-07-08 09:50:26'),
(690, 'deoryzpandu@gmail.com', 'Create Category 1', '2014-07-08 09:52:54'),
(691, 'deoryzpandu@gmail.com', 'Create Category 1', '2014-07-08 09:53:04'),
(692, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-10 02:15:20'),
(693, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-10 08:21:57'),
(694, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-11 02:08:45'),
(695, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 2', '2014-07-11 05:27:54'),
(696, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 3', '2014-07-11 05:33:05'),
(697, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 4', '2014-07-11 05:44:11'),
(698, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 22', '2014-07-11 05:56:39'),
(699, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 23', '2014-07-11 07:23:08'),
(700, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 08:17:10'),
(701, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 08:17:40'),
(702, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 08:18:00'),
(703, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 08:18:07'),
(704, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 08:18:50'),
(705, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 08:18:59'),
(706, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 08:19:06'),
(707, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 08:19:12'),
(708, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 08:19:15'),
(709, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 08:19:38'),
(710, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 08:19:40'),
(711, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 08:19:44'),
(712, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 08:19:52'),
(713, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 08:24:05'),
(714, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-07-11 08:24:19'),
(715, 'deoryzpandu@gmail.com', 'Create Category 3', '2014-07-11 08:55:40'),
(716, 'deoryzpandu@gmail.com', 'Create Category 4', '2014-07-11 08:56:15'),
(717, 'deoryzpandu@gmail.com', 'Create Category 5', '2014-07-11 08:56:21'),
(718, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 24', '2014-07-11 09:06:18'),
(719, 'deoryzpandu@gmail.com', 'ProductController Update 24', '2014-07-11 09:06:32'),
(720, 'deoryzpandu@gmail.com', 'ProductController Update 24', '2014-07-11 09:06:44'),
(721, 'deoryzpandu@gmail.com', 'ProductController Update 24', '2014-07-11 09:07:18'),
(722, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-11 10:11:32'),
(723, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-11 11:01:05'),
(724, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-14 02:57:42'),
(725, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 25', '2014-07-14 03:40:09'),
(726, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 26', '2014-07-14 03:45:12'),
(727, 'deoryzpandu@gmail.com', 'TestimonialController Create 1', '2014-07-14 03:51:29'),
(728, 'deoryzpandu@gmail.com', 'Blog Controller Create 1', '2014-07-14 04:13:18'),
(729, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2014-07-14 04:16:30'),
(730, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2014-07-14 04:16:37'),
(731, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2014-07-14 04:16:45'),
(732, 'deoryzpandu@gmail.com', 'TestimonialController Update 1', '2014-07-14 04:17:00'),
(733, 'deoryzpandu@gmail.com', 'CustomerController Create 1', '2014-07-14 08:41:43'),
(734, 'deoryzpandu@gmail.com', 'CustomerController Create 2', '2014-07-14 08:47:30'),
(735, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 08:58:58'),
(736, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 08:59:05'),
(737, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 08:59:28'),
(738, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 09:15:30'),
(739, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 09:15:58'),
(740, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 09:16:10'),
(741, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 09:17:18'),
(742, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 09:21:52'),
(743, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 09:25:21'),
(744, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 09:25:27'),
(745, 'deoryzpandu@gmail.com', 'CustomerController Update 1', '2014-07-14 09:26:02'),
(746, 'deoryzpandu@gmail.com', 'CustomerController Create 3', '2014-07-14 09:26:32'),
(747, 'deoryzpandu@gmail.com', 'CustomerController Update 3', '2014-07-14 09:29:39'),
(748, 'deoryzpandu@gmail.com', 'CustomerController Update 3', '2014-07-14 09:30:05'),
(749, 'deoryzpandu@gmail.com', 'CustomerController Update 3', '2014-07-14 09:31:17'),
(750, 'deoryzpandu@gmail.com', 'CustomerController Update 3', '2014-07-14 09:31:29'),
(751, 'deoryzpandu@gmail.com', 'CustomerController Update 3', '2014-07-14 09:31:47'),
(752, 'deoryzpandu@gmail.com', 'CustomerController Create ', '2014-07-14 09:36:33'),
(753, 'deoryzpandu@gmail.com', 'CustomerController Update 3', '2014-07-14 09:39:09'),
(754, 'deoryzpandu@gmail.com', 'CustomerController Update 3', '2014-07-14 09:42:20'),
(755, 'deoryzpandu@gmail.com', 'CustomerController Create 4', '2014-07-14 09:43:14'),
(756, 'deoryzpandu@gmail.com', 'CustomerController Update 2', '2014-07-14 09:43:38'),
(757, 'deoryzpandu@gmail.com', 'CustomerController Update 1', '2014-07-14 09:43:47'),
(758, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-15 03:25:32'),
(759, 'deoryzpandu@gmail.com', 'TestimonialController Update 1', '2014-07-15 03:41:10'),
(760, 'deoryzpandu@gmail.com', 'TestimonialController Update 1', '2014-07-15 03:43:32'),
(761, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2014-07-15 03:45:07'),
(762, 'deoryzpandu@gmail.com', 'TbPagesController Update 3', '2014-07-15 03:55:31'),
(763, 'deoryzpandu@gmail.com', 'TbPagesController Update 3', '2014-07-15 03:55:50'),
(764, 'deoryzpandu@gmail.com', 'TbPagesController Update 3', '2014-07-15 03:58:12'),
(765, 'deoryzpandu@gmail.com', 'TbPagesController Update 3', '2014-07-15 03:59:07'),
(766, 'deoryzpandu@gmail.com', 'TbPagesController Update 3', '2014-07-15 04:00:12'),
(767, 'deoryzpandu@gmail.com', 'TbPagesController Update 4', '2014-07-15 04:00:57'),
(768, 'deoryzpandu@gmail.com', 'TbPagesController Update 6', '2014-07-15 04:02:24'),
(769, 'deoryzpandu@gmail.com', 'TbPagesController Update 7', '2014-07-15 04:06:16'),
(770, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 07:05:07'),
(771, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 07:06:56'),
(772, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 07:07:54'),
(773, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 07:09:14'),
(774, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 07:10:27'),
(775, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 07:23:14'),
(776, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 07:23:21'),
(777, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 07:25:53'),
(778, 'deoryzpandu@gmail.com', 'Setting Update', '2014-07-15 07:56:05'),
(779, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-16 07:17:38'),
(780, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-07-22 05:39:05'),
(781, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-09-18 10:15:08'),
(782, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-09-18 10:32:24'),
(783, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-09-19 04:10:15'),
(784, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-09 03:44:33'),
(785, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-15 04:01:09'),
(786, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-15 04:35:00'),
(787, 'deoryzpandu@gmail.com', 'Create Category 6', '2014-10-15 04:42:37'),
(788, 'deoryzpandu@gmail.com', 'Create Category 7', '2014-10-15 04:42:47'),
(789, 'deoryzpandu@gmail.com', 'Create Category 8', '2014-10-15 04:42:56'),
(790, 'deoryzpandu@gmail.com', 'Create Category 9', '2014-10-15 04:43:21'),
(791, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-16 05:07:10'),
(792, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-17 04:22:04'),
(793, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-20 05:47:05'),
(794, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-21 04:36:01'),
(795, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-21 06:59:55'),
(796, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-21 07:32:23'),
(797, 'deoryzpandu@gmail.com', 'GroupController Create 33', '2014-10-21 07:53:39'),
(798, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-10-21 08:22:45'),
(799, 'deoryzpandu@gmail.com', 'Mengubah urutan menu', '2014-10-21 08:23:24'),
(800, 'deoryzpandu@gmail.com', 'Create Category 9', '2014-10-21 08:25:54'),
(801, 'deoryzpandu@gmail.com', 'Create Category 10', '2014-10-21 08:26:04'),
(802, 'deoryzpandu@gmail.com', 'Create Category 11', '2014-10-21 08:26:33'),
(803, 'deoryzpandu@gmail.com', 'Create Category 12', '2014-10-21 08:26:57'),
(804, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-22 02:51:42'),
(805, 'deoryzpandu@gmail.com', 'ProductController Update 4', '2014-10-23 05:35:48'),
(806, 'deoryzpandu@gmail.com', 'ProductController Update 4', '2014-10-23 05:36:10'),
(807, 'deoryzpandu@gmail.com', 'ProductController Update 4', '2014-10-23 05:36:19'),
(808, 'deoryzpandu@gmail.com', 'ProductController Update 4', '2014-10-23 05:36:42'),
(809, 'deoryzpandu@gmail.com', 'ProductController Update 4', '2014-10-23 05:37:15'),
(810, 'deoryzpandu@gmail.com', 'ProductController Update 22', '2014-10-23 05:38:25'),
(811, 'deoryzpandu@gmail.com', 'ProductController Update 23', '2014-10-23 05:40:34'),
(812, 'deoryzpandu@gmail.com', 'ProductController Update 24', '2014-10-23 05:42:37'),
(813, 'deoryzpandu@gmail.com', 'ProductController Update 25', '2014-10-23 07:11:16'),
(814, 'deoryzpandu@gmail.com', 'ProductController Update 26', '2014-10-23 07:12:00'),
(815, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-24 04:28:31'),
(816, 'deoryzpandu@gmail.com', 'ProductController Update 24', '2014-10-24 07:33:49'),
(817, 'deoryzpandu@gmail.com', 'PrdProduct Controller Create 1', '2014-10-24 08:39:15'),
(818, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-24 10:20:04'),
(819, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-27 02:51:43'),
(820, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-27 04:22:30'),
(821, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-27 06:21:57'),
(822, 'deoryzpandu@gmail.com', 'Brand Controller Create 1', '2014-10-27 06:48:44'),
(823, 'deoryzpandu@gmail.com', 'BrandController Update 1', '2014-10-27 06:51:11'),
(824, 'deoryzpandu@gmail.com', 'BrandController Update 1', '2014-10-27 06:52:16'),
(825, 'deoryzpandu@gmail.com', 'Brand Controller Create 2', '2014-10-27 06:54:03'),
(826, 'deoryzpandu@gmail.com', 'Brand Controller Create 3', '2014-10-27 06:54:22'),
(827, 'deoryzpandu@gmail.com', 'Brand Controller Create 4', '2014-10-27 06:55:02'),
(828, 'deoryzpandu@gmail.com', 'Brand Controller Create 5', '2014-10-27 06:55:30'),
(829, 'deoryzpandu@gmail.com', 'Brand Controller Create 6', '2014-10-27 06:55:49'),
(830, 'deoryzpandu@gmail.com', 'Brand Controller Create 7', '2014-10-27 06:56:02'),
(831, 'deoryzpandu@gmail.com', 'Brand Controller Create 8', '2014-10-27 06:56:24'),
(832, 'deoryzpandu@gmail.com', 'Brand Controller Create 9', '2014-10-27 06:57:01'),
(833, 'deoryzpandu@gmail.com', 'ProductController Update 11', '2014-10-27 07:45:33'),
(834, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2014-10-27 07:45:51'),
(835, 'deoryzpandu@gmail.com', 'ProductController Update 5', '2014-10-27 07:56:33'),
(836, 'deoryzpandu@gmail.com', 'ProductController Update 1', '2014-10-27 08:24:01'),
(837, 'deoryzpandu@gmail.com', 'ProductController Update 2', '2014-10-27 08:25:10'),
(838, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-28 01:59:40'),
(839, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-29 02:00:38'),
(840, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-30 01:45:48'),
(841, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-31 08:13:33'),
(842, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-10-31 09:27:10'),
(843, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-03 01:48:47'),
(844, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-04 01:39:27'),
(845, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:15:42'),
(846, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:16:21'),
(847, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:20:53'),
(848, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:28:25'),
(849, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:29:30'),
(850, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:30:05'),
(851, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:35:03'),
(852, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:35:12'),
(853, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:35:31'),
(854, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:38:05'),
(855, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:38:09'),
(856, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:38:13'),
(857, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:38:27'),
(858, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:38:33'),
(859, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:47:06'),
(860, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:55:11'),
(861, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:55:18'),
(862, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:55:37'),
(863, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:59:15'),
(864, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-04 08:59:25'),
(865, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-05 02:04:14'),
(866, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-05 03:18:30'),
(867, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-05 03:18:52'),
(868, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-05 03:19:37'),
(869, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-05 03:20:30'),
(870, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-05 03:20:41'),
(871, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-05 03:23:17'),
(872, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-05 03:34:03'),
(873, 'deoryzpandu@gmail.com', 'ProductController Update 6', '2014-11-05 03:36:05'),
(874, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-05 07:10:45'),
(875, 'deoryzpandu@gmail.com', 'Create Category 13', '2014-11-05 09:39:07'),
(876, 'deoryzpandu@gmail.com', 'Create Category 14', '2014-11-05 09:39:19'),
(877, 'deoryzpandu@gmail.com', 'Blog Controller Create 6', '2014-11-05 09:50:38'),
(878, 'deoryzpandu@gmail.com', 'BlogController Update 6', '2014-11-05 09:51:26'),
(879, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-06 02:16:37'),
(880, 'deoryzpandu@gmail.com', 'TbPagesController Update 3', '2014-11-06 03:31:12'),
(881, 'deoryzpandu@gmail.com', 'Create Category 15', '2014-11-06 03:34:47'),
(882, 'deoryzpandu@gmail.com', 'Create Category 16', '2014-11-06 03:35:18'),
(883, 'deoryzpandu@gmail.com', 'Create Category 17', '2014-11-06 03:38:38'),
(884, 'deoryzpandu@gmail.com', 'Create Category 18', '2014-11-06 03:38:56'),
(885, 'deoryzpandu@gmail.com', 'Create Category 19', '2014-11-06 03:39:19'),
(886, 'deoryzpandu@gmail.com', 'Create Category 20', '2014-11-06 03:40:43'),
(887, 'deoryzpandu@gmail.com', 'Create Category 21', '2014-11-06 03:41:40'),
(888, 'deoryzpandu@gmail.com', 'BlogController Update 6', '2014-11-06 03:41:55'),
(889, 'deoryzpandu@gmail.com', 'Toko Controller Create 1', '2014-11-06 07:16:12'),
(890, 'deoryzpandu@gmail.com', 'TokoController Update 1', '2014-11-06 07:18:45'),
(891, 'deoryzpandu@gmail.com', 'TokoController Update 1', '2014-11-06 07:25:23'),
(892, 'deoryzpandu@gmail.com', 'TokoController Update 1', '2014-11-06 07:25:31'),
(893, 'deoryzpandu@gmail.com', 'TokoController Update 1', '2014-11-06 07:27:02'),
(894, 'deoryzpandu@gmail.com', 'Toko Controller Create 2', '2014-11-06 07:28:29'),
(895, 'deoryzpandu@gmail.com', 'TokoController Update 2', '2014-11-06 07:28:37'),
(896, 'deoryzpandu@gmail.com', 'Toko Controller Create 3', '2014-11-06 07:29:44'),
(897, 'deoryzpandu@gmail.com', 'TokoController Update 3', '2014-11-06 07:29:50'),
(898, 'deoryzpandu@gmail.com', 'Toko Controller Create 4', '2014-11-06 07:35:39'),
(899, 'deoryzpandu@gmail.com', 'TokoController Update 4', '2014-11-06 07:36:51'),
(900, 'deoryzpandu@gmail.com', 'TokoController Update 4', '2014-11-06 07:37:05'),
(901, 'deoryzpandu@gmail.com', 'Blog Controller Create 7', '2014-11-06 11:25:31'),
(902, 'deoryzpandu@gmail.com', 'Blog Controller Create 8', '2014-11-06 11:26:32'),
(903, 'deoryzpandu@gmail.com', 'BlogController Update 6', '2014-11-06 11:27:39'),
(904, 'deoryzpandu@gmail.com', 'BlogController Update 8', '2014-11-06 11:42:52'),
(905, 'deoryzpandu@gmail.com', 'BlogController Update 8', '2014-11-06 11:42:59'),
(906, 'deoryzpandu@gmail.com', 'BlogController Update 7', '2014-11-06 11:43:21'),
(907, 'deoryzpandu@gmail.com', 'Blog Controller Create 9', '2014-11-06 11:44:00'),
(908, 'deoryzpandu@gmail.com', 'BlogController Update 2', '2014-11-06 11:48:09'),
(909, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2014-11-06 11:48:41'),
(910, 'deoryzpandu@gmail.com', 'BlogController Update 2', '2014-11-06 11:48:53'),
(911, 'deoryzpandu@gmail.com', 'BlogController Update 4', '2014-11-06 11:49:27'),
(912, 'deoryzpandu@gmail.com', 'BlogController Update 4', '2014-11-06 11:49:42'),
(913, 'deoryzpandu@gmail.com', 'BlogController Update 4', '2014-11-06 11:49:54'),
(914, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2014-11-06 11:50:13'),
(915, 'deoryzpandu@gmail.com', 'BlogController Update 2', '2014-11-06 11:50:27'),
(916, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-07 04:10:58'),
(917, 'deoryzpandu@gmail.com', 'Slide Controller Create 4', '2014-11-07 04:31:07'),
(918, 'deoryzpandu@gmail.com', 'SlideController Update 4', '2014-11-07 04:31:15'),
(919, 'deoryzpandu@gmail.com', 'SlideController Update 4', '2014-11-07 04:31:33'),
(920, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-25 06:29:12'),
(921, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-26 03:35:04'),
(922, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-26 03:35:43'),
(923, 'deoryzpandu@gmail.com', 'Create Category 6', '2014-11-26 04:06:06'),
(924, 'deoryzpandu@gmail.com', 'Create Category 7', '2014-11-26 04:06:18'),
(925, 'deoryzpandu@gmail.com', 'Create Category 10', '2014-11-26 04:06:33'),
(926, 'deoryzpandu@gmail.com', 'SlideController Update 4', '2014-11-26 10:19:09'),
(927, 'deoryzpandu@gmail.com', 'SlideController Update 4', '2014-11-26 10:19:27'),
(928, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-11-27 03:25:16'),
(929, 'deoryzpandu@gmail.com', 'SlideController Update 4', '2014-11-27 06:50:17'),
(930, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2014-12-08 02:57:19'),
(931, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-01-13 03:01:37'),
(932, 'deoryzpandu@gmail.com', 'Create Category 22', '2015-01-13 06:55:35'),
(933, 'deoryzpandu@gmail.com', 'Create Category 6', '2015-01-13 06:56:00'),
(934, 'deoryzpandu@gmail.com', 'Create Category 22', '2015-01-13 06:56:06'),
(935, 'deoryzpandu@gmail.com', 'Create Category 23', '2015-01-13 06:57:41'),
(936, 'deoryzpandu@gmail.com', 'Create Category 7', '2015-01-13 06:57:48'),
(937, 'deoryzpandu@gmail.com', 'Create Category 24', '2015-01-13 06:58:00'),
(938, 'deoryzpandu@gmail.com', 'Create Category 25', '2015-01-13 06:58:10'),
(939, 'deoryzpandu@gmail.com', 'Create Category 26', '2015-01-13 06:58:26'),
(940, 'deoryzpandu@gmail.com', 'Create Category 10', '2015-01-13 06:58:35'),
(941, 'deoryzpandu@gmail.com', 'Create Category 27', '2015-01-13 06:58:53'),
(942, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-01-13 09:30:58'),
(943, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-01-19 07:55:51'),
(944, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-01-20 08:02:03'),
(945, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2015-01-23 02:34:19'),
(946, 'info@markdesign.net', 'LinesupController Create 1', '2015-09-14 03:57:29'),
(947, 'info@markdesign.net', 'LinesupController Create 1', '2015-09-14 04:08:26'),
(948, 'info@markdesign.net', 'LinesupController Create 2', '2015-09-14 04:11:43'),
(949, 'info@markdesign.net', 'LinesupController Create 3', '2015-09-14 04:12:23'),
(950, 'info@markdesign.net', 'LinesupController Create 4', '2015-09-14 04:28:37'),
(951, 'info@markdesign.net', 'TicketController Create 1', '2015-09-14 04:29:32'),
(952, 'info@markdesign.net', 'TicketController Create 2', '2015-09-14 04:31:48'),
(953, 'info@markdesign.net', 'TicketController Create 3', '2015-09-14 04:32:17'),
(954, 'info@markdesign.net', 'TicketController Create 4', '2015-09-14 04:32:54'),
(955, 'info@markdesign.net', 'TicketController Update 3', '2015-09-14 04:33:02'),
(956, 'info@markdesign.net', 'TicketController Update 4', '2015-09-14 04:33:07'),
(957, 'info@markdesign.net', 'TicketController Update 3', '2015-09-14 05:00:32'),
(958, 'info@markdesign.net', 'TicketController Create 5', '2015-09-14 05:09:33'),
(959, 'info@markdesign.net', 'TicketController Update 3', '2015-09-14 05:10:45'),
(960, 'info@markdesign.net', 'GroupController Create 34', '2015-09-14 06:18:21'),
(961, 'info@topten.com', 'Login: info@topten.com', '2015-09-14 06:59:44'),
(962, 'info@topten.com', 'Login: info@topten.com', '2015-09-14 10:06:37'),
(963, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-09-21 07:06:16'),
(964, 'info@markdesign.net', 'LinesupController Create 4', '2015-09-21 07:06:53'),
(965, 'info@markdesign.net', 'LinesupController Create 5', '2015-09-21 07:07:10'),
(966, 'info@markdesign.net', 'LinesupController Create 6', '2015-09-21 07:07:42'),
(967, 'info@markdesign.net', 'LinesupController Create 7', '2015-09-21 07:08:08'),
(968, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-10-09 02:50:55'),
(969, 'info@markdesign.net', 'LinesupController Create 8', '2015-10-09 02:52:31'),
(970, 'info@markdesign.net', 'Login: info@markdesign.net', '2015-12-03 08:36:08'),
(971, 'info@markdesign.net', 'LinesupController Create 13', '2015-12-03 08:38:10'),
(972, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-02-21 02:35:58'),
(973, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-02-26 06:06:03'),
(974, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-02-26 06:35:23'),
(975, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-02-26 07:58:09'),
(976, 'info@markdesign.net', 'TicketController Update 5', '2018-02-26 07:58:59'),
(977, 'info@markdesign.net', 'TicketController Update 5', '2018-02-26 07:59:10'),
(978, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-02-26 09:04:54'),
(979, 'info@markdesign.net', 'TicketController Create 6', '2018-02-26 09:06:01'),
(980, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-03-19 03:49:16'),
(981, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-04-16 02:54:10'),
(982, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-04-16 08:41:36'),
(983, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-04-17 08:26:51'),
(984, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-04-18 07:04:55'),
(985, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-04-18 07:11:39'),
(986, 'deoryzpandu@gmail.com', 'BlogController Update 6', '2018-04-18 07:18:54'),
(987, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-04-18 07:47:11'),
(988, 'info@markdesign.net', 'Blog Controller Create 10', '2018-04-18 07:50:33'),
(989, 'info@markdesign.net', 'TicketController Create 6', '2018-04-18 07:52:39'),
(990, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-04-18 08:56:58'),
(991, 'info@markdesign.net', 'Blog Controller Create 11', '2018-04-18 09:25:20'),
(992, 'info@markdesign.net', 'BlogController Update 11', '2018-04-18 09:25:41'),
(993, 'info@markdesign.net', 'TicketController Create 7', '2018-04-18 09:27:14'),
(994, 'info@markdesign.net', 'TicketController Update 7', '2018-04-18 09:33:36'),
(995, 'info@markdesign.net', 'Blog Controller Create 12', '2018-04-18 09:48:14'),
(996, 'info@markdesign.net', 'BlogController Update 12', '2018-04-18 09:48:18'),
(997, 'info@markdesign.net', 'TicketController Create 8', '2018-04-18 09:48:47'),
(998, 'info@markdesign.net', 'Blog Controller Create 13', '2018-04-18 09:53:01'),
(999, 'info@markdesign.net', 'BlogController Update 13', '2018-04-18 09:53:09'),
(1000, 'info@markdesign.net', 'TicketController Create 9', '2018-04-18 09:53:41'),
(1001, 'info@markdesign.net', 'Blog Controller Create 14', '2018-04-18 09:55:27'),
(1002, 'info@markdesign.net', 'BlogController Update 14', '2018-04-18 09:55:47'),
(1003, 'info@markdesign.net', 'BlogController Update 14', '2018-04-18 09:55:58'),
(1004, 'info@markdesign.net', 'TicketController Create 10', '2018-04-18 09:56:20'),
(1005, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-04-19 08:42:41'),
(1006, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-04-19 09:22:47'),
(1007, 'info@markdesign.net', 'Blog Controller Create 15', '2018-04-19 09:27:38'),
(1008, 'info@markdesign.net', 'BlogController Update 15', '2018-04-19 09:28:21'),
(1009, 'info@markdesign.net', 'BlogController Update 15', '2018-04-19 09:28:25'),
(1010, 'info@markdesign.net', 'TicketController Create 11', '2018-04-19 09:29:12'),
(1011, 'info@markdesign.net', 'Blog Controller Create 16', '2018-04-19 09:30:25'),
(1012, 'info@markdesign.net', 'BlogController Update 16', '2018-04-19 09:30:51'),
(1013, 'info@markdesign.net', 'BlogController Update 16', '2018-04-19 09:33:44'),
(1014, 'info@markdesign.net', 'TicketController Create 12', '2018-04-19 09:34:09'),
(1015, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-04-20 10:03:30'),
(1016, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-04-28 04:48:38'),
(1017, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-05-24 09:07:01'),
(1018, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-05-25 07:20:36'),
(1019, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-05-25 09:27:07'),
(1020, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-02 00:41:18'),
(1021, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-02 08:03:11'),
(1022, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-02 08:05:03'),
(1023, 'deoryzpandu@gmail.com', 'Blog Controller Create 10', '2018-07-02 08:07:59'),
(1024, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-02 08:08:23'),
(1025, 'deoryzpandu@gmail.com', 'TicketController Create 7', '2018-07-02 08:08:29'),
(1026, 'deoryzpandu@gmail.com', 'BlogController Update 10', '2018-07-02 09:23:11'),
(1027, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-02 10:53:41'),
(1028, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-03 08:22:15'),
(1029, 'deoryzpandu@gmail.com', 'Create Category 28', '2018-07-03 08:47:11'),
(1030, 'deoryzpandu@gmail.com', 'Create Category 29', '2018-07-03 08:47:15'),
(1031, 'deoryzpandu@gmail.com', 'BlogController Update 10', '2018-07-03 08:47:30'),
(1032, 'deoryzpandu@gmail.com', 'BlogController Update 4', '2018-07-03 08:47:36'),
(1033, 'deoryzpandu@gmail.com', 'BlogController Update 8', '2018-07-03 08:47:41'),
(1034, 'deoryzpandu@gmail.com', 'BlogController Update 7', '2018-07-03 08:47:46'),
(1035, 'deoryzpandu@gmail.com', 'BlogController Update 5', '2018-07-03 08:47:52'),
(1036, 'deoryzpandu@gmail.com', 'BlogController Update 9', '2018-07-03 08:47:57'),
(1037, 'deoryzpandu@gmail.com', 'BlogController Update 1', '2018-07-03 08:48:08'),
(1038, 'deoryzpandu@gmail.com', 'BlogController Update 6', '2018-07-03 08:48:14'),
(1039, 'deoryzpandu@gmail.com', 'BlogController Update 2', '2018-07-03 08:48:20'),
(1040, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-04 07:14:10'),
(1041, 'Deoryzpandu@gmail.com', 'Login: Deoryzpandu@gmail.com', '2018-07-04 07:19:17'),
(1042, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-04 08:21:41'),
(1043, 'Deoryzpandu@gmail.com', 'Login: Deoryzpandu@gmail.com', '2018-07-04 08:29:55'),
(1044, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-04 08:34:22'),
(1045, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-04 08:34:53'),
(1046, 'Deoryzpandu@gmail.com', 'Login: Deoryzpandu@gmail.com', '2018-07-04 08:36:24'),
(1047, 'Deoryzpandu@gmail.com', 'Login: Deoryzpandu@gmail.com', '2018-07-04 09:10:44'),
(1048, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-04 12:21:54'),
(1049, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-05 04:52:20'),
(1050, 'info@markdesign.net', 'PrdCategoryController Create 30', '2018-07-05 04:52:48'),
(1051, 'info@markdesign.net', 'Create Category 30', '2018-07-05 04:53:06'),
(1052, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-05 04:58:57'),
(1053, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-05 05:43:43'),
(1054, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-05 07:00:39'),
(1055, 'info@markdesign.net', 'Blog Controller Create 11', '2018-07-05 07:02:57'),
(1056, 'info@markdesign.net', 'Blog Controller Create 12', '2018-07-05 07:04:25'),
(1057, 'info@markdesign.net', 'BlogController Update 12', '2018-07-05 07:05:51'),
(1058, 'info@markdesign.net', 'TicketController Create 8', '2018-07-05 07:07:18'),
(1059, 'info@markdesign.net', 'BlogController Update 11', '2018-07-05 07:47:27'),
(1060, 'info@markdesign.net', 'BlogController Update 11', '2018-07-05 07:47:34'),
(1061, 'info@markdesign.net', 'TicketController Update 8', '2018-07-05 07:59:45'),
(1062, 'info@markdesign.net', 'TicketController Update 8', '2018-07-05 08:29:21'),
(1063, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-05 10:57:21'),
(1064, 'info@markdesign.net', 'TicketController Update 8', '2018-07-05 10:57:35'),
(1065, 'info@markdesign.net', 'TicketController Update 8', '2018-07-05 10:57:58'),
(1066, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-10 06:58:40'),
(1067, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-11 02:24:31'),
(1068, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-11 02:28:10'),
(1069, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-12 02:09:02'),
(1070, 'deoryzpandu@gmail.com', 'VideoController Update 7', '2018-07-12 02:28:44'),
(1071, 'deoryzpandu@gmail.com', 'VideoController Update 8', '2018-07-12 02:28:46'),
(1072, 'deoryzpandu@gmail.com', 'VideoController Update 6', '2018-07-12 02:28:50'),
(1073, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-12 02:45:51'),
(1074, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-12 04:21:32'),
(1075, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-12 08:29:25'),
(1076, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-12 09:02:50'),
(1077, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-13 02:58:13'),
(1078, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-13 04:13:45'),
(1079, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-13 04:45:58'),
(1080, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-13 07:28:39'),
(1081, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-13 08:22:31'),
(1082, 'info@markdesign.net', 'BlogController Update 12', '2018-07-13 08:23:02'),
(1083, 'info@markdesign.net', 'BlogController Update 12', '2018-07-13 08:27:13'),
(1084, 'info@markdesign.net', 'TicketController Update 8', '2018-07-13 08:29:16'),
(1085, 'info@markdesign.net', 'TicketController Create 9', '2018-07-13 08:33:32'),
(1086, 'info@markdesign.net', 'TicketController Update 9', '2018-07-13 08:34:43'),
(1087, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-13 10:28:23'),
(1088, 'info@markdesign.net', 'TicketController Create 10', '2018-07-13 11:00:56'),
(1089, 'info@markdesign.net', 'TicketController Create 11', '2018-07-13 11:01:59'),
(1090, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-13 11:13:30'),
(1091, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-14 05:20:24'),
(1092, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-14 07:57:53'),
(1093, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-14 09:41:15'),
(1094, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-14 13:20:04'),
(1095, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-14 13:24:02'),
(1096, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-16 06:34:41'),
(1097, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-16 07:46:05'),
(1098, 'info@markdesign.net', 'BankController Update 1', '2018-07-16 07:46:38'),
(1099, 'info@markdesign.net', 'BankController Update 1', '2018-07-16 07:46:55'),
(1100, 'info@markdesign.net', 'BankController Update 1', '2018-07-16 07:47:17'),
(1101, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-16 07:50:05'),
(1102, 'deoryzpandu@gmail.com', 'BankController Update 1', '2018-07-16 07:54:04'),
(1103, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-16 09:41:44'),
(1104, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-16 09:54:45'),
(1105, 'info@markdesign.net', 'BlogController Update 12', '2018-07-16 09:57:25'),
(1106, 'info@markdesign.net', 'TicketController Update 9', '2018-07-16 09:59:02'),
(1107, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-17 03:32:42'),
(1108, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-17 08:08:59'),
(1109, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-17 09:54:45'),
(1110, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-18 05:27:31'),
(1111, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-18 06:36:13'),
(1112, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-18 06:44:25'),
(1113, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-18 08:30:52'),
(1114, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-18 09:24:24'),
(1115, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-19 03:01:07'),
(1116, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-19 06:43:48'),
(1117, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-19 06:48:09'),
(1118, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-21 07:05:23'),
(1119, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-21 07:14:11'),
(1120, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-21 08:21:15'),
(1121, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-23 04:23:15'),
(1122, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-23 06:00:45'),
(1123, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-23 07:24:53'),
(1124, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-26 07:16:00'),
(1125, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-26 07:34:44'),
(1126, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-27 07:07:59'),
(1127, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-27 07:27:33'),
(1128, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-27 07:28:21'),
(1129, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-07-27 07:34:57'),
(1130, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-30 07:54:21'),
(1131, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-07-30 07:57:07'),
(1132, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-01 04:26:13'),
(1133, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-01 07:18:20'),
(1134, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-01 07:30:43'),
(1135, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-01 09:03:52'),
(1136, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-01 09:54:33'),
(1137, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-01 10:52:57'),
(1138, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-01 11:22:31'),
(1139, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-02 03:44:53'),
(1140, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-02 05:00:58'),
(1141, 'info@markdesign.net', 'TicketController Update 8', '2018-08-02 05:18:05'),
(1142, 'info@markdesign.net', 'TicketController Update 9', '2018-08-02 05:18:34'),
(1143, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-02 06:57:08'),
(1144, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-02 07:00:19'),
(1145, 'info@markdesign.net', 'TicketController Update 8', '2018-08-02 07:08:25'),
(1146, 'info@markdesign.net', 'TicketController Update 9', '2018-08-02 07:08:37'),
(1147, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-02 08:23:01'),
(1148, 'info@markdesign.net', 'TicketController Update 8', '2018-08-02 08:23:19'),
(1149, 'info@markdesign.net', 'TicketController Update 9', '2018-08-02 08:23:25'),
(1150, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-04 06:25:31'),
(1151, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-06 07:55:23'),
(1152, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-07 02:38:29'),
(1153, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-07 03:42:09'),
(1154, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-07 07:14:03'),
(1155, 'info@markdesign.net', 'TicketController Update 8', '2018-08-07 07:15:05'),
(1156, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-07 07:15:29'),
(1157, 'info@markdesign.net', 'TicketController Update 8', '2018-08-07 07:19:12'),
(1158, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-08 07:22:13'),
(1159, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-08 09:11:00'),
(1160, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-08 09:27:36'),
(1161, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-08 14:44:04'),
(1162, 'info@markdesign.net', 'TicketController Update 10', '2018-08-08 14:44:25'),
(1163, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-09 02:39:54'),
(1164, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-09 03:16:01'),
(1165, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-09 04:53:34'),
(1166, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-09 05:58:35'),
(1167, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-09 06:19:18'),
(1168, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-09 07:13:03'),
(1169, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-09 07:28:38'),
(1170, 'info@markdesign.net', 'TicketController Update 10', '2018-08-09 07:40:57'),
(1171, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-09 08:04:14'),
(1172, 'info@markdesign.net', 'TicketController Update 10', '2018-08-09 08:15:47'),
(1173, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-09 09:12:20'),
(1174, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-09 09:28:20'),
(1175, 'info@markdesign.net', 'TicketController Update 10', '2018-08-09 09:30:40'),
(1176, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-09 10:34:58'),
(1177, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-09 11:21:07'),
(1178, 'info@markdesign.net', 'TicketController Update 10', '2018-08-09 11:21:23'),
(1179, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-09 12:27:18'),
(1180, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-09 12:27:38'),
(1181, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-09 15:59:05'),
(1182, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-09 16:53:00'),
(1183, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-10 07:53:11'),
(1184, 'info@markdesign.net', 'TicketController Update 11', '2018-08-10 07:58:03'),
(1185, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-10 09:05:44'),
(1186, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-08-13 03:50:45'),
(1187, 'deoryzpandu@gmail.com', 'TicketController Update 9', '2018-08-13 03:51:00'),
(1188, 'deoryzpandu@gmail.com', 'TicketController Update 9', '2018-08-13 03:51:25'),
(1189, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-13 06:48:08'),
(1190, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-13 08:06:03'),
(1191, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2018-08-14 09:04:48'),
(1192, 'deoryzpandu@gmail.com', 'TicketController Update 9', '2018-08-14 09:07:25'),
(1193, 'deoryzpandu@gmail.com', 'TicketController Update 9', '2018-08-14 09:07:55'),
(1194, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-14 09:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `me_member`
--

CREATE TABLE `me_member` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `me_member`
--

INSERT INTO `me_member` (`id`, `email`, `first_name`, `last_name`, `pass`, `login_terakhir`, `aktivasi`, `aktif`, `image`, `hp`, `address`, `city`, `province`, `postcode`) VALUES
(1, 'deoryz@yahoo.co.id', 'deory', 'pandu', '564fda17f517ae04a86734c2b2341327ed4fd565', '2014-10-29 09:15:48', 0, 1, '', '', '', '', '', ''),
(2, 'deoryzpandu@gmail.com', 'deory', 'pandu putra', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2014-10-30 03:33:42', 0, 1, '', '085646765265', 'Address', 'City', 'Province', 'Postcode'),
(3, 'test@gmail.com', 'first', 'name', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2014-11-27 08:16:22', 0, 1, '', 'hp', 'address', 'city', 'province', 'postcode');

-- --------------------------------------------------------

--
-- Table structure for table `or_order`
--

CREATE TABLE `or_order` (
  `id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `invoice_prefix` varchar(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `payment_first_name` varchar(128) NOT NULL,
  `payment_last_name` varchar(128) NOT NULL,
  `payment_company` varchar(128) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(128) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `shipping_first_name` varchar(128) NOT NULL,
  `shipping_last_name` varchar(128) NOT NULL,
  `shipping_company` varchar(128) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(128) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(100) NOT NULL,
  `currency_value` decimal(15,4) NOT NULL,
  `ip` varchar(128) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_modif` datetime NOT NULL,
  `delivery_from` varchar(100) NOT NULL,
  `delivery_to` varchar(100) NOT NULL,
  `delivery_package` varchar(100) NOT NULL,
  `delivery_price` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `delivery_weight` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `or_order`
--

INSERT INTO `or_order` (`id`, `invoice_no`, `invoice_prefix`, `customer_id`, `customer_group_id`, `first_name`, `last_name`, `email`, `phone`, `payment_first_name`, `payment_last_name`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_zone`, `payment_country`, `shipping_first_name`, `shipping_last_name`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_zone`, `shipping_country`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `date_add`, `date_modif`, `delivery_from`, `delivery_to`, `delivery_package`, `delivery_price`, `payment_method_id`, `delivery_weight`) VALUES
(1, 9217, 'UBS-20141105', 2, 0, 'deory', 'pandu putra', 'deoryzpandu@gmail.com', '085646765265', 'deory', 'pandu putra', '', 'Address', '', 'City', 'Postcode', 'Province', '', 'deory', 'pandu putra', '', 'Address', '', 'City', 'Postcode', 'Province', '', 'Your order is being processed', '1079000.0000', 2, 0, '0.0000', 0, 0, '', '0.0000', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 0, 0, 1500),
(2, 6845, 'UBS-20141126', 2, 0, 'deory', 'pandu putra', 'deoryzpandu@gmail.com', '085646765265', 'deory', 'pandu putra', '', 'Address', '', 'City', 'Postcode', 'Province', '', 'deory', 'pandu putra', '', 'Address', '', 'City', 'Postcode', 'Province', '', '', '208000.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 0, 0, 0),
(3, 8943, 'DV-20141126', 2, 0, 'deory', 'pandu putra', 'deoryzpandu@gmail.com', '085646765265', 'deory', 'pandu putra', '', 'Address', '', 'City', 'Postcode', 'Province', '', 'deory', 'pandu putra', '', 'Address', '', 'City', 'Postcode', 'Province', '', '', '208237.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 0, 0, 0),
(4, 7315, 'DV-20141126', 2, 0, 'deory', 'pandu putra', 'deoryzpandu@gmail.com', '085646765265', 'deory', 'pandu putra', '', 'Address', '', 'City', 'Postcode', 'Province', '', 'deory', 'pandu putra', '', 'Address', '', 'City', 'Postcode', 'Province', '', '', '237.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 0, 0, 0),
(5, 8231, 'UBS-20141127', 3, 0, 'first', 'name', 'test@gmail.com', 'hp', 'first', 'name', '', 'address', '', 'city', 'postcode', 'province', '', 'first', 'name', '', 'address', '', 'city', 'postcode', 'province', '', '', '106.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 0, 0, 0),
(6, 7552, 'UBS-20141128', 2, 0, 'deory', 'pandu putra', 'deoryzpandu@gmail.com', '085646765265', 'deory', 'pandu putra', '', 'Address', '', 'City', 'Postcode', 'Province', '', 'deory', 'pandu putra', '', 'Address', '', 'City', 'Postcode', 'Province', '', '', '1310.0000', 1, 0, '0.0000', 0, 0, '', '0.0000', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `or_order_history`
--

CREATE TABLE `or_order_history` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(4) NOT NULL,
  `comment` text NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `or_order_history`
--

INSERT INTO `or_order_history` (`id`, `member_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_add`) VALUES
(1, 3, 5, 1, 0, 'Order anda UBS-20141127-8231 berhasil dengan status \"Pending\"', '2014-11-27 15:17:24'),
(2, 2, 6, 1, 0, 'Order anda UBS-20141128-7552 berhasil dengan status \"Pending\"', '2014-11-28 09:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `or_order_product`
--

CREATE TABLE `or_order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `name` varchar(256) NOT NULL,
  `kode` varchar(256) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `attributes_id` int(11) NOT NULL,
  `attributes_name` varchar(256) NOT NULL,
  `attributes_price` decimal(15,4) NOT NULL,
  `berat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `or_order_product`
--

INSERT INTO `or_order_product` (`id`, `order_id`, `product_id`, `image`, `name`, `kode`, `qty`, `price`, `total`, `attributes_id`, `attributes_name`, `attributes_price`, `berat`) VALUES
(1, 1, 6, '1206d-Latest-Korean-Design-font-b-Jewelry-b-font-3-Tones-Finger-Rings-Cubic-Zircon-Crystal-Party.jpg', 'Defenderem Murenam Sunt', 'PRD-1647', 1, '1000000.0000', '1000000.0000', 10, 'Black', '1000000.0000', 500),
(2, 1, 579, '195bd-Beautiful-jewelry-33487637-1424-1028.jpg', 'Extremum Extremum Ad Tollitur', 'PRD-4997', 1, '79000.0000', '79000.0000', 10, 'Black', '1000000.0000', 1000),
(3, 2, 264, 'cdc9e-dallas-jewelry.jpg', 'Dolor Dicuntur Haec Concordiae Sunt', 'PRD-6440', 3, '52000.0000', '156000.0000', 264, 'Dolor Dicuntur Haec Concordiae Sunt', '52000.0000', 0),
(4, 2, 719, '55461-dallas-jewelry.jpg', 'Dolor Dicuntur Haec Concordiae Sunt', 'PRD-6440', 1, '52000.0000', '52000.0000', 719, 'Dolor Dicuntur Haec Concordiae Sunt', '52000.0000', 0),
(5, 3, 6, '0b868-lenovo-3406-64169-3-zoom.jpg', 'Possumus Consectetur Esse Sibi Illum', 'PRD-7088', 1, '237.0000', '237.0000', 6, 'Possumus Consectetur Esse Sibi Illum', '237.0000', 0),
(6, 4, 6, '0b868-lenovo-3406-64169-3-zoom.jpg', 'Possumus Consectetur Esse Sibi Illum', 'PRD-7088', 1, '237.0000', '237.0000', 6, 'Possumus Consectetur Esse Sibi Illum', '237.0000', 0),
(7, 5, 62, '5c4b6-hp-6527-441421-1-zoom.jpg', 'Dolor Quaeso Videtur Sit', 'PRD-7543', 2, '53.0000', '106.0000', 0, '', '0.0000', 1000),
(8, 6, 4, '887c8-hp-6527-441421-1-zoom.jpg', 'Quaeso Dolor Ac', 'PRD-7321', 2, '655.0000', '1310.0000', 0, '', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `or_order_status`
--

CREATE TABLE `or_order_status` (
  `order_status_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `or_order_status`
--

INSERT INTO `or_order_status` (`order_status_id`, `name`) VALUES
(2, 'Processing'),
(3, 'Shipped'),
(7, 'Canceled'),
(5, 'Complete'),
(8, 'Denied'),
(9, 'Canceled Reversal'),
(10, 'Failed'),
(11, 'Refunded'),
(12, 'Reversed'),
(13, 'Chargeback'),
(1, 'Pending'),
(16, 'Voided'),
(15, 'Processed'),
(14, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `pg_bank`
--

CREATE TABLE `pg_bank` (
  `id` int(25) NOT NULL,
  `id_bank` int(25) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `rekening` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_bank`
--

INSERT INTO `pg_bank` (`id`, `id_bank`, `nama`, `rekening`, `image`) VALUES
(1, 2, 'Robi Wirjadi', '363.160.9889', 'e9f17-1280px-BCA_logo.svg.png');

-- --------------------------------------------------------

--
-- Table structure for table `pg_blog`
--

CREATE TABLE `pg_blog` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` int(25) NOT NULL,
  `event_date` varchar(200) NOT NULL,
  `event_location` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_blog`
--

INSERT INTO `pg_blog` (`id`, `topik_id`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`, `event_date`, `event_location`) VALUES
(12, 30, 'bb8ba-R3HAB-FLYER.jpg', 1, '2018-07-05 14:04:25', '2018-07-16 16:57:25', 'info@markdesign.net', 'info@markdesign.net', 0, 'Thursday, 9th August 2018', 'Club360');

-- --------------------------------------------------------

--
-- Table structure for table `pg_blog_description`
--

CREATE TABLE `pg_blog_description` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_blog_description`
--

INSERT INTO `pg_blog_description` (`id`, `blog_id`, `language_id`, `title`, `content`) VALUES
(67, 7, 2, 'Bagaimana tampil sederhana, namun tetap “Fabulous” seperti Chelsea Islan', '<p>\r\n	         Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam  convallis mauris et arcu bibendum, in placerat nisi semper. Vivamus eu  risus aliquam, vehicula magna eu, sodales elit. Quisque pellentesque est  sed dolor fermentum, eget porta diam ultricies. Mauris id viverra diam.  Vestibulum pretium purus accumsan molestie bibendum. Nullam sed purus  vitae mi viverra volutpat. Vestibulum vulputate metus quis velit semper  venenatis. Curabitur sed sapien justo. Integer eu urna lorem. Phasellus  ac auctor quam. Vivamus gravida posuere tortor, eu placerat metus  tincidunt non. Nulla ultrices eu purus quis mattis. Praesent ut orci  molestie, molestie leo ac, ornare est. Maecenas ornare leo faucibus,  rutrum diam a, finibus risus. Nunc congue laoreet porttitor.\r\n</p>\r\n<p>\r\n	         Nulla ullamcorper ipsum vel dui egestas  mattis. Aenean ut convallis augue. Integer nec tempor nibh. Fusce quis  odio id est tempor mollis vitae at ex. In ut est pellentesque, porttitor  est eu, eleifend lectus. Sed sollicitudin leo non ante elementum  ultricies. Quisque vel varius orci, in elementum urna.\r\n</p>'),
(70, 1, 2, 'coba lagi', '<p>\r\n	        anda belum beruntung\r\n</p>'),
(66, 8, 2, 'Model minute: Tips cantik ala Raisa untuk daily activity!', '<p>\r\n	        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam  convallis mauris et arcu bibendum, in placerat nisi semper. Vivamus eu  risus aliquam, vehicula magna eu, sodales elit. Quisque pellentesque est  sed dolor fermentum, eget porta diam ultricies. Mauris id viverra diam.  Vestibulum pretium purus accumsan molestie bibendum. Nullam sed purus  vitae mi viverra volutpat. Vestibulum vulputate metus quis velit semper  venenatis. Curabitur sed sapien justo. Integer eu urna lorem. Phasellus  ac auctor quam. Vivamus gravida posuere tortor, eu placerat metus  tincidunt non. Nulla ultrices eu purus quis mattis. Praesent ut orci  molestie, molestie leo ac, ornare est. Maecenas ornare leo faucibus,  rutrum diam a, finibus risus. Nunc congue laoreet porttitor.\r\n</p>\r\n<p>\r\n	        Nulla ullamcorper ipsum vel dui egestas  mattis. Aenean ut convallis augue. Integer nec tempor nibh. Fusce quis  odio id est tempor mollis vitae at ex. In ut est pellentesque, porttitor  est eu, eleifend lectus. Sed sollicitudin leo non ante elementum  ultricies. Quisque vel varius orci, in elementum urna.\r\n</p>'),
(71, 6, 2, 'Model minute: Tips cantik ala Raisa untuk daily activity!', '<p>\r\n	        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, odio quis accusamus officiis ipsam libero quaerat distinctio delectus accusantium, ullam fuga consequuntur provident? Voluptate facere architecto aut deleniti a mollitia, eaque blanditiis recusandae tenetur libero minima quod beatae hic dolorem.\r\n</p>\r\n<p>\r\n	        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic, odio quis accusamus officiis ipsam libero quaerat distinctio delectus accusantium, ullam fuga consequuntur provident? Voluptate facere architecto aut deleniti a mollitia, eaque blanditiis recusandae tenetur libero minima quod beatae hic dolorem.\r\n</p>'),
(72, 2, 2, 'manajemen kualifikasi', '<p>\r\n	         test aja\r\n</p>'),
(69, 9, 2, 'Masquerade party? How to “still” look fabulous with nude pallete.', '<p>\r\n	          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam   convallis mauris et arcu bibendum, in placerat nisi semper. Vivamus eu   risus aliquam, vehicula magna eu, sodales elit. Quisque pellentesque est   sed dolor fermentum, eget porta diam ultricies. Mauris id viverra  diam.  Vestibulum pretium purus accumsan molestie bibendum. Nullam sed  purus  vitae mi viverra volutpat. Vestibulum vulputate metus quis velit  semper  venenatis. Curabitur sed sapien justo. Integer eu urna lorem.  Phasellus  ac auctor quam. Vivamus gravida posuere tortor, eu placerat  metus  tincidunt non. Nulla ultrices eu purus quis mattis. Praesent ut  orci  molestie, molestie leo ac, ornare est. Maecenas ornare leo  faucibus,  rutrum diam a, finibus risus. Nunc congue laoreet porttitor.\r\n</p>\r\n<p>\r\n	          Nulla ullamcorper ipsum vel dui egestas  mattis. Aenean ut convallis  augue. Integer nec tempor nibh. Fusce quis  odio id est tempor mollis  vitae at ex. In ut est pellentesque, porttitor  est eu, eleifend lectus.  Sed sollicitudin leo non ante elementum  ultricies. Quisque vel varius  orci, in elementum urna.\r\n</p>'),
(68, 5, 2, 'test data on few year ago', '<p>\r\n	     aklsdjflkajsdflkajsfkjskdjflkasjflkjsafkjlasdf\r\n</p>'),
(65, 4, 2, 'test data on few month ago', '<p>\r\n	         asfasdfasdfasdfasdfasdfadfadf\r\n</p>'),
(64, 10, 2, 'title', '<p>\r\n	  content\r\n</p>'),
(77, 11, 2, 'DJ R3HAB ( International DJ )', '<p>\r\n	  DJ R3HAB\r\n</p>\r\n<p>\r\n	  #18 DJ Mag Top 100\r\n</p>'),
(80, 12, 2, 'DJ R3HAB', '<p>\r\n	    DJ R3HAB\r\n</p>\r\n<p>\r\n	    #18 DJ MAG TOP100\r\n</p>\r\n<p>\r\n	 Supported :\r\n</p>\r\n<p>\r\n	 Skytech\r\n</p>\r\n<p>\r\n	 GET SPECIAL PRICE BY KTM ID ( Kartu Tanda Mahasiswa )\r\n</p>');

-- --------------------------------------------------------

--
-- Table structure for table `pg_faq`
--

CREATE TABLE `pg_faq` (
  `id` int(20) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_faq`
--

INSERT INTO `pg_faq` (`id`, `status`) VALUES
(1, 1),
(2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pg_faq_description`
--

CREATE TABLE `pg_faq_description` (
  `id` int(11) NOT NULL,
  `faq_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_faq_description`
--

INSERT INTO `pg_faq_description` (`id`, `faq_id`, `language_id`, `question`, `answer`) VALUES
(1, 1, 1, 'test tanya indo', '<p>\r\n	test jawab indo\r\n</p>'),
(2, 1, 2, 'test tanya?', '<p>\r\n	test jawab 1\r\n</p>'),
(3, 2, 2, 'test question 1', '<p>\r\n	test answer 1\r\n</p>');

-- --------------------------------------------------------

--
-- Table structure for table `pg_list_bank`
--

CREATE TABLE `pg_list_bank` (
  `id` int(50) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `label` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_list_bank`
--

INSERT INTO `pg_list_bank` (`id`, `nama`, `label`) VALUES
(1, 'bank_mega', 'Bank Mega'),
(2, 'bca', 'BCA'),
(3, 'bca_syariah', 'BCA Syariah'),
(4, 'bii', 'BII'),
(5, 'bni', 'BNI'),
(6, 'bni_syariah', 'BNI Syariah'),
(7, 'bri', 'BRI'),
(8, 'bri_syariah', 'BRI Syariah'),
(9, 'cimb_niaga', 'CIMB Niaga'),
(10, 'cimb_niaga_syariah', 'CIMB Niaga Syariah'),
(11, 'citibank', 'Citibank'),
(12, 'danamon', 'Danamon'),
(13, 'hsbc', 'HSBC'),
(14, 'mandiri', 'Mandiri'),
(15, 'mandiri_syariah', 'Mandiri Syariah'),
(16, 'money_gram', 'Money Gram'),
(17, 'muamalat', 'Muamalat'),
(18, 'paypal', 'Paypal'),
(19, 'permata', 'Permata'),
(20, 'visa', 'Visa'),
(21, 'western_union', 'Western Union');

-- --------------------------------------------------------

--
-- Table structure for table `pg_pages`
--

CREATE TABLE `pg_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '1',
  `group` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_pages`
--

INSERT INTO `pg_pages` (`id`, `name`, `type`, `group`) VALUES
(1, 'testimonial', 0, 'testimonial'),
(2, 'articles', 0, 'blog'),
(3, 'about', 0, 'static'),
(4, 'contact', 0, 'static'),
(5, 'faq', 0, 'faq'),
(6, 'how_to_shop', 0, 'static'),
(7, 'payment_confirmation', 0, 'static'),
(8, 'bank', 0, 'bank');

-- --------------------------------------------------------

--
-- Table structure for table `pg_pages_description`
--

CREATE TABLE `pg_pages_description` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `content` longtext NOT NULL,
  `meta_title` varchar(225) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_pages_description`
--

INSERT INTO `pg_pages_description` (`id`, `page_id`, `language_id`, `page_name`, `content`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(11, 4, 1, 'Kontak Kami', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Contact\r\n</p>\r\n<p>\r\n	  CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Kontak Kami', 'edit di admin panel -> Pages -> Contact', 'edit di admin panel -> Pages -> Contact'),
(12, 4, 2, 'Contact', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Contact\r\n</p>\r\n<p>\r\n	  CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Contact', 'edit di admin panel -> Pages -> Contact', 'edit di admin panel -> Pages -> Contact'),
(13, 6, 1, 'How To Shop', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; How To Shop\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'How To Shop', 'Edit di admin panel -> Pages -> How To Shop', 'Edit di admin panel -> Pages -> How To Shop'),
(14, 6, 2, 'How To Shop', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; How To Shop\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'How To Shop', 'Edit di admin panel -> Pages -> How To Shop', 'Edit di admin panel -> Pages -> How To Shop'),
(15, 7, 1, 'Konfirmasi Pembayaran', '<p>\r\n	     Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Payment Confirmation\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Konfirmasi Pembayaran', 'Edit di admin panel -> Pages -> Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation'),
(16, 7, 2, 'Payment Confirmation', '<p>\r\n	     Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Payment Confirmation\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation'),
(17, 3, 2, 'About', '<p>\r\n	     Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; About\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa lain di website anda di admin panel -&gt; General Setting -&gt; Language(Bahasa)\r\n</p>', 'About', 'edit di admin panel -> Pages -> About', 'edit di admin panel -> Pages -> About');

-- --------------------------------------------------------

--
-- Table structure for table `pg_testimonial`
--

CREATE TABLE `pg_testimonial` (
  `id` int(25) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `testimonial` longtext NOT NULL,
  `status` int(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_testimonial`
--

INSERT INTO `pg_testimonial` (`id`, `name`, `email`, `testimonial`, `status`, `date`) VALUES
(1, 'Ibnu', 'ibnu@markdesign.net', '', 1, '2014-07-14 09:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `pg_testimonial_description`
--

CREATE TABLE `pg_testimonial_description` (
  `id` int(11) NOT NULL,
  `testimonial_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_testimonial_description`
--

INSERT INTO `pg_testimonial_description` (`id`, `testimonial_id`, `language_id`, `content`) VALUES
(8, 1, 2, 'test'),
(7, 1, 1, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `pg_type_letak`
--

CREATE TABLE `pg_type_letak` (
  `id` int(11) NOT NULL,
  `letak` varchar(225) NOT NULL,
  `page_id` int(11) NOT NULL,
  `tampil` int(11) NOT NULL,
  `sort` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pg_type_letak`
--

INSERT INTO `pg_type_letak` (`id`, `letak`, `page_id`, `tampil`, `sort`) VALUES
(177, 'header', 2, 1, 1),
(178, 'header', 6, 1, 2),
(179, 'header', 4, 1, 3),
(180, 'header', 1, 0, 4),
(181, 'header', 3, 0, 5),
(182, 'header', 5, 0, 6),
(183, 'header', 7, 0, 7),
(184, 'header', 8, 0, 8),
(185, 'footer', 3, 1, 1),
(186, 'footer', 6, 1, 2),
(187, 'footer', 4, 1, 3),
(188, 'footer', 1, 0, 4),
(189, 'footer', 2, 0, 5),
(190, 'footer', 5, 0, 6),
(191, 'footer', 7, 0, 7),
(192, 'footer', 8, 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `prd_brand`
--

CREATE TABLE `prd_brand` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prd_brand`
--

INSERT INTO `prd_brand` (`id`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`) VALUES
(1, '46620-4bbf44d171a66.jpg', 1, '0000-00-00 00:00:00', '2014-10-27 13:52:40', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com'),
(2, '29ab6-1152001.1.high.jpg', 1, '2014-10-27 13:54:27', '2014-10-27 13:54:27', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com'),
(3, '60070-6491970~080cf1ccc7ea3e46289538c7d856f7270647ab85-stocklarge.jpg', 1, '2014-10-27 13:54:46', '2014-10-27 13:54:46', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com'),
(4, '3a1cc-23525372~4ef324e714ddca2f7dc986f122cc5e27e3e0a48c-stocklarge.jpg', 1, '2014-10-27 13:55:26', '2014-10-27 13:55:26', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com'),
(5, 'ed795-abstract-diamond-logo.jpg', 1, '2014-10-27 13:55:54', '2014-10-27 13:55:54', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com'),
(6, 'd650b-chopard-logo.jpg', 1, '2014-10-27 13:56:13', '2014-10-27 13:56:13', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com'),
(7, 'c8710-Cluster_Logo.jpg', 1, '2014-10-27 13:56:26', '2014-10-27 13:56:26', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com'),
(8, '2ec57-Dietea-Logos.png', 1, '2014-10-27 13:56:48', '2014-10-27 13:56:48', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `prd_brand_description`
--

CREATE TABLE `prd_brand_description` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prd_brand_description`
--

INSERT INTO `prd_brand_description` (`id`, `brand_id`, `language_id`, `title`, `content`) VALUES
(3, 1, 2, 'Diamond', '<p>\r\n	  Diamond\r\n</p>'),
(4, 2, 2, 'Mikimoto', '<p>\r\n	Mikimoto\r\n</p>'),
(5, 3, 2, 'Jewelry Logo', '<p>\r\n	Jewelry Logo\r\n</p>'),
(6, 4, 2, 'Brand Name', '<p>\r\n	Brand Name\r\n</p>'),
(7, 5, 2, 'Company Name', '<p>\r\n	Company Name\r\n</p>'),
(8, 6, 2, 'Chopard', '<p>\r\n	Chopard\r\n</p>'),
(9, 7, 2, 'Cluster', '<p>\r\n	Cluster\r\n</p>'),
(10, 8, 2, 'Dietea', '<p>\r\n	Dietea\r\n</p>'),
(11, 9, 2, 'test', '<p>\r\n	test\r\n</p>');

-- --------------------------------------------------------

--
-- Table structure for table `prd_category`
--

CREATE TABLE `prd_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `type` varchar(100) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prd_category`
--

INSERT INTO `prd_category` (`id`, `parent_id`, `sort`, `image`, `type`, `data`) VALUES
(29, 0, 2, '', 'category', ''),
(30, 0, 0, '', 'category', ''),
(16, 0, 1, '', 'blog', ''),
(18, 0, 3, '', 'blog', ''),
(19, 0, 4, '', 'blog', ''),
(20, 0, 5, '', 'blog', ''),
(21, 0, 2, '', 'blog', ''),
(28, 0, 1, '', 'category', '');

-- --------------------------------------------------------

--
-- Table structure for table `prd_category_description`
--

CREATE TABLE `prd_category_description` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prd_category_description`
--

INSERT INTO `prd_category_description` (`id`, `category_id`, `language_id`, `name`, `data`) VALUES
(35, 1, 1, 'Category 1', ''),
(31, 2, 1, 'Category 2', ''),
(38, 3, 2, 'Category 3', ''),
(39, 4, 1, 'Category 4', ''),
(41, 5, 1, 'Category 5', ''),
(68, 6, 2, 'TOSHIBA', ''),
(71, 7, 2, 'DELL', ''),
(48, 8, 2, 'WOMEN', ''),
(47, 8, 1, 'WOMEN', ''),
(51, 9, 2, 'KIDS', ''),
(53, 11, 2, 'WATCHES', ''),
(37, 3, 1, 'Category 3', ''),
(36, 1, 2, 'Category 1', ''),
(32, 2, 2, 'Category 2', ''),
(40, 4, 2, 'Category 4', ''),
(42, 5, 2, 'Category 5', ''),
(54, 12, 2, 'BAGS', ''),
(55, 13, 2, 'Jewelry', ''),
(56, 14, 2, 'Harga Emas', ''),
(57, 15, 2, 'ON THE SPOTLIGHT', ''),
(58, 16, 2, 'ON THE SPOTLIGHT', ''),
(59, 17, 2, 'test', ''),
(60, 18, 2, 'FASHION GUIDE', ''),
(61, 19, 2, 'BEAUTY TIPS', ''),
(62, 20, 2, 'BEAUTY STARS', ''),
(63, 21, 2, 'LIFESTYLE EVENTS', ''),
(75, 10, 2, 'PRINTERS', ''),
(69, 22, 2, 'LAPTOPS', ''),
(70, 23, 2, 'DESKTOPS', ''),
(72, 24, 2, 'ACER', ''),
(73, 25, 2, 'DELL', ''),
(74, 26, 2, 'PERIPHERALS', ''),
(76, 27, 2, 'ACCESSORIS', ''),
(77, 28, 2, 'Coyote', ''),
(78, 29, 2, 'Decibels', ''),
(80, 30, 2, 'Club 360', '');

-- --------------------------------------------------------

--
-- Table structure for table `prd_product`
--

CREATE TABLE `prd_product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `harga_coret` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `terbaru` int(11) NOT NULL,
  `terlaris` int(11) NOT NULL,
  `out_stock` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prd_product`
--

INSERT INTO `prd_product` (`id`, `category_id`, `brand_id`, `image`, `kode`, `harga`, `harga_coret`, `stock`, `berat`, `terbaru`, `terlaris`, `out_stock`, `status`, `date`, `date_input`, `date_update`, `data`) VALUES
(1, 7, 0, 'b9122-asus-7981-931311-1-zoom.jpg', 'PRD-6592', 968, 988, 2, 2000, 1, 0, 0, 1, '2014-11-15 17:12:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(2, 7, 0, '887c8-asus-7981-931311-1-zoom.jpg', 'PRD-8407', 686, 716, 9, 1000, 1, 0, 0, 0, '2014-11-11 08:33:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(3, 10, 0, '887c8-hp-6527-441421-1-zoom.jpg', 'PRD-6005', 796, 816, 1, 0, 0, 1, 1, 0, '2014-11-14 18:45:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(4, 6, 0, '887c8-hp-6527-441421-1-zoom.jpg', 'PRD-7321', 655, 665, 0, 0, 0, 1, 1, 1, '2014-10-30 12:05:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(5, 6, 0, '887c8-lenovo-3406-64169-3-zoom.jpg', 'PRD-5799', 558, 568, 8, 500, 1, 0, 1, 1, '2014-11-16 22:34:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(6, 10, 0, '0b868-lenovo-3406-64169-3-zoom.jpg', 'PRD-7088', 237, 262, 0, 0, 1, 1, 1, 1, '2014-10-31 21:56:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(7, 6, 0, '0b868-lenovo-3406-64169-3-zoom.jpg', 'PRD-7191', 277, 292, 5, 2000, 1, 1, 1, 1, '2014-11-25 14:20:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(8, 6, 0, '0b868-lenovo-3400-64169-1-zoom.jpg', 'PRD-3617', 238, 248, 5, 0, 1, 1, 0, 1, '2014-10-29 10:05:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(9, 10, 0, '0b868-asus-7981-931311-1-zoom.jpg', 'PRD-1536', 401, 431, 1, 1000, 1, 0, 0, 0, '2014-11-24 17:06:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(10, 6, 0, 'de41a-asus-7981-931311-1-zoom.jpg', 'PRD-4736', 421, 446, 5, 500, 1, 1, 0, 0, '2014-11-03 20:09:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(11, 10, 0, 'de41a-asus-1320-772742-1-zoom.jpg', 'PRD-6706', 738, 743, 7, 500, 1, 1, 1, 0, '2014-11-02 21:54:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(12, 6, 0, 'de41a-hp-6527-441421-1-zoom.jpg', 'PRD-4972', 460, 465, 1, 500, 1, 1, 1, 1, '2014-11-01 18:03:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(13, 7, 0, 'de41a-asus-7981-931311-1-zoom.jpg', 'PRD-6252', 932, 942, 2, 1500, 1, 1, 1, 0, '2014-11-22 11:24:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(14, 6, 0, '7016c-asus-1320-772742-1-zoom.jpg', 'PRD-8583', 824, 834, 3, 2000, 1, 0, 1, 1, '2014-11-01 08:00:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(15, 6, 0, '7016c-asus-7981-931311-1-zoom.jpg', 'PRD-5222', 942, 962, 5, 500, 0, 0, 0, 1, '2014-10-30 10:53:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(16, 10, 0, '7016c-asus-6062-313941-1-zoom.jpg', 'PRD-4247', 268, 298, 8, 0, 1, 0, 1, 1, '2014-11-03 02:35:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(17, 6, 0, '7016c-asus-7981-931311-1-zoom.jpg', 'PRD-9466', 637, 667, 3, 1500, 0, 1, 1, 1, '2014-11-16 20:38:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(18, 10, 0, '7016c-asus-6062-313941-1-zoom.jpg', 'PRD-3790', 923, 933, 5, 2000, 0, 0, 0, 0, '2014-11-23 09:32:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(19, 7, 0, '634f1-asus-6062-313941-1-zoom.jpg', 'PRD-1777', 677, 707, 3, 2000, 1, 1, 1, 1, '2014-10-28 01:19:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(20, 7, 0, '634f1-lenovo-3400-64169-1-zoom.jpg', 'PRD-7329', 795, 815, 2, 1000, 0, 0, 0, 0, '2014-11-03 19:27:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(21, 7, 0, '634f1-asus-1320-772742-1-zoom.jpg', 'PRD-3859', 707, 712, 2, 2000, 0, 1, 1, 0, '2014-11-02 18:23:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(22, 6, 0, '634f1-lenovo-3400-64169-1-zoom.jpg', 'PRD-8739', 86, 86, 1, 500, 1, 1, 1, 1, '2014-11-12 11:08:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(23, 6, 0, '634f1-lenovo-3406-64169-3-zoom.jpg', 'PRD-4048', 963, 993, 7, 500, 0, 0, 1, 1, '2014-11-16 00:48:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(24, 10, 0, '634f1-asus-1320-772742-1-zoom.jpg', 'PRD-6313', 660, 680, 9, 1500, 0, 0, 0, 0, '2014-11-16 10:59:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(25, 10, 0, '58095-lenovo-3400-64169-1-zoom.jpg', 'PRD-2763', 83, 93, 6, 1500, 0, 1, 1, 0, '2014-10-31 22:00:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(26, 10, 0, '58095-asus-1320-772742-1-zoom.jpg', 'PRD-1074', 737, 762, 9, 500, 0, 1, 1, 1, '2014-10-31 13:51:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(27, 7, 0, '58095-asus-7981-931311-1-zoom.jpg', 'PRD-7977', 375, 375, 10, 500, 1, 1, 1, 0, '2014-10-30 19:32:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(28, 6, 0, '58095-asus-6062-313941-1-zoom.jpg', 'PRD-4793', 948, 973, 6, 0, 0, 0, 1, 1, '2014-11-14 04:50:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(29, 10, 0, '58095-lenovo-3406-64169-3-zoom.jpg', 'PRD-9925', 420, 430, 2, 1500, 0, 0, 1, 0, '2014-11-02 12:40:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(30, 10, 0, '3b80b-asus-1320-772742-1-zoom.jpg', 'PRD-9227', 795, 810, 10, 1500, 1, 0, 1, 1, '2014-11-11 10:08:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(31, 10, 0, '3b80b-lenovo-3400-64169-1-zoom.jpg', 'PRD-7093', 157, 162, 6, 0, 0, 1, 1, 1, '2014-11-17 23:26:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(32, 7, 0, '3b80b-asus-1320-772742-1-zoom.jpg', 'PRD-8361', 806, 811, 6, 1500, 1, 0, 0, 1, '2014-11-25 13:34:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(33, 6, 0, '3b80b-lenovo-3400-64169-1-zoom.jpg', 'PRD-5308', 225, 250, 9, 500, 1, 0, 1, 0, '2014-10-30 05:05:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(34, 6, 0, '3b80b-asus-6062-313941-1-zoom.jpg', 'PRD-4221', 676, 686, 4, 1000, 1, 0, 0, 1, '2014-11-23 16:42:23', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(35, 7, 0, '3b80b-asus-1320-772742-1-zoom.jpg', 'PRD-6773', 233, 263, 4, 0, 1, 1, 1, 1, '2014-11-15 06:32:09', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(36, 6, 0, 'd5adc-asus-6062-313941-1-zoom.jpg', 'PRD-3406', 160, 180, 6, 2000, 0, 1, 1, 0, '2014-10-30 12:35:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(37, 10, 0, 'd5adc-hp-6527-441421-1-zoom.jpg', 'PRD-8015', 698, 708, 0, 1500, 1, 1, 0, 0, '2014-11-08 12:25:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(38, 7, 0, 'd5adc-hp-6527-441421-1-zoom.jpg', 'PRD-4951', 419, 439, 4, 500, 0, 0, 1, 0, '2014-11-13 22:41:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(39, 7, 0, 'd5adc-asus-6062-313941-1-zoom.jpg', 'PRD-8452', 808, 833, 5, 1500, 0, 0, 0, 1, '2014-11-24 09:12:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(40, 7, 0, 'd5adc-lenovo-3406-64169-3-zoom.jpg', 'PRD-8385', 211, 241, 4, 1000, 0, 1, 0, 0, '2014-11-19 18:26:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(41, 10, 0, 'd5adc-hp-6527-441421-1-zoom.jpg', 'PRD-8924', 716, 726, 10, 1000, 1, 1, 0, 0, '2014-11-02 13:54:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(42, 7, 0, '246ec-hp-6527-441421-1-zoom.jpg', 'PRD-2489', 58, 73, 9, 2000, 1, 0, 1, 0, '2014-11-20 01:25:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(43, 7, 0, '246ec-asus-6062-313941-1-zoom.jpg', 'PRD-5396', 413, 443, 9, 0, 0, 1, 1, 1, '2014-11-23 15:11:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(44, 10, 0, '246ec-asus-7981-931311-1-zoom.jpg', 'PRD-7424', 997, 1012, 2, 1000, 1, 1, 1, 0, '2014-11-12 12:06:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(45, 7, 0, '246ec-asus-7981-931311-1-zoom.jpg', 'PRD-6841', 768, 798, 6, 1500, 0, 1, 0, 1, '2014-11-16 05:39:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(46, 6, 0, '246ec-acer-9929-36609-1-zoom.jpg', 'PRD-7533', 314, 314, 10, 500, 1, 0, 0, 0, '2014-11-04 08:25:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(47, 10, 0, '14e67-acer-9929-36609-1-zoom.jpg', 'PRD-2621', 262, 272, 6, 2000, 0, 1, 1, 1, '2014-11-03 03:16:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(48, 7, 0, '14e67-asus-1320-772742-1-zoom.jpg', 'PRD-7522', 149, 169, 7, 1000, 0, 1, 1, 0, '2014-11-17 10:16:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(49, 6, 0, '14e67-lenovo-3406-64169-3-zoom.jpg', 'PRD-7103', 697, 702, 0, 0, 0, 1, 0, 0, '2014-11-12 00:50:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(50, 7, 0, '14e67-asus-7981-931311-1-zoom.jpg', 'PRD-2683', 414, 419, 10, 1500, 1, 1, 0, 1, '2014-11-02 13:21:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(51, 10, 0, '14e67-asus-7981-931311-1-zoom.jpg', 'PRD-2949', 316, 341, 5, 500, 0, 0, 1, 1, '2014-11-01 02:55:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(52, 6, 0, '1cdad-lenovo-3400-64169-1-zoom.jpg', 'PRD-7720', 490, 495, 0, 1500, 1, 0, 0, 1, '2014-11-22 05:46:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(53, 7, 0, '1cdad-lenovo-3406-64169-3-zoom.jpg', 'PRD-6937', 426, 431, 4, 1500, 1, 1, 0, 0, '2014-11-15 23:08:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(54, 10, 0, '1cdad-asus-6062-313941-1-zoom.jpg', 'PRD-1357', 330, 330, 8, 2000, 1, 1, 0, 0, '2014-11-01 22:19:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(55, 6, 0, '1cdad-hp-6527-441421-1-zoom.jpg', 'PRD-8367', 365, 380, 8, 500, 1, 1, 1, 1, '2014-11-26 15:24:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(56, 10, 0, 'ab4dd-lenovo-3400-64169-1-zoom.jpg', 'PRD-1935', 556, 581, 1, 0, 0, 1, 1, 1, '2014-11-10 05:20:08', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(57, 6, 0, 'ab4dd-lenovo-3400-64169-1-zoom.jpg', 'PRD-7775', 959, 959, 1, 0, 0, 0, 1, 1, '2014-11-09 18:18:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(58, 7, 0, 'ab4dd-hp-6527-441421-1-zoom.jpg', 'PRD-1806', 232, 247, 4, 1500, 1, 0, 0, 0, '2014-11-25 15:59:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(59, 7, 0, 'ab4dd-lenovo-3400-64169-1-zoom.jpg', 'PRD-4365', 399, 409, 5, 0, 1, 1, 0, 1, '2014-10-28 22:37:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(60, 7, 0, 'ab4dd-asus-7981-931311-1-zoom.jpg', 'PRD-4357', 819, 829, 1, 500, 0, 0, 1, 0, '2014-11-21 06:09:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(61, 6, 0, '5c4b6-lenovo-3406-64169-3-zoom.jpg', 'PRD-4520', 236, 246, 7, 0, 1, 1, 0, 1, '2014-11-03 16:42:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(62, 6, 0, '5c4b6-hp-6527-441421-1-zoom.jpg', 'PRD-7543', 53, 63, 8, 1000, 0, 1, 0, 1, '2014-11-09 16:39:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(63, 7, 0, '5c4b6-acer-9929-36609-1-zoom.jpg', 'PRD-3376', 324, 324, 5, 500, 0, 1, 0, 0, '2014-11-17 04:22:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(64, 10, 0, '703a1-lenovo-3400-64169-1-zoom.jpg', 'PRD-1650', 674, 689, 1, 500, 1, 1, 0, 1, '2014-11-21 01:44:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(65, 7, 0, '703a1-lenovo-3406-64169-3-zoom.jpg', 'PRD-2722', 344, 369, 5, 1000, 0, 0, 1, 0, '2014-10-28 14:54:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(66, 7, 0, '703a1-lenovo-3400-64169-1-zoom.jpg', 'PRD-8600', 899, 904, 1, 500, 0, 0, 0, 1, '2014-11-25 13:24:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(67, 7, 0, '703a1-acer-9929-36609-1-zoom.jpg', 'PRD-6969', 742, 757, 8, 1500, 1, 1, 0, 1, '2014-11-08 03:51:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(68, 7, 0, '703a1-lenovo-3406-64169-3-zoom.jpg', 'PRD-2780', 473, 473, 0, 1000, 1, 0, 1, 0, '2014-10-29 04:17:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(69, 10, 0, '320ca-hp-6527-441421-1-zoom.jpg', 'PRD-6940', 743, 748, 5, 1000, 0, 1, 0, 1, '2014-11-19 20:47:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(70, 7, 0, '320ca-lenovo-3400-64169-1-zoom.jpg', 'PRD-6142', 697, 707, 0, 1500, 1, 0, 1, 1, '2014-11-07 04:56:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(71, 6, 0, '2ceeb-asus-1320-772742-1-zoom.jpg', 'PRD-8299', 217, 247, 4, 0, 0, 0, 1, 0, '2014-11-19 17:45:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(72, 10, 0, '2ceeb-asus-6062-313941-1-zoom.jpg', 'PRD-7617', 102, 122, 0, 1000, 1, 1, 0, 1, '2014-11-01 09:48:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(73, 7, 0, '2ceeb-asus-1320-772742-1-zoom.jpg', 'PRD-2224', 260, 270, 2, 0, 1, 1, 1, 1, '2014-11-02 13:25:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(74, 6, 0, '2ceeb-lenovo-3400-64169-1-zoom.jpg', 'PRD-4323', 195, 205, 1, 2000, 1, 0, 1, 0, '2014-11-16 14:59:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(75, 6, 0, '2ceeb-asus-6062-313941-1-zoom.jpg', 'PRD-6492', 940, 955, 1, 500, 0, 1, 1, 1, '2014-11-07 12:17:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(76, 10, 0, '2ceeb-asus-1320-772742-1-zoom.jpg', 'PRD-8403', 843, 853, 10, 2000, 1, 0, 1, 0, '2014-11-17 08:05:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(77, 6, 0, '4c2c0-hp-6527-441421-1-zoom.jpg', 'PRD-5025', 473, 488, 10, 1500, 0, 1, 0, 1, '2014-11-25 09:30:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(78, 6, 0, '4c2c0-acer-9929-36609-1-zoom.jpg', 'PRD-7167', 496, 501, 5, 1500, 0, 0, 1, 1, '2014-11-13 06:55:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(79, 6, 0, '4c2c0-asus-1320-772742-1-zoom.jpg', 'PRD-2354', 947, 972, 10, 2000, 0, 0, 1, 0, '2014-11-21 12:36:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(80, 6, 0, '4c2c0-lenovo-3400-64169-1-zoom.jpg', 'PRD-5595', 267, 297, 0, 2000, 0, 1, 1, 1, '2014-11-08 16:08:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(81, 7, 0, '4c2c0-acer-9929-36609-1-zoom.jpg', 'PRD-4147', 974, 984, 5, 0, 1, 0, 1, 1, '2014-11-12 21:45:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(82, 10, 0, 'f5bdd-asus-1320-772742-1-zoom.jpg', 'PRD-2227', 336, 341, 5, 500, 1, 1, 0, 1, '2014-11-14 08:14:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(83, 7, 0, 'f5bdd-asus-1320-772742-1-zoom.jpg', 'PRD-2277', 92, 112, 0, 1500, 0, 1, 0, 0, '2014-11-19 07:30:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(84, 6, 0, 'f5bdd-asus-1320-772742-1-zoom.jpg', 'PRD-4247', 313, 323, 6, 1500, 1, 1, 0, 0, '2014-11-25 10:15:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(85, 7, 0, 'f5bdd-hp-6527-441421-1-zoom.jpg', 'PRD-5232', 710, 735, 10, 500, 1, 1, 1, 0, '2014-11-07 10:29:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(86, 10, 0, '28b54-lenovo-3400-64169-1-zoom.jpg', 'PRD-8790', 885, 890, 10, 1000, 0, 1, 1, 1, '2014-11-13 07:58:45', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(87, 10, 0, '28b54-asus-1320-772742-1-zoom.jpg', 'PRD-2514', 819, 824, 7, 2000, 0, 1, 0, 0, '2014-11-19 05:01:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(88, 7, 0, 'afe29-lenovo-3406-64169-3-zoom.jpg', 'PRD-6203', 612, 632, 3, 2000, 0, 1, 1, 1, '2014-11-14 15:18:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(89, 7, 0, 'afe29-acer-9929-36609-1-zoom.jpg', 'PRD-9801', 632, 652, 4, 500, 0, 0, 1, 0, '2014-10-30 21:45:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(90, 7, 0, 'afe29-asus-7981-931311-1-zoom.jpg', 'PRD-2451', 462, 462, 9, 500, 1, 0, 0, 0, '2014-11-14 00:51:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(91, 6, 0, 'e3bcf-lenovo-3400-64169-1-zoom.jpg', 'PRD-5763', 942, 962, 10, 1000, 1, 0, 0, 1, '2014-11-23 21:20:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(92, 6, 0, 'e3bcf-hp-6527-441421-1-zoom.jpg', 'PRD-8599', 225, 245, 9, 1000, 0, 1, 0, 1, '2014-11-22 08:03:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(93, 10, 0, 'e3bcf-asus-6062-313941-1-zoom.jpg', 'PRD-1384', 332, 357, 2, 1500, 0, 1, 0, 0, '2014-11-16 23:53:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(94, 10, 0, 'e3bcf-hp-6527-441421-1-zoom.jpg', 'PRD-9123', 667, 697, 10, 500, 0, 1, 1, 1, '2014-10-30 10:44:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(95, 7, 0, 'aafab-asus-1320-772742-1-zoom.jpg', 'PRD-1965', 942, 942, 4, 500, 1, 1, 0, 1, '2014-11-04 13:43:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(96, 10, 0, 'aafab-acer-9929-36609-1-zoom.jpg', 'PRD-5573', 959, 984, 6, 2000, 1, 1, 1, 1, '2014-11-16 15:20:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(97, 7, 0, 'aafab-acer-9929-36609-1-zoom.jpg', 'PRD-1118', 894, 914, 5, 1500, 0, 1, 1, 1, '2014-10-31 16:54:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(98, 10, 0, 'aafab-acer-9929-36609-1-zoom.jpg', 'PRD-2201', 741, 756, 0, 1500, 0, 1, 1, 0, '2014-11-04 19:14:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(99, 10, 0, 'aafab-hp-6527-441421-1-zoom.jpg', 'PRD-5049', 861, 876, 0, 1000, 1, 1, 1, 1, '2014-11-23 20:09:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(100, 10, 0, 'a673d-asus-6062-313941-1-zoom.jpg', 'PRD-1581', 489, 514, 8, 2000, 1, 0, 1, 0, '2014-11-23 17:03:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(101, 7, 0, 'a673d-acer-9929-36609-1-zoom.jpg', 'PRD-6041', 731, 746, 3, 1500, 0, 0, 0, 1, '2014-11-01 15:06:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(102, 7, 0, 'a673d-acer-9929-36609-1-zoom.jpg', 'PRD-5730', 169, 184, 10, 500, 1, 1, 0, 0, '2014-11-15 03:18:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(103, 10, 0, '7a3a6-asus-1320-772742-1-zoom.jpg', 'PRD-7304', 829, 859, 5, 500, 1, 0, 1, 0, '2014-11-15 12:07:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(104, 10, 0, '7a3a6-lenovo-3400-64169-1-zoom.jpg', 'PRD-1905', 509, 534, 2, 1000, 0, 0, 1, 1, '2014-11-11 18:16:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(105, 10, 0, '7a3a6-hp-6527-441421-1-zoom.jpg', 'PRD-5921', 252, 262, 4, 2000, 1, 1, 1, 1, '2014-11-24 02:39:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(106, 6, 0, '436ea-hp-6527-441421-1-zoom.jpg', 'PRD-1600', 159, 189, 6, 0, 0, 0, 0, 1, '2014-11-07 03:16:11', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(107, 6, 0, '436ea-acer-9929-36609-1-zoom.jpg', 'PRD-1392', 898, 928, 0, 0, 1, 1, 0, 1, '2014-11-15 14:40:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(108, 6, 0, '436ea-lenovo-3400-64169-1-zoom.jpg', 'PRD-9904', 362, 367, 4, 500, 1, 1, 0, 0, '2014-11-08 05:14:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(109, 6, 0, '436ea-asus-7981-931311-1-zoom.jpg', 'PRD-8985', 920, 935, 8, 2000, 0, 1, 1, 0, '2014-11-09 19:16:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(110, 10, 0, '436ea-hp-6527-441421-1-zoom.jpg', 'PRD-7932', 970, 975, 3, 2000, 0, 1, 1, 0, '2014-11-23 04:05:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(111, 6, 0, '68833-asus-1320-772742-1-zoom.jpg', 'PRD-8102', 583, 598, 0, 1000, 1, 0, 0, 1, '2014-11-09 05:10:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(112, 10, 0, '68833-hp-6527-441421-1-zoom.jpg', 'PRD-4449', 741, 761, 2, 500, 1, 0, 0, 1, '2014-11-02 18:06:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(113, 7, 0, '68833-hp-6527-441421-1-zoom.jpg', 'PRD-3025', 732, 757, 4, 0, 0, 0, 1, 1, '2014-11-26 01:33:17', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(114, 6, 0, '68833-asus-1320-772742-1-zoom.jpg', 'PRD-7562', 340, 340, 8, 1500, 1, 1, 1, 1, '2014-11-05 20:06:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(115, 6, 0, '68833-asus-1320-772742-1-zoom.jpg', 'PRD-5528', 535, 565, 10, 1500, 1, 1, 1, 0, '2014-11-17 01:18:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(116, 10, 0, 'a4d53-asus-6062-313941-1-zoom.jpg', 'PRD-8323', 528, 543, 8, 500, 1, 0, 0, 1, '2014-11-25 17:13:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(117, 7, 0, 'a4d53-asus-6062-313941-1-zoom.jpg', 'PRD-2823', 798, 798, 10, 0, 1, 1, 0, 1, '2014-11-15 08:36:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(118, 7, 0, 'a4d53-acer-9929-36609-1-zoom.jpg', 'PRD-8984', 244, 264, 1, 1000, 0, 0, 1, 0, '2014-11-26 15:12:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `prd_product_attributes`
--

CREATE TABLE `prd_product_attributes` (
  `id` int(11) NOT NULL,
  `id_str` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute` varchar(200) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prd_product_color`
--

CREATE TABLE `prd_product_color` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image_color` varchar(200) NOT NULL,
  `label` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prd_product_description`
--

CREATE TABLE `prd_product_description` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `meta_title` varchar(200) NOT NULL,
  `meta_desc` text NOT NULL,
  `meta_key` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prd_product_description`
--

INSERT INTO `prd_product_description` (`id`, `product_id`, `language_id`, `name`, `desc`, `meta_title`, `meta_desc`, `meta_key`) VALUES
(1, 1, 2, 'Verbis Quare Moriens', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(2, 2, 2, 'Quare Totidem Quare Contra Elit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(3, 3, 2, 'Itaque Moriens', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(4, 4, 2, 'Quaeso Dolor Ac', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(5, 5, 2, 'Verbis Sit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(6, 6, 2, 'Possumus Consectetur Esse Sibi Illum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(7, 7, 2, 'Est Torquatum Consectetur Est Esse', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(8, 8, 2, 'Eundem Eundem Fortemne', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(9, 9, 2, 'Esse Fortemne Contra Dolor', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(10, 10, 2, 'Moriens Illum Quaeso Respondeat', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(11, 11, 2, 'Amet Consectetur', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(12, 12, 2, 'Elit Amet Contra', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(13, 13, 2, 'Quaeso Beatus', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(14, 14, 2, 'Lorem Est Moriens Verbis Torquatum Esse', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(15, 15, 2, 'Verbis Lorem Ipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(16, 16, 2, 'Amet Conare Esse', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(17, 17, 2, 'Adipiscing Est Lorem Beatus', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(18, 18, 2, 'Lorem Fortemne', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(19, 19, 2, 'Dicitis Conare Dicitis Eundem Possumus', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(20, 20, 2, 'Conare Dicere Est Videtur', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(21, 21, 2, 'Elit Illum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(22, 22, 2, 'Elit Consectetur Amet Torquatum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(23, 23, 2, 'Quaeso Itaque', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(24, 24, 2, 'Lorem Torquatum Totidem Dicere Contra', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(25, 25, 2, 'Adipiscing Illum Sibi Dicere Dicere', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(26, 26, 2, 'Respondeat Sibi Eundem', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(27, 27, 2, 'Adipiscing Conare Moriens Respondeat Videtur', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(28, 28, 2, 'Conare Verbis', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(29, 29, 2, 'Amet  Fortemne Illum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(30, 30, 2, 'Videtur Torquatum Ipsum Sit Totidem', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(31, 31, 2, 'Dicere Adipiscing Totidem Illum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(32, 32, 2, 'Dolor Consectetur Sibi Esse', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(33, 33, 2, 'Sit Ipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(34, 34, 2, 'Itaque Fortemne', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(35, 35, 2, 'Dicere Dolor Quare', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(36, 36, 2, 'Eundem Sibi', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(37, 37, 2, 'Contra Adipiscing Dolor Lorem', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(38, 38, 2, 'Itaque Totidem Moriens', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(39, 39, 2, 'Possumus Moriens Amet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(40, 40, 2, 'Contra Itaque Lorem', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(41, 41, 2, 'Sibi Fortemne Verbis Quare', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(42, 42, 2, 'Possumus Sit Eundem', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(43, 43, 2, 'Illum Dicere Totidem Verbis Videtur', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(44, 44, 2, 'Sit Lorem Est', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(45, 45, 2, 'Fortemne Fortemne Ac Respondeat', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(46, 46, 2, 'Adipiscing Possumus Verbis Illum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(47, 47, 2, 'Eundem Illum Est', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(48, 48, 2, 'Dicitis Amet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(49, 49, 2, 'Possumus Sibi', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(50, 50, 2, 'Contra Contra Sit Quaeso Videtur Quaeso', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(51, 51, 2, 'Beatus Totidem Fortemne', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(52, 52, 2, 'Videtur Quaeso Possumus Sibi', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(53, 53, 2, 'Conare Dicitis', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(54, 54, 2, 'Elit Itaque Beatus', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(55, 55, 2, 'Dicere Eundem Adipiscing Dicere', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(56, 56, 2, 'Dicitis Ipsum Dicitis', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(57, 57, 2, 'Contra Dicitis Amet Torquatum Torquatum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(58, 58, 2, 'Respondeat Respondeat Dicere Sibi', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(59, 59, 2, 'Totidem Respondeat Adipiscing', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(60, 60, 2, 'Est Dicitis Esse Dolor Verbis', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(61, 61, 2, 'Sit Respondeat Itaque', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(62, 62, 2, 'Dolor Quaeso Videtur Sit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(63, 63, 2, 'Consectetur Verbis', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(64, 64, 2, 'Quare Totidem Adipiscing', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(65, 65, 2, 'Dicere Consectetur Esse', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(66, 66, 2, 'Totidem Est', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(67, 67, 2, 'Est Sit Sit Consectetur', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(68, 68, 2, 'Est Eundem', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(69, 69, 2, 'Dicitis Ipsum  Moriens', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(70, 70, 2, 'Lorem Sibi Contra Videtur', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(71, 71, 2, 'Totidem Amet Sibi Quare', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(72, 72, 2, 'Illum  Fortemne', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(73, 73, 2, 'Dolor Verbis Ipsum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(74, 74, 2, 'Verbis Contra Verbis Elit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(75, 75, 2, 'Illum Esse', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(76, 76, 2, 'Verbis Ac  Ac Amet Moriens', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(77, 77, 2, 'Quare Fortemne Sibi', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(78, 78, 2, 'Dolor Sit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(79, 79, 2, 'Sit Contra Elit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(80, 80, 2, 'Possumus Moriens Est', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(81, 81, 2, 'Totidem Fortemne Quaeso Ac Consectetur', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(82, 82, 2, 'Beatus Elit Ipsum Adipiscing Dicitis Consectetur', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(83, 83, 2, 'Possumus Moriens Itaque Beatus Lorem', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(84, 84, 2, 'Sibi  Esse Possumus', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(85, 85, 2, 'Respondeat Dicitis Respondeat Ipsum Verbis', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(86, 86, 2, 'Dicere Consectetur', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(87, 87, 2, 'Adipiscing Dicere Totidem Consectetur', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(88, 88, 2, 'Amet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(89, 89, 2, 'Itaque Dicere', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(90, 90, 2, 'Dolor Itaque Amet Ac Sit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(91, 91, 2, 'Ac Dicere', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(92, 92, 2, 'Eundem Sit Elit Ac', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(93, 93, 2, 'Quaeso Adipiscing Lorem Eundem', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(94, 94, 2, 'Lorem Dolor Sibi Sit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(95, 95, 2, 'Videtur Possumus Contra Elit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(96, 96, 2, 'Torquatum Est Ac Sit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(97, 97, 2, 'Consectetur  Lorem', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(98, 98, 2, 'Esse Beatus Beatus', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(99, 99, 2, 'Dolor Quare', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(100, 100, 2, 'Adipiscing Possumus', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(101, 101, 2, 'Adipiscing  Dolor Verbis', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(102, 102, 2, 'Sit Sit Lorem Respondeat Quaeso', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(103, 103, 2, 'Totidem Quaeso', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(104, 104, 2, 'Dicitis Lorem Itaque', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(105, 105, 2, 'Beatus Quaeso Eundem Ac', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(106, 106, 2, 'Moriens Quare', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(107, 107, 2, 'Totidem Illum Quare', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(108, 108, 2, 'Esse Est  Moriens Torquatum', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(109, 109, 2, 'Videtur Moriens Ac', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(110, 110, 2, 'Conare Dicere Fortemne  Sit Itaque', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(111, 111, 2, 'Ipsum Elit Totidem', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(112, 112, 2, 'Dolor Esse', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(113, 113, 2, 'Moriens Fortemne', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(114, 114, 2, 'Beatus Verbis Contra Eundem Possumus', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(115, 115, 2, 'Fortemne Verbis Videtur', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(116, 116, 2, 'Dicere Eundem Amet', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(117, 117, 2, 'Quaeso Sit', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', ''),
(118, 118, 2, 'Dolor Elit Dicitis', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Respondeat totidem verbis. Quare conare, quaeso. Beatus sibi videtur esse moriens. Itaque contra est, ac dicitis; Fortemne possumus dicere eundem illum Torquatum? </p>\n\n', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `prd_product_image`
--

CREATE TABLE `prd_product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `label` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `hide` int(11) NOT NULL,
  `group` varchar(100) NOT NULL,
  `dual_language` enum('n','y') NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `label`, `value`, `type`, `hide`, `group`, `dual_language`, `sort`) VALUES
(1, 'default_meta_title', 'Title', '', 'text', 0, 'default_meta', 'y', 1),
(2, 'default_meta_keywords', 'Keywords', '', 'textarea', 0, 'default_meta', 'y', 2),
(3, 'default_meta_description', 'Description', '', 'textarea', 0, 'default_meta', 'y', 3),
(4, 'google_tools_webmaster', 'Google Webmaster Code', '', 'textarea', 0, 'google_tools', 'n', 4),
(5, 'google_tools_analytic', 'Google Analytic Code', '', 'textarea', 0, 'google_tools', 'n', 5),
(6, 'purechat_status', 'Show Hide Widget', '', 'select', 0, 'purechat', 'n', 1),
(7, 'purechat_code', 'PureChat Code', '', 'textarea', 0, 'purechat', 'n', 1),
(8, 'invoice_start_number', 'Invoice Start Number', '1000', 'text', 0, 'invoice', 'n', 0),
(9, 'invoice_increment', 'Invoice Increment', '5', 'text', 0, 'invoice', 'n', 0),
(10, 'invoice_auto_cancel_after', 'Invoice Auto Cancel After', '72', 'text', 0, 'invoice', 'n', 0),
(11, 'lang_deff', 'Language Default', 'en', 'text', 0, 'data', 'n', 0),
(12, 'email', 'email', 'top10grup@gmail.com', 'text', 0, 'contact', 'n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting_description`
--

CREATE TABLE `setting_description` (
  `id` int(11) NOT NULL,
  `setting_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting_description`
--

INSERT INTO `setting_description` (`id`, `setting_id`, `language_id`, `value`) VALUES
(1, 1, 2, 'Untuk Edit Bisa dilakukan dengan mengakses Admin Panel -> General Setting -> Default Meta Page'),
(2, 2, 2, 'Untuk Edit Bisa dilakukan dengan mengakses Admin Panel -> General Setting -> Default Meta Page'),
(3, 3, 2, 'Untuk Edit Bisa dilakukan dengan mengakses Admin Panel -> General Setting -> Default Meta Page'),
(10, 1, 1, 'Untuk Edit Bisa dilakukan dengan mengakses Admin Panel -> General Setting -> Default Meta Page'),
(11, 3, 1, 'Untuk Edit Bisa dilakukan dengan mengakses Admin Panel -> General Setting -> Default Meta Page'),
(12, 2, 1, 'Untuk Edit Bisa dilakukan dengan mengakses Admin Panel -> General Setting -> Default Meta Page');

-- --------------------------------------------------------

--
-- Table structure for table `sl_slide`
--

CREATE TABLE `sl_slide` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl_slide`
--

INSERT INTO `sl_slide` (`id`, `topik_id`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`) VALUES
(4, 0, 'fc2f6-fcs-1.jpg', 1, '0000-00-00 00:00:00', '2014-11-27 13:50:41', 'deoryzpandu@gmail.com', 'deoryzpandu@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `sl_slide_description`
--

CREATE TABLE `sl_slide_description` (
  `id` int(11) NOT NULL,
  `slide_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sl_slide_description`
--

INSERT INTO `sl_slide_description` (`id`, `slide_id`, `language_id`, `title`, `content`, `url`) VALUES
(21, 4, 2, 'understand', '<p>\r\n	 understand\r\n</p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_group`
--

CREATE TABLE `tb_group` (
  `id` int(11) NOT NULL,
  `group` varchar(50) NOT NULL,
  `aktif` int(11) NOT NULL,
  `akses` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_group`
--

INSERT INTO `tb_group` (`id`, `group`, `aktif`, `akses`) VALUES
(8, 'Administrator', 1, 0x613a33373a7b693a303b733a31363a2261646d696e2e757365722e696e646578223b693a313b733a31373a2261646d696e2e757365722e637265617465223b693a323b733a31373a2261646d696e2e757365722e757064617465223b693a333b733a31373a2261646d696e2e757365722e64656c657465223b693a343b733a31373a2261646d696e2e736c6964652e696e646578223b693a353b733a31383a2261646d696e2e736c6964652e637265617465223b693a363b733a31383a2261646d696e2e736c6964652e757064617465223b693a373b733a31383a2261646d696e2e736c6964652e64656c657465223b693a383b733a31363a2261646d696e2e62616e6b2e696e646578223b693a393b733a31373a2261646d696e2e62616e6b2e637265617465223b693a31303b733a31373a2261646d696e2e62616e6b2e757064617465223b693a31313b733a31373a2261646d696e2e62616e6b2e64656c657465223b693a31323b733a31393a2261646d696e2e73657474696e672e696e646578223b693a31333b733a31383a2261646d696e2e6d656d6265722e696e646578223b693a31343b733a31393a2261646d696e2e6d656d6265722e637265617465223b693a31353b733a31393a2261646d696e2e6d656d6265722e757064617465223b693a31363b733a31393a2261646d696e2e6d656d6265722e64656c657465223b693a31373b733a31373a2261646d696e2e6f726465722e696e646578223b693a31383b733a31383a2261646d696e2e6f726465722e637265617465223b693a31393b733a31383a2261646d696e2e6f726465722e757064617465223b693a32303b733a31383a2261646d696e2e6f726465722e64656c657465223b693a32313b733a31373a2261646d696e2e6f726465722e7072696e74223b693a32323b733a32313a2261646d696e2e73657474696e672e636f6e74616374223b693a32333b733a31393a2261646d696e2e73657474696e672e61626f7574223b693a32343b733a32303a2261646d696e2e63617465676f72792e696e646578223b693a32353b733a32313a2261646d696e2e63617465676f72792e637265617465223b693a32363b733a32313a2261646d696e2e63617465676f72792e757064617465223b693a32373b733a32313a2261646d696e2e63617465676f72792e64656c657465223b693a32383b733a31393a2261646d696e2e73657474696e672e686f77746f223b693a32393b733a31393a2261646d696e2e70726f647563742e696e646578223b693a33303b733a32303a2261646d696e2e70726f647563742e637265617465223b693a33313b733a32303a2261646d696e2e70726f647563742e757064617465223b693a33323b733a32303a2261646d696e2e70726f647563742e64656c657465223b693a33333b733a32303a2261646d696e2e64656c69766572792e696e646578223b693a33343b733a32313a2261646d696e2e64656c69766572792e637265617465223b693a33353b733a32313a2261646d696e2e64656c69766572792e757064617465223b693a33363b733a32313a2261646d696e2e64656c69766572792e64656c657465223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu_akses`
--

CREATE TABLE `tb_menu_akses` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `action` blob NOT NULL,
  `sub_action` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_menu_akses`
--

INSERT INTO `tb_menu_akses` (`id`, `type`, `name`, `controller`, `action`, `sub_action`) VALUES
(22, 'admin', 'User', 'user', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(21, 'admin', 'Slide', 'slide', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(40, 'admin', 'Bank', 'bank', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(18, 'admin', 'Setting', 'setting', 0x613a313a7b733a353a22696e646578223b733a31373a22456469742053657474696e6720556d756d223b7d, 0x613a303a7b7d),
(39, 'admin', 'Member', 'member', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(38, 'admin', 'Order', 'order', 0x613a353a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b733a353a227072696e74223b733a353a225072696e74223b7d, 0x613a303a7b7d),
(32, 'admin', 'Contact Us', 'setting', 0x613a313a7b733a373a22636f6e74616374223b733a32323a2245646974205061676520487562756e6769204b616d69223b7d, 0x613a303a7b7d),
(13, 'admin', 'About Us', 'setting', 0x613a313a7b733a353a2261626f7574223b733a31303a22456469742041626f7574223b7d, 0x613a303a7b7d),
(37, 'admin', 'Category', 'category', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(36, 'admin', 'How To Order', 'setting', 0x613a313a7b733a353a22686f77746f223b733a31323a22486f7720546f204f72646572223b7d, 0x613a303a7b7d),
(30, 'admin', 'Products', 'product', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(41, 'admin', 'Delivery Price', 'delivery', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `group_id` int(11) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `user_input` varchar(200) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `initial` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `email`, `nama`, `pass`, `type`, `group_id`, `login_terakhir`, `aktivasi`, `aktif`, `user_input`, `tanggal_input`, `initial`, `image`) VALUES
(1, 'deoryzpandu@gmail.com', 'Deory Pandu', '564fda17f517ae04a86734c2b2341327ed4fd565', 'root', 0, '2014-07-02 04:45:49', 0, 1, '', '2014-02-09 14:18:24', 'deory', ''),
(34, 'info@topten.com', 'info@topten.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '', 8, '2015-09-14 06:18:21', 0, 1, '', '0000-00-00 00:00:00', 'info', '25e79-foto-member.jpg'),
(23, 'deo@markdesign.net', '', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'member', 0, '2014-05-13 05:57:30', 0, 1, '', '0000-00-00 00:00:00', '', ''),
(25, 'ibnudrift@gmail.com', '', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'member', 0, '2014-05-13 11:24:33', 0, 1, '', '0000-00-00 00:00:00', '', ''),
(30, 'info@markdesign.net', '', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'root', 8, '2014-06-16 04:10:20', 0, 1, '', '0000-00-00 00:00:00', 'Admin', ''),
(28, 'test@gmail.com', '', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'member', 0, '2014-05-13 11:38:36', 0, 1, '', '0000-00-00 00:00:00', '', ''),
(31, 'cs@markdesign.net', '', '009fbe1824a81c264fc8b926ae484c32b4d928b4', 'member', 0, '2014-06-19 10:47:59', 0, 1, '', '0000-00-00 00:00:00', '', ''),
(32, 'ibnu@markdesign.net', 'Ibnu Fajar', '564fda17f517ae04a86734c2b2341327ed4fd565', '', 8, '2014-07-02 07:21:59', 0, 1, '', '0000-00-00 00:00:00', 'ibnu', '6879e-Desert (Mobile).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(70) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `url` varchar(225) NOT NULL,
  `images` varchar(225) NOT NULL,
  `status` int(1) NOT NULL,
  `counters` int(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `blog_id`, `name`, `url`, `images`, `status`, `counters`, `harga`, `desc`) VALUES
(8, 12, 'PRESALE  KTM ', '', '', 0, 0, 150000, 'TICKET PRESALE \r\nby KTM ID'),
(9, 12, 'PACKAGE (5 Ticket) BY KTM  ', '', '', 0, 0, 500000, 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM'),
(10, 12, 'PRESALE NON KTM', '', '', 0, 0, 200000, 'PRESALE TICKET NON KTM '),
(11, 12, 'TICKET ON THE DAY', '', '', 0, 0, 300000, 'TICKET ON THE DAY');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_order`
--

CREATE TABLE `ticket_order` (
  `id` int(11) NOT NULL,
  `no_invoice` varchar(50) NOT NULL,
  `confirm_code` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_name` varchar(200) NOT NULL,
  `ticket_desc` text NOT NULL,
  `ticket_price` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `post_code` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL,
  `insertId` varchar(200) NOT NULL,
  `ktp` varchar(50) NOT NULL,
  `kode_unik` int(11) NOT NULL,
  `method` varchar(50) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_order`
--

INSERT INTO `ticket_order` (`id`, `no_invoice`, `confirm_code`, `qty`, `total`, `ticket_id`, `ticket_name`, `ticket_desc`, `ticket_price`, `first_name`, `last_name`, `phone`, `email`, `address`, `city`, `post_code`, `state`, `comment`, `status`, `insertId`, `ktp`, `kode_unik`, `method`, `date_create`) VALUES
(58, 'DBS-20180719-9277', 'd3531864e8b68ef8d2c2cc7f91fa23c8', 1, 150000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'deory', '', '085646765265', 'deo@markdesign.net', '', '', '', '', '', 0, '', '3256101554545', 576, 'bank', '2018-07-19 08:02:35'),
(59, 'DBS-20180721-1151', 'f6457e49e176258038eeed133711b772', 1, 150000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'agung', 'pribadi', '081235172261', 'agung.top10grup@gmail.com', 'TAMAN RT.16 RW.03 NO.22', 'Sidoarjo', '61257', 'Jawa Timur', '', 1, '', '3515131408830012', 634, 'bank', '2018-07-21 07:06:57'),
(60, 'DBS-20180721-4998', '7164efa20806c06658fad80c85f8c7b1', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Dita Annisa Putri', '', '081252376418', 'ditaannisaputrii@gmail.com', '', '', '', '', '', 5, '', '041411431078', 187, 'bank', '2018-07-21 08:21:07'),
(61, 'DBS-20180721-5001', '573fcc364324d144cc29fa5f98e7bca9', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Afif Risyaf', '', '081230563823', 'arielfifrisyaf@yahoo.com', '', '', '', '', '', 5, '', '3578283006940016', 324, 'bank', '2018-07-21 08:25:46'),
(62, 'DBS-20180721-6497', 'dce51320396d90379e3d6292af1712a3', 2, 300000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'Shella', '', '081216998693', 'shellaiueo@gmail.com', '', '', '', '', '', 5, '', '165010101111026', 487, 'bank', '2018-07-21 08:32:24'),
(63, 'DBS-20180723-4217', '6fc1aab33e5b0d88a13a0651a237dcd5', 2, 1000000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Risna Megasari', '', '081377777786', 'starcash.jinn@gmail.com', '', '', '', '', '', 5, '', '1612211008', 949, 'bank', '2018-07-23 04:42:20'),
(64, 'DBS-20180723-3796', '615168ad7d9f1d8433754170215367bc', 2, 300000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'Ibrahim Rinonuit', '', '081335113481', 'rinozack@gmail.com', '', '', '', '', '', 5, '', '071614753007', 577, 'bank', '2018-07-23 04:46:48'),
(65, 'DBS-20180723-6346', '4a17d66f25bcf28820d3a73d62ce3593', 3, 600000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Siswo Adi Prastyo', '', '083854342527', 'adiprasetyo879@gmail.com', '', '', '', '', '', 5, '', '3524192910900001', 413, 'bank', '2018-07-23 04:51:37'),
(66, 'DBS-20180723-2300', '12e969d406e401850ad754dcb5dc7775', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Novia Prastika Putri', '', '081333338816', 'shellaieuo@gmail.com', '', '', '', '', '', 5, '', '16501017111065', 347, 'bank', '2018-07-23 05:02:26'),
(67, 'DBS-20180723-5343', 'e2ae504a3a1830a128906a2b2a89791b', 2, 300000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'Rangga Adhiguna P', '', '081232358312', 'rangga.adhiguna.pratama@gmail.com', '', '', '', '', '', 5, '', '1410209034', 365, 'bank', '2018-07-23 06:00:03'),
(68, 'DBS-20180723-7217', '633e9d4d54b12684df84bc63865670eb', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Sabedy Aned Pratama', '', '082247272772', 'sabedyaned@icloud.com', '', '', '', '', '', 5, '', '7621310055', 310, 'bank', '2018-07-23 06:08:08'),
(69, 'DBS-20180723-5638', 'f6da4b7c8b0978119437dba0b9e9baac', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'M. Rifaldi Tanjung', '', '081330334968', 'mariozulkifli17@gmail.com', '', '', '', '', '', 5, '', '120116294', 737, 'bank', '2018-07-23 06:18:28'),
(70, 'DBS-20180723-4919', 'a29bf688627b7e571144e79074fb1fd8', 2, 300000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'Juhari Irfan', '', '08983230467', 'juhariirfan@gmail.com', '', '', '', '', '', 5, '', '215116459', 235, 'bank', '2018-07-23 06:33:54'),
(71, 'DBS-20180723-2067', '9b5e7e193fcb75aad88f785a959df803', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Maria Apristysya', '', '089665454827', 'afajry48@gmail.com', '', '', '', '', '', 5, '', '20150610050', 441, 'bank', '2018-07-23 06:36:50'),
(72, 'DBS-20180723-9093', '7a1f6f3d08e714ad46a989fc4c595f6d', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Bagus Prasetya', '', '08113557267', 'zanuarabid@gmail.com', '', '', '', '', '', 5, '', '1432204', 199, 'bank', '2018-07-23 06:43:03'),
(73, 'DBS-20180723-8018', '9ce21a0b356d15a53d206f65c9bfe899', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Kartika Dewi Hapsari', '', '087859993773', 'kartikadwihap27@gmail.com', '', '', '', '', '', 5, '', '1710110725', 351, 'bank', '2018-07-23 08:09:29'),
(74, 'DBS-20180723-7817', '0dfd0c2b4dd9a61c8f9f900618b10b19', 1, 150000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'Shania Salsabila', '', '087859993773', 'shaniasalsabilaixd@gmail.com', '', '', '', '', '', 5, '', '1774130010026', 808, 'bank', '2018-07-23 08:13:03'),
(75, 'DBS-20180723-2689', 'c4f8b042d6d294157233deb0bfc621b8', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Satrio Prasetyo Mitoyo', '', '081233718555', 'satryomit2lighting@gmail.com', '', '', '', '', '', 5, '', '3578111712910002', 347, 'bank', '2018-07-23 08:19:09'),
(76, 'DBS-20180723-8444', '9a3d7ff6c42530fab9d40b652f29732f', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Revan Heri Saputra', '', '082245645556', 'revanherisaputra@gmail.com', '', '', '', '', '', 5, '', '042014102727', 985, 'bank', '2018-07-23 08:22:16'),
(77, 'DBS-20180726-7974', 'c02e9fb726883ca9dc22df3ca0222313', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Philips Gerson', '', '085258782227', 'arnoldsyd@yahoo.com', '', '', '', '', '', 5, '', '2017700079', 622, 'bank', '2018-07-26 07:42:15'),
(78, 'DBS-20180726-2807', 'a1199d9d64d0a80305ff6cb285f1bf1b', 4, 800000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Edward Toscani Indradjaja', '', '08113001617', 'sevenorganizer@gmail.com', '', '', '', '', '', 5, '', '3523162504890001', 472, 'bank', '2018-07-26 07:45:16'),
(79, 'DBS-20180727-4754', 'daadc1b73d82c5d5980cb1de933fe29e', 1, 150000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'Steven Yumanto', '', '081216700669', 'stevenyumanto@gmail.com', '', '', '', '', '', 5, '', '16934020698', 427, 'bank', '2018-07-27 07:12:22'),
(80, 'DBS-20180727-9485', '45a844c5230faa1c2d8b13435ad86941', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Jevon Putri Ayu Novem', '', '082264182284', 'saminojevon@gmail.com', '', '', '', '', '', 5, '', '17010074', 999, 'bank', '2018-07-27 07:18:45'),
(81, 'DBS-20180727-8944', '0156d57089d33e4a3d22000cfd72b81a', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Kevin Gerry Firman', '', '083852759965', 'kevin.gerry@ymail.com', '', '', '', '', '', 5, '', '041611223019', 866, 'bank', '2018-07-27 07:22:56'),
(82, 'DBS-20180727-5431', '7c266ba30a60ee4af34a921227fa56d4', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Yunita Auliatul Faizah', '', '082144177385', 'ramayena@gmail.com', '', '', '', '', '', 5, '', '14310072', 657, 'bank', '2018-07-27 07:27:07'),
(83, 'DBS-20180729-7673', '3dd461159edfb86c049cf7255c47697d', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Roseline', 'Alim Santoso', '081332013987', 'mroseve13@gmail.com', 'Manyar Jaya 13 b n0.159', 'Surabaya', '60118', 'Indonesia', '', 0, '', '3578095101990001', 186, 'bank', '2018-07-29 01:04:07'),
(84, 'DBS-20180730-4840', 'f53b4d1f28ce313ca0d4d46481b8faf5', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Indra Purwanto', '', '081528823304', 'indralee22@gmail.com', '', '', '', '', '', 5, '', '880215143411', 171, 'bank', '2018-07-30 08:33:08'),
(85, 'DBS-20180730-3501', '0c1f9b6e746b6832314a011dd03d893f', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Nidhom M.A', '', '082244463531', 'nidhmalfin@gmail.com', '', '', '', '', '', 5, '', '20120220040', 455, 'bank', '2018-07-30 08:45:04'),
(86, 'DBS-20180730-7041', '5bf6cd997dffe12525cfdfa4d63d39c0', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Devi Natalia', '', '081235734025', 'deviinato3@yahoo.co.id', '', '', '', '', '', 1, '', '3578185812960002', 103, 'bank', '2018-07-30 08:52:36'),
(87, 'DBS-20180730-3483', 'c06bc4aff008fe32119f8551679fc743', 1, 150000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'Siti Nurhidayati', '', '081217163800', 'ayadidha@gmail.com', '', '', '', '', '', 5, '', '44114120003', 924, 'bank', '2018-07-30 08:58:17'),
(88, 'DBS-20180730-5299', 'a288ee2fca0e58b9f35c74f3f93bed32', 1, 150000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'Siti Nurhidayati', '', '081217163800', 'ayadidha@gmail.com', '', '', '', '', '', 5, '', '44114120003', 187, 'bank', '2018-07-30 09:07:58'),
(89, 'DBS-20180730-7333', '17611467fce578879a7d71ec1f88a229', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Aprillya Daniar Haryanto', '', '087701415934', 'aprillya06@icloud.com', '', '', '', '', '', 5, '', '15430017', 104, 'bank', '2018-07-30 09:11:25'),
(90, 'DBS-20180730-9201', '5f93ddbc47fdaa0b1d8963858db19235', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Gumewa Udiantoro', '', '083852759965', 'kevin.gerry@ymail.com', '', '', '', '', '', 5, '', '041611223032', 682, 'bank', '2018-07-30 09:18:21'),
(91, 'DBS-20180801-2292', '1ee482b02781b04766894c41632329e8', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Jonathan Aloysius', '', '0822444492272', 'jonathan_budiman28@yahoo.com', '', '', '', '', '', 5, '', 'b11170103', 126, 'bank', '2018-08-01 04:38:51'),
(92, 'DBS-20180801-4468', 'f743819cb4849b2e3169fe93fe234162', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Evan Abdiel Kusumo', '', '082301183000', 'evan.abdiel@gmail.com', '', '', '', '', '', 5, '', '160815030', 376, 'bank', '2018-08-01 04:41:43'),
(93, 'DBS-20180801-2271', 'e1853e5a0e2bea2242db6e1a73953bc1', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Hardian Tri Anggoro', '', '085233306381', 'simonredboxx@gmail.com', '', '', '', '', '', 5, '', '20170130081', 754, 'bank', '2018-08-01 04:45:00'),
(94, 'DBS-20180801-7524', '46fbc23fa954918ced4bf9ce4e9c79ef', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Destra Ridho Ismail', '', '082132337128', 'destraridho27@gmail.com', '', '', '', '', '', 5, '', '16040704106', 170, 'bank', '2018-08-01 04:48:05'),
(95, 'DBS-20180801-8170', 'e50232b91951054b59446083ce2cc43c', 1, 150000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'Aryo', 'Wicaksono ', '081250565086 ', 'Aryow2697@gmail.com ', 'Kerten, solo, surakarta', 'Surakarta', '57143', 'Indonesia', '', 3, '', '3372011308980003', 427, 'bank', '2018-08-01 08:59:47'),
(96, 'DBS-20180801-9146', '742692282e15a290e895fbdb27b0f902', 1, 150000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'Aryo', 'Wicaksono ', '081250565086 ', 'Aryow2697@gmail.com ', 'Kerten, solo, surakarta', 'Surakarta', '57143', 'Indonesia', '', 5, '', '3372011308980003', 759, 'bank', '2018-08-01 09:04:32'),
(97, 'DBS-20180801-2237', '9f2b805aac975dff7da01cbd751cf9e0', 1, 150000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'Aryo', 'Wicaksono ', '081250565086 ', 'aryow2697@gmail.com ', 'Kerten, solo', 'Surakarta', '57143', 'Indonesia', '', 3, '', '3372011308980003', 214, 'bank', '2018-08-01 09:10:10'),
(98, 'DBS-20180801-3384', '1ddb285a019f58d32c85f210e96115ce', 1, 150000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'ARYO', 'WICAKSONO', '081250565086', 'aryow2697@gmail.com', 'KERTEN, SOLO', 'SURAKARTA', '57143', 'INDONESIA', '', 3, '', '3372011308980003', 487, 'bank', '2018-08-01 09:32:35'),
(99, 'DBS-20180801-8836', '9d959d8a6cb76ac74c7eff1a14ecb203', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'ARYO', 'WICAKSONO', '081250565086', 'aryow2697@gmail.com', 'KERTEN, SOLO', 'SURAKARTA', '57143', 'INDONESIA', '', 3, '', '3372011308980003', 786, 'bank', '2018-08-01 09:36:03'),
(100, 'DBS-20180801-4179', '29672401809c2b89176c1ca0f4027240', 1, 150000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'ARYO', 'WICAKSONO', '081250565086', 'aryow570@gmail.com', 'KERTEN, SOLO', 'SURAKARTA', '57143', 'INDONESIA', '', 3, '', '3372011308980003', 520, 'bank', '2018-08-01 09:39:32'),
(101, 'DBS-20180801-1378', '7a427868f69af1132ebee9428a3433c2', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Jevon ', 'Andrew', '081515253338', 'Jevon.andrew@yahoo.com', 'Rungkut mapan selatan BI / 11', 'Surabaya', '60293', 'Indonesia', '', 3, '', '3578082609970004', 628, 'bank', '2018-08-01 12:44:37'),
(102, 'DBS-20180801-9495', 'c01bc5b99bdf62051e16b7ec2b758372', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Jevon ', 'Andrew', '081515253338', 'Jevon.andrew.wijaya17@gmail.com', 'Rungkut mapan selatan BI / 11', 'Surabaya', '60293', 'Indonesia', '', 3, '', '3578082609970004', 568, 'bank', '2018-08-01 13:11:46'),
(103, 'DBS-20180801-8046', 'e79530673da6d1dca958273fa079dafe', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Jevon ', 'Andrew', '081515253338', 'jevon.andrew@yahoo.com', 'Rungkut mapan selatan BI / 11', 'Surabaya', '60293', 'Indonesia', '', 5, '', '3578082609970004', 812, 'bank', '2018-08-01 14:56:15'),
(104, 'DBS-20180802-9699', 'cdec2a806b8bd2d6ceaed465ccefd1f9', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Andreeansyah Rizky Lydo', '', '082141763455', 'andreeansyahrizky@yahoo.com', '', '', '', '', '', 5, '', '1643010150', 672, 'bank', '2018-08-02 07:09:39'),
(105, 'DBS-20180802-5643', '52b8686d7ba8c7f9fc333bca34083e68', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Pratama Bayu W', '', '087855956838', 'prabayu7@gmail.com', '', '', '', '', '', 5, '', '1151600094', 710, 'bank', '2018-08-02 07:11:11'),
(106, 'DBS-20180802-1914', '00b247219748ccce7ecbee21188e8735', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Kirana Agvinda A', '', '085785612349', 'agvikirana@gmail.com', '', '', '', '', '', 5, '', '17211245', 429, 'bank', '2018-08-02 07:13:25'),
(107, 'DBS-20180802-9988', 'c5b2d7ced59793ea65950e2268fbd7e1', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Carming Angelo Saputro', '', '082233441052', 'carmingsaputro@gmail.com', '', '', '', '', '', 5, '', '40117613', 362, 'bank', '2018-08-02 07:14:56'),
(108, 'DBS-20180802-5016', '841bda623214894f870a7eafb26e9167', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Adhelia Apriani Halim', '', '085100852415', 'adheliahalim@yahoo.co.id', '', '', '', '', '', 5, '', '22414137', 332, 'bank', '2018-08-02 07:16:53'),
(109, 'DBS-20180802-8360', '5da3ea46535e7e4b22d423e060654597', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Adhelia Apriani Halim', '', '085100852415', 'adheliahalim@yahoo.co.id', '', '', '', '', '', 5, '', '22414137', 230, 'bank', '2018-08-02 07:18:13'),
(110, 'DBS-20180802-4656', '4fb2aafb1ad57774515b7a088caa1bf2', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Philips Gerson', '', '081232121414', 'adicandra281@gmail.com', '', '', '', '', '', 5, '', '2017700079', 935, 'bank', '2018-08-02 07:19:41'),
(111, 'DBS-20180802-8996', '654aee4f2289339b2ad25041fa636f71', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Juliandres Unitly', '', '089665454827', 'fajridaily@gmail.com', '', '', '', '', '', 5, '', '012014104843', 550, 'bank', '2018-08-02 07:21:43'),
(112, 'DBS-20180802-7988', '98e921068d51c1d8cdc49a2f2ccc54c6', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Muh. Farid Hamdani', '', '089616156312', 'uswu27@gmail.com', '', '', '', '', '', 5, '', '14040704105', 214, 'bank', '2018-08-02 07:23:20'),
(113, 'DBS-20180802-8706', '66aa9bcb4785880fff5508bee4bcef52', 1, 150000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'Philips Gerson', '', '081232121414', 'adicandra281@gmail.com', '', '', '', '', '', 5, '', '2017700079', 245, 'bank', '2018-08-02 07:25:02'),
(114, 'DBS-20180802-7045', '049c41b61f094a19f73580ba1f7896b1', 1, 150000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'Lukman Hakim Wicaksono', '', '087859739066', 'lukmanwicaksono22@gmail.com', '', '', '', '', '', 5, '', '165030900111007', 355, 'bank', '2018-08-02 07:29:43'),
(116, 'DBS-20180802-4817', 'ff0be61a0d49aeb3edff9064777bdacb', 1, 150000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'Rhiza Akmal Pahlevi', '', '087859739066', 'lukmanwicaksono22@gmail.com', '', '', '', '', '', 5, '', '165030907111004', 826, 'bank', '2018-08-02 07:36:44'),
(117, 'DBS-20180802-2858', '2877f50a4a517e1fa898d0a7f7711a0f', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Fahrizal Parama Madani', '', '082245254585', 'fahrizalpm@gmail.com', '', '', '', '', '', 5, '', '121711433060', 822, 'bank', '2018-08-02 07:40:11'),
(118, 'DBS-20180802-6024', '4aaab29c18a5a0f8a159cd8f018173f1', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Moch Mashidayatul Kholqi', '', '082232448196', 'kholqimas36@gmail.com', '', '', '', '', '', 5, '', '1401071', 971, 'bank', '2018-08-02 07:43:33'),
(119, 'DBS-20180802-1640', 'cd2dd604cbb971b9e46034f35c821957', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Gifanda Nadila A', '', '082141763455', 'gifandanadila@gmail.com', '', '', '', '', '', 5, '', '1151600053', 822, 'bank', '2018-08-02 07:47:26'),
(120, 'DBS-20180802-2435', 'd6c9c420c9d95869e5eced64b04f6896', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Vincentius Felix Reynaldi', '', '081330757660', 'ikasanjaya360@gmail.com', '', '', '', '', '', 5, '', '3303017001', 803, 'bank', '2018-08-02 07:52:01'),
(121, 'DBS-20180802-6803', '0eb909b28b68dab43f19f3440d76897b', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'Vincentius Felix Reynaldi', '', '081330757660', 'ikasanjaya360@gmail.com', '', '', '', '', '', 5, '', '3303017001', 391, 'bank', '2018-08-02 07:53:39'),
(122, 'DBS-20180802-8342', '6becd69e0ced020bea44bfb566d1edbd', 2, 300000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'Bhirawa Anoraga', '', '081234516391', 'kqndaraga@gmail.com', '', '', '', '', '', 5, '', '1151501227', 466, 'bank', '2018-08-02 07:57:13'),
(123, 'DBS-20180802-5579', 'a8212c53f7233e086c14959a7fad81ad', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Erlangga Prayogi', '', '089666424820', 'anggadallas10@gmail.com', '', '', '', '', '', 5, '', '3578151011990003', 353, 'bank', '2018-08-02 08:04:46'),
(124, 'DBS-20180802-8578', 'f79382f0b8b63ae2dcd6ab7751760c8c', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Lisa Tasanee', '', '081357778880', 'lisa_t84@yahoo.com', '', '', '', '', '', 5, '', '3578314203840002', 482, 'bank', '2018-08-02 08:06:48'),
(125, 'DBS-20180802-3407', 'e0654a9d76eefb1f19a14566a479ea50', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Yanto Muliono', '', '081357199039', 'yantomuliono@yahoo.com', '', '', '', '', '', 5, '', '3578100301820001', 800, 'bank', '2018-08-02 08:08:33'),
(126, 'DBS-20180802-8471', '5724c5637078d678ca3dac73ad22c709', 2, 400000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Claudia Marcia', '', '081252393710', 'efendi.dennis@gmail.com', '', '', '', '', '', 5, '', '3172016811950002', 276, 'bank', '2018-08-02 08:12:37'),
(127, 'DBS-20180802-5800', 'b4e92449b3df310d875885c79b2c1ce1', 3, 600000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'M. Mario Habibie', '', '081330955944', 'mario.sevti06@gmail.com', '', '', '', '', '', 5, '', '880315540523', 704, 'bank', '2018-08-02 08:17:15'),
(128, 'DBS-20180802-2201', '760db7fbc0bfae77b572964dd67a15cb', 2, 400000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Banny Sya\'ban', '', '081280080530', 'banny.syaban@gmail.com', '', '', '', '', '', 5, '', '3578031306640002', 933, 'bank', '2018-08-02 08:19:48'),
(129, 'DBS-20180802-3187', 'b94fdee61e3b2490279d6f7f20d6f96b', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Fawaz Awod', '', '08224727272', 'fawasawod98@gmail.com', '', '', '', '', '', 5, '', '3505012812940002', 399, 'bank', '2018-08-02 08:22:08'),
(130, 'DBS-20180803-7442', 'd4940b9fc50b7f09e71004ea235ea193', 3, 600000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Iftinan', 'Amalia', '08123311925', 'iftinanamalia@gmail.com', 'Jalan pluto no. 4', 'Malang', '65144', 'East java', '', 5, '', '3573054902940003', 436, 'bank', '2018-08-03 15:05:29'),
(131, 'DBS-20180804-9398', '4327b16cae2148fac8e7beaf8653bacc', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'David Kristanto', '', '082132039196', 'davidkristantodavid@gmail.com', '', '', '', '', '', 5, '', '3578060908970004', 953, 'bank', '2018-08-04 06:28:21'),
(132, 'DBS-20180804-2541', '9c98838ad539ad60dad79fd671d75d5e', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Fiddini Ad Difa\'ul Hujumy', '', '083854757306', 'fidiny94@gmail.com', '', '', '', '', '', 5, '', '3578135804940003', 153, 'bank', '2018-08-04 06:36:38'),
(133, 'DBS-20180804-5264', '69019d50c69432533f01639cce76b850', 2, 400000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Achmad Widodo', '', '081313462358', 'arveen_sandiarta@yahoo.co.id', '', '', '', '', '', 5, '', '3578051805710004', 310, 'bank', '2018-08-04 06:49:37'),
(134, 'DBS-20180804-1339', 'e7f610a7b13247dcacce4344da4d2123', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'M. Fahrizal Ardyansyah', '', '081331884484', 'fahrizalard@gmail.com', '', '', '', '', '', 5, '', '3525072204960001', 557, 'bank', '2018-08-04 06:52:27'),
(135, 'DBS-20180804-7696', 'b509f5497ccd909f90d44d8a4bfbf93c', 2, 400000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Hernina Astrid Lengkang', '', '081281848382', 'michaelprobo@yahoo.co.id', '', '', '', '', '', 5, '', '7171047007930001', 148, 'bank', '2018-08-04 07:35:42'),
(136, 'DBS-20180804-8122', 'd7941a374b5505ab41d215d13b390c85', 2, 400000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Mukhamad Riyadi', '', '085790733730', 'mukhamadriyadi15@gmail.com', '', '', '', '', '', 5, '', '3575011503940002', 363, 'bank', '2018-08-04 07:38:05'),
(137, 'DBS-20180804-3710', '3df5d7a028554c7cc498cbcddd0b191c', 3, 600000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Asshidiqie Kusnadi', '', '085258285201', 'asshidiqiekusnadi@gmail.com', '', '', '', '', '', 5, '', '3528041805980003', 839, 'bank', '2018-08-04 08:01:59'),
(138, 'DBS-20180804-7307', '6fd2564440d0b384b1350254b0e6e181', 4, 800000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Rachmat Syarifudin', '', '082233441052', 'rachmatsyarif7@gmail.com', '', '', '', '', '', 5, '', '3525103005970006', 331, 'bank', '2018-08-04 08:07:34'),
(139, 'DBS-20180804-9924', '8b6105c3e7fed5781eba9273636d99e2', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Asshidiqie Kusnadi', '', '085258285201', 'asshidiqiekusnadi@gmail.com', '', '', '', '', '', 5, '', '3528041805980003', 222, 'bank', '2018-08-04 08:19:36'),
(140, 'DBS-20180804-6782', 'df6a49800e07c3f8c4faedac2525fbfa', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Yayuk Umaiyah', '', '082143044992', 'yayukumaiyah89@gmail.com', '', '', '', '', '', 5, '', '3522244408890002', 582, 'bank', '2018-08-04 08:25:09'),
(141, 'DBS-20180804-9174', 'ded495880fa3cf1445ec6c3c6fa27a39', 2, 400000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Achmad Widodo', '', '081313462358', 'alisudirman090@gmail.com', '', '', '', '', '', 5, '', '357805180570004', 117, 'bank', '2018-08-04 08:27:42'),
(142, 'DBS-20180804-6716', '6bc680f91e0db360ffc63439c7def4a1', 6, 1200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Benedictus Marco Hadi Surya', '', '082298805685', 'yun.aulia12@gmail.com', '', '', '', '', '', 5, '', '3505202704960002', 696, 'bank', '2018-08-04 08:36:43'),
(143, 'DBS-20180804-1513', 'cfb585ef4a1279104c8d11e272d83228', 5, 1000000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Rayhan Adinegoro', '', '087812245824', 'rayhanpd@gmail.com', '', '', '', '', '', 5, '', '6471052912950004', 378, 'bank', '2018-08-04 08:40:05'),
(144, 'DBS-20180804-7467', '70071fbdf0e6361032d16c6adfd3b09d', 3, 600000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Rizqy Fathoni', '', '081234553929', 'rizkyfathoni77@gmail.com', '', '', '', '', '', 5, '', '3515182904940010', 161, 'bank', '2018-08-04 08:52:20'),
(145, 'DBS-20180804-5880', '8f5db6edf37dab093ab47c703d12b7f5', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Irhamni Tulodo', '', '087750204477', 'irhamni.tulodo@gmail.com', '', '', '', '', '', 5, '', '3528022405980003', 128, 'bank', '2018-08-04 09:03:05'),
(146, 'DBS-20180804-9105', 'da85367598b896a2302c27cd2f4c1060', 5, 1000000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Nonik Feodora', '', '082140031588', 'camelia.w3@gmail.com', '', '', '', '', '', 5, '', '3519114505000003', 556, 'bank', '2018-08-04 09:05:31'),
(147, 'DBS-20180804-7275', '722b298dd6c564c14033810d24741126', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Claudia Marcia', '', '081252393710', 'efendi.dennis@gmail.com', '', '', '', '', '', 5, '', '3172016811950002', 615, 'bank', '2018-08-04 09:07:00'),
(148, 'DBS-20180804-3059', 'e79b01e4cf9ea946ca6e49fc3069bec2', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Issabella', 'Florencia', '081315269120', 'isabellaflorensia@hotmail.com', 'Jalan Manyar Jaya 13 no. 159 B', 'Surabaya', '60118', 'Indonesia', '', 3, '', '3578094903010002', 181, 'bank', '2018-08-04 13:19:37'),
(149, 'DBS-20180807-2428', '33cbb0aff7af0410bda8e27198315ba2', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'M Hendrik', '', '085227260009', 'zhendrik151@gmail.com', '', '', '', '', '', 5, '', '3522072511940007', 269, 'bank', '2018-08-07 03:47:15'),
(150, 'DBS-20180807-2181', 'd86ee8dc92d1f179d13365583c22734b', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Risky Pratama', '', '082139093803', 'riskypra93@gmail.com', '', '', '', '', '', 5, '', '3578100304570003', 536, 'bank', '2018-08-07 03:50:29'),
(151, 'DBS-20180807-6762', '2e1d5937e0e047b8bbb13556beee255d', 4, 800000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Mochammad Ahadin', '', '081251466413', 'ahadin007@gmail.com', '', '', '', '', '', 5, '', '3578130610960002', 961, 'bank', '2018-08-07 04:16:30'),
(152, 'DBS-20180807-4375', '72fb5e393108df27a928963cc0df9dc2', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Ardhika Bintoro', '', '085236229266', 'bintoroardhika@gmail.com', '', '', '', '', '', 5, '', '3578202507960002', 827, 'bank', '2018-08-07 04:27:34'),
(153, 'DBS-20180807-5385', 'f3d77508d29f6ea697ad162f579133b2', 3, 600000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Ardhika Bintoro', '', '085236229266', 'bintoroardhika@gmail.com', '', '', '', '', '', 5, '', '3578202507960002', 732, 'bank', '2018-08-07 04:29:35'),
(154, 'DBS-20180807-1711', '1ad50939489a1509a76695d9c64f6987', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Meriani Limpo', '', '089613888238', 'merianilimpo@gmail.com', '', '', '', '', '', 5, '', '130214106', 406, 'bank', '2018-08-07 04:32:09'),
(155, 'DBS-20180807-6518', 'ee3068766879e666090147820c60d40b', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Brilliant Djohan', '', '082195371773', 'brilliantdjohan@gmail.com', '', '', '', '', '', 5, '', '1801449451', 400, 'bank', '2018-08-07 04:34:05'),
(156, 'DBS-20180807-7159', 'ebae2ae38b1da90b125b6944af13c9d1', 1, 150000, 8, 'PRESALE  KTM ', 'TICKET PRESALE \r\nby KTM ID', 150000, 'Dwi Chandra Lukito', '', '082247009023', 'chandradwi5050@gmail.com', '', '', '', '', '', 5, '', '160332605898', 850, 'bank', '2018-08-07 07:18:02'),
(157, 'DBS-20180807-9848', 'd4399539e6a48914045abf30771e090f', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Muhammad Kamal Musthofa', '', '085812255964', 'kemalmustofa30@gmail.com', '', '', '', '', '', 5, '', '3524222611990001', 763, 'bank', '2018-08-07 08:35:15'),
(158, 'DBS-20180807-8814', 'dbb5fa473c411977a73b2d1ca59ced72', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'M. Dedy Kurniawan', '', '085812255964', 'kemalmustofa30@gmail.com', '', '', '', '', '', 5, '', '3524172204000001', 589, 'bank', '2018-08-07 08:37:23'),
(159, 'DBS-20180807-6453', '4c1bec15f5b6275ce357f6499ac931a4', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Anis Fauza', '', '081232939763', 'fauziaanis11@gmail.com', '', '', '', '', '', 5, '', '151411413005', 826, 'bank', '2018-08-07 08:40:27'),
(160, 'DBS-20180807-9756', '500f3d2aaf628c823c70f3ade5529aa5', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Febryan Dio Ramadhan', '', '087855799859', 'fauziaanis11@gmail.com', '', '', '', '', '', 5, '', '141411133045', 836, 'bank', '2018-08-07 08:42:21'),
(161, 'DBS-20180807-9159', 'dcd48ee166408bc662550f970c922498', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Arip Vinariska', '', '087853279173', 'jejejoice@yahoo.co.id', '', '', '', '', '', 5, '', '3522275511910001', 426, 'bank', '2018-08-07 08:45:37'),
(162, 'DBS-20180807-7478', '6e9e4bbc1e9fc7467f3e2dddf85ca967', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Danis Catur', '', '0811340108', 'sanjisuck@gmail.com', '', '', '', '', '', 5, '', '357503080490001', 835, 'bank', '2018-08-07 08:51:50'),
(163, 'DBS-20180807-2574', 'a35f1a24083a2affb398d7510b4db142', 5, 1000000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Victor Suhartono', '', '081330000493', 'victorsuhartonoiphone@gmail.com', '', '', '', '', '', 5, '', '3578213008930001', 638, 'bank', '2018-08-07 08:57:28'),
(164, 'DBS-20180807-5919', 'adb30cf01aa2d61899775db2b203dc20', 4, 800000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Amir', 'Al Iksan', '083115283852', 'amiraliksan123@gmail.com', 'Jl. Kali Kepiting 113 - 115 belakang ', 'Surabaya', '60281', 'Indonesia', '', 3, '', '35780821021997002', 391, 'bank', '2018-08-07 10:19:59'),
(165, 'DBS-20180808-5016', 'acdf41465bb85bf68375c1cd308c8e0d', 4, 800000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Rizal Pratama P', '', '081339339309', 'rizalpratamaputera@gmail.com', '', '', '', '', '', 5, '', '3578291710940001', 987, 'bank', '2018-08-08 07:26:33'),
(166, 'DBS-20180808-3540', 'b48cf2b91b5c46a8bc8dc97b2da9eaa9', 2, 400000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Alexander Steven N', '', '085130409562', 'alexsenpaialex@gmail.com', '', '', '', '', '', 5, '', '3512070911990004', 694, 'bank', '2018-08-08 07:30:11'),
(167, 'DBS-20180808-7432', 'c08614205c5d1e2471acb95f4a08ed76', 4, 800000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Christian Danis', '', '081233533179', 'christiandanis96@gmail.com', '', '', '', '', '', 5, '', '3516081609960001', 482, 'bank', '2018-08-08 07:39:05'),
(168, 'DBS-20180808-3072', '4f4059d226735ca638ac2db9555c068c', 3, 600000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Janssen Sugiarto', '', '0811350034', 'janssensugiarto@gmail.com', '', '', '', '', '', 5, '', '3578282907980001', 157, 'bank', '2018-08-08 09:10:58'),
(169, 'DBS-20180808-3890', 'a0eeaca4b261c19038af5b7976b1bca8', 3, 600000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Jonathan Aloysius', '', '082244492272', 'jonathan_budiman28@yahoo.com', '', '', '', '', '', 5, '', '3578013105990003', 409, 'bank', '2018-08-08 09:13:51'),
(170, 'DBS-20180808-4109', '59c21219463f543a1a8bb69f6252f4d6', 4, 800000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Amir Al Iksan', '', '083115283852', 'amiraliksan123@gmail.com', '', '', '', '', '', 5, '', '3578082102970002', 248, 'bank', '2018-08-08 09:16:06'),
(171, 'DBS-20180808-9397', '2e33a057429678922a5a56ff00219983', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Haris Fitroh SA', '', '081259540026', 'harisfitroh@gmail.com', '', '', '', '', '', 5, '', '3515171802960002', 996, 'bank', '2018-08-08 09:23:30'),
(172, 'DBS-20180808-9909', 'a91c15b8662d76b90ae70d0e15b3e072', 2, 400000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Intania Hadiani', '', '085733315890', 'intan.nia95@gmail.com', '', '', '', '', '', 5, '', '3578095605950003', 216, 'bank', '2018-08-08 09:26:20'),
(173, 'DBS-20180808-3919', 'f8095120d9e9f0895bcc9f872278dc8f', 3, 600000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Fitri Yanti', '', '085606206744', 'fietri.the.lovelyj@gmail.com', '', '', '', '', '', 5, '', '3515027012940001', 326, 'bank', '2018-08-08 09:36:37'),
(174, 'DBS-20180809-1135', 'a975f02e87d608515395c31b4fb58432', 3, 900000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'Gigih', 'Suheriyono', '081357751460', 'gigihlpf@gmail.com', 'jl. kalianyar kulon 8/7', 'Surabaya', '60161', 'bongkaran', '', 3, '', '3578122610950002', 207, 'bank', '2018-08-09 01:26:46'),
(175, 'DBS-20180809-8839', '3603888763c5b6de625ee3d07774d191', 3, 900000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'Gigih', 'Arif', '081357751460', 'gigihlpf@gmail.com', 'Jl. Kalianyar kulon 8/7', 'Surabaya', '60161', 'Bongkaran', '', 3, '', '3578122610950002', 755, 'bank', '2018-08-09 01:33:44'),
(176, 'DBS-20180809-3140', '8e9ca62844d2c1d0fad0926043c37c47', 3, 900000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'Gigih', 'Arif', '081357751460', 'gigihlpf@gmail.com', 'Jl. Kalianyar kulon 8/7', 'Surabaya', '60161', 'Bongkaran', '', 3, '', '3578122610950002', 705, 'bank', '2018-08-09 01:41:45'),
(177, 'DBS-20180809-3195', 'd152d62485b3f10492bc619aca62b94a', 3, 900000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'Gigih', 'Arif', '081357751460', 'gigihlpf@gmail.com', 'Jl. Kalianyar kulon 8/7', 'Surabaya', '60161', 'Bongkaran', '', 3, 'ea6817f2fa266f9d8037f7bd02c4bd23', '3578122610950002', 454, 'doku', '2018-08-09 01:44:55'),
(178, 'DBS-20180809-2900', '7a9acbd2edc3266d276fb5d5def65d25', 3, 900000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'Gigih', 'Arif', '081357751460', 'gigihlpf@gmail.com', 'Jl. Kalianyar kulon 8/7', 'Surabaya', '60161', 'Bongkaran', '', 5, '', '3578122610950002', 359, 'bank', '2018-08-09 01:50:01'),
(179, 'DBS-20180809-3776', '16930e0038088bb186172159615ce825', 2, 600000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'Tim Walter', 'Groneberg', '+61 426425155', 'timwgroneberg@gmail.com', '', '', '', '', '', 0, '', 'C7WX26593', 544, 'bank', '2018-08-09 04:40:56'),
(180, 'DBS-20180809-2342', '98b8fe005eb5ae12bb8e08670436d77c', 2, 600000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'Tim Walter', 'Groneberg', '+61 426 425 155', 'timwgroneberg@gmail.com', '', '', '', '', '', 0, '', 'C7WX26593', 262, 'bank', '2018-08-09 04:49:07'),
(181, 'DBS-20180809-4521', '45fe6a280de631cdf202ccb062254616', 2, 600000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'Tim Walter', 'Groneberg', '+61 426 425 155', 'timwgroneberg@gmail.com', '', '', '', '', '', 0, 'bffa7c77b3021e9de0e4c13e384be117', 'C7WX26593', 718, 'doku', '2018-08-09 04:49:38'),
(182, 'DBS-20180809-2013', 'b20fcbca84d96d8c3a8205ab4fbde307', 2, 600000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'Christian Danis', '', '081233533179', 'christiandanis96@gmail.com', '', '', '', '', '', 5, '', '3516081609960001', 296, 'bank', '2018-08-09 04:50:10'),
(183, 'DBS-20180809-3357', 'f632685921e56e366b56e7650eb26532', 2, 600000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'Ernawati', '', '082112125472', 'oktavialibriana@gmail.com', '', '', '', '', '', 5, '', '3216025812960009', 374, 'bank', '2018-08-09 05:00:05'),
(184, 'DBS-20180809-8654', 'f09d8a2d2c6ab74b7bdbdf1e06ff6971', 1, 300000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'Julia Paringgaloka', '', '081217177454', 'menikparinggaloka@gmail.com', '', '', '', '', '', 5, '', '1514180300364', 819, 'bank', '2018-08-09 07:16:10'),
(185, 'DBS-20180809-6614', '5bccd84df7bc99ec8cc61f389591ecc4', 3, 900000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'Septean Dodik Prastia', '', '081231466413', 'septeandodik@gmail.com', '', '', '', '', '', 5, '', '3516121109980001', 899, 'bank', '2018-08-09 07:18:09'),
(186, 'DBS-20180809-2125', 'f2f6cf5ea2aa4e7d32e8b58e2cf8346f', 2, 600000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'Devina', 'Martina', '0818927722', 'dev.mart89@gmail.com', 'Kutisari Indah Utara X no 112', 'Surabaya', '60291', 'East Java', '', 5, '', '3578096012890003', 118, 'bank', '2018-08-09 07:20:30'),
(187, 'DBS-20180809-9640', '7e3edacb82235c98613f727d3f304e0d', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Afifa Andiyani P', '', '08199955956', 'meme.ananda29@gmail.com', '', '', '', '', '', 5, '', 'a8504377', 948, 'bank', '2018-08-09 07:54:28'),
(188, 'DBS-20180809-2253', '7fbf519c811b7561ee17650ecbeee195', 6, 1200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Kintan Trihastuti', '', '081393128718', 'kintan_18@yahoo.com', '', '', '', '', '', 5, '', '3372025802980001', 897, 'bank', '2018-08-09 07:56:51'),
(189, 'DBS-20180809-4637', '421c6df797d372ca25e399ce6117da4d', 2, 400000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Adhisty Bustaman', '', '085645151331', 'adhisty1991@gmail.com', '', '', '', '', '', 5, '', '911015142869', 203, 'bank', '2018-08-09 08:11:59'),
(190, 'DBS-20180809-9093', '9149d2001c3f23a56587a982886789a6', 1, 200000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'mona', 'gladizya', '08222016281', 'monagladizya95@gmail.com', '', '', '', '', '', 5, '', '3214064404950004', 193, 'bank', '2018-08-09 09:57:11'),
(191, 'DBS-20180809-3880', '3dba3bfd3d7d5be41c76234eeef2079f', 4, 800000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'mona', 'gladizya', '08222021688', 'monagladizya95@gmail.com', '', '', '', '', '', 5, '', '3214064404950004', 943, 'bank', '2018-08-09 10:01:23'),
(192, 'DBS-20180809-1586', 'a75448e9058287639a246fa0ae3ebf78', 2, 400000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'errene ', 'iswanto putri', '08330833592', 'errenekwanto@gmail.com', '', '', '', '', '', 5, '', '921116183197', 811, 'bank', '2018-08-09 10:03:29'),
(193, 'DBS-20180809-4912', '5438cac862df430088bb27c900f4332b', 2, 400000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Agustin Havistasari', '', '082257372206', 'arveen_sandiarta@yahoo.co.id', '', '', '', '', '', 5, '', '3502174408950003', 913, 'bank', '2018-08-09 10:03:32'),
(194, 'DBS-20180809-7233', '0a432007d534e0d2ee7ff253f14c8368', 2, 400000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'fitriah ', 'rani', '089652305459', 'zatricialiem9@gmail.com', '', '', '', '', '', 5, '', '3578066110810001', 624, 'bank', '2018-08-09 10:06:01'),
(195, 'DBS-20180809-9022', '4f1a5cb90e5440f7f8f39708452ecf00', 2, 400000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'marwandi ', 'marewa', '081332218116', 'maixiu88@gmail .com', '', '', '', '', '', 5, '', '1514180501766', 953, 'bank', '2018-08-09 10:08:34'),
(196, 'DBS-20180809-8106', '524b679420c3a76f098cbbca720cc581', 2, 400000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'margaret ', 'anastasia poernomo', '081233140697', 'et.margar@live.com', '', '', '', '', '', 5, '', '3578096209970003', 133, 'bank', '2018-08-09 10:11:57'),
(197, 'DBS-20180809-1323', 'dd91a546ba99b046b2656fd1352ac751', 3, 600000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Jason Djimantoro', '', '0818300401', 'jason.dije@gmail.com', '', '', '', '', '', 5, '', '3578080401980001', 625, 'bank', '2018-08-09 10:34:49'),
(198, 'DBS-20180809-7918', 'cca8c821a29d6ae3de925f5158943dd0', 2, 400000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Tim Walter', 'Groneberg', '+61 426 425 155', 'timwgroneberg@gmail.com', '', '', '', '', '', 0, '5dfc9c7712dbe7cf0dd8a2131a934054', 'C7WX26593', 794, 'doku', '2018-08-09 10:37:49'),
(199, 'DBS-20180809-6927', '10ca46eaa140da6d3714d02680d98fa7', 3, 600000, 10, 'PRESALE NON KTM', 'PRESALE TICKET NON KTM ', 200000, 'Rita Amanda', '', '081553215374', 'ritaamandaa@gmail.com', '', '', '', '', '', 5, '', '3578025407940003', 770, 'bank', '2018-08-09 10:39:25'),
(200, 'DBS-20180809-6745', '22ed3959812eeaffeffcbd928ecb1707', 2, 600000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'TIm Walter', 'Groneberg', '+61426425155', 'timwgroneberg@gmail.com', '', '', '', '', '', 0, '', 'C7WX26593', 786, 'bank', '2018-08-09 10:43:09'),
(201, 'DBS-20180809-2515', 'cf70cccf1bb7095d5be45a73e0055f70', 2, 600000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'TIm Walter', 'Groneberg', '+61426425155', 'timwgroneberg@gmail.com', '', '', '', '', '', 0, 'c6667f136e6c64fe07acd5e4cc35e2f0', 'C7WX26593', 317, 'doku', '2018-08-09 10:43:26'),
(202, 'DBS-20180809-8836', '925b0572b51e6f058f9bd3db7d1925e8', 2, 600000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'Tim Walter', 'Groneberg', '+61426425155', 'timwgroneberg@gmail.com', '', '', '', '', '', 0, '7378d87cb3ecb8892b70e9a7728da8e1', 'C7WX26593', 712, 'doku', '2018-08-09 10:45:43'),
(203, 'DBS-20180809-2629', 'b5f3d284c0c53f317d2b8a8123e45462', 2, 600000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'aa', 'aa', '08155133845', 'ali sudirman090@gmail.com', '', '', '', '', '', 3, '', '3509192203910003', 226, 'bank', '2018-08-09 11:33:00'),
(204, 'DBS-20180809-7271', '4a8496540634b84872369b1fe5acff3d', 2, 600000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'aa ali sudirman', 'aa', '08155133845', 'ali sudirman090@gmail.com', '', '', '', '', '', 5, '', '3509192203910003', 169, 'bank', '2018-08-09 11:36:06'),
(205, 'DBS-20180809-2187', '9d35d8e02fb1ec1ccdbca18d1faf5bc4', 1, 300000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'bagus', 'into wahyu prabowo', '081902399246', 'tintosakti@gmail.com', '', '', '', '', '', 5, '', '3527092267960002', 891, 'bank', '2018-08-09 12:04:45'),
(206, 'DBS-20180809-8707', 'f99dc120b6cd0a28cd4e8185ccf45aec', 2, 600000, 11, 'TICKET ON THE DAY', 'TICKET ON THE DAY', 300000, 'taufik ', 'akbar', '081232121414', 'adicandra281@gmail.com', '', '', '', '', '', 5, '', '3509192203910003', 940, 'bank', '2018-08-09 12:23:24'),
(207, 'DBS-20180814-2033', '9a0051c9b202a7d59c39d6366ac5f88f', 1, 500000, 9, 'PACKAGE (5 Ticket) BY KTM  ', 'PACKAGE BY KTM\r\nSpecial Price Buy 5 Ticket Presale By KTM', 500000, 'deory', '', '085646765265', 'deo@markdesign.net', '', '', '', '', '', 0, 'bd0bee434add1edf37fba1590d3e447c', '3256101554545', 200, 'doku', '2018-08-14 09:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_order_history`
--

CREATE TABLE `ticket_order_history` (
  `id` int(11) NOT NULL,
  `ticket_order_id` int(11) NOT NULL,
  `change_by` varchar(200) NOT NULL,
  `change_to` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_order_history`
--

INSERT INTO `ticket_order_history` (`id`, `ticket_order_id`, `change_by`, `change_to`, `date_time`) VALUES
(1, 59, 'info@markdesign.net', 1, '2018-07-21 07:07:46'),
(2, 60, 'info@markdesign.net', 1, '2018-07-21 08:21:27'),
(3, 61, 'info@markdesign.net', 1, '2018-07-21 08:25:57'),
(4, 62, 'info@markdesign.net', 1, '2018-07-21 08:32:40'),
(5, 63, 'info@markdesign.net', 1, '2018-07-23 04:42:39'),
(6, 64, 'info@markdesign.net', 1, '2018-07-23 04:47:16'),
(7, 65, 'info@markdesign.net', 1, '2018-07-23 04:51:59'),
(8, 66, 'info@markdesign.net', 1, '2018-07-23 05:02:45'),
(9, 67, 'info@markdesign.net', 1, '2018-07-23 06:01:20'),
(10, 68, 'info@markdesign.net', 1, '2018-07-23 06:08:31'),
(11, 69, 'info@markdesign.net', 1, '2018-07-23 06:18:46'),
(12, 71, 'info@markdesign.net', 1, '2018-07-23 06:37:03'),
(13, 70, 'info@markdesign.net', 1, '2018-07-23 06:37:14'),
(14, 72, 'info@markdesign.net', 1, '2018-07-23 07:25:19'),
(15, 73, 'info@markdesign.net', 1, '2018-07-23 08:09:52'),
(16, 74, 'info@markdesign.net', 1, '2018-07-23 08:19:25'),
(17, 75, 'info@markdesign.net', 1, '2018-07-23 08:19:33'),
(18, 76, 'info@markdesign.net', 1, '2018-07-23 08:22:44'),
(19, 77, 'info@markdesign.net', 1, '2018-07-26 07:42:24'),
(20, 78, 'info@markdesign.net', 1, '2018-07-26 07:45:24'),
(21, 79, 'info@markdesign.net', 1, '2018-07-27 07:12:36'),
(22, 80, 'info@markdesign.net', 1, '2018-07-27 07:18:54'),
(23, 81, 'info@markdesign.net', 1, '2018-07-27 07:23:04'),
(24, 82, 'info@markdesign.net', 1, '2018-07-27 07:27:20'),
(25, 1, 'info@markdesign.net', 3, '2018-07-27 07:28:52'),
(26, 2, 'info@markdesign.net', 3, '2018-07-27 07:29:07'),
(27, 3, 'info@markdesign.net', 3, '2018-07-27 07:29:24'),
(28, 4, 'info@markdesign.net', 3, '2018-07-27 07:29:32'),
(29, 5, 'info@markdesign.net', 3, '2018-07-27 07:29:41'),
(30, 6, 'info@markdesign.net', 3, '2018-07-27 07:29:55'),
(31, 7, 'info@markdesign.net', 3, '2018-07-27 07:30:19'),
(32, 8, 'info@markdesign.net', 3, '2018-07-27 07:30:32'),
(33, 84, 'info@markdesign.net', 1, '2018-07-30 08:33:41'),
(34, 85, 'info@markdesign.net', 1, '2018-07-30 08:45:14'),
(35, 86, 'info@markdesign.net', 1, '2018-07-30 08:52:53'),
(36, 87, 'info@markdesign.net', 1, '2018-07-30 08:58:25'),
(37, 88, 'info@markdesign.net', 1, '2018-07-30 09:08:18'),
(38, 89, 'info@markdesign.net', 1, '2018-07-30 09:11:42'),
(39, 90, 'info@markdesign.net', 1, '2018-07-30 09:18:28'),
(40, 91, 'info@markdesign.net', 1, '2018-08-01 04:39:24'),
(41, 92, 'info@markdesign.net', 1, '2018-08-01 04:42:05'),
(42, 93, 'info@markdesign.net', 1, '2018-08-01 04:45:09'),
(43, 94, 'info@markdesign.net', 1, '2018-08-01 04:48:18'),
(44, 95, 'info@markdesign.net', 3, '2018-08-01 10:53:13'),
(45, 97, 'info@markdesign.net', 3, '2018-08-01 10:53:26'),
(46, 98, 'info@markdesign.net', 3, '2018-08-01 10:53:38'),
(47, 99, 'info@markdesign.net', 3, '2018-08-01 10:55:31'),
(48, 100, 'info@markdesign.net', 3, '2018-08-01 10:55:39'),
(49, 96, 'info@markdesign.net', 1, '2018-08-02 04:39:33'),
(50, 102, 'info@markdesign.net', 3, '2018-08-02 05:21:06'),
(51, 102, 'info@markdesign.net', 3, '2018-08-02 05:21:36'),
(52, 101, 'info@markdesign.net', 3, '2018-08-02 05:21:53'),
(53, 103, 'info@markdesign.net', 1, '2018-08-02 07:00:26'),
(54, 104, 'info@markdesign.net', 1, '2018-08-02 07:11:24'),
(55, 105, 'info@markdesign.net', 1, '2018-08-02 07:11:29'),
(56, 106, 'info@markdesign.net', 1, '2018-08-02 07:15:06'),
(57, 107, 'info@markdesign.net', 1, '2018-08-02 07:15:15'),
(58, 108, 'info@markdesign.net', 1, '2018-08-02 07:19:51'),
(59, 109, 'info@markdesign.net', 1, '2018-08-02 07:21:53'),
(60, 110, 'info@markdesign.net', 1, '2018-08-02 07:23:51'),
(61, 111, 'info@markdesign.net', 1, '2018-08-02 07:25:13'),
(62, 112, 'info@markdesign.net', 1, '2018-08-02 07:29:58'),
(63, 113, 'info@markdesign.net', 1, '2018-08-02 07:30:26'),
(64, 114, 'info@markdesign.net', 1, '2018-08-02 07:30:49'),
(65, 115, 'info@markdesign.net', 1, '2018-08-02 07:36:51'),
(66, 116, 'info@markdesign.net', 1, '2018-08-02 07:43:36'),
(67, 117, 'info@markdesign.net', 1, '2018-08-02 07:47:33'),
(68, 118, 'info@markdesign.net', 1, '2018-08-02 07:47:49'),
(69, 119, 'info@markdesign.net', 1, '2018-08-02 07:52:06'),
(70, 120, 'info@markdesign.net', 1, '2018-08-02 07:53:46'),
(71, 121, 'info@markdesign.net', 1, '2018-08-02 07:57:25'),
(72, 122, 'info@markdesign.net', 1, '2018-08-02 08:05:00'),
(73, 123, 'info@markdesign.net', 1, '2018-08-02 08:06:51'),
(74, 124, 'info@markdesign.net', 1, '2018-08-02 08:08:48'),
(75, 125, 'info@markdesign.net', 1, '2018-08-02 08:12:43'),
(76, 126, 'info@markdesign.net', 1, '2018-08-02 08:17:14'),
(77, 127, 'info@markdesign.net', 1, '2018-08-02 08:19:52'),
(78, 128, 'info@markdesign.net', 1, '2018-08-02 08:22:12'),
(79, 129, 'info@markdesign.net', 1, '2018-08-02 08:22:27'),
(80, 131, 'info@markdesign.net', 1, '2018-08-04 06:30:03'),
(81, 132, 'info@markdesign.net', 1, '2018-08-04 06:47:51'),
(82, 133, 'info@markdesign.net', 1, '2018-08-04 07:30:42'),
(83, 134, 'info@markdesign.net', 1, '2018-08-04 07:31:12'),
(84, 135, 'info@markdesign.net', 1, '2018-08-04 07:38:33'),
(85, 130, 'info@markdesign.net', 1, '2018-08-04 07:42:42'),
(86, 136, 'info@markdesign.net', 1, '2018-08-04 07:43:01'),
(87, 137, 'info@markdesign.net', 1, '2018-08-04 08:02:20'),
(88, 138, 'info@markdesign.net', 1, '2018-08-04 08:07:53'),
(89, 139, 'info@markdesign.net', 1, '2018-08-04 08:22:07'),
(90, 140, 'info@markdesign.net', 1, '2018-08-04 08:27:48'),
(91, 141, 'info@markdesign.net', 1, '2018-08-04 08:28:26'),
(92, 142, 'info@markdesign.net', 1, '2018-08-04 08:36:57'),
(93, 143, 'info@markdesign.net', 1, '2018-08-04 08:46:39'),
(94, 144, 'info@markdesign.net', 1, '2018-08-04 08:53:00'),
(95, 145, 'info@markdesign.net', 1, '2018-08-04 09:05:40'),
(96, 146, 'info@markdesign.net', 1, '2018-08-04 09:07:15'),
(97, 147, 'info@markdesign.net', 1, '2018-08-04 09:07:34'),
(98, 149, 'info@markdesign.net', 1, '2018-08-07 04:07:11'),
(99, 150, 'info@markdesign.net', 1, '2018-08-07 04:07:19'),
(100, 151, 'info@markdesign.net', 1, '2018-08-07 04:16:55'),
(101, 152, 'info@markdesign.net', 1, '2018-08-07 04:28:28'),
(102, 152, 'info@markdesign.net', 1, '2018-08-07 04:29:08'),
(103, 153, 'info@markdesign.net', 1, '2018-08-07 04:30:16'),
(104, 154, 'info@markdesign.net', 1, '2018-08-07 04:34:23'),
(105, 155, 'info@markdesign.net', 1, '2018-08-07 04:34:36'),
(106, 156, 'info@markdesign.net', 1, '2018-08-07 07:18:47'),
(107, 157, 'info@markdesign.net', 1, '2018-08-07 08:42:26'),
(108, 158, 'info@markdesign.net', 1, '2018-08-07 08:42:55'),
(109, 159, 'info@markdesign.net', 1, '2018-08-07 08:43:14'),
(110, 160, 'info@markdesign.net', 1, '2018-08-07 08:43:34'),
(111, 161, 'info@markdesign.net', 1, '2018-08-07 08:47:36'),
(112, 162, 'info@markdesign.net', 1, '2018-08-07 08:51:56'),
(113, 163, 'info@markdesign.net', 1, '2018-08-07 08:58:07'),
(114, 165, 'info@markdesign.net', 1, '2018-08-08 07:27:54'),
(115, 166, 'info@markdesign.net', 1, '2018-08-08 07:30:58'),
(116, 167, 'info@markdesign.net', 1, '2018-08-08 07:49:46'),
(117, 168, 'info@markdesign.net', 1, '2018-08-08 09:13:55'),
(118, 169, 'info@markdesign.net', 1, '2018-08-08 09:17:00'),
(119, 170, 'info@markdesign.net', 1, '2018-08-08 09:17:29'),
(120, 171, 'info@markdesign.net', 1, '2018-08-08 09:26:40'),
(121, 172, 'info@markdesign.net', 1, '2018-08-08 09:36:52'),
(122, 173, 'info@markdesign.net', 1, '2018-08-08 09:36:55'),
(123, 178, 'info@markdesign.net', 1, '2018-08-09 03:52:14'),
(124, 182, 'info@markdesign.net', 1, '2018-08-09 04:54:33'),
(125, 183, 'info@markdesign.net', 1, '2018-08-09 05:01:11'),
(126, 177, 'info@markdesign.net', 3, '2018-08-09 06:37:09'),
(127, 176, 'info@markdesign.net', 3, '2018-08-09 06:37:25'),
(128, 175, 'info@markdesign.net', 3, '2018-08-09 06:37:31'),
(129, 174, 'info@markdesign.net', 3, '2018-08-09 06:37:51'),
(130, 164, 'info@markdesign.net', 3, '2018-08-09 06:38:17'),
(131, 148, 'info@markdesign.net', 3, '2018-08-09 06:38:35'),
(132, 184, 'info@markdesign.net', 1, '2018-08-09 07:18:18'),
(133, 185, 'info@markdesign.net', 1, '2018-08-09 07:18:28'),
(134, 186, 'info@markdesign.net', 1, '2018-08-09 07:41:50'),
(135, 187, 'info@markdesign.net', 1, '2018-08-09 08:04:06'),
(136, 188, 'info@markdesign.net', 1, '2018-08-09 08:04:09'),
(137, 189, 'info@markdesign.net', 1, '2018-08-09 08:12:45'),
(138, 190, 'info@markdesign.net', 1, '2018-08-09 10:01:06'),
(139, 192, 'info@markdesign.net', 1, '2018-08-09 10:04:32'),
(140, 191, 'info@markdesign.net', 1, '2018-08-09 10:04:47'),
(141, 193, 'info@markdesign.net', 1, '2018-08-09 10:05:03'),
(142, 194, 'info@markdesign.net', 1, '2018-08-09 10:25:42'),
(143, 195, 'info@markdesign.net', 1, '2018-08-09 10:25:53'),
(144, 195, 'info@markdesign.net', 1, '2018-08-09 10:26:00'),
(145, 196, 'info@markdesign.net', 1, '2018-08-09 10:26:14'),
(146, 197, 'info@markdesign.net', 1, '2018-08-09 10:34:58'),
(147, 199, 'info@markdesign.net', 1, '2018-08-09 10:39:45'),
(148, 66, 'info@markdesign.net', 5, '2018-08-09 10:43:44'),
(149, 68, 'info@markdesign.net', 5, '2018-08-09 10:44:13'),
(150, 72, 'info@markdesign.net', 5, '2018-08-09 10:44:40'),
(151, 82, 'info@markdesign.net', 5, '2018-08-09 10:45:03'),
(152, 94, 'info@markdesign.net', 5, '2018-08-09 10:46:13'),
(153, 128, 'info@markdesign.net', 5, '2018-08-09 10:48:01'),
(154, 109, 'info@markdesign.net', 5, '2018-08-09 10:49:47'),
(155, 108, 'info@markdesign.net', 5, '2018-08-09 10:50:06'),
(156, 113, 'info@markdesign.net', 5, '2018-08-09 10:50:45'),
(157, 110, 'info@markdesign.net', 5, '2018-08-09 10:51:03'),
(158, 121, 'info@markdesign.net', 5, '2018-08-09 10:51:26'),
(159, 120, 'info@markdesign.net', 5, '2018-08-09 10:51:35'),
(160, 62, 'info@markdesign.net', 5, '2018-08-09 10:52:01'),
(161, 61, 'info@markdesign.net', 5, '2018-08-09 10:52:30'),
(162, 84, 'info@markdesign.net', 5, '2018-08-09 10:52:53'),
(163, 123, 'info@markdesign.net', 5, '2018-08-09 10:53:05'),
(164, 129, 'info@markdesign.net', 5, '2018-08-09 10:53:27'),
(165, 142, 'info@markdesign.net', 5, '2018-08-09 10:54:01'),
(166, 165, 'info@markdesign.net', 5, '2018-08-09 10:54:27'),
(167, 166, 'info@markdesign.net', 5, '2018-08-09 10:54:45'),
(168, 191, 'info@markdesign.net', 5, '2018-08-09 10:55:11'),
(169, 190, 'info@markdesign.net', 5, '2018-08-09 10:56:17'),
(170, 196, 'info@markdesign.net', 5, '2018-08-09 10:56:39'),
(171, 193, 'info@markdesign.net', 5, '2018-08-09 10:57:00'),
(172, 194, 'info@markdesign.net', 5, '2018-08-09 10:57:13'),
(173, 69, 'info@markdesign.net', 5, '2018-08-09 11:18:20'),
(174, 203, 'info@markdesign.net', 3, '2018-08-09 11:34:19'),
(175, 203, 'info@markdesign.net', 3, '2018-08-09 11:34:20'),
(176, 204, 'info@markdesign.net', 1, '2018-08-09 11:36:25'),
(177, 204, 'info@markdesign.net', 1, '2018-08-09 11:36:29'),
(178, 204, 'info@markdesign.net', 5, '2018-08-09 11:37:03'),
(179, 111, 'info@markdesign.net', 5, '2018-08-09 11:37:41'),
(180, 112, 'info@markdesign.net', 5, '2018-08-09 11:37:57'),
(181, 71, 'info@markdesign.net', 5, '2018-08-09 11:38:12'),
(182, 136, 'info@markdesign.net', 5, '2018-08-09 11:52:25'),
(183, 60, 'info@markdesign.net', 5, '2018-08-09 11:53:44'),
(184, 67, 'info@markdesign.net', 5, '2018-08-09 12:03:03'),
(185, 205, 'info@markdesign.net', 1, '2018-08-09 12:05:21'),
(186, 205, 'info@markdesign.net', 5, '2018-08-09 12:05:26'),
(187, 144, 'info@markdesign.net', 5, '2018-08-09 12:22:57'),
(188, 206, 'info@markdesign.net', 1, '2018-08-09 12:25:32'),
(189, 206, 'info@markdesign.net', 5, '2018-08-09 12:25:34'),
(190, 93, 'info@markdesign.net', 5, '2018-08-09 12:34:39'),
(191, 146, 'info@markdesign.net', 5, '2018-08-09 13:05:15'),
(192, 192, 'info@markdesign.net', 5, '2018-08-09 13:11:29'),
(193, 74, 'info@markdesign.net', 5, '2018-08-09 13:14:14'),
(194, 74, 'info@markdesign.net', 5, '2018-08-09 13:14:14'),
(195, 73, 'info@markdesign.net', 5, '2018-08-09 13:14:43'),
(196, 64, 'info@markdesign.net', 5, '2018-08-09 13:18:31'),
(197, 141, 'info@markdesign.net', 5, '2018-08-09 13:29:26'),
(198, 133, 'info@markdesign.net', 5, '2018-08-09 13:37:50'),
(199, 153, 'info@markdesign.net', 5, '2018-08-09 13:54:43'),
(200, 152, 'info@markdesign.net', 5, '2018-08-09 13:54:44'),
(201, 63, 'info@markdesign.net', 5, '2018-08-09 14:16:23'),
(202, 114, 'info@markdesign.net', 5, '2018-08-09 14:17:49'),
(203, 116, 'info@markdesign.net', 5, '2018-08-09 14:18:22'),
(204, 156, 'info@markdesign.net', 5, '2018-08-09 14:18:57'),
(205, 92, 'info@markdesign.net', 5, '2018-08-09 14:31:58'),
(206, 70, 'info@markdesign.net', 5, '2018-08-09 14:36:52'),
(207, 90, 'info@markdesign.net', 5, '2018-08-09 14:40:55'),
(208, 81, 'info@markdesign.net', 5, '2018-08-09 14:41:30'),
(209, 76, 'info@markdesign.net', 5, '2018-08-09 14:50:53'),
(210, 139, 'info@markdesign.net', 5, '2018-08-09 14:52:23'),
(211, 137, 'info@markdesign.net', 5, '2018-08-09 14:52:37'),
(212, 159, 'info@markdesign.net', 5, '2018-08-09 14:58:23'),
(213, 160, 'info@markdesign.net', 5, '2018-08-09 14:59:43'),
(214, 173, 'info@markdesign.net', 5, '2018-08-09 15:06:11'),
(215, 178, 'info@markdesign.net', 5, '2018-08-09 15:06:44'),
(216, 96, 'info@markdesign.net', 5, '2018-08-09 15:35:44'),
(217, 117, 'info@markdesign.net', 5, '2018-08-09 15:37:42'),
(218, 172, 'info@markdesign.net', 5, '2018-08-09 15:42:51'),
(219, 184, 'info@markdesign.net', 5, '2018-08-09 15:46:12'),
(220, 106, 'info@markdesign.net', 5, '2018-08-09 15:46:44'),
(221, 154, 'info@markdesign.net', 5, '2018-08-09 15:47:46'),
(222, 155, 'info@markdesign.net', 5, '2018-08-09 15:48:13'),
(223, 89, 'info@markdesign.net', 5, '2018-08-09 15:52:44'),
(224, 149, 'info@markdesign.net', 5, '2018-08-09 15:53:04'),
(225, 150, 'info@markdesign.net', 5, '2018-08-09 15:53:15'),
(226, 147, 'info@markdesign.net', 5, '2018-08-09 15:54:13'),
(227, 126, 'info@markdesign.net', 5, '2018-08-09 15:54:31'),
(228, 125, 'info@markdesign.net', 5, '2018-08-09 15:55:11'),
(229, 124, 'info@markdesign.net', 5, '2018-08-09 15:55:27'),
(230, 168, 'info@markdesign.net', 5, '2018-08-09 15:56:03'),
(231, 138, 'info@markdesign.net', 5, '2018-08-09 15:56:39'),
(232, 107, 'info@markdesign.net', 5, '2018-08-09 15:57:19'),
(233, 188, 'info@markdesign.net', 5, '2018-08-09 15:58:00'),
(234, 170, 'info@markdesign.net', 5, '2018-08-09 16:02:58'),
(235, 122, 'info@markdesign.net', 5, '2018-08-09 16:03:25'),
(236, 105, 'info@markdesign.net', 5, '2018-08-09 16:03:55'),
(237, 199, 'info@markdesign.net', 5, '2018-08-09 16:08:49'),
(238, 75, 'info@markdesign.net', 5, '2018-08-09 16:14:04'),
(239, 78, 'info@markdesign.net', 5, '2018-08-09 16:14:21'),
(240, 65, 'info@markdesign.net', 5, '2018-08-09 16:16:19'),
(241, 134, 'info@markdesign.net', 5, '2018-08-09 16:17:01'),
(242, 127, 'info@markdesign.net', 5, '2018-08-09 16:19:21'),
(243, 145, 'info@markdesign.net', 5, '2018-08-09 16:26:26'),
(244, 85, 'info@markdesign.net', 5, '2018-08-09 16:27:59'),
(245, 104, 'info@markdesign.net', 5, '2018-08-09 16:32:31'),
(246, 104, 'info@markdesign.net', 5, '2018-08-09 16:32:50'),
(247, 119, 'info@markdesign.net', 5, '2018-08-09 16:33:07'),
(248, 197, 'info@markdesign.net', 5, '2018-08-09 16:35:22'),
(249, 103, 'info@markdesign.net', 5, '2018-08-09 16:38:02'),
(250, 169, 'info@markdesign.net', 5, '2018-08-09 16:41:20'),
(251, 91, 'info@markdesign.net', 5, '2018-08-09 16:41:30'),
(252, 79, 'info@markdesign.net', 5, '2018-08-09 16:41:51'),
(253, 80, 'info@markdesign.net', 5, '2018-08-09 16:42:08'),
(254, 186, 'info@markdesign.net', 5, '2018-08-09 16:48:45'),
(255, 195, 'info@markdesign.net', 5, '2018-08-09 16:49:27'),
(256, 183, 'info@markdesign.net', 5, '2018-08-09 16:56:12'),
(257, 77, 'info@markdesign.net', 5, '2018-08-09 16:56:47'),
(258, 187, 'info@markdesign.net', 5, '2018-08-09 16:58:13'),
(259, 130, 'info@markdesign.net', 5, '2018-08-09 16:59:35'),
(260, 171, 'info@markdesign.net', 5, '2018-08-09 17:01:30'),
(261, 118, 'info@markdesign.net', 5, '2018-08-09 17:01:58'),
(262, 157, 'info@markdesign.net', 5, '2018-08-09 17:03:14'),
(263, 158, 'info@markdesign.net', 5, '2018-08-09 17:03:40'),
(264, 189, 'info@markdesign.net', 5, '2018-08-09 17:04:18'),
(265, 151, 'info@markdesign.net', 5, '2018-08-09 17:11:44'),
(266, 185, 'info@markdesign.net', 5, '2018-08-09 17:12:23'),
(267, 135, 'info@markdesign.net', 5, '2018-08-09 17:15:14'),
(268, 131, 'info@markdesign.net', 5, '2018-08-09 17:15:43'),
(269, 132, 'info@markdesign.net', 5, '2018-08-09 17:16:01'),
(270, 161, 'info@markdesign.net', 5, '2018-08-09 17:19:52'),
(271, 140, 'info@markdesign.net', 5, '2018-08-09 17:20:15'),
(272, 167, 'info@markdesign.net', 5, '2018-08-09 17:22:05'),
(273, 88, 'info@markdesign.net', 5, '2018-08-09 17:23:41'),
(274, 87, 'info@markdesign.net', 5, '2018-08-09 17:23:50'),
(275, 182, 'info@markdesign.net', 5, '2018-08-09 17:25:37'),
(276, 163, 'info@markdesign.net', 5, '2018-08-09 17:36:36'),
(277, 143, 'info@markdesign.net', 5, '2018-08-09 17:38:04'),
(278, 162, 'info@markdesign.net', 5, '2018-08-09 17:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `to_toko`
--

CREATE TABLE `to_toko` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `nama_toko` varchar(200) NOT NULL,
  `lokasi` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `to_toko`
--

INSERT INTO `to_toko` (`id`, `email`, `first_name`, `last_name`, `pass`, `login_terakhir`, `aktivasi`, `aktif`, `image`, `hp`, `address`, `city`, `province`, `postcode`, `nama_toko`, `lokasi`) VALUES
(1, 'deoryzpandu@gmail.com', 'Deory', 'Pandu', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2014-11-07 02:33:02', 0, 1, 'a448d-calourette-woodland-creature-jewelry-1.jpg', 'HP', 'Address', 'City', 'Province', 'PostCode', 'JewelryShop', 'surabaya'),
(4, 'ibnu@markdesign.net', 'Ibnu', 'Fajar', '564fda17f517ae04a86734c2b2341327ed4fd565', '2014-11-07 02:33:13', 0, 1, '3e491-calourette-woodland-creature-jewelry-1.jpg', 'HP', 'Address', 'City', 'Province', 'PostCode', 'Toko Handoko', 'surabaya');

-- --------------------------------------------------------

--
-- Table structure for table `to_toko_product`
--

CREATE TABLE `to_toko_product` (
  `id` int(11) NOT NULL,
  `toko_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `to_toko_product`
--

INSERT INTO `to_toko_product` (`id`, `toko_id`, `product_id`) VALUES
(8, 1, 960),
(7, 1, 105),
(6, 1, 719),
(5, 1, 264),
(9, 1, 223),
(10, 1, 930),
(11, 1, 475),
(12, 1, 732),
(13, 4, 264),
(14, 4, 560),
(15, 4, 960),
(16, 4, 505),
(17, 4, 719),
(18, 4, 678),
(19, 4, 475),
(20, 4, 277);

-- --------------------------------------------------------

--
-- Table structure for table `tt_text`
--

CREATE TABLE `tt_text` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tt_text`
--

INSERT INTO `tt_text` (`id`, `category`, `message`) VALUES
(1, 'admin', 'Produk'),
(2, 'admin', 'Pages'),
(3, 'admin', 'Orders'),
(4, 'admin', 'Customers'),
(5, 'admin', 'Promotions'),
(6, 'admin', 'Reports'),
(7, 'admin', 'General Setting'),
(8, 'admin', 'Data Edited'),
(9, 'admin', 'New Orders'),
(10, 'admin', 'New Customers'),
(11, 'admin', 'Payment Confirmation'),
(12, 'admin', 'Edit Profile'),
(13, 'admin', 'Change Password'),
(14, 'admin', 'Sign Out'),
(15, 'admin', 'Gallery'),
(16, 'admin', 'Slide Home'),
(17, 'admin', 'Toko'),
(18, 'admin', 'Slides'),
(19, 'admin', 'Product'),
(20, 'admin', 'Products'),
(21, 'admin', 'Administrator'),
(22, 'admin', 'LineUps'),
(23, 'admin', 'Tickets'),
(24, 'admin', 'Line Ups'),
(25, 'admin', 'Logout'),
(26, 'admin', 'Order Tickets'),
(27, 'admin', 'Bank'),
(28, 'admin', 'Video'),
(29, 'admin', 'Resend Email Berhasil'),
(30, 'admin', 'Ganti Status Ke Complete Berhasil'),
(31, 'admin', 'Ticket sudah berhasil di klaim');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `active` int(11) NOT NULL,
  `url_youtube` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `date`, `active`, `url_youtube`, `sort`) VALUES
(6, '2017-07-19 10:35:52', 1, 'https://www.youtube.com/watch?time_continue=1&v=X0ULWIKblpc', 20),
(7, '2017-07-19 10:36:20', 1, 'https://www.youtube.com/watch?v=4aF_FIR_Ci8', 1),
(8, '2017-07-19 10:36:32', 1, 'https://www.youtube.com/watch?v=r7nMmT-qyJ8', 10);

-- --------------------------------------------------------

--
-- Table structure for table `video_description`
--

CREATE TABLE `video_description` (
  `id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video_description`
--

INSERT INTO `video_description` (`id`, `video_id`, `language_id`, `title`, `content`) VALUES
(9, 1, 2, 'Smart BMS Manager with data analyzer for Small buildings Savings', ''),
(10, 2, 2, 'Toshiba Air conditioner Bright future YouTube', ''),
(11, 3, 2, 'TOSHIBA VRF', ''),
(12, 4, 2, 'Toshiba Twin Rotary Compressor EN', ''),
(13, 5, 2, 'More savings for more opportunities', ''),
(24, 7, 2, 'After Movie 2015', ''),
(25, 8, 2, 'After Movie 2016', ''),
(26, 6, 2, 'After Movie 2017', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_blog`
-- (See below for the actual view)
--
CREATE TABLE `view_blog` (
`id` int(11)
,`topik_id` int(11)
,`image` varchar(255)
,`active` int(11)
,`date_input` datetime
,`date_update` datetime
,`insert_by` varchar(255)
,`last_update_by` varchar(255)
,`writer` int(25)
,`id2` int(11)
,`blog_id` int(11)
,`language_id` int(11)
,`title` varchar(255)
,`content` text
);

-- --------------------------------------------------------

--
-- Table structure for table `view_brand`
--

CREATE TABLE `view_brand` (
  `id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `date_input` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  `insert_by` varchar(255) DEFAULT NULL,
  `last_update_by` varchar(255) DEFAULT NULL,
  `id2` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_category`
--

CREATE TABLE `view_category` (
  `id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `data` text,
  `id2` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `data2` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `view_product`
--

CREATE TABLE `view_product` (
  `id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `harga_coret` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `terbaru` int(11) DEFAULT NULL,
  `terlaris` int(11) DEFAULT NULL,
  `out_stock` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `date_input` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  `data` text,
  `product_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `desc` text,
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_desc` text,
  `meta_key` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `view_blog`
--
DROP TABLE IF EXISTS `view_blog`;

CREATE ALGORITHM=UNDEFINED DEFINER=`decibelsfestival`@`localhost` SQL SECURITY DEFINER VIEW `view_blog`  AS  select `pg_blog`.`id` AS `id`,`pg_blog`.`topik_id` AS `topik_id`,`pg_blog`.`image` AS `image`,`pg_blog`.`active` AS `active`,`pg_blog`.`date_input` AS `date_input`,`pg_blog`.`date_update` AS `date_update`,`pg_blog`.`insert_by` AS `insert_by`,`pg_blog`.`last_update_by` AS `last_update_by`,`pg_blog`.`writer` AS `writer`,`pg_blog_description`.`id` AS `id2`,`pg_blog_description`.`blog_id` AS `blog_id`,`pg_blog_description`.`language_id` AS `language_id`,`pg_blog_description`.`title` AS `title`,`pg_blog_description`.`content` AS `content` from (`pg_blog` join `pg_blog_description` on((`pg_blog`.`id` = `pg_blog_description`.`blog_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cs_customer`
--
ALTER TABLE `cs_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `cs_customer_address`
--
ALTER TABLE `cs_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linesup`
--
ALTER TABLE `linesup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `me_member`
--
ALTER TABLE `me_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `or_order`
--
ALTER TABLE `or_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `or_order_history`
--
ALTER TABLE `or_order_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `or_order_product`
--
ALTER TABLE `or_order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `or_order_status`
--
ALTER TABLE `or_order_status`
  ADD PRIMARY KEY (`order_status_id`);

--
-- Indexes for table `pg_bank`
--
ALTER TABLE `pg_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_blog`
--
ALTER TABLE `pg_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_blog_description`
--
ALTER TABLE `pg_blog_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `pg_faq`
--
ALTER TABLE `pg_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_faq_description`
--
ALTER TABLE `pg_faq_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `pg_list_bank`
--
ALTER TABLE `pg_list_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_pages`
--
ALTER TABLE `pg_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_pages_description`
--
ALTER TABLE `pg_pages_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_testimonial`
--
ALTER TABLE `pg_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_testimonial_description`
--
ALTER TABLE `pg_testimonial_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pg_type_letak`
--
ALTER TABLE `pg_type_letak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prd_brand`
--
ALTER TABLE `prd_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prd_brand_description`
--
ALTER TABLE `prd_brand_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `prd_category`
--
ALTER TABLE `prd_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `prd_category_description`
--
ALTER TABLE `prd_category_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`,`language_id`);

--
-- Indexes for table `prd_product`
--
ALTER TABLE `prd_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `prd_product_attributes`
--
ALTER TABLE `prd_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `prd_product_color`
--
ALTER TABLE `prd_product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `prd_product_description`
--
ALTER TABLE `prd_product_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`language_id`);

--
-- Indexes for table `prd_product_image`
--
ALTER TABLE `prd_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_description`
--
ALTER TABLE `setting_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sl_slide`
--
ALTER TABLE `sl_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sl_slide_description`
--
ALTER TABLE `sl_slide_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indexes for table `tb_group`
--
ALTER TABLE `tb_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_menu_akses`
--
ALTER TABLE `tb_menu_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_order`
--
ALTER TABLE `ticket_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_order_history`
--
ALTER TABLE `ticket_order_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_order_id` (`ticket_order_id`),
  ADD KEY `date_time` (`date_time`);

--
-- Indexes for table `to_toko`
--
ALTER TABLE `to_toko`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `to_toko_product`
--
ALTER TABLE `to_toko_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `toko_id` (`toko_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `tt_text`
--
ALTER TABLE `tt_text`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_description`
--
ALTER TABLE `video_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_id` (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cs_customer`
--
ALTER TABLE `cs_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cs_customer_address`
--
ALTER TABLE `cs_customer_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `linesup`
--
ALTER TABLE `linesup`
  MODIFY `id` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1195;

--
-- AUTO_INCREMENT for table `me_member`
--
ALTER TABLE `me_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `or_order`
--
ALTER TABLE `or_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `or_order_history`
--
ALTER TABLE `or_order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `or_order_product`
--
ALTER TABLE `or_order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `or_order_status`
--
ALTER TABLE `or_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pg_bank`
--
ALTER TABLE `pg_bank`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pg_blog`
--
ALTER TABLE `pg_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pg_blog_description`
--
ALTER TABLE `pg_blog_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `pg_faq`
--
ALTER TABLE `pg_faq`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pg_faq_description`
--
ALTER TABLE `pg_faq_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pg_list_bank`
--
ALTER TABLE `pg_list_bank`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pg_pages`
--
ALTER TABLE `pg_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pg_pages_description`
--
ALTER TABLE `pg_pages_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pg_testimonial`
--
ALTER TABLE `pg_testimonial`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pg_testimonial_description`
--
ALTER TABLE `pg_testimonial_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pg_type_letak`
--
ALTER TABLE `pg_type_letak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `prd_brand`
--
ALTER TABLE `prd_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `prd_brand_description`
--
ALTER TABLE `prd_brand_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `prd_category`
--
ALTER TABLE `prd_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `prd_category_description`
--
ALTER TABLE `prd_category_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `prd_product`
--
ALTER TABLE `prd_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `prd_product_attributes`
--
ALTER TABLE `prd_product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prd_product_color`
--
ALTER TABLE `prd_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prd_product_description`
--
ALTER TABLE `prd_product_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `prd_product_image`
--
ALTER TABLE `prd_product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `setting_description`
--
ALTER TABLE `setting_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sl_slide`
--
ALTER TABLE `sl_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sl_slide_description`
--
ALTER TABLE `sl_slide_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_group`
--
ALTER TABLE `tb_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_menu_akses`
--
ALTER TABLE `tb_menu_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ticket_order`
--
ALTER TABLE `ticket_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `ticket_order_history`
--
ALTER TABLE `ticket_order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `to_toko`
--
ALTER TABLE `to_toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `to_toko_product`
--
ALTER TABLE `to_toko_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tt_text`
--
ALTER TABLE `tt_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `video_description`
--
ALTER TABLE `video_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
