-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 06, 2020 at 09:02 PM
-- Server version: 5.7.30-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `url_shortening`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_06_06_112640_create_short_links_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `short_links`
--

CREATE TABLE `short_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `short_links`
--

INSERT INTO `short_links` (`id`, `code`, `link`, `created_at`, `updated_at`) VALUES
(1, 'oniCON', 'http://abcde.com/abcde', '2020-06-06 08:40:16', '2020-06-06 08:40:16'),
(2, 'http://localhost/urlshortening/publicgJJcT2', 'http://localhost/urlshortening/publicabcde/abcde/abcde', '2020-06-06 08:53:33', '2020-06-06 08:53:33'),
(3, 'http://localhost/urlshortening/public/anTa9VDtT', 'http://localhost/urlshortening/public/abc/abc/abc', '2020-06-06 09:20:37', '2020-06-06 09:20:37'),
(4, 'http://localhost/urlshortening/public/NjraHlA8I', 'http://localhost/urlshortening/public/abc/abc/abcd', '2020-06-06 09:36:24', '2020-06-06 09:36:24'),
(5, 'http://localhost/urlshortening/public/lDqwMbqcR', 'http://localhost/urlshortening/public/abc/abc/abcde', '2020-06-06 09:36:55', '2020-06-06 09:36:55'),
(6, 'http://localhost/urlshortening/public/tT2XFivxH', 'http://localhost/urlshortening/public/abc/abc/abcfd', '2020-06-06 09:39:31', '2020-06-06 09:39:31'),
(7, 'http://localhost/urlshortening/public/fx6qIHld6', 'http://localhost/urlshortening/public/abc/abc/abcsd', '2020-06-06 09:40:34', '2020-06-06 09:40:34'),
(8, 'http://localhost/urlshortening/public/Vx4pad3qO', 'http://localhost/urlshortening/public/abc/abc/abchg', '2020-06-06 09:43:28', '2020-06-06 09:43:28'),
(9, 'http://localhost/urlshortening/public/hwkFPiQNh', 'http://localhost/urlshortening/public/abc/abdfc/abc', '2020-06-06 09:44:41', '2020-06-06 09:44:41'),
(10, 'http://localhost/urlshortening/public/qETCwrTB4', 'http://localhost/urlshortening/public/abcas/abc/abc', '2020-06-06 09:46:14', '2020-06-06 09:46:14'),
(11, 'http://localhost/urlshortening/public/3uyok9m20', 'http://localhost/urlshortening/public/abcas/abcdf/abc', '2020-06-06 09:46:27', '2020-06-06 09:46:27'),
(12, 'http://localhost/urlshortening/public/R9fUCPYeT', 'http://localhost/urlshortening/public/abcas/abcdef/abc', '2020-06-06 09:46:44', '2020-06-06 09:46:44'),
(13, 'http://localhost/urlshortening/public/5zGFIUlk4', 'http://localhost/urlshortening/public/abc/absdfghc/abc', '2020-06-06 09:47:13', '2020-06-06 09:47:13'),
(14, 'http://localhost/urlshortening/public/RTux2ieKO', 'http://localhost/urlshortening/public/xyz/xyz/xyz', '2020-06-06 09:47:45', '2020-06-06 09:47:45'),
(15, 'http://localhost/urlshortening/public/inprUaJ3U', 'http://localhost/urlshortening/public/xyz/xyz/xyzr', '2020-06-06 09:47:50', '2020-06-06 09:47:50'),
(16, 'http://localhost/urlshortening/public/gq3hQ8s3B', 'http://localhost/urlshortening/public/xyz/xyz/xyzrt', '2020-06-06 09:47:55', '2020-06-06 09:47:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `short_links`
--
ALTER TABLE `short_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `link` (`link`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `short_links`
--
ALTER TABLE `short_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
