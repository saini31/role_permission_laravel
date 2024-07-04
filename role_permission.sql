-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2024 at 09:04 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
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
(4, '2022_04_11_144947_create_permission_tables', 1),
(5, '2022_04_11_145037_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'AppModelsUser', 1),
(2, 'AppModelsUser', 1),
(3, 'AppModelsUser', 1),
(4, 'AppModelsUser', 1),
(5, 'AppModelsUser', 1),
(6, 'AppModelsUser', 1),
(7, 'AppModelsUser', 1),
(8, 'AppModelsUser', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 28);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2024-06-07 21:38:52', '2024-06-07 21:38:52'),
(2, 'role-create', 'web', '2024-06-07 21:38:52', '2024-06-07 21:38:52'),
(3, 'role-edit', 'web', '2024-06-07 21:38:52', '2024-06-07 21:38:52'),
(4, 'role-delete', 'web', '2024-06-07 21:38:52', '2024-06-07 21:38:52'),
(5, 'product-list', 'web', '2024-06-07 21:38:52', '2024-06-07 21:38:52'),
(6, 'product-create', 'web', '2024-06-07 21:38:52', '2024-06-07 21:38:52'),
(7, 'product-edit', 'web', '2024-06-07 21:38:53', '2024-06-07 21:38:53'),
(8, 'product-delete', 'web', '2024-06-07 21:38:53', '2024-06-07 21:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'chair', 'available', '2024-06-07 23:36:29', '2024-06-07 23:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2024-06-07 21:35:07', '2024-06-07 21:35:07'),
(2, 'User', 'web', '2024-06-07 23:35:24', '2024-06-07 23:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1);

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
(1, 'Sandeep Sharma', 'admin@gmail.com', NULL, '$2y$10$VfEZmOHPNfpSLXQvLsCKzOhOLS8qkz4WHLG/nl7j1OOPGEaab3LfC', NULL, '2024-06-07 21:35:07', '2024-06-07 21:35:07'),
(3, 'mahesh saini', 'hindumahesh3@gmail.com', NULL, '$2y$10$LZpqXP9U92lqGjLo.sYidO5mavuobURceBAxDGG7OHb4tPrjYQ2v.', NULL, '2024-06-07 21:40:45', '2024-06-07 21:40:45'),
(4, 'Jonathan Maggio', 'fermin.johns@example.org', '2024-06-07 21:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XVw5SYmEp2', '2024-06-07 21:45:33', '2024-06-07 21:45:33'),
(5, 'Laury Tremblay', 'margarett47@example.org', '2024-06-07 21:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IGqZaDaoUo', '2024-06-07 21:45:33', '2024-06-07 21:45:33'),
(6, 'Abelardo Hackett PhD', 'swaniawski.desiree@example.net', '2024-06-07 21:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZZKYuXRXzH', '2024-06-07 21:45:33', '2024-06-07 21:45:33'),
(7, 'Dr. Carroll Larkin', 'liliane.hettinger@example.com', '2024-06-07 21:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CC3HCBlpBS', '2024-06-07 21:45:33', '2024-06-07 21:45:33'),
(8, 'Dr. Adrienne Smith MD', 'lucius.cummerata@example.org', '2024-06-07 21:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZO5MsCoilr', '2024-06-07 21:45:33', '2024-06-07 21:45:33'),
(9, 'Mr. Deven Daniel DDS', 'abel60@example.net', '2024-06-07 21:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pYgwbdCrBG', '2024-06-07 21:45:33', '2024-06-07 21:45:33'),
(10, 'Piper Greenholt', 'keeley51@example.net', '2024-06-07 21:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xUaGwFSDLX', '2024-06-07 21:45:33', '2024-06-07 21:45:33'),
(11, 'Arnold Bernhard', 'elvis.reilly@example.com', '2024-06-07 21:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'flZqmIeldO', '2024-06-07 21:45:33', '2024-06-07 21:45:33'),
(12, 'Kristin Hoppe', 'zkessler@example.org', '2024-06-07 21:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DsUonUR0gq', '2024-06-07 21:45:33', '2024-06-07 21:45:33'),
(13, 'Amos Murphy', 'halvorson.reyna@example.net', '2024-06-07 21:45:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2AI4v235QS', '2024-06-07 21:45:33', '2024-06-07 21:45:33'),
(15, 'Dorothy Friesen', 'raven.feil@example.com', '2024-06-07 21:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '99QNFP9HV6', '2024-06-07 21:52:19', '2024-06-07 21:52:19'),
(16, 'Mr. Trevion Collier III', 'stone.graham@example.net', '2024-06-07 21:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yH2L2qzxQn', '2024-06-07 21:52:19', '2024-06-07 21:52:19'),
(17, 'Estefania Altenwerth', 'anthony.hartmann@example.com', '2024-06-07 21:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Asf1b5gtPk', '2024-06-07 21:52:19', '2024-06-07 21:52:19'),
(18, 'Tobin Pouros', 'hester21@example.org', '2024-06-07 21:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i7xxnmhJtE', '2024-06-07 21:52:19', '2024-06-07 21:52:19'),
(19, 'Orlando Haley', 'grady.bertha@example.org', '2024-06-07 21:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9yvD1XasQX', '2024-06-07 21:52:19', '2024-06-07 21:52:19'),
(20, 'Mr. Ronaldo Klocko Jr.', 'rfadel@example.net', '2024-06-07 21:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9yrHvjyIoH', '2024-06-07 21:52:19', '2024-06-07 21:52:19'),
(21, 'Alice Cummings', 'pearline.wyman@example.com', '2024-06-07 21:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'myMosZrxkD', '2024-06-07 21:52:19', '2024-06-07 21:52:19'),
(22, 'Catalina Carroll', 'ullrich.mireille@example.com', '2024-06-07 21:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wkc2hLxXxS', '2024-06-07 21:52:19', '2024-06-07 21:52:19'),
(23, 'Ilene Kutch III', 'elody.yundt@example.net', '2024-06-07 21:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'udOAOZZHHc', '2024-06-07 21:52:19', '2024-06-07 21:52:19'),
(24, 'Erich Terry', 'elta51@example.com', '2024-06-07 21:52:19', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Nc26FttQeT', '2024-06-07 21:52:19', '2024-06-07 21:52:19'),
(26, 'tanuj', 't@gmail.com', NULL, '$2y$10$S6Z5kIPczRIHCMYPuXdCeuWzhTTGaHciwDMnHuwskVbHhF86xjJi.', NULL, '2024-06-07 23:38:03', '2024-06-07 23:38:03'),
(27, 'mahesh', 'jj@gmail.com', NULL, '$2y$10$rn.xlzm5Gr3Z0kj0lY//W.1fdB.kKhqLl.LSxdP/ohD633Hq/RB7K', NULL, '2024-07-04 00:43:12', '2024-07-04 00:43:12'),
(28, 'kishan', 'hindumsh3@gmail.com', NULL, '$2y$10$SrXgV9Dgq52cxiVGCSeRp.W3m.0V5dBObt3dNjKTL2mwWoXscl.Vm', NULL, '2024-07-04 00:45:20', '2024-07-04 00:45:20');

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
