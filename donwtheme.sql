-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2020 at 06:44 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donwtheme`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutuses`
--

CREATE TABLE `aboutuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vedio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aboutuses`
--

INSERT INTO `aboutuses` (`id`, `title`, `image`, `body`, `vedio`, `created_at`, `updated_at`) VALUES
(1, 'Higher Develop complete Laravel website from scratch', 'higher-develop-complete-laravel-website-from-scratch-2019-12-22-5dff46945c56d.jpg', 'Hello!\r\nMy name is Md Azizur Rahman. I am creative front end and back end web development with 3+ years of website development experience. Choosing me as a performer of your project, you choose the confidence in professional approach for your task. I work with clients from around the world.\r\nWhy should you choose me? Because I\'m able to create a perfect web site, online-shop, bussines-site, catalog or landing page for your business. I will consider all your wishes and I will provide answers to all questions. If necessary', 'https://www.youtube.com/embed/MVY58g_vY3c', '2019-12-22 04:33:57', '2019-12-22 04:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `authoremails`
--

CREATE TABLE `authoremails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authoremails`
--

INSERT INTO `authoremails` (`id`, `email`, `number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'info@commanderit.com', 1778539887, '<p>My name is Md Azizur Rahman. I am creative front end and back end web development with 3+ years of website development experience. Choosing me as a performer of your project, you choose the confidence in professional approach for your task. I work with clients from around the world. Why should you choose me? Because I\'m able to create a perfect web site, online-shop, bussines-site, catalog or landing page for your business. I will consider all your wishes and I will provide answers to all questions. If necessary</p>', '2020-01-03 18:00:00', '2020-08-25 10:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(10, 'eCommerce', 'ecommerce', '2020-08-25 10:19:06', '2020-08-25 10:19:06'),
(11, 'Technology', 'technology', '2020-08-25 10:20:00', '2020-08-25 10:20:00'),
(12, 'Education', 'education', '2020-08-25 10:20:31', '2020-08-25 10:20:31'),
(13, 'Wedding', 'wedding', '2020-08-25 10:22:17', '2020-08-25 10:22:17'),
(14, 'Real Estate', 'real-estate', '2020-08-25 10:23:06', '2020-08-25 10:23:06'),
(15, 'Creative', 'creative', '2020-08-25 10:23:29', '2020-08-25 10:23:29'),
(16, 'Corporate', 'corporate', '2020-08-25 10:23:51', '2020-08-25 10:23:51'),
(17, 'Blog / Magazine', 'blog-magazine', '2020-08-25 10:24:26', '2020-08-25 10:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(5, 4, 2, '2019-11-05 07:03:06', '2019-11-05 07:03:06'),
(7, 6, 2, '2019-11-05 07:12:34', '2019-11-05 07:12:34'),
(8, 7, 2, '2019-11-05 07:23:51', '2019-11-05 07:23:51'),
(9, 8, 2, '2019-11-05 07:45:36', '2019-11-05 07:45:36'),
(10, 9, 2, '2019-11-05 07:52:17', '2019-11-05 07:52:17'),
(12, 11, 2, '2019-11-05 10:00:36', '2019-11-05 10:00:36'),
(13, 11, 4, '2019-11-05 10:00:36', '2019-11-05 10:00:36'),
(14, 11, 5, '2019-11-05 10:00:36', '2019-11-05 10:00:36'),
(15, 11, 6, '2019-11-05 10:00:36', '2019-11-05 10:00:36'),
(16, 12, 4, '2019-11-05 10:17:43', '2019-11-05 10:17:43'),
(19, 17, 4, '2019-11-09 05:43:29', '2019-11-09 05:43:29'),
(20, 18, 4, '2019-11-10 02:30:19', '2019-11-10 02:30:19'),
(21, 21, 4, '2019-11-10 02:32:18', '2019-11-10 02:32:18'),
(22, 22, 4, '2019-11-10 02:33:29', '2019-11-10 02:33:29'),
(23, 23, 4, '2019-11-10 02:37:08', '2019-11-10 02:37:08'),
(24, 24, 4, '2019-11-10 02:58:43', '2019-11-10 02:58:43'),
(25, 25, 5, '2019-11-10 05:14:05', '2019-11-10 05:14:05'),
(26, 26, 4, '2019-11-10 06:48:17', '2019-11-10 06:48:17'),
(27, 27, 4, '2019-11-10 06:52:31', '2019-11-10 06:52:31'),
(28, 28, 6, '2019-11-10 06:57:15', '2019-11-10 06:57:15'),
(29, 30, 6, '2019-11-10 06:59:07', '2019-11-10 06:59:07'),
(30, 31, 6, '2019-11-10 07:33:04', '2019-11-10 07:33:04'),
(31, 32, 5, '2019-11-11 04:07:41', '2019-11-11 04:07:41'),
(32, 33, 4, '2019-11-26 07:11:05', '2019-11-26 07:11:05'),
(33, 33, 7, '2019-11-26 07:11:05', '2019-11-26 07:11:05'),
(34, 34, 4, '2019-12-02 08:19:45', '2019-12-02 08:19:45'),
(35, 35, 2, '2020-01-21 05:56:48', '2020-01-21 05:56:48'),
(36, 36, 2, '2020-03-09 07:10:51', '2020-03-09 07:10:51'),
(37, 37, 4, '2020-03-12 07:15:22', '2020-03-12 07:15:22'),
(38, 38, 6, '2020-03-13 11:14:19', '2020-03-13 11:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `website`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Blood Donation', '01733815252', 'sadik@gmail.com', 'http://localhost/theme/public/admin/vedio', 'My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially focused in Laravel Developer and development of php websites in Modern technologies like Laravel, vuejs,Bootstrap and Javascript.My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially focused in Laravel Developer and development of php websites in Modern technologies like Laravel, vuejs,Bootstrap and Javascript.', '2020-03-05 10:02:06', '2020-03-05 10:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `download_count` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `downloads`
--

INSERT INTO `downloads` (`id`, `user_id`, `post_id`, `download_count`, `created_at`, `updated_at`) VALUES
(1, 1, 34, '1', '2019-12-31 06:29:40', '2019-12-31 06:29:40'),
(2, 1, 30, '1', '2019-12-31 06:29:51', '2019-12-31 06:29:51'),
(3, 1, 31, '1', '2019-12-31 07:07:01', '2019-12-31 07:07:01'),
(4, 1, 30, '1', '2020-01-01 04:46:54', '2020-01-01 04:46:54'),
(5, 1, 24, '1', '2020-01-01 04:48:15', '2020-01-01 04:48:15'),
(6, 2, 22, '1', '2020-01-01 06:04:44', '2020-01-01 06:04:44'),
(7, 1, 31, '1', '2020-01-01 06:21:21', '2020-01-01 06:21:21'),
(8, 1, 4, '1', '2020-01-01 06:24:05', '2020-01-01 06:24:05'),
(9, 1, 30, '1', '2020-01-04 05:00:00', '2020-01-04 05:00:00'),
(10, 1, 28, '1', '2020-01-04 05:00:18', '2020-01-04 05:00:18'),
(11, 1, 34, '1', '2020-01-04 05:18:23', '2020-01-04 05:18:23'),
(12, 1, 35, '1', '2020-01-21 05:57:27', '2020-01-21 05:57:27'),
(13, 10, 31, '1', '2020-01-27 10:27:18', '2020-01-27 10:27:18'),
(14, 1, 28, '1', '2020-02-27 11:49:54', '2020-02-27 11:49:54'),
(15, 1, 27, '1', '2020-03-01 11:03:23', '2020-03-01 11:03:23'),
(16, 21, 9, '1', '2020-03-13 08:29:23', '2020-03-13 08:29:23'),
(17, 1, 36, '1', '2020-03-13 10:58:19', '2020-03-13 10:58:19'),
(18, 1, 38, '1', '2020-03-13 11:16:33', '2020-03-13 11:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:19:\\\"azizsylbd@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:35;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"7ddba298-8666-44e3-a77e-74efc9b2f280\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1579607809, 1579607809),
(2, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:22:\\\"rumonahmed58@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:35;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"16c8f99b-dfa4-4034-b8ed-1fde8dbb24b2\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1579607809, 1579607809),
(3, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"tanvir@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:35;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"3ba19d31-07af-402c-864c-67c5180f0208\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1579607810, 1579607810),
(4, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"ahmedrumon066@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:35;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"e897e14a-d130-4593-98f6-bbcffb47d8a2\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1579607810, 1579607810),
(5, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:14:\\\"admin@blog.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:35;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"1fceac56-ef7f-4055-adb0-367c3684dfca\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1579607810, 1579607810),
(6, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:19:\\\"azizsylbd@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"9b2d364d-afb2-42fd-9811-d04cde301a42\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1583712651, 1583712651),
(7, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:22:\\\"rumonahmed58@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"8e97a0b8-fec4-4d67-b365-95a8f9b28878\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1583712652, 1583712652),
(8, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"tanvir@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"4376314f-bf49-4f41-8f14-d3574abee9ac\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1583712652, 1583712652),
(9, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"ahmedrumon066@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"840c4137-9075-451d-b63d-4caac28d1709\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1583712652, 1583712652),
(10, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:14:\\\"admin@blog.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"dc29248c-0761-45cc-8aae-fb45340d92e0\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1583712652, 1583712652),
(11, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:15:\\\"author@blog.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"e8f752d0-8a17-4a63-97ca-de6260c24884\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1583712652, 1583712652),
(12, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"admivvn@blog.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"21408a8a-8687-4103-a0ca-946e89922994\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1583712652, 1583712652),
(13, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:17:\\\"adminxxc@blog.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"78bf6016-4fb3-4113-a73a-72154757eaee\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1583712652, 1583712652),
(14, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"sarowadshahidul2019@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:36;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"0ee3553a-2e33-46d2-ade7-7ba493ad7d5e\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1583712652, 1583712652),
(15, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:37;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"fd8008dd-6842-4b8d-bfad-504252e28f3b\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1583972122, 1583972122),
(16, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewAuthorPost\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewAuthorPost\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"1b217eb0-1532-4307-bbf6-bc3830950487\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1584072860, 1584072860),
(17, 'default', '{\"displayName\":\"App\\\\Notifications\\\\AuthorPostApprovel\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\User\\\";s:2:\\\"id\\\";i:22;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:36:\\\"App\\\\Notifications\\\\AuthorPostApprovel\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"ce1fa15c-1521-4aa2-838e-5214807ca0fa\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1584073007, 1584073007),
(18, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:19:\\\"azizsylbd@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"90db055d-f630-48bf-849a-2a463b97933d\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1584073008, 1584073008),
(19, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:22:\\\"rumonahmed58@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"9b9c346b-0249-4ff9-8ef5-0e3757fec084\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1584073008, 1584073008),
(20, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"tanvir@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"fe04d7bd-d491-4f49-9028-93e248c02555\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1584073008, 1584073008),
(21, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:23:\\\"ahmedrumon066@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"b8b34e19-fb36-4bc1-bb96-bfe95f9dd239\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1584073008, 1584073008),
(22, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:14:\\\"admin@blog.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"567f38e7-d3a2-4a41-a320-67b008a638d4\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1584073008, 1584073008),
(23, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:15:\\\"author@blog.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"2c0ce4f3-af5e-40b5-a51a-238aa491f30d\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1584073008, 1584073008),
(24, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"admivvn@blog.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"e584b710-9bfe-4546-9437-95cc077581bc\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1584073008, 1584073008),
(25, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:17:\\\"adminxxc@blog.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"b7716f21-bc68-490f-948d-d725619f9bcc\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1584073008, 1584073008),
(26, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:29:\\\"sarowadshahidul2019@gmail.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"debd18f7-690e-44b5-a87d-26c555b68787\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1584073009, 1584073009),
(27, 'default', '{\"displayName\":\"App\\\\Notifications\\\\NewPostNotify\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":11:{s:11:\\\"notifiables\\\";O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:21:\\\"adsssssssmin@blog.com\\\";}}s:12:\\\"notification\\\";O:31:\\\"App\\\\Notifications\\\\NewPostNotify\\\":9:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:8:\\\"App\\\\Post\\\";s:2:\\\"id\\\";i:38;s:9:\\\"relations\\\";a:1:{i:0;s:4:\\\"user\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:2:\\\"id\\\";s:36:\\\"043e0a88-3d83-4ab6-a723-0759e85e0727\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1584073009, 1584073009);

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `title`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'best logo', 'best-logo-2020-08-25-5f4536c87ea1c.png', '2019-12-20 18:00:00', '2020-08-25 10:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_09_26_052526_create_roles_table', 1),
(4, '2019_10_21_121115_create_tags_table', 2),
(5, '2019_10_23_111135_create_categories_table', 3),
(6, '2019_10_26_143111_create_posts_table', 4),
(7, '2019_10_26_143816_create_category_post_table', 4),
(8, '2019_10_26_143915_create_post_tag_table', 4),
(9, '2019_10_29_111559_create_subscribers_table', 5),
(10, '2019_11_06_110440_add_live_demo_column_to_users', 6),
(11, '2019_11_06_110818_add_favirate_column_to_users', 7),
(12, '2019_11_06_111224_add_favirate_column_to_posts', 7),
(13, '2019_11_06_111504_add_live_demo_column_to_posts', 8),
(14, '2019_11_06_111904_add_favirate_column_to_posts', 9),
(15, '2019_11_06_111904_add_price_column_to_posts', 10),
(16, '2019_11_09_133638_create_subscribers_table', 11),
(19, '2019_11_10_131941_create_jobs_table', 12),
(20, '2019_11_13_124607_create_post_user_table', 13),
(21, '2019_12_03_142818_create_aboutuses_table', 14),
(22, '2019_12_11_134801_create_reviews_table', 14),
(23, '2019_12_19_125408_create_logos_table', 15),
(24, '2019_12_24_125242_create_protfolios_table', 16),
(26, '2019_12_26_135432_create_contacts_table', 17),
(27, '2019_12_31_121344_create_downloads_table', 18),
(28, '2020_01_04_112732_create_authoremails_table', 19),
(29, '2020_01_05_111537_add_buyer_to_users_table', 20),
(30, '2020_01_05_111914_add_seller_to_users_table', 21),
(31, '2020_01_05_112015_add_image_to_users_table', 22),
(32, '2020_01_11_105321_add_seller_to_users_table', 23),
(33, '2020_01_11_105539_add_buyer_to_users_table', 23),
(34, '2020_03_04_013545_create_vedios_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('azizsylbd@gmail.com', '$2y$10$xZ8Q1uzVYWhsKBjXrVA4N.prxsYthDFRJ75UZHWgCIZbFiyMD.oxa', '2019-12-02 08:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `zip` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'defalt.zip',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `live_demo` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `image`, `zip`, `body`, `view_count`, `status`, `is_approved`, `created_at`, `updated_at`, `live_demo`, `price`) VALUES
(4, 1, 'A Note On Optional', 'a-note-on-optional', 'a-note-on-optional-2019-11-05-5dc1730a506a0.jpg', 'a-note-on-optional-2019-11-05-5dc1730a4df90.zip', '<p>category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?</p>', 2, 1, 1, '2019-11-05 07:03:06', '2020-01-01 06:31:14', 'https://www.youtube.com/watch?v=CZCxpBZ-rIA&list=PLzz9vf6075V2fzd18vU64PBHdcHI3BaoH&index=9', 45),
(6, 1, 'A Note On Optional FDGDFGDF', 'a-note-on-optional-fdgdfgdf', 'a-note-on-optional-fdgdfgdf-2019-11-05-5dc1754138500.jpg', 'a-note-on-optional-fdgdfgdf-2019-11-05-5dc1754135df0.zip', '<p>category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?category delete korar pore oi category er under e jsob post ase oi gula theke category gula sorabo kemne?Naki many to many rel e automatic sore jai?</p>', 4, 1, 1, '2019-11-05 07:12:33', '2020-08-25 10:29:28', 'https://www.youtube.com/watch?v=CZCxpBZ-rIA&list=PLzz9vf6075V2fzd18vU64PBHdcHI3BaoH&index=9', 0),
(7, 1, 'BEST DRINKS update', 'best-drinks-update', 'best-drinks-update-2019-11-05-5dc177e72ee19.jpg', 'best-drinks-update-2019-11-05-5dc177e72c709.zip', '<p>gvdfsgasdfgbvasdfgvb</p>', 6, 1, 1, '2019-11-05 07:23:51', '2020-08-25 10:29:59', 'https://www.youtube.com/watch?v=CZCxpBZ-rIA&list=PLzz9vf6075V2fzd18vU64PBHdcHI3BaoH&index=9', 0),
(8, 1, 'Lorem Ipsum', 'lorem-ipsum', 'lorem-ipsum-2019-11-05-5dc17cfd3951d.jpg', 'lorem-ipsum-2019-11-05-5dc17cfd2d1cc.zip', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 7, 1, 1, '2019-11-05 07:45:35', '2020-03-06 12:16:38', 'https://www.youtube.com/watch?v=CZCxpBZ-rIA&list=PLzz9vf6075V2fzd18vU64PBHdcHI3BaoH&index=9', 0),
(9, 1, 'A Note On Optional Fields', 'a-note-on-optional-fields', 'a-note-on-optional-fields-2019-11-05-5dc17e90a6065.jpg', 'a-note-on-optional-fields-2019-11-05-5dc17e90a3955.html', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 1, 1, '2019-11-05 07:52:17', '2020-01-01 05:01:34', 'https://www.youtube.com/watch?v=CZCxpBZ-rIA&list=PLzz9vf6075V2fzd18vU64PBHdcHI3BaoH&index=9', 45),
(11, 1, 'Reach More Customers', 'reach-more-customers', 'reach-more-customers-2019-11-05-5dc19ca2e00ba.jpg', 'reach-more-customers-2019-11-05-5dc19ca2df11a.html', '<p>Hello! My name is Md Azizur Rahman. I am creative front end and back end web development with 3+ years of website development experience. Choosing me as a performer of your project, you choose the confidence in professional approach for your task. I work with clients from around the world. Why should you choose me? Because I\'m able to create a perfect web site, online-shop, bussines-site, catalog or landing page for your business. I will consider all your wishes and I will provide answers to all questions. If necessaryHello! My name is Md Azizur Rahman. I am creative front end and back end web development with 3+ years of website development experience. Choosing me as a performer of your project, you choose the confidence in professional approach for your task. I work with clients from around the world. Why should you choose me? Because I\'m able to create a perfect web site, online-shop, bussines-site, catalog or landing page for your business. I will consider all your wishes and I will provide answers to all questions. If necessaryHello! My name is Md Azizur Rahman. I am creative front end and back end web development with 3+ years of website development experience. Choosing me as a performer of your project, you choose the confidence in professional approach for your task. I work with clients from around the world. Why should you choose me? Because I\'m able to create a perfect web site, online-shop, bussines-site, catalog or landing page for your business. I will consider all your wishes and I will provide answers to all questions. If necessaryHello! My name is Md Azizur Rahman. I am creative front end and back end web development with 3+ years of website development experience. Choosing me as a performer of your project, you choose the confidence in professional approach for your task. I work with clients from around the world. Why should you choose me? Because I\'m able to create a perfect web site, online-shop, bussines-site, catalog or landing page for your business. I will consider all your wishes and I will provide answers to all questions. If necessaryHello! My name is Md Azizur Rahman. I am creative front end and back end web development with 3+ years of website development experience. Choosing me as a performer of your project, you choose the confidence in professional approach for your task. I work with clients from around the world. Why should you choose me? Because I\'m able to create a perfect web site, online-shop, bussines-site, catalog or landing page for your business. I will consider all your wishes and I will provide answers to all questions. If necessaryHello! My name is Md Azizur Rahman. I am creative front end and back end web development with 3+ years of website development experience. Choosing me as a performer of your project, you choose the confidence in professional approach for your task. I work with clients from around the world. Why should you choose me? Because I\'m able to create a perfect web site, online-shop, bussines-site, catalog or landing page for your business. I will consider all your wishes and I will provide answers to all questions. If necessary</p>', 1, 1, 1, '2019-11-05 10:00:36', '2020-01-01 06:19:28', 'https://www.youtube.com/watch?v=CZCxpBZ-rIA&list=PLzz9vf6075V2fzd18vU64PBHdcHI3BaoH&index=9', 45),
(12, 1, 'Higher Develop complete Laravel website from scratch', 'higher-develop-complete-laravel-website-from-scratch', 'higher-develop-complete-laravel-website-from-scratch-2019-11-05-5dc1a0a6e0cc5.jpg', 'higher-develop-complete-laravel-website-from-scratch-2019-11-05-5dc1a0a6e04f5.zip', '<p>Higher Develop complete Laravel website from scratchHigher Develop complete Laravel website from scratchHigher Develop complete Laravel website from scratchHigher Develop complete Laravel website from scratchHigher Develop complete Laravel website from scratchHigher Develop complete Laravel website from scratchHigher Develop complete Laravel website from scratchHigher Develop complete Laravel website from scratchHigher Develop complete Laravel website from scratchHigher Develop complete Laravel website from scratchHigher Develop complete Laravel website from scratchHigher Develop complete Laravel website from scratchHigher Develop complete Laravel website from scratch</p>', 1, 1, 1, '2019-11-05 10:17:43', '2019-12-02 07:33:02', 'https://www.youtube.com/watch?v=CZCxpBZ-rIA&list=PLzz9vf6075V2fzd18vU64PBHdcHI3BaoH&index=9', 55),
(17, 2, 'Higher Develop complete Laravel website from scratchghg', 'higher-develop-complete-laravel-website-from-scratchghg', 'higher-develop-complete-laravel-website-from-scratchghg-2019-11-09-5dc6a6613897c.jpg', 'higher-develop-complete-laravel-website-from-scratchghg-2019-11-09-5dc6a66138594.zip', '<p>My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially focused in Laravel Developer and development of php websites in Modern technologies like Laravel, vuejs,Bootstrap and Javascript.My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially focused in Laravel Developer and development of php websites in Modern technologies like Laravel, vuejs,Bootstrap and Javascript.My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially focused in Laravel Developer and development of php websites in Modern technologies like Laravel, vuejs,Bootstrap and Javascript.My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially focused in Laravel Developer and development of php websites in Modern technologies like Laravel, vuejs,Bootstrap and Javascript.My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially focused in Laravel Developer and development of php websites in Modern technologies like Laravel, vuejs,Bootstrap and Javascript.My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially focused in Laravel Developer and development of php websites in Modern technologies like Laravel, vuejs,Bootstrap and Javascript.My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially focused in Laravel Developer and development of php websites in Modern technologies like Laravel, vuejs,Bootstrap and Javascript.My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially focused in Laravel Developer and development of php websites in Modern technologies like Laravel, vuejs,Bootstrap and Javascript.</p>', 0, 1, 0, '2019-11-09 05:43:29', '2019-11-10 06:18:31', 'https://www.youtube.com/watch?v=ukpi5ihN-j0&list=PLzBl445W4ieu3J3VfpV0hqedk8GqyD5C-&index=18', 85),
(18, 2, 'Using The Notification Facade', 'using-the-notification-facade', 'using-the-notification-facade-2019-11-10-5dc7ca9b11055.jpg', 'using-the-notification-facade-2019-11-10-5dc7ca9b10c6d.zip', '<p>Alternatively, you may send notifications via the&nbsp;<code class=\" language-php\">Notification</code>&nbsp;<a href=\"https://laravel.com/docs/5.8/facades\">facade</a>. This is useful primarily when you need to send a notification to multiple notifiable entities such as a collection of users. To send notifications using the facade, pass all of the notifiable entities and the notification instance to the&nbsp;<code class=\" language-php\">send</code>&nbsp;method:</p>', 0, 1, 0, '2019-11-10 02:30:19', '2019-11-11 04:48:41', 'https://laravel.com/docs/5.8/notifications#mail-notifications', 85),
(21, 2, 'Using The Notification Facade hhh', 'using-the-notification-facade-hhh', 'using-the-notification-facade-hhh-2019-11-10-5dc7cb118caab.jpg', 'using-the-notification-facade-hhh-2019-11-10-5dc7cb118c6c3.zip', '<p>Alternatively, you may send notifications via the&nbsp;<code class=\" language-php\">Notification</code>&nbsp;<a href=\"https://laravel.com/docs/5.8/facades\">facade</a>. This is useful primarily when you need to send a notification to multiple notifiable entities such as a collection of users. To send notifications using the facade, pass all of the notifiable entities and the notification instance to the&nbsp;<code class=\" language-php\">send</code>&nbsp;method:</p>', 1, 1, 1, '2019-11-10 02:32:18', '2020-01-01 06:19:20', 'https://laravel.com/docs/5.8/notifications#mail-notifications', 85),
(22, 2, 'Using The Notification Facade hhhhfgtrcgfd', 'using-the-notification-facade-hhhhfgtrcgfd', 'using-the-notification-facade-hhhhfgtrcgfd-2019-11-10-5dc7cb58a9aa0.jpg', 'using-the-notification-facade-hhhhfgtrcgfd-2019-11-10-5dc7cb58a96b8.zip', '<p>Alternatively, you may send notifications via the&nbsp;<code class=\" language-php\">Notification</code>&nbsp;<a href=\"https://laravel.com/docs/5.8/facades\">facade</a>. This is useful primarily when you need to send a notification to multiple notifiable entities such as a collection of users. To send notifications using the facade, pass all of the notifiable entities and the notification instance to the&nbsp;<code class=\" language-php\">send</code>&nbsp;method:</p>', 4, 1, 1, '2019-11-10 02:33:29', '2020-01-01 06:18:50', 'https://laravel.com/docs/5.8/notifications#mail-notifications', 85),
(23, 2, 'Higher Develop complete Laravel website from scratch 1254', 'higher-develop-complete-laravel-website-from-scratch-1254', 'higher-develop-complete-laravel-website-from-scratch-1254-2019-11-10-5dc7cc33c8778.jpg', 'higher-develop-complete-laravel-website-from-scratch-1254-2019-11-10-5dc7cc33c838f.zip', '<p>Alternatively, you may send notifications via the&nbsp;<code class=\" language-php\">Notification</code>&nbsp;<a href=\"https://laravel.com/docs/5.8/facades\">facade</a>. This is useful primarily when you need to send a notification to multiple notifiable entities such as a collection of users. To send notifications using the facade, pass all of the notifiable entities and the notification instance to the&nbsp;<code class=\" language-php\">send</code>&nbsp;method:Alternatively, you may send notifications via the&nbsp;<code class=\" language-php\">Notification</code>&nbsp;<a href=\"https://laravel.com/docs/5.8/facades\">facade</a>. This is useful primarily when you need to send a notification to multiple notifiable entities such as a collection of users. To send notifications using the facade, pass all of the notifiable entities and the notification instance to the&nbsp;<code class=\" language-php\">send</code>&nbsp;method:Alternatively, you may send notifications via the&nbsp;<code class=\" language-php\">Notification</code>&nbsp;<a href=\"https://laravel.com/docs/5.8/facades\">facade</a>. This is useful primarily when you need to send a notification to multiple notifiable entities such as a collection of users. To send notifications using the facade, pass all of the notifiable entities and the notification instance to the&nbsp;<code class=\" language-php\">send</code>&nbsp;method:Alternatively, you may send notifications via the&nbsp;<code class=\" language-php\">Notification</code>&nbsp;<a href=\"https://laravel.com/docs/5.8/facades\">facade</a>. This is useful primarily when you need to send a notification to multiple notifiable entities such as a collection of users. To send notifications using the facade, pass all of the notifiable entities and the notification instance to the&nbsp;<code class=\" language-php\">send</code>&nbsp;method:Alternatively, you may send notifications via the&nbsp;<code class=\" language-php\">Notification</code>&nbsp;<a href=\"https://laravel.com/docs/5.8/facades\">facade</a>. This is useful primarily when you need to send a notification to multiple notifiable entities such as a collection of users. To send notifications using the facade, pass all of the notifiable entities and the notification instance to the&nbsp;<code class=\" language-php\">send</code>&nbsp;method:Alternatively, you may send notifications via the&nbsp;<code class=\" language-php\">Notification</code>&nbsp;<a href=\"https://laravel.com/docs/5.8/facades\">facade</a>. This is useful primarily when you need to send a notification to multiple notifiable entities such as a collection of users. To send notifications using the facade, pass all of the notifiable entities and the notification instance to the&nbsp;<code class=\" language-php\">send</code>&nbsp;method:</p>', 2, 1, 1, '2019-11-10 02:37:08', '2020-01-01 06:19:24', 'https://laravel.com/docs/5.8/notifications#mail-notifications', 888),
(24, 2, 'Laravel is a web application framework with', 'laravel-is-a-web-application-framework-with', 'laravel-is-a-web-application-framework-with-2019-11-10-5dc7d14307c98.jpg', 'laravel-is-a-web-application-framework-with-2019-11-10-5dc7d143078b0.zip', '<p>Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in most web projects.Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in most web projects.Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in most web projects.Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in most web projects.Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in most web projects.</p>', 5, 1, 1, '2019-11-10 02:58:43', '2020-01-01 06:19:07', 'https://www.youtube.com/watch?v=pUEA9piOMR0&list=PLzBl445W4ieu3J3VfpV0hqedk8GqyD5C-&index=22', 85),
(25, 2, 'You got the talent, now go viral.', 'you-got-the-talent-now-go-viral', 'you-got-the-talent-now-go-viral-2019-11-10-5dc7f0fced422.jpg', 'you-got-the-talent-now-go-viral-2019-11-10-5dc7f0fcecc52.zip', '<p>You got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect withYou got the talent, now go viral. Share your Gig on Social Media to connect with</p>', 9, 1, 1, '2019-11-10 05:14:05', '2020-01-01 06:57:56', 'file:///C:/Users/S/Desktop/Dashio/Dashio/advanced_table.html', 85),
(26, 1, 'BEST DRINKSggggggggggg', 'best-drinksggggggggggg', 'best-drinksggggggggggg-2019-11-10-5dc8070fe9604.jpg', 'best-drinksggggggggggg-2019-11-10-5dc8070fd74f0.zip', '<p>Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.</p>', 3, 1, 1, '2019-11-10 06:48:17', '2019-12-26 08:35:19', 'https://www.youtube.com/watch?v=gOTlduAE1uU', 350),
(27, 1, 'BEST DRINKSd', 'best-drinksddddddddddddd', 'best-drinksddddddddddddd-2019-11-10-5dc8080e59ba0.jpg', 'best-drinksddddddddddddd-2019-11-10-5dc8080e593d0.zip', '<p>Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.Watch The Full Movie Of \"Bahubali The Beginning\" Hindi Dubbed Version Of \"Bahubali The Beginning\" Starring Prabhas,Tamanna Bhatiya,Rana Duggubati,Sathyaraj.</p>', 3, 1, 1, '2019-11-10 06:52:31', '2020-01-01 05:48:38', '$this->post = $post;', 800),
(28, 1, 'A Note On Optional FDGDFGDFjghhg', 'a-note-on-optional-fdgdfgdfjghhg', 'a-note-on-optional-fdgdfgdfjghhg-2019-11-10-5dc8092ab5785.jpg', 'a-note-on-optional-fdgdfgdfjghhg-2019-11-10-5dc8092ab4fb5.zip', '<p>https://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uU</p>', 6, 1, 1, '2019-11-10 06:57:15', '2020-01-21 05:55:46', 'https://www.youtube.com/watch?v=gOTlduAE1uU', 350),
(30, 1, 'A Note On Optional FDGDFGDFjghhghgghjghgfhfg', 'a-note-on-optional-fdgdfgdfjghhghgghjghgfhfg', 'a-note-on-optional-fdgdfgdfjghhghgghjghgfhfg-2019-11-10-5dc8099adacc4.jpg', 'a-note-on-optional-fdgdfgdfjghhghgghjghgfhfg-2019-11-10-5dc8099ada4f4.zip', '<p>https://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uU</p>', 8, 1, 1, '2019-11-10 06:59:07', '2020-01-04 07:08:21', 'https://www.youtube.com/watch?v=gOTlduAE1uU', 350),
(31, 1, 'A Note On Optional FDGDFGDFjghhghgghjghgfhfgggggdfjnfd', 'a-note-on-optional-fdgdfgdfjghhghgghjghgfhfgggggdfjnfd', 'a-note-on-optional-fdgdfgdfjghhghgghjghgfhfgggggdfjnfd-2019-11-10-5dc8118e94461.jpg', 'a-note-on-optional-fdgdfgdfjghhghgghjghgfhfgggggdfjnfd-2019-11-10-5dc8118e8c75f.zip', '<p>https://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uU</p>', 13, 1, 1, '2019-11-10 07:33:03', '2020-03-02 09:22:09', 'https://www.youtube.com/watch?v=gOTlduAE1uU', 350),
(32, 1, 'A Note On Optional 56', 'a-note-on-optional-56', 'a-note-on-optional-56-2019-11-11-5dc932ebc5934.jpg', 'a-note-on-optional-56-2019-11-11-5dc932ebbdf54.zip', '<p>OnePlus 8 image leaked, full design of phone revealed</p>\r\n<div class=\"html-wrapper\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: Lato, sans-serif; --ion-font-family: \'Lato\',sans-serif; white-space: pre-line; font-size: 16px; line-height: 1.6; letter-spacing: -0.004em; color: #333333;\">\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: Lato, sans-serif; --ion-font-family: \'Lato\',sans-serif; height: auto; font-weight: initial; margin: 0px 0px 2px; font-size: initial; line-height: 1.5; color: inherit;\">OnePlus is now working on its next flagship device after launching Oneplus 7T and Oneplus 7T pro in the market. It is expected that the company can launch OnePlus 8 next year, so far many leaks and revelations have been revealed. According to the information revealed, many changes can be seen in the upcoming smartphone OnePlus 8. At the same time, the leaked image of the phone has been revealed, in which almost the entire design of the phone including its froOnePlus 8 image leaked, full design of phone revealed</p>\r\n<div class=\"html-wrapper\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: Lato, sans-serif; --ion-font-family: \'Lato\',sans-serif; white-space: pre-line; font-size: 16px; line-height: 1.6; letter-spacing: -0.004em; color: #333333;\">\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: Lato, sans-serif; --ion-font-family: \'Lato\',sans-serif; height: auto; font-weight: initial; margin: 0px 0px 2px; font-size: initial; line-height: 1.5; color: inherit;\">OnePlus is now working on its next flagship device after launching Oneplus 7T and Oneplus 7T pro in the market. It is expected that the company can launch OnePlus 8 next year, so far many leaks and revelations have been revealed. According to the information revealed, many changes can be seen in the upcoming smartphone OnePlus 8. At the same time, the leaked image of the phone has been revealed, in which almost the entire design of the phone including its froOnePlus 8 image leaked, full design of phone revealed</p>\r\n<div class=\"html-wrapper\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: Lato, sans-serif; --ion-font-family: \'Lato\',sans-serif; white-space: pre-line; font-size: 16px; line-height: 1.6; letter-spacing: -0.004em; color: #333333;\">\r\n<p style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; font-family: Lato, sans-serif; --ion-font-family: \'Lato\',sans-serif; height: auto; font-weight: initial; margin: 0px 0px 2px; font-size: initial; line-height: 1.5; color: inherit;\">OnePlus is now working on its next flagship device after launching Oneplus 7T and Oneplus 7T pro in the market. It is expected that the company can launch OnePlus 8 next year, so far many leaks and revelations have been revealed. According to the information revealed, many changes can be seen in the upcoming smartphone OnePlus 8. At the same time, the leaked image of the phone has been revealed, in which almost the entire design of the phone including its fro</p>\r\n</div>\r\n</div>\r\n</div>', 1, 0, 1, '2019-11-11 04:07:41', '2019-12-03 06:25:18', 'http://localhost/theme/public/admin/post/create', 630),
(33, 1, 'Higher Developq', 'higher-developq', 'higher-developq-2019-11-26-5ddd246895932.jpg', 'higher-developq-2019-11-26-5ddd24688a580.zip', '<p>Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!Every week we hand-pick some of the best new website wordpress themes from our collection. These beautiful wordpress themes are making our heads turn!</p>', 1, 0, 1, '2019-11-26 07:11:05', '2019-12-03 06:22:04', 'https://www.youtube.com/watch?v=GSHzCcPsIOY&list=PLzBl445W4ieu3J3VfpV0hqedk8GqyD5C-&index=36', 888),
(34, 4, 'Azizur Rahman.', 'azizur-rahman', 'azizur-rahman-2019-12-02-5de51d800555a.jpg', 'azizur-rahman-2019-12-02-5de51d7fd732a.zip', '<p>WordPress themes, web templates and more. Brought to you by the largest global community of creatives.</p>\r\n<p>WordPress themes, web templates and more. Brought to you by the largest global community of creatives.</p>\r\n<p>WordPress themes, web templates and more. Brought to you by the largest global community of creatives.</p>\r\n<p>WordPress themes, web templates and more. Brought to you by the largest global community of creatives.</p>\r\n<p>WordPress themes, web templates and more. Brought to you by the largest global community of creatives.</p>\r\n<p>WordPress themes, web templates and more. Brought to you by the largest global community of creatives.</p>\r\n<p>WordPress themes, web templates and more. Brought to you by the largest global community of creatives.</p>\r\n<p>WordPress themes, web templates and more. Brought to you by the largest global community of creatives.</p>\r\n<p>WordPress themes, web templates and more. Brought to you by the largest global community of creatives.</p>\r\n<p>WordPress themes, web templates and more. Brought to you by the largest global community of creatives.</p>\r\n<p>WordPress themes, web templates and more. Brought to you by the largest global community of creatives.</p>\r\n<p>WordPress themes, web templates and more. Brought to you by the largest global community of creatives.</p>', 9, 1, 1, '2019-12-02 08:19:45', '2020-03-02 12:02:10', 'Azizur Rahman. Azizur Rahman.', 541),
(35, 1, 'Hi all How are you?', 'hi-all-how-are-you', 'hi-all-how-are-you-2020-01-21-5e26e7005bbc6.jpg', 'hi-all-how-are-you-2020-01-21-5e26e7005b7de.zip', '<p>&gt;https://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduAE1uUhttps://www.youtube.com/watch?v=gOTlduA...</p>', 4, 1, 1, '2020-01-21 05:56:48', '2020-03-13 09:57:12', 'http://bteb.gov.bd/', 0),
(36, 1, 'I Need Blood B+ hh', 'i-need-blood-b-hh', 'i-need-blood-b-hh-2020-03-09-5e658988bd186.jpg', 'i-need-blood-b-hh-2020-03-09-5e658988a9cea.zip', '<p>Trying to ensure a great experience for the theme authors and users, means that theme requirements change from time to time. Keep up with the latest changes by following the&nbsp;<a href=\"https://make.wordpress.org/themes/\">Theme Review Team\'s blog</a>.Trying to ensure a great experience for the theme authors and users, means that theme requirements change from time to time. Keep up with the latest changes by following the&nbsp;<a href=\"https://make.wordpress.org/themes/\">Theme Review Team\'s blog</a>.Trying to ensure a great experience for the theme authors and users, means that theme requirements change from time to time. Keep up with the latest changes by following the&nbsp;<a href=\"https://make.wordpress.org/themes/\">Theme Review Team\'s blog</a>.Trying to ensure a great experience for the theme authors and users, means that theme requirements change from time to time. Keep up with the latest changes by following the&nbsp;<a href=\"https://make.wordpress.org/themes/\">Theme Review Team\'s blog</a>.Trying to ensure a great experience for the theme authors and users, means that theme requirements change from time to time. Keep up with the latest changes by following the&nbsp;<a href=\"https://make.wordpress.org/themes/\">Theme Review Team\'s blog</a>.Trying to ensure a great experience for the theme authors and users, means that theme requirements change from time to time. Keep up with the latest changes by following the&nbsp;<a href=\"https://make.wordpress.org/themes/\">Theme Review Team\'s blog</a>.Trying to ensure a great experience for the theme authors and users, means that theme requirements change from time to time. Keep up with the latest changes by following the&nbsp;<a href=\"https://make.wordpress.org/themes/\">Theme Review Team\'s blog</a>.</p>', 3, 1, 1, '2020-03-09 07:10:51', '2020-03-13 10:58:28', 'http://donationblood.com/', 65000),
(37, 21, 'I Need Blood B+ hh451', 'i-need-blood-b-hh451', 'i-need-blood-b-hh451-2020-03-12-5e697f0e257e8.jpg', 'i-need-blood-b-hh451-2020-03-12-5e697f0e0d52a.zip', '<h1>6 WordPress Themes &amp; Website Templates From $2</h1>\r\n<p>&nbsp;</p>\r\n<p>WordPress themes, web templates and more. Brought to you by the largest global community of creatives.</p>\r\n<h1>6 WordPress Themes &amp; Website Templates From $2</h1>\r\n<p>&nbsp;</p>\r\n<p>WordPress themes, web templates and more. Brought to you by the largest global community of creatives.</p>\r\n<h1>6 WordPress Themes &amp; Website Templates From $2</h1>\r\n<p>&nbsp;</p>\r\n<p>WordPress themes, web templates and more. Brought to you by the largest global community of creatives.</p>\r\n<h1>6 WordPress Themes &amp; Website Templates From $2</h1>\r\n<p>&nbsp;</p>\r\n<p>WordPress themes, web templates and more. Brought to you by the largest global community of creatives.</p>', 0, 1, 0, '2020-03-12 07:15:22', '2020-03-12 07:15:22', 'https://donationblood.com/', 65000),
(38, 22, 'Creative pro', 'creative-pro', 'creative-pro-2020-03-13-5e6b0896e3339.jpg', 'creative-pro-2020-03-13-5e6b0896d930f.zip', '<p>qwrweqtrwerefwetfewvc</p>', 1, 1, 1, '2020-03-13 11:14:19', '2020-03-13 11:17:49', 'https://addons.mozilla.org/en-US/firefox/search/?q=youtube%20downloder&platform=WINNT&appver=73.0.1', 25);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(6, 4, 1, '2019-11-05 07:03:06', '2019-11-05 07:03:06'),
(7, 4, 5, '2019-11-05 07:03:06', '2019-11-05 07:03:06'),
(9, 6, 4, '2019-11-05 07:12:34', '2019-11-05 07:12:34'),
(10, 7, 5, '2019-11-05 07:23:51', '2019-11-05 07:23:51'),
(11, 8, 4, '2019-11-05 07:45:36', '2019-11-05 07:45:36'),
(12, 9, 4, '2019-11-05 07:52:17', '2019-11-05 07:52:17'),
(14, 11, 4, '2019-11-05 10:00:36', '2019-11-05 10:00:36'),
(15, 11, 5, '2019-11-05 10:00:36', '2019-11-05 10:00:36'),
(16, 12, 5, '2019-11-05 10:17:43', '2019-11-05 10:17:43'),
(19, 17, 1, '2019-11-09 05:43:29', '2019-11-09 05:43:29'),
(20, 18, 5, '2019-11-10 02:30:20', '2019-11-10 02:30:20'),
(21, 21, 5, '2019-11-10 02:32:18', '2019-11-10 02:32:18'),
(22, 22, 5, '2019-11-10 02:33:29', '2019-11-10 02:33:29'),
(23, 23, 4, '2019-11-10 02:37:08', '2019-11-10 02:37:08'),
(24, 24, 4, '2019-11-10 02:58:44', '2019-11-10 02:58:44'),
(25, 25, 4, '2019-11-10 05:14:05', '2019-11-10 05:14:05'),
(26, 26, 4, '2019-11-10 06:48:18', '2019-11-10 06:48:18'),
(27, 27, 6, '2019-11-10 06:52:31', '2019-11-10 06:52:31'),
(28, 28, 6, '2019-11-10 06:57:15', '2019-11-10 06:57:15'),
(29, 30, 6, '2019-11-10 06:59:07', '2019-11-10 06:59:07'),
(30, 31, 6, '2019-11-10 07:33:04', '2019-11-10 07:33:04'),
(31, 32, 5, '2019-11-11 04:07:41', '2019-11-11 04:07:41'),
(32, 33, 1, '2019-11-26 07:11:06', '2019-11-26 07:11:06'),
(33, 33, 4, '2019-11-26 07:11:06', '2019-11-26 07:11:06'),
(34, 34, 4, '2019-12-02 08:19:46', '2019-12-02 08:19:46'),
(35, 35, 6, '2020-01-21 05:56:49', '2020-01-21 05:56:49'),
(36, 36, 4, '2020-03-09 07:10:51', '2020-03-09 07:10:51'),
(37, 37, 3, '2020-03-12 07:15:22', '2020-03-12 07:15:22'),
(38, 38, 3, '2020-03-13 11:14:19', '2020-03-13 11:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `post_user`
--

CREATE TABLE `post_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_user`
--

INSERT INTO `post_user` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 31, 1, '2019-11-16 06:39:13', '2019-11-16 06:39:13'),
(2, 30, 1, '2019-11-16 06:39:21', '2019-11-16 06:39:21'),
(3, 31, 2, '2019-11-16 07:26:49', '2019-11-16 07:26:49'),
(4, 28, 1, '2019-11-17 03:59:58', '2019-11-17 03:59:58'),
(5, 23, 1, '2019-11-28 07:45:06', '2019-11-28 07:45:06'),
(6, 27, 1, '2019-11-30 07:28:42', '2019-11-30 07:28:42'),
(7, 6, 1, '2019-12-02 07:36:15', '2019-12-02 07:36:15'),
(8, 34, 1, '2019-12-26 08:31:14', '2019-12-26 08:31:14'),
(9, 24, 1, '2020-01-01 04:48:04', '2020-01-01 04:48:04'),
(10, 34, 10, '2020-01-27 10:26:56', '2020-01-27 10:26:56'),
(11, 34, 15, '2020-02-24 22:14:37', '2020-02-24 22:14:37'),
(12, 35, 1, '2020-03-01 11:03:58', '2020-03-01 11:03:58'),
(13, 11, 21, '2020-03-13 07:13:19', '2020-03-13 07:13:19'),
(16, 6, 21, '2020-03-13 07:36:53', '2020-03-13 07:36:53'),
(17, 36, 21, '2020-03-13 07:43:48', '2020-03-13 07:43:48'),
(18, 7, 1, '2020-03-13 10:57:26', '2020-03-13 10:57:26');

-- --------------------------------------------------------

--
-- Table structure for table `protfolios`
--

CREATE TABLE `protfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `protfolios`
--

INSERT INTO `protfolios` (`id`, `title`, `sub_title`, `slug`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Promote Yourself', 'Promote YourselfPromote Yourself', 'promote_yourself', 'My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially focused in Laravel Developer and development of php websites in Modern technologies like Laravel, vuejs,Bootstrap and Javascript.', '2019-12-23 18:00:00', NULL),
(2, 'Reach More Customers', 'Md Azizur Rahman and I\'m full stack web developer with', 'reach-more-customers', '<p>We use cookies to improve your experience on Fiverr and provide you with more relevant and personalized services. By continuing to browse on Fiverr you agree to our use of cookies.&nbsp;<a href=\"https://www.fiverr.com/privacy-policy\" target=\"_blank\">Learn More</a>We use cookies to improve your experience on Fiverr and provide you with more relevant and personalized services. By continuing to browse on Fiverr you agree to our use of cookies.&nbsp;<a href=\"https://www.fiverr.com/privacy-policy\" target=\"_blank\">Learn More</a>We use cookies to improve your experience on Fiverr and provide you with more relevant and personalized services. By continuing to browse on Fiverr you agree to our use of cookies.&nbsp;<a href=\"https://www.fiverr.com/privacy-policy\" target=\"_blank\">Learn More</a>We use cookies to improve your experience on Fiverr and provide you with more relevant and personalized services. By continuing to browse on Fiverr you agree to our use of cookies.&nbsp;<a href=\"https://www.fiverr.com/privacy-policy\" target=\"_blank\">Learn More</a>We use cookies to improve your experience on Fiverr and provide you with more relevant and personalized services. By continuing to browse on Fiverr you agree to our use of cookies.&nbsp;<a href=\"https://www.fiverr.com/privacy-policy\" target=\"_blank\">Learn More</a></p>', '2019-12-24 07:59:32', '2019-12-24 07:59:32'),
(3, 'Reach More Customers update', 'Md Azizur Rahman and I\'m full sta', 'reach-more-customers-update', '<p>We use cookies to improve your experience on Fiverr and provide you with more relevant and personalized services. By continuing to browse on Fiverr you agree to our use of cookies.&nbsp;<a href=\"https://www.fiverr.com/privacy-policy\" target=\"_blank\">Learn More</a>We use cookies to improve your experience on Fiverr and provide you with more relevant and personalized services. By continuing to browse on Fiverr you agree to our use of cookies.&nbsp;<a href=\"https://www.fiverr.com/privacy-policy\" target=\"_blank\">Learn More</a>We use cookies to improve your experience on Fiverr and provide you with more relevant and personalized services. By continuing to browse on Fiverr you agree to our use of cookies.&nbsp;<a href=\"https://www.fiverr.com/privacy-policy\" target=\"_blank\">Learn More</a>We use cookies to improve your experience on Fiverr and provide you with more relevant and personalized services. By continuing to browse on Fiverr you agree to our use of cookies.&nbsp;<a href=\"https://www.fiverr.com/privacy-policy\" target=\"_blank\">Learn More</a>We use cookies to improve your experience on Fiverr and provide you with more relevant and personalized services. By continuing to browse on Fiverr you agree to our use of cookies.&nbsp;<a href=\"https://www.fiverr.com/privacy-policy\" target=\"_blank\">Learn More</a></p>\r\n<p>&nbsp;</p>\r\n<p>updatedkjfdklj</p>', '2019-12-24 08:00:01', '2019-12-24 08:11:59'),
(4, 'best logo updategg ff', 'Md Azizur Rahman and I\'m full stack web', 'best-logo-updategg-ff', '<p>INSERT INTO `protfolios` (`id`, `title`, `sub_title`, `slug`, `body`, `created_at`, `updated_at`) VALUES (NULL, \'Promote Yourself\', \'Promote YourselfPromote Yourself\', \'promote_yourself\', \'My name is Md Azizur Rahman and I\\\'m full stack web developer with experience of 3+ years specially focused in Laravel Developer and development of php websites in Modern technologies like Laravel, vuejs,Bootstrap and Javascript.\', \'2019-12-24 00:00:00\', NULL);INSERT INTO `protfolios` (`id`, `title`, `sub_title`, `slug`, `body`, `created_at`, `updated_at`) VALUES (NULL, \'Promote Yourself\', \'Promote YourselfPromote Yourself\', \'promote_yourself\', \'My name is Md Azizur Rahman and I\\\'m full stack web developer with experience of 3+ years specially focused in Laravel Developer and development of php websites in Modern technologies like Laravel, vuejs,Bootstrap and Javascript.\', \'2019-12-24 00:00:00\', NULL);INSERT INTO `protfolios` (`id`, `title`, `sub_title`, `slug`, `body`, `created_at`, `updated_at`) VALUES (NULL, \'Promote Yourself\', \'Promote YourselfPromote Yourself\', \'promote_yourself\', \'My name is Md Azizur Rahman and I\\\'m full stack web developer with experience of 3+ years specially focused in Laravel Developer and development of php websites in Modern technologies like Laravel, vuejs,Bootstrap and Javascript.\', \'2019-12-24 00:00:00\', NULL);INSERT INTO `protfolios` (`id`, `title`, `sub_title`, `slug`, `body`, `created_at`, `updated_at`) VALUES (NULL, \'Promote Yourself\', \'Promote YourselfPromote Yourself\', \'promote_yourself\', \'My name is Md Azizur Rahman and I\\\'m full stack web developer with experience of 3+ years specially focused in Laravel Developer and development of php websites in Modern technologies like Laravel, vuejs,Bootstrap and Javascript.\', \'2019-12-24 00:00:00\', NULL);</p>', '2019-12-24 08:48:01', '2019-12-24 08:48:01'),
(5, 'Basic Laravel Project', 'Basic Laravel ProjectBasic Laravel Project', 'basic-laravel-project', '<p>My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially f...My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially f...My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially f...My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially f...My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially f...My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially f...My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially f...My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially f...My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially f...My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially f...My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially f...My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially f...My name is Md Azizur Rahman and I\'m full stack web developer with experience of 3+ years specially f...</p>', '2019-12-24 08:48:42', '2019-12-24 08:48:42'),
(6, 'Reach More Customers 11', 'Md Azizur Rahman and I\'m full stack web developer with 2222222', 'reach-more-customers-11', '<p><span class=\"ng-scope\">I am creative front end and back end web development with 3+ years of website development experience. Choosing me as a performer of your project, you choose the confidence in professional approach for your task. I work with clients from around the world. Why should you choose me? Because I\'m able to create a perfect web site, online-shop, bussines-site, catalog or landing page for your business. I will consider all your wishes and I will provide answers to all questions....</span> <a class=\"oTruncateToggleText ng-scope\">more</a><span class=\"ng-scope\">I am creative front end and back end web development with 3+ years of website development experience. Choosing me as a performer of your project, you choose the confidence in professional approach for your task. I work with clients from around the world. Why should you choose me? Because I\'m able to create a perfect web site, online-shop, bussines-site, catalog or landing page for your business. I will consider all your wishes and I will provide answers to all questions....</span> <a class=\"oTruncateToggleText ng-scope\">more</a><span class=\"ng-scope\">I am creative front end and back end web development with 3+ years of website development experience. Choosing me as a performer of your project, you choose the confidence in professional approach for your task. I work with clients from around the world. Why should you choose me? Because I\'m able to create a perfect web site, online-shop, bussines-site, catalog or landing page for your business. I will consider all your wishes and I will provide answers to all questions....</span> <a class=\"oTruncateToggleText ng-scope\">more</a><span class=\"ng-scope\">I am creative front end and back end web development with 3+ years of website development experience. Choosing me as a performer of your project, you choose the confidence in professional approach for your task. I work with clients from around the world. Why should you choose me? Because I\'m able to create a perfect web site, online-shop, bussines-site, catalog or landing page for your business. I will consider all your wishes and I will provide answers to all questions....</span> <a class=\"oTruncateToggleText ng-scope\">more</a></p>', '2019-12-24 08:49:54', '2019-12-24 08:49:54'),
(7, 'PHP, Laravel Developer', 'PHP, Laravel DeveloperPHP, Laravel DeveloperPHP, Laravel Developer', 'php-laravel-developer', '<div class=\"overlay-container\">\r\n<div class=\"up-active-container cfe-overview\">\r\n<div>\r\n<p class=\"break text-pre-line up-active-context m-0-bottom m-lg-right ng-isolate-scope\"><span class=\"ng-scope\">confidence in professional approach for your task. I work with clients from around the world. Why should you choose me? Because I\'m able to create a perfect web site, online-shop, bussines-site, catalog or landing page for your business. I will consider all your wishes and I will provide answers to all questions. If necessary <a class=\"oTruncateToggleText\">less</a> </span></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"up-active-container ng-scope\">&nbsp;\r\n<div class=\"overlay-container\">&nbsp;</div>\r\n<div class=\"up-active-container ng-scope\">\r\n<div class=\"up-active-container ng-scope\">&nbsp;</div>\r\n</div>\r\n</div>', '2019-12-24 08:50:28', '2019-12-24 08:50:28'),
(8, 'I will develop site from scratch using Laravel.', 'I will develop site from scratch using Laravel.I will develop site from scratch using Laravel.', 'i-will-develop-site-from-scratch-using-laravel', '<p><strong class=\"ng-binding\">I will develop site from scratch using Laravel.</strong><strong class=\"ng-binding\">I will develop site from scratch using Laravel.</strong><strong class=\"ng-binding\">I will develop site from scratch using Laravel.</strong><strong class=\"ng-binding\">I will develop site from scratch using Laravel.</strong><strong class=\"ng-binding\">I will develop site from scratch using Laravel.</strong><strong class=\"ng-binding\">I will develop site from scratch using Laravel.</strong><strong class=\"ng-binding\">I will develop site from scratch using Laravel.</strong><strong class=\"ng-binding\">I will develop site from scratch using Laravel.</strong><strong class=\"ng-binding\">I will develop site from scratch using Laravel.</strong><strong class=\"ng-binding\">I will develop site from scratch using Laravel.</strong><strong class=\"ng-binding\">I will develop site from scratch using Laravel.</strong><strong class=\"ng-binding\">I will develop site from scratch using Laravel.</strong><strong class=\"ng-binding\">I will develop site from scratch using Laravel.</strong></p>', '2019-12-24 08:50:46', '2019-12-24 08:50:46'),
(9, 'My Feed', 'Full Stack Development', 'my-feed', '<p>We are looking for people with expertise and experience in Big Blue Button to integrate it with our existing portal.<br /><br />1) Integrate with OAuth/OpenID Connect SSO/IDP (e.g. Gluu) to authenticate users on Big Blue Button and sync their profiles and authorized meeting rooms<br /><br />2) Integrate&nbsp;&nbsp;Big Blue Button with our internal portal for persistent meeting rooms and membership sync with appropriate permissions (2 way sync with our internal application)</p>', '2019-12-26 06:14:17', '2019-12-26 06:14:17'),
(12, 'Jobs in progress', 'Client\'s recent history (50)', 'jobs-in-progress', '<p>He is wonderful person to work with. Very responsive and have a great understanding. I&rsquo;ll look forward to work with him in future projectsHe is wonderful person to work with. Very responsive and have a great understanding. I&rsquo;ll look forward to work with him in future projectsHe is wonderful person to work with. Very responsive and have a great understanding. I&rsquo;ll look forward to work with him in future projectsHe is wonderful person to work with. Very responsive and have a great understanding. I&rsquo;ll look forward to work with him in future projectsHe is wonderful person to work with. Very responsive and have a great understanding. I&rsquo;ll look forward to work with him in future projects</p>', '2019-12-26 06:51:56', '2019-12-26 06:51:56'),
(13, 'Get you greater exposure.', 'Web developer', 'get-you-greater-exposure', '<p>Lorem Ipsum has been the industry\'s standard dummy text ever sinceLorem Ipsum has been the industry\'s standard dummy text ever sinceLorem Ipsum has been the industry\'s standard dummy text ever sinceLorem Ipsum has been the industry\'s standard dummy text ever sinceLorem Ipsum has been the industry\'s standard dummy text ever sinceLorem Ipsum has been the industry\'s standard dummy text ever since</p>', '2020-08-26 02:50:53', '2020-08-26 02:50:53'),
(14, 'Skils & works', 'Lorem Ipsum has been', 'skils-works', '<p>Lorem Ipsum has been the industry\'s standard dummy text ever sinceLorem Ipsum has been the industry\'s standard dummy text ever sinceLorem Ipsum has been the industry\'s standard dummy text ever sinceLorem Ipsum has been the industry\'s standard dummy text ever sinceLorem Ipsum has been the industry\'s standard dummy text ever sinceLorem Ipsum has been the industry\'s standard dummy text ever sinceLorem Ipsum has been the industry\'s standard dummy text ever since</p>', '2020-08-26 02:52:07', '2020-08-26 02:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `stars` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `post_id`, `stars`, `comment`, `created_at`, `updated_at`) VALUES
(2, 1, 31, '1', 'this is good theme', '2019-12-18 08:19:31', '2019-12-18 08:19:31'),
(3, 1, 31, '3', 'This is good product', '2019-12-18 09:09:48', '2019-12-18 09:09:48'),
(4, 1, 34, '5', 'd;asdhasdj;kasd', '2019-12-19 06:15:03', '2019-12-19 06:15:03'),
(5, 1, 25, '3', 'nice post', '2019-12-21 04:26:34', '2019-12-21 04:26:34'),
(6, 2, 7, '5', 'wow post', '2019-12-21 05:20:58', '2019-12-21 05:20:58'),
(7, 1, 31, '4', 'good', '2019-12-26 08:28:57', '2019-12-26 08:28:57'),
(8, 1, 36, '4', 'QEWQWR', '2020-03-13 10:59:41', '2020-03-13 10:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Author', 'author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(6, 'azizsylbd@gmail.com', '2019-11-10 01:25:22', '2019-11-10 01:25:22'),
(9, 'rumonahmed58@gmail.com', '2019-11-11 04:32:54', '2019-11-11 04:32:54'),
(10, 'tanvir@gmail.com', '2019-11-28 08:00:40', '2019-11-28 08:00:40'),
(11, 'ahmedrumon066@gmail.com', '2019-12-03 06:20:56', '2019-12-03 06:20:56'),
(12, 'admin@blog.com', '2019-12-26 08:32:00', '2019-12-26 08:32:00'),
(13, 'author@blog.com', '2020-02-20 00:46:34', '2020-02-20 00:46:34'),
(14, 'admivvn@blog.com', '2020-03-06 12:23:09', '2020-03-06 12:23:09'),
(15, 'adminxxc@blog.com', '2020-03-06 12:23:53', '2020-03-06 12:23:53'),
(16, 'sarowadshahidul2019@gmail.com', '2020-03-06 12:37:05', '2020-03-06 12:37:05'),
(17, 'adsssssssmin@blog.com', '2020-03-09 08:27:50', '2020-03-09 08:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(7, 'Agency', 'agency', '2020-08-26 02:17:22', '2020-08-26 02:17:22'),
(8, 'Corporate', 'corporate', '2020-08-26 02:17:36', '2020-08-26 02:17:36'),
(9, 'Real Estate', 'real-estate', '2020-08-26 02:17:47', '2020-08-26 02:17:47'),
(10, 'Education', 'education', '2020-08-26 02:18:00', '2020-08-26 02:18:00'),
(11, 'eCommerce', 'ecommerce', '2020-08-26 02:18:11', '2020-08-26 02:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `seller` int(11) NOT NULL DEFAULT 0,
  `buyer` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `image`, `seller`, `buyer`) VALUES
(1, 1, 'MD.Adminur Rahman', 'admin', 'admin@blog.com', NULL, '$2y$10$g0WvgG1yXHyELKxH/3LOpOcq8IIMo.Ry/g8wwiwDoRmN4h1CFqco.', NULL, '2019-11-27 18:00:00', '2019-11-12 07:04:17', 'default.png', 1, 1),
(2, 2, 'Md Fahad Ahmed', 'author', 'azizsylbd@gmail.com', NULL, '$2y$10$G9pMffUQRmcsWz16ySmQrechKiml3J28pmj/kydJ/GNjJua9LDnU6', NULL, '2019-11-18 18:00:00', '2020-02-18 20:57:06', 'md-fahad-ahmed-2020-02-19-5e4ca401f0d67.png', 1, 1),
(3, 2, 'Rumon', 'rumonahmend', 'rumon@gmail.com', NULL, '$2y$10$4NIS41AxakiVcaY6oWC1iukBmzbZRXsEQxdr1u3JUfy3mUllz1TR2', NULL, '2019-12-01 07:05:25', '2019-12-01 07:05:25', 'default.png', 2, 2),
(4, 2, 'Tanvir', 'tanvirahmed', 'tanvir@gmail.com', NULL, '$2y$10$0eTfzGuHPYB16wwYXGC7YujIYCh8hXvQpE9d6up9.IeTkcj5/.E/a', NULL, '2019-12-02 08:12:20', '2019-12-02 08:12:20', 'default.png', 2, 2),
(5, 2, 'Amirul  Haque', 'haqueamirul', 'haqueamirul76@gmail.com', NULL, '$2y$10$tw1QMJCkOvHczzQ4iqt6SeE2PH3.w1T4qPDNLgpQp8FrME9vdHL4W', NULL, '2019-12-26 08:52:50', '2019-12-26 09:07:08', 'default.png', 2, 2),
(6, 2, 'Rumon', 'rumon12', 'bcttcafjal@gmail.com', NULL, '$2y$10$WNDJIyWr/x5eqnXlztDwOu.3X8vsntOfFdBXShdSbDhK4Mv8cfa9y', NULL, '2020-01-01 06:18:11', '2020-01-01 06:18:11', 'default.png', 2, 2),
(7, 2, 'best logo update', 'best logo update', 'azizxxxsylbd@gmail.com', NULL, '$2y$10$sg42.dmiSH4jJ7zTItNDaesO.44cxhg2HBtA6CRBfIoN2y5qSfPri', NULL, '2020-01-05 05:35:53', '2020-01-05 05:35:53', 'default.png', 2, 2),
(8, 2, 'best logo update', 'best logo updatefff', 'asssuthor@blog.com', NULL, '$2y$10$rnZX7MDuehmhU24pFXZSPusNV.dAwhcWLeqRmLxk4bRfUzaOcHPFC', NULL, '2020-01-05 05:36:38', '2020-01-11 05:39:28', 'default.png', 2, 2),
(9, 2, 'best logo update', 'best logofsdedc update', 'asasazizsylbd@gmail.com', NULL, '$2y$10$395z9UgwM6eQSzckxwpBc.Ra6T/o6YQolrpsAI8FZrT154bANLGqq', NULL, '2020-01-11 04:41:23', '2020-01-11 04:41:23', 'default.png', 2, 2),
(10, 2, 'Amirul', 'Amirulha', 'admindgfg@blog.com', NULL, '$2y$10$YESKlyBD5sx/hNe9APoj4u0bxsjgseOPpXPXtFYj5izo7gfIliSQy', NULL, '2020-01-27 10:26:18', '2020-01-27 10:26:18', 'default.png', 2, 2),
(11, 2, 'MD YASIN HOSSAIN', 'masud123', 'ggggggggg@blog.com', NULL, '$2y$10$FcIxzm3IdU42328WqsZlMuwPjOhYTkkQZvnUHaaSnX4dREK5QD3uu', NULL, '2020-02-23 01:19:33', '2020-02-23 01:19:33', 'default.png', 2, 2),
(14, 2, 'MD YASIN HOSSAIN', 'yasin', 'yasin@gmail.com', NULL, '$2y$10$sXuY142cgRcrdGs797P5..WsEOXJ28nUHvBR.RFk48ZeWX./oessS', NULL, '2020-02-24 22:00:08', '2020-02-24 22:00:08', 'default.png', 1, 0),
(15, 2, 'MD YASIN HOSSAIN', 'MD YASIN HOSSAIN12', 'hshdd@gmail.com', NULL, '$2y$10$dLAHNOVTlh8cWpIwRUhR8.YXfInZxVeKwSc4aAd2Ag7E7mn1MdIlq', NULL, '2020-02-24 22:10:50', '2020-02-24 22:10:50', 'default.png', 2, 0),
(16, 2, 'MD YASIN HOSSAIN', 'MD YASIN HOSSAIN5487', 'yadin@gmail.com', NULL, '$2y$10$6zi9FFFbEIClFXRfMHslVembhfIYlCNgii5tuIfHeb2I5BTPQUPqq', NULL, '2020-02-24 22:31:26', '2020-02-24 22:31:26', 'default.png', 2, 0),
(17, 2, 'Ibrahim', 'Ibrahim', 'ebrahim@gmail.com', NULL, '$2y$10$LT.sD5jnzofH0VYN26xW9O55ds3n80x0n8RtrQgoNw/Do0JpesaXG', NULL, '2020-02-27 11:48:01', '2020-02-27 11:48:01', 'default.png', 2, 0),
(18, 2, 'tanvir', 'ahmed', 'tanvirtanuu@gmail.com', NULL, '$2y$10$dLpisJ3wqwI0KMUQB7sU0.BXDiIrZXRAZG24JN9VjN2jwimyrh8Fi', NULL, '2020-03-06 12:10:48', '2020-03-06 12:10:48', 'default.png', 1, 0),
(19, 2, 'Blood Donation ggg', 'azizsylbd@gmail.comdd', 'adxxxxmin@blog.com', NULL, '$2y$10$UlnU7xplLbpZ.wW9ay9tSehiu8QN7st/smONkDRzDJKlg3ldVW6FK', NULL, '2020-03-09 06:35:11', '2020-03-09 06:35:11', 'default.png', 2, 0),
(20, 2, 'Blood Donationdd', 'azizsylbd@gmail.com', 'admxxxxxxxxxin@blog.com', NULL, '$2y$10$95V9ipTNqst9aeCoi2cnLOXRFZePRHvxHckMXkHeRCt5VnH2pq2/G', NULL, '2020-03-10 07:55:49', '2020-03-10 07:55:49', 'default.png', 1, 0),
(21, 2, 'Blood Donation', 'azizsylbd@', 'bloodjjj777@gmail.com', NULL, '$2y$10$IvvvawjxeolNIpUFkggGeO98rmT61NmA6IfnGwmg57XZ/JerRCbgm', NULL, '2020-03-12 07:12:38', '2020-03-12 07:12:38', 'default.png', 1, 0),
(22, 2, 'amirul haque', 'haqueamirul76', 'admin321@blog.com', NULL, '$2y$10$a/lzFANBoENqvfqk8pnYDesdnNeSk.sZXnw9zr0TXdsifIVD.h5ga', NULL, '2020-03-13 11:08:21', '2020-03-13 11:08:21', 'default.png', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vedios`
--

CREATE TABLE `vedios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vedio` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vedios`
--

INSERT INTO `vedios` (`id`, `vedio`, `created_at`, `updated_at`) VALUES
(2, '2020-03-04-5e5f1cc2274fa.mp4', '2020-03-04 11:13:06', '2020-03-04 11:13:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutuses`
--
ALTER TABLE `aboutuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authoremails`
--
ALTER TABLE `authoremails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `downloads_user_id_foreign` (`user_id`),
  ADD KEY `downloads_post_id_foreign` (`post_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user_post_id_foreign` (`post_id`);

--
-- Indexes for table `protfolios`
--
ALTER TABLE `protfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_post_id_foreign` (`post_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vedios`
--
ALTER TABLE `vedios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutuses`
--
ALTER TABLE `aboutuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authoremails`
--
ALTER TABLE `authoremails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `post_user`
--
ALTER TABLE `post_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `protfolios`
--
ALTER TABLE `protfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vedios`
--
ALTER TABLE `vedios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `downloads`
--
ALTER TABLE `downloads`
  ADD CONSTRAINT `downloads_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_user`
--
ALTER TABLE `post_user`
  ADD CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
