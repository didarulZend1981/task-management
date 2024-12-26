-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2024 at 06:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task-management-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_12_23_152733_create_tasks_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'auth-token', '457c60a0281750ad1c112019432ae2b3eb6a1100dec0092172248d2be21d6f8c', '[\"*\"]', NULL, NULL, '2024-12-26 08:37:58', '2024-12-26 08:37:58'),
(2, 'App\\Models\\User', 2, 'auth-token', 'dc36ff64d42a0ab6434b52cebb174eec637436bf300878167ebeb3194b175978', '[\"*\"]', NULL, NULL, '2024-12-26 08:42:50', '2024-12-26 08:42:50'),
(3, 'App\\Models\\User', 2, 'auth-token', '49ad8b22037ee0ab389183f7f5723432cbe15a9666d2358cfc596acd36dcc319', '[\"*\"]', NULL, NULL, '2024-12-26 08:43:08', '2024-12-26 08:43:08'),
(4, 'App\\Models\\User', 3, 'auth-token', '38f37a3012e2d7d84566b465814c388468cb68753f644ca480cef5f33ee549e4', '[\"*\"]', NULL, NULL, '2024-12-26 08:47:04', '2024-12-26 08:47:04'),
(5, 'App\\Models\\User', 4, 'auth-token', 'e1b7fe823f85e8f3ed6289a7fa6adff243424bad81fb0217b133c285c265da90', '[\"*\"]', '2024-12-26 09:28:18', NULL, '2024-12-26 08:53:31', '2024-12-26 09:28:18'),
(6, 'App\\Models\\User', 4, 'auth-token', '8e6df0d0da80240fe65a8fcdc40e17f61edf512e218bbcbad550f94473a6f229', '[\"*\"]', NULL, NULL, '2024-12-26 08:56:01', '2024-12-26 08:56:01'),
(7, 'App\\Models\\User', 4, 'auth-token', '3fabab004f9e8360ca8292506b5c6544484e7057f9c37ff8973a340d3bdfb96c', '[\"*\"]', NULL, NULL, '2024-12-26 08:56:37', '2024-12-26 08:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('Pending','In Progress','Completed') NOT NULL DEFAULT 'Pending',
  `due_date` date DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `status`, `due_date`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'amarika', 'i go amaarika', 'Pending', '2024-12-05', 1, '2024-12-23 10:13:55', '2024-12-23 10:13:55'),
(7, 'asasas', 'description', 'Pending', NULL, 1, '2024-12-24 04:36:23', '2024-12-24 04:36:23'),
(12, 'aaaaaaaaaaaaaaa', 'aaaaaaaaaaa', 'Pending', '2024-12-12', 1, '2024-12-26 00:58:50', '2024-12-26 00:58:50'),
(17, 'Sample Task', 'description Task', 'Pending', NULL, 4, '2024-12-26 09:07:30', '2024-12-26 09:07:30'),
(18, 'didarul', 'didarul Task1', 'In Progress', NULL, 4, '2024-12-26 09:09:08', '2024-12-26 09:14:37'),
(19, 'bangladesjiiii', 'wqerqrr', 'In Progress', '2024-12-28', 1, '2024-12-26 09:11:13', '2024-12-26 09:11:24'),
(20, 'I lave bangla desh', 'I am bangladedh', 'In Progress', '2024-12-28', 1, '2024-12-26 10:30:22', '2024-12-26 10:30:22'),
(21, 'Task Title', 'description', 'In Progress', '2024-12-27', 1, '2024-12-26 10:31:17', '2024-12-26 10:31:17'),
(22, 'I live dhaka', 'wellcome bangladesh', 'In Progress', '2024-12-16', 1, '2024-12-26 10:41:30', '2024-12-26 10:41:30'),
(23, 'Task Title------Task Title----', 'Description------Description---', 'Pending', '2024-12-31', 1, '2024-12-26 10:42:19', '2024-12-26 10:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad Didarul Islam', 'didarul1981@gmail.com', NULL, '$2y$10$uuBbw09vEsFV/hJ1vtPV2uSze7sXG5Obr.JbZ72IXSzjdxGQVuRva', NULL, '2024-12-23 09:26:23', '2024-12-23 09:26:23'),
(2, 'John Doe', 'john@example.com', NULL, '$2y$10$wBdzvHeSz/KEeuMar6gMf.wIOkFGTGNfAjQuMlFt9WbJIwNqnYRpa', NULL, '2024-12-26 08:37:58', '2024-12-26 08:37:58'),
(3, 'hasan', 'hasan@gmail.com', NULL, '$2y$10$XtsyAn26R98wNFdDKxMkPOB6pe1nvp5k1rPpe.WnKTsmluVlWyXaC', NULL, '2024-12-26 08:47:04', '2024-12-26 08:47:04'),
(4, 'karim', 'karim@gmail.com', NULL, '$2y$10$1kt.RoMS5hKeE/szpLCMzuBza6E8663653nqIxsAm3p0tgLA2dV46', NULL, '2024-12-26 08:53:31', '2024-12-26 08:53:31');

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
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
