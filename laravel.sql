-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 12:20 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_04_19_024358_create_sessions_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jv6iudFQW3rV34VamsaGgakjwKVxH7hElrQgp18l', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZExxZFZaSHBVMWNuVFg4dE1wNFFCc1NRMlU1M1EyOEozTFV0M3pvYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sb2NhbGhvc3QvdGFzazEvcHVibGljL2Rhc2hib2FyZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRFNWJyUEdIVXkxbUVrTWdxRkhHSHQuQXRJQTMyMENoUmZ4ZlZBamdTZ2JyRmlSYnhSem1KQyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkRTViclBHSFV5MW1Fa01ncUZIR0h0LkF0SUEzMjBDaFJmeGZWQWpnU2dickZpUmJ4UnptSkMiO30=', 1618822829);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Ahmed Badawy', 'admin@test.com', NULL, '$2y$10$E5brPGHUy1mEkMgqFHGHt.AtIA320ChRfxfVAjgSgbrFiRbxRzmJC', NULL, NULL, NULL, NULL, NULL, '2021-04-19 00:52:40', '2021-04-19 00:52:40'),
(2, 'employee', 'employee@test.com', NULL, '$2y$10$E5brPGHUy1mEkMgqFHGHt.AtIA320ChRfxfVAjgSgbrFiRbxRzmJC', NULL, NULL, NULL, NULL, NULL, '2021-04-19 00:52:40', '2021-04-19 00:52:40'),
(3, 'emp2', 'emp2@gmail.com', NULL, '$2y$10$sJgv1TtiLOdikPGS35ps6e9PvwIfpK5JCp7sjVctFc5VVv.hZbtLm', NULL, NULL, NULL, NULL, NULL, '2021-04-19 06:48:59', '2021-04-19 06:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `vacations`
--

CREATE TABLE `vacations` (
  `id` int(11) NOT NULL,
  `start_date` datetime NOT NULL DEFAULT current_timestamp(),
  `end_date` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `reason` varchar(500) NOT NULL,
  `more_info` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vacations`
--

INSERT INTO `vacations` (`id`, `start_date`, `end_date`, `user_id`, `approved`, `reason`, `more_info`, `created_at`, `updated_at`) VALUES
(1, '2021-07-07 00:00:00', '2021-07-31 00:00:00', 1, 1, 'annual', NULL, '2021-04-19 07:00:02', '2021-04-19 08:17:14'),
(2, '2021-07-07 00:00:00', '2021-07-31 00:00:00', 1, NULL, 'annual', NULL, '2021-04-19 07:02:09', '2021-04-19 08:12:06'),
(3, '2021-04-19 00:00:00', '2021-04-19 00:00:00', 1, 0, 'sick', 'asdfasdf', '2021-04-19 07:02:29', '2021-04-19 08:17:19'),
(4, '2021-04-19 00:00:00', '2021-04-19 00:00:00', 1, 0, 'sick', 'asdfasdfasfd', '2021-04-19 07:02:40', '2021-04-19 08:17:25'),
(5, '2021-04-19 00:00:00', '2021-04-19 00:00:00', 1, NULL, 'sick', 'asdfasdfasfd', '2021-04-19 07:02:48', '2021-04-19 07:02:48'),
(6, '2021-05-01 00:00:00', '2021-05-31 00:00:00', 1, NULL, 'sick', 'asdfasdfasdf', '2021-04-19 07:02:52', '2021-04-19 08:13:30'),
(7, '2021-04-19 00:00:00', '2021-04-19 00:00:00', 1, 0, 'sick', 'asfasdf', '2021-04-19 07:03:57', '2021-04-19 08:17:42'),
(8, '2021-04-19 00:00:00', '2021-04-19 00:00:00', 1, NULL, 'sick', 'asdfasdfasfd', '2021-04-19 07:04:00', '2021-04-19 07:04:00'),
(9, '2021-04-19 00:00:00', '2021-04-19 00:00:00', 1, NULL, 'sick', 'asdfasfd', '2021-04-19 07:04:27', '2021-04-19 07:04:27'),
(10, '2021-04-19 00:00:00', '2021-04-19 00:00:00', 1, NULL, 'sick', 'asdfasdfasdfasdf', '2021-04-19 07:04:31', '2021-04-19 07:04:31'),
(11, '2021-04-19 00:00:00', '2021-04-19 00:00:00', 1, NULL, 'sick', NULL, '2021-04-19 07:04:55', '2021-04-19 07:04:55'),
(12, '2021-07-07 00:00:00', '2021-07-31 00:00:00', 1, NULL, 'sick', 'asdfasdf', '2021-04-19 07:05:00', '2021-04-19 07:05:00'),
(13, '2021-04-19 00:00:00', '2021-04-19 00:00:00', 1, NULL, 'sick', 'adsfasdf', '2021-04-19 07:06:27', '2021-04-19 07:06:27'),
(14, '2021-04-19 00:00:00', '2021-04-19 00:00:00', 1, NULL, 'sick', 'asdfasdf', '2021-04-19 07:07:00', '2021-04-19 07:07:00'),
(15, '2021-04-19 00:00:00', '2021-04-19 00:00:00', 1, NULL, 'haij', 'asdfasdf', '2021-04-19 08:20:38', '2021-04-19 08:20:38'),
(16, '2021-04-20 00:00:00', '2021-04-30 00:00:00', 1, 0, 'annual', 'asdfasdfasfd', '2021-04-19 08:20:53', '2021-04-19 08:21:25'),
(17, '2021-09-23 00:00:00', '2021-09-23 00:00:00', 2, 1, 'annual', 'asdfasdf', '2021-04-19 08:35:13', '2021-04-19 08:35:45'),
(18, '2021-04-19 00:00:00', '2021-05-16 00:00:00', 3, 0, 'annual', 'سشيسشيبشسيبشسيبشسيب', '2021-04-19 08:54:42', '2021-04-19 08:55:51');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vacations`
--
ALTER TABLE `vacations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vacations`
--
ALTER TABLE `vacations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
