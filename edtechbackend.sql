-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2023 at 06:12 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edtechbackend`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 4, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2023-07-13 10:32:00'),
(2, 0, 5, 'Admin', 'fa-tasks', '', NULL, NULL, '2023-07-13 10:32:00'),
(3, 2, 6, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2023-07-13 10:32:00'),
(4, 2, 7, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2023-07-13 10:32:00'),
(5, 2, 8, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2023-07-13 10:32:00'),
(6, 2, 9, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2023-07-13 10:32:00'),
(7, 2, 10, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2023-07-13 10:32:00'),
(8, 0, 1, 'Member', 'fa-users', '/users', '*', '2023-07-13 08:33:00', '2023-07-13 11:41:45'),
(9, 10, 3, 'Course Category', 'fa-bars', 'course-types', NULL, '2023-07-13 10:09:21', '2023-07-13 10:32:00'),
(10, 0, 2, 'About Course', 'fa-adn', '#', NULL, '2023-07-13 10:31:39', '2023-07-13 10:32:00'),
(11, 0, 0, 'Courses', 'fa-book', 'courses', NULL, '2023-07-13 11:04:12', '2023-07-13 11:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-07-10 13:14:57', '2023-07-10 13:14:57'),
(2, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-10 13:21:35', '2023-07-10 13:21:35'),
(3, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-10 13:21:36', '2023-07-10 13:21:36'),
(4, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-10 13:21:46', '2023-07-10 13:21:46'),
(5, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2023-07-10 13:26:30', '2023-07-10 13:26:30'),
(6, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2023-07-10 13:31:16', '2023-07-10 13:31:16'),
(7, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-07-13 08:30:08', '2023-07-13 08:30:08'),
(8, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 08:30:22', '2023-07-13 08:30:22'),
(9, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 08:30:35', '2023-07-13 08:30:35'),
(10, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 08:30:37', '2023-07-13 08:30:37'),
(11, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 08:31:18', '2023-07-13 08:31:18'),
(12, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 08:31:40', '2023-07-13 08:31:40'),
(13, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 08:31:57', '2023-07-13 08:31:57'),
(14, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 08:32:00', '2023-07-13 08:32:00'),
(15, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Member\",\"icon\":\"fa-bars\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"NqedeknMUjuSyimGJOQBqs6vns5eZ916DMriU2ye\"}', '2023-07-13 08:32:59', '2023-07-13 08:32:59'),
(16, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-07-13 08:33:01', '2023-07-13 08:33:01'),
(17, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2023-07-13 08:33:48', '2023-07-13 08:33:48'),
(18, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2023-07-13 08:37:01', '2023-07-13 08:37:01'),
(19, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-07-13 08:38:48', '2023-07-13 08:38:48'),
(20, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-07-13 08:46:12', '2023-07-13 08:46:12'),
(21, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 08:46:29', '2023-07-13 08:46:29'),
(22, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 08:46:38', '2023-07-13 08:46:38'),
(23, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 08:46:42', '2023-07-13 08:46:42'),
(24, 1, 'admin/users/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 08:49:10', '2023-07-13 08:49:10'),
(25, 1, 'admin/users/8', 'PUT', '127.0.0.1', '{\"name\":\"Elvis Igiebor\",\"email\":\"igieborelvis@gmail.com\",\"_token\":\"NqedeknMUjuSyimGJOQBqs6vns5eZ916DMriU2ye\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2023-07-13 08:49:22', '2023-07-13 08:49:22'),
(26, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-07-13 08:49:22', '2023-07-13 08:49:22'),
(27, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-07-13 08:55:18', '2023-07-13 08:55:18'),
(28, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-07-13 08:56:10', '2023-07-13 08:56:10'),
(29, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-07-13 08:57:09', '2023-07-13 08:57:09'),
(30, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-07-13 08:59:17', '2023-07-13 08:59:17'),
(31, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-07-13 08:59:39', '2023-07-13 08:59:39'),
(32, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-07-13 09:00:23', '2023-07-13 09:00:23'),
(33, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:06:30', '2023-07-13 10:06:30'),
(34, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:06:54', '2023-07-13 10:06:54'),
(35, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:07:02', '2023-07-13 10:07:02'),
(36, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:07:11', '2023-07-13 10:07:11'),
(37, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:07:16', '2023-07-13 10:07:16'),
(38, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:07:23', '2023-07-13 10:07:23'),
(39, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:07:51', '2023-07-13 10:07:51'),
(40, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:07:57', '2023-07-13 10:07:57'),
(41, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Course Category\",\"icon\":\"fa-bars\",\"uri\":\"course-types\",\"roles\":[null],\"permission\":null,\"_token\":\"NqedeknMUjuSyimGJOQBqs6vns5eZ916DMriU2ye\"}', '2023-07-13 10:09:21', '2023-07-13 10:09:21'),
(42, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-07-13 10:09:22', '2023-07-13 10:09:22'),
(43, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-07-13 10:10:08', '2023-07-13 10:10:08'),
(44, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:10:15', '2023-07-13 10:10:15'),
(45, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-07-13 10:10:16', '2023-07-13 10:10:16'),
(46, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-07-13 10:12:07', '2023-07-13 10:12:07'),
(47, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:12:16', '2023-07-13 10:12:16'),
(48, 1, 'admin/course-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:12:35', '2023-07-13 10:12:35'),
(49, 1, 'admin/course-types', 'GET', '127.0.0.1', '[]', '2023-07-13 10:12:36', '2023-07-13 10:12:36'),
(50, 1, 'admin/course-types', 'GET', '127.0.0.1', '[]', '2023-07-13 10:29:04', '2023-07-13 10:29:04'),
(51, 1, 'admin/course-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:29:08', '2023-07-13 10:29:08'),
(52, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:29:18', '2023-07-13 10:29:18'),
(53, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:29:21', '2023-07-13 10:29:21'),
(54, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:29:29', '2023-07-13 10:29:29'),
(55, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:29:37', '2023-07-13 10:29:37'),
(56, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:29:41', '2023-07-13 10:29:41'),
(57, 1, 'admin/course-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:29:46', '2023-07-13 10:29:46'),
(58, 1, 'admin/course-types', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"PHP\",\"description\":\"Learn how to create database applications with PHP\",\"order\":\"1\",\"_token\":\"NqedeknMUjuSyimGJOQBqs6vns5eZ916DMriU2ye\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/course-types\"}', '2023-07-13 10:30:22', '2023-07-13 10:30:22'),
(59, 1, 'admin/course-types', 'GET', '127.0.0.1', '[]', '2023-07-13 10:30:22', '2023-07-13 10:30:22'),
(60, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:30:39', '2023-07-13 10:30:39'),
(61, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"About Course\",\"icon\":\"fa-adn\",\"uri\":\"#\",\"roles\":[null],\"permission\":null,\"_token\":\"NqedeknMUjuSyimGJOQBqs6vns5eZ916DMriU2ye\"}', '2023-07-13 10:31:39', '2023-07-13 10:31:39'),
(62, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-07-13 10:31:39', '2023-07-13 10:31:39'),
(63, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-07-13 10:31:46', '2023-07-13 10:31:46'),
(64, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"NqedeknMUjuSyimGJOQBqs6vns5eZ916DMriU2ye\",\"_order\":\"[{\\\"id\\\":8},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":9}]},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2023-07-13 10:32:00', '2023-07-13 10:32:00'),
(65, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 10:32:01', '2023-07-13 10:32:01'),
(66, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-07-13 11:03:53', '2023-07-13 11:03:53'),
(67, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Courses\",\"icon\":\"fa-book\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"NqedeknMUjuSyimGJOQBqs6vns5eZ916DMriU2ye\"}', '2023-07-13 11:04:12', '2023-07-13 11:04:12'),
(68, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-07-13 11:04:13', '2023-07-13 11:04:13'),
(69, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:04:28', '2023-07-13 11:04:28'),
(70, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Courses\",\"icon\":\"fa-book\",\"uri\":\"courses\",\"roles\":[null],\"permission\":null,\"_token\":\"NqedeknMUjuSyimGJOQBqs6vns5eZ916DMriU2ye\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-07-13 11:04:55', '2023-07-13 11:04:55'),
(71, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-07-13 11:04:55', '2023-07-13 11:04:55'),
(72, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 11:05:26', '2023-07-13 11:05:26'),
(73, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:05:35', '2023-07-13 11:05:35'),
(74, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:05:48', '2023-07-13 11:05:48'),
(75, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 11:05:49', '2023-07-13 11:05:49'),
(76, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:06:06', '2023-07-13 11:06:06'),
(77, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:06:15', '2023-07-13 11:06:15'),
(78, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:06:20', '2023-07-13 11:06:20'),
(79, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 11:07:15', '2023-07-13 11:07:15'),
(80, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 11:08:40', '2023-07-13 11:08:40'),
(81, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 11:09:39', '2023-07-13 11:09:39'),
(82, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 11:10:54', '2023-07-13 11:10:54'),
(83, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 11:11:24', '2023-07-13 11:11:24'),
(84, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:12:04', '2023-07-13 11:12:04'),
(85, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:12:29', '2023-07-13 11:12:29'),
(86, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:12:33', '2023-07-13 11:12:33'),
(87, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:12:39', '2023-07-13 11:12:39'),
(88, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:12:44', '2023-07-13 11:12:44'),
(89, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 11:12:45', '2023-07-13 11:12:45'),
(90, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:12:51', '2023-07-13 11:12:51'),
(91, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:13:06', '2023-07-13 11:13:06'),
(92, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:13:09', '2023-07-13 11:13:09'),
(93, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '[]', '2023-07-13 11:24:43', '2023-07-13 11:24:43'),
(94, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:24:51', '2023-07-13 11:24:51'),
(95, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:24:57', '2023-07-13 11:24:57'),
(96, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-07-13 11:29:48', '2023-07-13 11:29:48'),
(97, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-07-13 11:33:10', '2023-07-13 11:33:10'),
(98, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-07-13 11:37:11', '2023-07-13 11:37:11'),
(99, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"name\":\"Laravel\",\"type_id\":\"1\",\"description\":\"Simple laravel course\",\"price\":\"50\",\"lesson_num\":\"2\",\"video_length\":\"4\",\"user_token\":\"45b2df827e966f147bb88dd7a33a7a7c\",\"_token\":\"NqedeknMUjuSyimGJOQBqs6vns5eZ916DMriU2ye\"}', '2023-07-13 11:39:07', '2023-07-13 11:39:07'),
(100, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 11:39:08', '2023-07-13 11:39:08'),
(101, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:41:17', '2023-07-13 11:41:17'),
(102, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:41:29', '2023-07-13 11:41:29'),
(103, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Member\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"NqedeknMUjuSyimGJOQBqs6vns5eZ916DMriU2ye\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2023-07-13 11:41:45', '2023-07-13 11:41:45'),
(104, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-07-13 11:41:45', '2023-07-13 11:41:45'),
(105, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:42:19', '2023-07-13 11:42:19'),
(106, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:42:24', '2023-07-13 11:42:24'),
(107, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:42:44', '2023-07-13 11:42:44'),
(108, 1, 'admin/course-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:42:52', '2023-07-13 11:42:52'),
(109, 1, 'admin/course-types', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Graphic Design\",\"description\":\"Learn graphic Design\",\"order\":\"1\",\"_token\":\"NqedeknMUjuSyimGJOQBqs6vns5eZ916DMriU2ye\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/course-types\"}', '2023-07-13 11:43:30', '2023-07-13 11:43:30'),
(110, 1, 'admin/course-types', 'GET', '127.0.0.1', '[]', '2023-07-13 11:43:30', '2023-07-13 11:43:30'),
(111, 1, 'admin/course-types', 'GET', '127.0.0.1', '[]', '2023-07-13 11:59:12', '2023-07-13 11:59:12'),
(112, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 11:59:19', '2023-07-13 11:59:19'),
(113, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 13:25:41', '2023-07-13 13:25:41'),
(114, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 13:30:18', '2023-07-13 13:30:18'),
(115, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 13:33:27', '2023-07-13 13:33:27'),
(116, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 13:35:56', '2023-07-13 13:35:56'),
(117, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 13:38:38', '2023-07-13 13:38:38'),
(118, 1, 'admin/courses/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 13:38:46', '2023-07-13 13:38:46'),
(119, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 13:42:53', '2023-07-13 13:42:53'),
(120, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 13:44:01', '2023-07-13 13:44:01'),
(121, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 13:44:44', '2023-07-13 13:44:44'),
(122, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 14:27:37', '2023-07-13 14:27:37'),
(123, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 14:27:56', '2023-07-13 14:27:56'),
(124, 1, 'admin/course-types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 14:28:04', '2023-07-13 14:28:04'),
(125, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 14:28:22', '2023-07-13 14:28:22'),
(126, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-13 14:31:21', '2023-07-13 14:31:21'),
(127, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"name\":\"Flutter\",\"type_id\":\"1\",\"description\":\"Simple flutter  video course\",\"price\":\"300\",\"lesson_num\":\"4\",\"video_length\":\"40\",\"user_token\":\"ad7ddcbe8bb193dfa47011ce2efe684e\",\"_token\":\"NqedeknMUjuSyimGJOQBqs6vns5eZ916DMriU2ye\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\"}', '2023-07-13 14:33:45', '2023-07-13 14:33:45'),
(128, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-13 14:33:46', '2023-07-13 14:33:46'),
(129, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-07-18 06:51:29', '2023-07-18 06:51:29'),
(130, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-18 06:51:50', '2023-07-18 06:51:50'),
(131, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-18 06:52:01', '2023-07-18 06:52:01'),
(132, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-18 06:52:38', '2023-07-18 06:52:38'),
(133, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-18 06:52:45', '2023-07-18 06:52:45'),
(134, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-18 06:52:57', '2023-07-18 06:52:57'),
(135, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-18 06:53:55', '2023-07-18 06:53:55'),
(136, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-18 06:54:16', '2023-07-18 06:54:16'),
(137, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-18 06:54:41', '2023-07-18 06:54:41'),
(138, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-18 06:55:05', '2023-07-18 06:55:05'),
(139, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-18 07:01:05', '2023-07-18 07:01:05'),
(140, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-18 07:01:19', '2023-07-18 07:01:19'),
(141, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-18 07:01:29', '2023-07-18 07:01:29'),
(142, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-18 07:01:51', '2023-07-18 07:01:51'),
(143, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-18 07:02:06', '2023-07-18 07:02:06'),
(144, 1, 'admin/courses/create', 'GET', '127.0.0.1', '[]', '2023-07-18 07:31:17', '2023-07-18 07:31:17'),
(145, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-18 07:32:01', '2023-07-18 07:32:01'),
(146, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-07-20 07:28:15', '2023-07-20 07:28:15'),
(147, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-20 07:28:40', '2023-07-20 07:28:40'),
(148, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-20 07:28:49', '2023-07-20 07:28:49'),
(149, 1, 'admin/courses/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-20 07:29:07', '2023-07-20 07:29:07'),
(150, 1, 'admin/courses/2/edit', 'GET', '127.0.0.1', '[]', '2023-07-20 07:31:23', '2023-07-20 07:31:23'),
(151, 1, 'admin/courses/2', 'PUT', '127.0.0.1', '{\"name\":\"Flutter\",\"type_id\":\"1\",\"description\":\"Simple flutter  video course\",\"price\":\"300\",\"lesson_num\":\"4\",\"video_length\":\"40\",\"user_token\":\"ad7ddcbe8bb193dfa47011ce2efe684e\",\"downloadable_res\":\"50\",\"_token\":\"TiWJ0rpHMWrx1Hl3NkWyXVNwBjBalWqu1OzDUMFa\",\"_method\":\"PUT\"}', '2023-07-20 07:31:46', '2023-07-20 07:31:46'),
(152, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-20 07:31:47', '2023-07-20 07:31:47'),
(153, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-20 07:32:12', '2023-07-20 07:32:12'),
(154, 1, 'admin/courses/1', 'PUT', '127.0.0.1', '{\"name\":\"Laravel\",\"type_id\":\"1\",\"description\":\"Simple laravel course\",\"price\":\"50\",\"lesson_num\":\"2\",\"video_length\":\"4\",\"user_token\":\"45b2df827e966f147bb88dd7a33a7a7c\",\"downloadable_res\":null,\"_token\":\"TiWJ0rpHMWrx1Hl3NkWyXVNwBjBalWqu1OzDUMFa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\"}', '2023-07-20 08:13:06', '2023-07-20 08:13:06'),
(155, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-20 08:13:07', '2023-07-20 08:13:07'),
(156, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-20 08:13:19', '2023-07-20 08:13:19'),
(157, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-20 08:13:31', '2023-07-20 08:13:31'),
(158, 1, 'admin/courses/1', 'PUT', '127.0.0.1', '{\"name\":\"Laravel\",\"type_id\":\"1\",\"description\":\"Simple laravel course\",\"price\":\"50\",\"lesson_num\":\"2\",\"video_length\":\"4\",\"user_token\":\"45b2df827e966f147bb88dd7a33a7a7c\",\"downloadable_res\":\"4\",\"_token\":\"TiWJ0rpHMWrx1Hl3NkWyXVNwBjBalWqu1OzDUMFa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\"}', '2023-07-20 08:13:43', '2023-07-20 08:13:43'),
(159, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-20 08:13:44', '2023-07-20 08:13:44'),
(160, 1, 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-20 08:13:58', '2023-07-20 08:13:58'),
(161, 1, 'admin/courses/1', 'PUT', '127.0.0.1', '{\"name\":\"Laravel\",\"type_id\":\"1\",\"description\":\"Simple laravel course\",\"price\":\"50\",\"lesson_num\":\"2\",\"video_length\":\"4\",\"user_token\":\"45b2df827e966f147bb88dd7a33a7a7c\",\"downloadable_res\":\"4\",\"_token\":\"TiWJ0rpHMWrx1Hl3NkWyXVNwBjBalWqu1OzDUMFa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\"}', '2023-07-20 08:14:25', '2023-07-20 08:14:25'),
(162, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-20 08:14:26', '2023-07-20 08:14:26'),
(163, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"2\",\"_model\":\"App_Models_Course\",\"_token\":\"TiWJ0rpHMWrx1Hl3NkWyXVNwBjBalWqu1OzDUMFa\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-07-20 08:52:02', '2023-07-20 08:52:02'),
(164, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-20 08:52:05', '2023-07-20 08:52:05'),
(165, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"1\",\"_model\":\"App_Models_Course\",\"_token\":\"TiWJ0rpHMWrx1Hl3NkWyXVNwBjBalWqu1OzDUMFa\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-07-20 08:52:13', '2023-07-20 08:52:13'),
(166, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-20 08:52:13', '2023-07-20 08:52:13'),
(167, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-20 08:52:19', '2023-07-20 08:52:19'),
(168, 1, 'admin/course-types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-20 08:52:36', '2023-07-20 08:52:36'),
(169, 1, 'admin/course-types/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-20 08:57:02', '2023-07-20 08:57:02'),
(170, 1, 'admin/course-types/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Website Design\",\"description\":\"Learn how to create responsive websites with Html and CSS.\",\"order\":\"1\",\"_token\":\"TiWJ0rpHMWrx1Hl3NkWyXVNwBjBalWqu1OzDUMFa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/course-types\"}', '2023-07-20 08:57:58', '2023-07-20 08:57:58'),
(171, 1, 'admin/course-types', 'GET', '127.0.0.1', '[]', '2023-07-20 08:57:58', '2023-07-20 08:57:58'),
(172, 1, 'admin/course-types/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-20 08:58:03', '2023-07-20 08:58:03'),
(173, 1, 'admin/course-types/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Mobile Application Development\",\"description\":\"Become a pro in mobile application development with Flutter\",\"order\":\"1\",\"_token\":\"TiWJ0rpHMWrx1Hl3NkWyXVNwBjBalWqu1OzDUMFa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/course-types\"}', '2023-07-20 08:59:02', '2023-07-20 08:59:02'),
(174, 1, 'admin/course-types', 'GET', '127.0.0.1', '[]', '2023-07-20 08:59:03', '2023-07-20 08:59:03'),
(175, 1, 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-20 08:59:07', '2023-07-20 08:59:07'),
(176, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-20 08:59:11', '2023-07-20 08:59:11'),
(177, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-20 10:40:41', '2023-07-20 10:40:41'),
(178, 1, 'admin/courses/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-07-20 10:41:13', '2023-07-20 10:41:13'),
(179, 1, 'admin/courses', 'POST', '127.0.0.1', '{\"name\":\"Flutter PageView with Dot Indicator\",\"type_id\":\"2\",\"description\":\"Learn how to use Flutter PageView widget with dot indicator. You will also learn how to build flutter apps.\",\"price\":\"500\",\"lesson_num\":\"1\",\"video_length\":\"2\",\"user_token\":\"45b2df827e966f147bb88dd7a33a7a7c\",\"downloadable_res\":\"50\",\"_token\":\"TiWJ0rpHMWrx1Hl3NkWyXVNwBjBalWqu1OzDUMFa\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/courses\"}', '2023-07-20 10:43:18', '2023-07-20 10:43:18'),
(180, 1, 'admin/courses', 'GET', '127.0.0.1', '[]', '2023-07-20 10:43:21', '2023-07-20 10:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2023-07-10 13:14:21', '2023-07-10 13:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$G9B6fJ46JQtMSZHDY.xKmuagcMFbA8yMD8oR3xxq0VizBMPVJtKvO', 'Administrator', NULL, '4zp2pfIpFWC2vV6EgOhS5zn0rwgVvmFOUAkKIHkXA0wFXplPiPbm0ZNKuRBV', '2023-07-10 13:14:21', '2023-07-10 13:14:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` smallint(6) NOT NULL,
  `price` double(8,2) NOT NULL,
  `lesson_num` smallint(6) DEFAULT NULL,
  `video_length` smallint(6) DEFAULT NULL,
  `downloadable_res` smallint(6) DEFAULT NULL,
  `follow` smallint(6) DEFAULT NULL,
  `score` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `user_token`, `name`, `thumbnail`, `video`, `description`, `type_id`, `price`, `lesson_num`, `video_length`, `downloadable_res`, `follow`, `score`, `created_at`, `updated_at`) VALUES
(3, '45b2df827e966f147bb88dd7a33a7a7c', 'Flutter PageView with Dot Indicator', 'images/a6ef0cc2c1a16c8ebf159540e93fdee7.jpg', 'files/4329f62a0110f5c8db6afbb5cd633666.mov', 'Learn how to use Flutter PageView widget with dot indicator. You will also learn how to build flutter apps.', 2, 500.00, 1, 2, 50, NULL, NULL, '2023-07-20 10:43:19', '2023-07-20 10:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `course_types`
--

CREATE TABLE `course_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` mediumint(9) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` mediumint(9) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_types`
--

INSERT INTO `course_types` (`id`, `title`, `parent_id`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Website Design', 0, 'Learn how to create responsive websites with Html and CSS.', 1, '2023-07-13 10:30:22', '2023-07-20 08:57:58'),
(2, 'Mobile Application Development', 0, 'Become a pro in mobile application development with Flutter', 1, '2023-07-13 11:43:30', '2023-07-20 08:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_04_173148_create_admin_tables', 2),
(7, '2023_07_13_100845_create_course_types_table', 3),
(8, '2023_07_13_114355_create_courses_table', 4),
(9, '2023_07_19_113621_create_orders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_token`, `total_amount`, `course_id`, `status`, `created_at`, `updated_at`) VALUES
(35, 'ad7ddcbe8bb193dfa47011ce2efe684e', '50', '1', 0, '2023-07-20 07:59:38', NULL),
(36, '45b2df827e966f147bb88dd7a33a7a7c', '300', '2', 0, '2023-07-20 08:04:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, '64ad4505618d9', 'c1848cb198f8b0286af2f76d3722cbed5fd121c65d8f674d32b385f38bdaa39f', '[\"*\"]', NULL, NULL, '2023-07-11 11:03:18', '2023-07-11 11:03:18'),
(2, 'App\\Models\\User', 1, '64ad45195d136', '28ee76ec7ffdce16d8e0fda4dba7cf32f827036bf89910bc270d6c775370c9b8', '[\"*\"]', NULL, NULL, '2023-07-11 11:03:37', '2023-07-11 11:03:37'),
(3, 'App\\Models\\User', 1, '64ad452228e64', 'a142b3e671996e4ff588dee51b891e59fe7802a9058408781ec79cec9b600788', '[\"*\"]', NULL, NULL, '2023-07-11 11:03:46', '2023-07-11 11:03:46'),
(4, 'App\\Models\\User', 2, '64ae79d10b903', 'b99151146f3ce5a2e098b8b8c1bff29ccf2bc43fdd8d666a429e585982adb034', '[\"*\"]', NULL, NULL, '2023-07-12 09:00:49', '2023-07-12 09:00:49'),
(5, 'App\\Models\\User', 2, '64ae79df8eaaf', '8f3e5a07c15d7572cce4585a9c4c9ed6f72eda7d7f7c97855d642e6143abff51', '[\"*\"]', NULL, NULL, '2023-07-12 09:01:03', '2023-07-12 09:01:03'),
(6, 'App\\Models\\User', 2, '64ae7a05bfa8d', '0223d23b00509fda6f3df441c160567e99dda639b12735850deaa14f89fec274', '[\"*\"]', NULL, NULL, '2023-07-12 09:01:41', '2023-07-12 09:01:41'),
(7, 'App\\Models\\User', 7, '64ae7c724c69a', '9197221cb81598e9b6fdc3c8557620efdc67200436d5e5b4d8b49c4cbdb92c06', '[\"*\"]', NULL, NULL, '2023-07-12 09:12:02', '2023-07-12 09:12:02'),
(8, 'App\\Models\\User', 7, '64ae7ca5c95e8', 'bf8c1afb15e84c5f1b9ab189ccab17eb966c74756c10c31601dd2afecba884ed', '[\"*\"]', NULL, NULL, '2023-07-12 09:12:53', '2023-07-12 09:12:53'),
(9, 'App\\Models\\User', 7, '64ae8da673cb2', 'a0f50a3024a4480160d38547e223aac915cbf2b1de506faf9d8f0591e67ff13b', '[\"*\"]', NULL, NULL, '2023-07-12 10:25:26', '2023-07-12 10:25:26'),
(10, 'App\\Models\\User', 7, '64ae8eb243da2', '5f6419a3aa45a4f0c43ff9412b6b54687e518d5f8d1553035bbc1ebef39dcf3a', '[\"*\"]', NULL, NULL, '2023-07-12 10:29:54', '2023-07-12 10:29:54'),
(11, 'App\\Models\\User', 7, '64ae8f1a043a5', '281e2b3714b29a98c39836cea760b5f0d9397eb8873d4534168165a021dac9c8', '[\"*\"]', NULL, NULL, '2023-07-12 10:31:38', '2023-07-12 10:31:38'),
(12, 'App\\Models\\User', 8, '64ae9c4ae1599', '15253b550d9ed92434740ec8997418795cb3eb9521e6c931770f45d51a48c5f7', '[\"*\"]', NULL, NULL, '2023-07-12 11:27:54', '2023-07-12 11:27:54'),
(13, 'App\\Models\\User', 8, '64aea0d9c6c61', 'c4337789cd700b4cdeaad909daa6dd63ae0d862fb39ded3a3d19e852f1b31837', '[\"*\"]', NULL, NULL, '2023-07-12 11:47:21', '2023-07-12 11:47:21'),
(14, 'App\\Models\\User', 9, '64b0169498d56', '326696fe02c8a61aae839e42430fb845a42c4e2d736c41969ff0273a9a83efd1', '[\"*\"]', '2023-07-20 07:59:37', NULL, '2023-07-13 14:21:56', '2023-07-20 07:59:37'),
(15, 'App\\Models\\User', 8, '64b0fe49d2906', '1238870cd90e2742c97caaef3bed3dfd164dc161b2a61c8b7982a612aec3ab49', '[\"*\"]', '2023-07-14 08:35:16', NULL, '2023-07-14 06:50:33', '2023-07-14 08:35:16'),
(16, 'App\\Models\\User', 8, '64b118741fdfc', 'ed047ef0a9a4ad7f2dd41dac4ea6a17ca2497bf3baae0bc41e6e50398d620583', '[\"*\"]', '2023-07-14 08:42:12', NULL, '2023-07-14 08:42:12', '2023-07-14 08:42:12'),
(17, 'App\\Models\\User', 8, '64b118bd6a976', '5d8704b0be3a4b634c45848294f8081a9ad8ebed2b3ca48201c85f153e48a459', '[\"*\"]', '2023-07-14 08:45:43', NULL, '2023-07-14 08:43:25', '2023-07-14 08:45:43'),
(18, 'App\\Models\\User', 8, '64b52463b40c8', 'c45941157d345a2d57dd5b0c114d4f58b0cb1e49f6179c6dd05356833173e56b', '[\"*\"]', '2023-07-17 10:23:14', NULL, '2023-07-17 10:22:11', '2023-07-17 10:23:14'),
(19, 'App\\Models\\User', 8, '64b526ea227bf', 'c9d9d099fa95ddbecfd49ff7d2e8d475b285126c3cd80c9171f8b2480906b20c', '[\"*\"]', '2023-07-17 10:32:59', NULL, '2023-07-17 10:32:58', '2023-07-17 10:32:59'),
(20, 'App\\Models\\User', 8, '64b52783c4c15', '135628657674c03574ca4d8319ce2e30d00ed185055be004788d3da3ddad4ae7', '[\"*\"]', '2023-07-17 10:42:17', NULL, '2023-07-17 10:35:31', '2023-07-17 10:42:17'),
(21, 'App\\Models\\User', 8, '64b55a5e137c7', '25709205eaf58badc09f128f522861d69d6330e04c091baaf3a96c905be594f6', '[\"*\"]', '2023-07-17 14:35:13', NULL, '2023-07-17 14:12:30', '2023-07-17 14:35:13'),
(22, 'App\\Models\\User', 8, '64b561d940da6', 'fcc1820fbd9e2e198877cae3a7b38bc4e45d6e726999913df0baafa0d3f256a2', '[\"*\"]', '2023-07-17 14:44:25', NULL, '2023-07-17 14:44:25', '2023-07-17 14:44:25'),
(23, 'App\\Models\\User', 8, '64b5683de0b86', '914c8d9756415e4f74e022840f8528c76aaace42263664d6d3a6d5de1cf2e461', '[\"*\"]', '2023-07-17 15:52:21', NULL, '2023-07-17 15:11:42', '2023-07-17 15:52:21'),
(24, 'App\\Models\\User', 8, '64b6b8fe7c9c4', '8f06ba631a9b0d1e87ec02a580b09c2e94ecee9290135742b0667e51ff6a322c', '[\"*\"]', '2023-07-18 15:17:37', NULL, '2023-07-18 15:08:30', '2023-07-18 15:17:37'),
(25, 'App\\Models\\User', 8, '64b7875c4c9aa', 'd81ffe36abbfd0787c8f5e43781434b9b59102e96e07ca29611252d8ee4b35c7', '[\"*\"]', '2023-07-19 05:54:13', NULL, '2023-07-19 05:49:00', '2023-07-19 05:54:13'),
(26, 'App\\Models\\User', 8, '64b789bd34890', '93d19811f3f3c287a9932a2690d60239ec9325a16ad69fdb21fa34ad0f543659', '[\"*\"]', '2023-07-19 06:20:30', NULL, '2023-07-19 05:59:09', '2023-07-19 06:20:30'),
(27, 'App\\Models\\User', 8, '64b7921f06a52', '5ab591babec0797ce66480d9514061efa129be93afb3cc3d09fe81db272498f1', '[\"*\"]', NULL, NULL, '2023-07-19 06:34:55', '2023-07-19 06:34:55'),
(28, 'App\\Models\\User', 8, '64b792e1dfd62', 'ad800437d3303229f96c8d51e1339004f0408021e137ab2d34898e2bebc478d7', '[\"*\"]', '2023-07-19 06:38:10', NULL, '2023-07-19 06:38:09', '2023-07-19 06:38:10'),
(29, 'App\\Models\\User', 8, '64b79376e3886', '4ab0226a045d7b37a2afc94b516c21d5f293a27c24682187a9b96b4aab9bc341', '[\"*\"]', '2023-07-19 06:40:39', NULL, '2023-07-19 06:40:38', '2023-07-19 06:40:39'),
(30, 'App\\Models\\User', 8, '64b793feae2d1', 'f8a6d5ae105b6ecddb3a98cc3b6486b79ff9917f5e879919840ced8c434b421e', '[\"*\"]', '2023-07-19 06:42:55', NULL, '2023-07-19 06:42:54', '2023-07-19 06:42:55'),
(31, 'App\\Models\\User', 8, '64b79489deb3f', '5c605dd5a3cb99b6ac68e258a0b09239f544ca149b5e55f5412bff835ce2b5cd', '[\"*\"]', '2023-07-19 06:45:14', NULL, '2023-07-19 06:45:13', '2023-07-19 06:45:14'),
(32, 'App\\Models\\User', 8, '64b795dd57e95', '1ea25b9a5f84a13876dd51aacd0d109d53dacb321fbf66616b0806ec490f3424', '[\"*\"]', '2023-07-19 06:56:27', NULL, '2023-07-19 06:50:53', '2023-07-19 06:56:27'),
(33, 'App\\Models\\User', 8, '64b797a125db0', 'f43a8d6f61ef94fb4b9b18bafc40bd22846efe0a0eb1a676cdb88694a6656a5a', '[\"*\"]', '2023-07-19 06:58:59', NULL, '2023-07-19 06:58:25', '2023-07-19 06:58:59'),
(34, 'App\\Models\\User', 8, '64b7a38e80109', '18de99f5067c8c6d463792dc657f4af80efa4bc5c8968ad90e3ced5076cc6349', '[\"*\"]', '2023-07-19 07:49:20', NULL, '2023-07-19 07:49:18', '2023-07-19 07:49:20'),
(35, 'App\\Models\\User', 8, '64b7b51d7a12d', '734fb38087cae22a6a79f34a501eacf6351206a4b7a22947179034bd0d772451', '[\"*\"]', '2023-07-19 15:04:59', NULL, '2023-07-19 09:04:13', '2023-07-19 15:04:59'),
(36, 'App\\Models\\User', 8, '64b809e71bce8', '53c57bce5bba5be527cc1fd795fb7919e22f77adac4d98c515b63ffeb1ede46b', '[\"*\"]', '2023-07-19 15:14:57', NULL, '2023-07-19 15:05:59', '2023-07-19 15:14:57'),
(37, 'App\\Models\\User', 8, '64b80c1e1b199', '710727159331b5137a5948ce8e440458473b13dfeced06235a848dca7585826e', '[\"*\"]', '2023-07-19 15:31:03', NULL, '2023-07-19 15:15:26', '2023-07-19 15:31:03'),
(38, 'App\\Models\\User', 8, '64b810bfaf957', '48857a3092b61085422e00090f5fc73573e93adaebdbf24def34f200dc5993d9', '[\"*\"]', '2023-07-19 15:35:17', NULL, '2023-07-19 15:35:11', '2023-07-19 15:35:17'),
(39, 'App\\Models\\User', 8, '64b8ed4fbe047', '320c652777d1afdbf55c0b9244f78326941f36cac801d21d95e07a1977ac97c4', '[\"*\"]', '2023-07-20 07:38:53', NULL, '2023-07-20 07:16:15', '2023-07-20 07:38:53'),
(40, 'App\\Models\\User', 8, '64b8f60b16912', '8f1ebb969d2b980caaf096dfe6602a2e3335159697639e63dce6e2d2da559502', '[\"*\"]', '2023-07-20 08:49:30', NULL, '2023-07-20 07:53:31', '2023-07-20 08:49:30'),
(41, 'App\\Models\\User', 8, '64b90374c402a', '676182d1bf26dc251f62e491ede3f0ee00c08f90471a82007445dda4a8f6a8db', '[\"*\"]', '2023-07-20 10:13:17', NULL, '2023-07-20 08:50:44', '2023-07-20 10:13:17'),
(42, 'App\\Models\\User', 8, '64b91a7fc2a63', 'd59598c58f2015e843f32f1b5e200f6ea66d548a4731ef6fd10b9337560182ad', '[\"*\"]', '2023-07-20 10:45:14', NULL, '2023-07-20 10:29:04', '2023-07-20 10:45:14'),
(43, 'App\\Models\\User', 8, '64b92063dbcc0', 'bee1c9cc4431f4b8a4e01ded7f00019db806423d95b41d18ce6af6ed3030e2b1', '[\"*\"]', '2023-07-20 11:00:31', NULL, '2023-07-20 10:54:11', '2023-07-20 11:00:31'),
(44, 'App\\Models\\User', 8, '64b92208b0900', 'd6955d4cebfddf2520bc0b58a429135b1e87848d113432aad520feec085a1fc0', '[\"*\"]', '2023-07-20 11:42:54', NULL, '2023-07-20 11:01:12', '2023-07-20 11:42:54'),
(45, 'App\\Models\\User', 8, '64b9375e2d5f1', '7652519d5198b61153434417f1a4d211e0515370599862ef51ea91f1ba0a6fdb', '[\"*\"]', '2023-07-20 12:32:15', NULL, '2023-07-20 12:32:14', '2023-07-20 12:32:15'),
(46, 'App\\Models\\User', 8, '64b937b222bca', '19111ca1274a43935e2277ef44aa8f176ea1ebc995ac144960038ecbb7a9a9ac', '[\"*\"]', '2023-07-20 12:47:46', NULL, '2023-07-20 12:33:38', '2023-07-20 12:47:46'),
(47, 'App\\Models\\User', 8, '64b93c854785e', '315d078accd1f5e94fd3fba314959c5bca9e7e0c38e9ccdeff43c23bc59ada9c', '[\"*\"]', '2023-07-20 12:54:44', NULL, '2023-07-20 12:54:13', '2023-07-20 12:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(1) NOT NULL,
  `open_id` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `type`, `open_id`, `token`, `access_token`, `deleted_at`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'Elvis Igiebor', 'igieborelvis@gmail.com', NULL, NULL, NULL, 1, 'kRA9UFV14LPAhCkof3IrmyOucWs2', '45b2df827e966f147bb88dd7a33a7a7c', '47|wezioGXY4Zshm10MLSSnZdd7qDvsMn9dRxHfzvk2', NULL, NULL, NULL, '2023-07-12 11:27:54', '2023-07-20 12:54:13'),
(9, 'New name', 'email@email.com', NULL, NULL, NULL, 1, 'we4er', 'ad7ddcbe8bb193dfa47011ce2efe684e', '14|9QWrhW5BSgyyrFO6qcGkSXyzjyHibmIGj5b7XGcQ', NULL, NULL, NULL, '2023-07-13 14:21:56', '2023-07-13 14:21:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_types`
--
ALTER TABLE `course_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_types`
--
ALTER TABLE `course_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
