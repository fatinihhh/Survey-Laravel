-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2020 at 12:12 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `public-survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 'Below 18', '2020-01-28 09:51:46', '2020-01-28 09:51:46'),
(2, 1, '18 to 35', '2020-01-28 09:51:46', '2020-01-28 09:51:46'),
(3, 1, '35 to 60', '2020-01-28 09:51:46', '2020-01-28 09:51:46'),
(4, 1, 'Above 60', '2020-01-28 09:51:46', '2020-01-28 09:51:46'),
(5, 2, 'Secondary school and below', '2020-01-28 09:52:31', '2020-01-28 09:52:31'),
(6, 2, 'Diploma', '2020-01-28 09:52:31', '2020-01-28 09:52:31'),
(7, 2, 'Degree', '2020-01-28 09:52:31', '2020-01-28 09:52:31'),
(8, 2, 'Post graduate degree', '2020-01-28 09:52:31', '2020-01-28 09:52:31'),
(9, 3, 'Less than RM1000', '2020-01-28 09:53:33', '2020-01-28 09:53:33'),
(10, 3, 'Between RM1000 to RM3000', '2020-01-28 09:53:33', '2020-01-28 09:53:33'),
(11, 3, 'Between RM3000 to RM5000', '2020-01-28 09:53:33', '2020-01-28 09:53:33'),
(12, 3, 'More than RM5000', '2020-01-28 09:53:33', '2020-01-28 09:53:33'),
(13, 4, 'Male', '2020-01-28 09:54:12', '2020-01-28 09:54:12'),
(14, 4, 'Female', '2020-01-28 09:54:12', '2020-01-28 09:54:12'),
(15, 4, 'I\'m not sure', '2020-01-28 09:54:12', '2020-01-28 09:54:12'),
(16, 4, 'I prefer not to answer', '2020-01-28 09:54:12', '2020-01-28 09:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
-- Table structure for table `questionnaires`
--

CREATE TABLE `questionnaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionnaires`
--

INSERT INTO `questionnaires` (`id`, `user_id`, `title`, `purpose`, `created_at`, `updated_at`) VALUES
(1, 1, 'Profile Survey', 'To get to know you', '2020-01-28 09:51:21', '2020-01-28 09:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `questionnaire_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `questionnaire_id`, `question`, `created_at`, `updated_at`) VALUES
(1, 1, 'What is your age group?', '2020-01-28 09:51:46', '2020-01-28 09:51:46'),
(2, 1, 'What is your education level?', '2020-01-28 09:52:31', '2020-01-28 09:52:31'),
(3, 1, 'What is your monthly income?', '2020-01-28 09:53:33', '2020-01-28 09:53:33'),
(4, 1, 'What is your gender?', '2020-01-28 09:54:12', '2020-01-28 09:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `questionnaire_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `questionnaire_id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 1, 'qu', 'qu@gmail.com', '2020-01-28 09:54:43', '2020-01-28 09:54:43'),
(2, 1, 'bell', 'bell@yahoo.com', '2020-01-28 10:19:24', '2020-01-28 10:19:24'),
(3, 1, 'anon', 'anon@hotmail.com', '2020-01-28 10:25:59', '2020-01-28 10:25:59'),
(4, 1, 'anon', 'anon@gmail.com', '2020-01-28 10:39:35', '2020-01-28 10:39:35'),
(5, 1, 'anon', 'anon@gmail.com', '2020-01-28 10:39:53', '2020-01-28 10:39:53'),
(6, 1, 'anon', 'anon@gmail.com', '2020-01-28 10:41:39', '2020-01-28 10:41:39'),
(7, 1, 'anon', 'anon@hotmail.com', '2020-01-28 11:12:16', '2020-01-28 11:12:16'),
(8, 1, 'bell', 'bell@yahoo.com', '2020-01-28 11:13:21', '2020-01-28 11:13:21'),
(9, 1, 'bell', 'bell@yahoo.com', '2020-01-28 11:16:44', '2020-01-28 11:16:44'),
(10, 1, 'bell', 'bell@yahoo.com', '2020-01-28 11:17:03', '2020-01-28 11:17:03'),
(11, 1, 'bell', 'bell@yahoo.com', '2020-01-28 11:18:01', '2020-01-28 11:18:01'),
(12, 1, 'bell', 'bell@yahoo.com', '2020-01-28 11:19:36', '2020-01-28 11:19:36'),
(13, 1, 'bell', 'bell@yahoo.com', '2020-01-28 11:23:52', '2020-01-28 11:23:52'),
(14, 1, 'qu', 'qu@gmail.com', '2020-01-28 11:29:42', '2020-01-28 11:29:42'),
(15, 1, 'qu', 'qu@gmail.com', '2020-01-28 11:44:24', '2020-01-28 11:44:24'),
(16, 1, 'qu', 'qu@gmail.com', '2020-01-28 11:45:37', '2020-01-28 11:45:37'),
(17, 1, 'anon', 'anon@hotmail.com', '2020-01-28 13:46:38', '2020-01-28 13:46:38'),
(18, 1, 'bell', 'bell@yahoo.com', '2020-01-28 13:52:45', '2020-01-28 13:52:45'),
(19, 1, 'anon', 'anon@hotmail.com', '2020-01-28 13:58:17', '2020-01-28 13:58:17'),
(20, 1, 'anon', 'anon@hotmail.com', '2020-01-28 13:59:09', '2020-01-28 13:59:09'),
(21, 1, 'anon', 'anon@hotmail.com', '2020-01-28 13:59:51', '2020-01-28 13:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `survey_responses`
--

CREATE TABLE `survey_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_responses`
--

INSERT INTO `survey_responses` (`id`, `survey_id`, `question_id`, `answer_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2020-01-28 09:54:43', '2020-01-28 09:54:43'),
(2, 1, 2, 5, '2020-01-28 09:54:43', '2020-01-28 09:54:43'),
(3, 1, 3, 9, '2020-01-28 09:54:43', '2020-01-28 09:54:43'),
(4, 1, 4, 13, '2020-01-28 09:54:43', '2020-01-28 09:54:43'),
(5, 2, 1, 1, '2020-01-28 10:19:24', '2020-01-28 10:19:24'),
(6, 2, 2, 5, '2020-01-28 10:19:24', '2020-01-28 10:19:24'),
(7, 2, 3, 11, '2020-01-28 10:19:24', '2020-01-28 10:19:24'),
(8, 2, 4, 14, '2020-01-28 10:19:24', '2020-01-28 10:19:24'),
(9, 3, 1, 1, '2020-01-28 10:25:59', '2020-01-28 10:25:59'),
(10, 3, 2, 7, '2020-01-28 10:25:59', '2020-01-28 10:25:59'),
(11, 3, 3, 10, '2020-01-28 10:25:59', '2020-01-28 10:25:59'),
(12, 3, 4, 16, '2020-01-28 10:25:59', '2020-01-28 10:25:59'),
(13, 4, 1, 3, '2020-01-28 10:39:35', '2020-01-28 10:39:35'),
(14, 4, 2, 7, '2020-01-28 10:39:35', '2020-01-28 10:39:35'),
(15, 4, 3, 11, '2020-01-28 10:39:35', '2020-01-28 10:39:35'),
(16, 4, 4, 13, '2020-01-28 10:39:35', '2020-01-28 10:39:35'),
(17, 5, 1, 3, '2020-01-28 10:39:53', '2020-01-28 10:39:53'),
(18, 5, 2, 7, '2020-01-28 10:39:53', '2020-01-28 10:39:53'),
(19, 5, 3, 11, '2020-01-28 10:39:53', '2020-01-28 10:39:53'),
(20, 5, 4, 13, '2020-01-28 10:39:53', '2020-01-28 10:39:53'),
(21, 6, 1, 3, '2020-01-28 10:41:39', '2020-01-28 10:41:39'),
(22, 6, 2, 7, '2020-01-28 10:41:39', '2020-01-28 10:41:39'),
(23, 6, 3, 11, '2020-01-28 10:41:39', '2020-01-28 10:41:39'),
(24, 6, 4, 13, '2020-01-28 10:41:39', '2020-01-28 10:41:39'),
(25, 7, 1, 4, '2020-01-28 11:12:16', '2020-01-28 11:12:16'),
(26, 7, 2, 7, '2020-01-28 11:12:16', '2020-01-28 11:12:16'),
(27, 7, 3, 11, '2020-01-28 11:12:16', '2020-01-28 11:12:16'),
(28, 7, 4, 13, '2020-01-28 11:12:16', '2020-01-28 11:12:16'),
(29, 8, 1, 2, '2020-01-28 11:13:21', '2020-01-28 11:13:21'),
(30, 8, 2, 6, '2020-01-28 11:13:21', '2020-01-28 11:13:21'),
(31, 8, 3, 9, '2020-01-28 11:13:21', '2020-01-28 11:13:21'),
(32, 8, 4, 14, '2020-01-28 11:13:21', '2020-01-28 11:13:21'),
(33, 9, 1, 2, '2020-01-28 11:16:44', '2020-01-28 11:16:44'),
(34, 9, 2, 6, '2020-01-28 11:16:44', '2020-01-28 11:16:44'),
(35, 9, 3, 9, '2020-01-28 11:16:44', '2020-01-28 11:16:44'),
(36, 9, 4, 14, '2020-01-28 11:16:44', '2020-01-28 11:16:44'),
(37, 10, 1, 2, '2020-01-28 11:17:03', '2020-01-28 11:17:03'),
(38, 10, 2, 6, '2020-01-28 11:17:03', '2020-01-28 11:17:03'),
(39, 10, 3, 9, '2020-01-28 11:17:03', '2020-01-28 11:17:03'),
(40, 10, 4, 14, '2020-01-28 11:17:03', '2020-01-28 11:17:03'),
(41, 11, 1, 2, '2020-01-28 11:18:01', '2020-01-28 11:18:01'),
(42, 11, 2, 6, '2020-01-28 11:18:01', '2020-01-28 11:18:01'),
(43, 11, 3, 9, '2020-01-28 11:18:01', '2020-01-28 11:18:01'),
(44, 11, 4, 14, '2020-01-28 11:18:01', '2020-01-28 11:18:01'),
(45, 12, 1, 2, '2020-01-28 11:19:36', '2020-01-28 11:19:36'),
(46, 12, 2, 6, '2020-01-28 11:19:36', '2020-01-28 11:19:36'),
(47, 12, 3, 9, '2020-01-28 11:19:36', '2020-01-28 11:19:36'),
(48, 12, 4, 14, '2020-01-28 11:19:36', '2020-01-28 11:19:36'),
(49, 13, 1, 2, '2020-01-28 11:23:52', '2020-01-28 11:23:52'),
(50, 13, 2, 6, '2020-01-28 11:23:52', '2020-01-28 11:23:52'),
(51, 13, 3, 9, '2020-01-28 11:23:52', '2020-01-28 11:23:52'),
(52, 13, 4, 14, '2020-01-28 11:23:52', '2020-01-28 11:23:52'),
(53, 14, 1, 4, '2020-01-28 11:29:42', '2020-01-28 11:29:42'),
(54, 14, 2, 7, '2020-01-28 11:29:42', '2020-01-28 11:29:42'),
(55, 14, 3, 12, '2020-01-28 11:29:42', '2020-01-28 11:29:42'),
(56, 14, 4, 15, '2020-01-28 11:29:42', '2020-01-28 11:29:42'),
(57, 15, 1, 4, '2020-01-28 11:44:24', '2020-01-28 11:44:24'),
(58, 15, 2, 7, '2020-01-28 11:44:24', '2020-01-28 11:44:24'),
(59, 15, 3, 12, '2020-01-28 11:44:24', '2020-01-28 11:44:24'),
(60, 15, 4, 15, '2020-01-28 11:44:24', '2020-01-28 11:44:24'),
(61, 16, 1, 4, '2020-01-28 11:45:37', '2020-01-28 11:45:37'),
(62, 16, 2, 7, '2020-01-28 11:45:37', '2020-01-28 11:45:37'),
(63, 16, 3, 12, '2020-01-28 11:45:37', '2020-01-28 11:45:37'),
(64, 16, 4, 15, '2020-01-28 11:45:37', '2020-01-28 11:45:37'),
(65, 17, 1, 4, '2020-01-28 13:46:38', '2020-01-28 13:46:38'),
(66, 17, 2, 8, '2020-01-28 13:46:38', '2020-01-28 13:46:38'),
(67, 17, 3, 12, '2020-01-28 13:46:38', '2020-01-28 13:46:38'),
(68, 17, 4, 14, '2020-01-28 13:46:38', '2020-01-28 13:46:38'),
(69, 18, 1, 2, '2020-01-28 13:52:45', '2020-01-28 13:52:45'),
(70, 18, 2, 6, '2020-01-28 13:52:45', '2020-01-28 13:52:45'),
(71, 18, 3, 10, '2020-01-28 13:52:45', '2020-01-28 13:52:45'),
(72, 18, 4, 14, '2020-01-28 13:52:45', '2020-01-28 13:52:45'),
(73, 19, 1, 1, '2020-01-28 13:58:17', '2020-01-28 13:58:17'),
(74, 19, 2, 5, '2020-01-28 13:58:17', '2020-01-28 13:58:17'),
(75, 19, 3, 11, '2020-01-28 13:58:17', '2020-01-28 13:58:17'),
(76, 19, 4, 13, '2020-01-28 13:58:17', '2020-01-28 13:58:17'),
(77, 20, 1, 1, '2020-01-28 13:59:09', '2020-01-28 13:59:09'),
(78, 20, 2, 5, '2020-01-28 13:59:09', '2020-01-28 13:59:09'),
(79, 20, 3, 11, '2020-01-28 13:59:09', '2020-01-28 13:59:09'),
(80, 20, 4, 13, '2020-01-28 13:59:09', '2020-01-28 13:59:09'),
(81, 21, 1, 1, '2020-01-28 13:59:51', '2020-01-28 13:59:51'),
(82, 21, 2, 5, '2020-01-28 13:59:51', '2020-01-28 13:59:51'),
(83, 21, 3, 11, '2020-01-28 13:59:51', '2020-01-28 13:59:51'),
(84, 21, 4, 13, '2020-01-28 13:59:51', '2020-01-28 13:59:51');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'public', 'public@email.com', NULL, '$2y$10$KgSQwmoPWROnMO0fobtFA.76hj4F5rZO26MDaTZU9RraYHgVucI1e', NULL, '2020-01-28 13:51:36', '2020-01-28 13:51:36'),
(2, 'mawar', 'mawar@hotmail.com', NULL, '$2y$10$JxXbSiO/qvSgW2MUPEmA3.AWF3cJUoON05zXOY5zj3lDPNwPTOaly', NULL, '2020-01-28 11:04:34', '2020-01-28 11:04:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `questionnaires`
--
ALTER TABLE `questionnaires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_responses`
--
ALTER TABLE `survey_responses`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questionnaires`
--
ALTER TABLE `questionnaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `survey_responses`
--
ALTER TABLE `survey_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
