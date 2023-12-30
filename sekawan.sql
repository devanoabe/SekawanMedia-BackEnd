-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2023 at 09:31 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transmission` enum('manual','automatic') COLLATE utf8mb4_unicode_ci NOT NULL,
  `chairs_ammount` int(11) NOT NULL,
  `vehicle_license` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `car_type` enum('city car','compact mpv','mini mpv','minivan','suv') COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `transmission`, `chairs_ammount`, `vehicle_license`, `merk`, `price`, `car_type`, `photo`, `created_at`, `updated_at`) VALUES
('1490e268-ee65-3a62-b400-012215267935', 'Avanza', 'manual', 4, 'N 2525 AB', 'Toyota', 384274, 'suv', NULL, '2023-12-29 20:06:01', '2023-12-29 20:06:01'),
('15e86b3d-8161-3190-873a-0241331b17a2', 'Innova', 'automatic', 7, 'N 6719 AB', 'Mitsubishi', 416905, 'minivan', NULL, '2023-12-29 20:06:03', '2023-12-29 20:06:03'),
('1d2a1e3e-3f8a-388a-9003-d4d9912e1d83', 'Ayla', 'automatic', 4, 'N 8348 AB', 'Daihatsu', 288492, 'mini mpv', NULL, '2023-12-29 20:06:01', '2023-12-29 20:06:01'),
('499e17fd-c044-3cd1-a8c4-45c7efc6993c', 'Fortuner', 'manual', 4, 'N 7531 AB', 'Daihatsu', 349056, 'minivan', NULL, '2023-12-29 20:06:04', '2023-12-29 20:06:04'),
('5b5d2651-985c-372b-b3e0-3e2a169eb7b9', 'Fortuner', 'automatic', 5, 'N 5850 AB', 'Toyota', 435938, 'mini mpv', NULL, '2023-12-29 20:06:03', '2023-12-29 20:06:03'),
('5c6941a9-85f7-3154-88b8-b2718ceb84c4', 'Alphard', 'manual', 7, 'N 2577 AB', 'Daihatsu', 290995, 'minivan', NULL, '2023-12-29 20:06:03', '2023-12-29 20:06:03'),
('5cc397f1-0555-3ada-9a2f-8826f3f299b8', 'Brio', 'automatic', 8, 'N 1227 AB', 'Toyota', 301036, 'mini mpv', NULL, '2023-12-29 20:06:02', '2023-12-29 20:06:02'),
('60600529-b11e-3011-b47e-c2c6f8b87682', 'Alphard', 'manual', 6, 'N 5315 AB', 'Toyota', 255121, 'minivan', NULL, '2023-12-29 20:06:02', '2023-12-29 20:06:02'),
('6552a3aa-e6e1-3973-902f-9fe308e22730', 'Avanza', 'automatic', 6, 'N 4194 AB', 'Honda', 331582, 'suv', NULL, '2023-12-29 20:06:03', '2023-12-29 20:06:03'),
('7100248d-8d5c-3bc1-bae6-0e18406995af', 'Kijang', 'manual', 4, 'N 1989 AB', 'Honda', 281321, 'mini mpv', NULL, '2023-12-29 20:06:02', '2023-12-29 20:06:02'),
('78bdfe7b-a64d-3823-afcd-8d6df6add1b7', 'Pajero', 'manual', 7, 'N 8716 AB', 'Honda', 257014, 'suv', NULL, '2023-12-29 20:06:01', '2023-12-29 20:06:01'),
('816b84f5-1300-33dc-a614-5a7be39f7565', 'Mobilio', 'automatic', 7, 'N 7946 AB', 'Honda', 305403, 'minivan', NULL, '2023-12-29 20:06:01', '2023-12-29 20:06:01'),
('8da78f5e-bdcf-349c-82e2-1c9a8067d2a3', 'Fortuner', 'automatic', 8, 'N 2778 AB', 'Honda', 300753, 'suv', NULL, '2023-12-29 20:06:03', '2023-12-29 20:06:03'),
('97558213-4633-374c-9c6a-76febf2c91cf', 'Pajero', 'manual', 4, 'N 2154 AB', 'Daihatsu', 336269, 'mini mpv', NULL, '2023-12-29 20:06:01', '2023-12-29 20:06:01'),
('acdd163d-3fb1-3598-a100-15f7688f9f0a', 'Innova', 'manual', 5, 'N 3866 AB', 'Mitsubishi', 494824, 'city car', NULL, '2023-12-29 20:06:01', '2023-12-29 20:06:01'),
('b00f4919-a77b-355c-b3ff-478a6f5a4f1a', 'Innova', 'automatic', 6, 'N 5853 AB', 'Honda', 317989, 'minivan', NULL, '2023-12-29 20:06:03', '2023-12-29 20:06:03'),
('d0f375ce-c052-3846-badd-0eb6cfd2a97e', 'Cedric Travis', 'manual', 30, 'Repellendus Enim vo', 'Blanditiis accusamus', 646, 'suv', 'cars/cguiLwWpLSavkCBoGumi27E4pUomsk82KMdjP5gJ.jpg', '2023-12-30 01:29:55', '2023-12-30 01:29:55'),
('e1e0f13b-a30b-3f31-abc9-3b3333ffcdef', 'Innova', 'automatic', 4, 'N 7325 AB', 'Toyota', 324024, 'suv', NULL, '2023-12-29 20:06:00', '2023-12-29 20:06:00'),
('e4d5ea2b-e0ef-384e-b0ae-a69f7c7ae4f1', 'Alphard', 'manual', 5, 'N 8654 AB', 'Daihatsu', 347911, 'suv', NULL, '2023-12-29 20:06:01', '2023-12-29 20:06:01'),
('ee631030-4351-3c7d-865a-261a618a427e', 'Fortuner', 'automatic', 5, 'N 4529 AB', 'Toyota', 433203, 'compact mpv', NULL, '2023-12-29 20:06:03', '2023-12-29 20:06:03'),
('f1a427e1-68d5-31bf-8dfc-1f9d78d84060', 'Fortuner', 'automatic', 7, 'N 1989 AB', 'Toyota', 365549, 'mini mpv', NULL, '2023-12-29 20:06:03', '2023-12-29 20:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_licence` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `name`, `address`, `driver_licence`, `created_at`, `updated_at`) VALUES
(1, 'Lillian Kirkland', 'Voluptatem neque re', 'Doloremque facere ve', '2023-12-29 20:06:58', '2023-12-29 20:06:58'),
(2, 'Patience Rogers', 'Est esse esse quid', 'Eum aliqua Nihil fu', '2023-12-29 20:07:05', '2023-12-29 20:07:05'),
(3, 'Germane Harris', 'Non reiciendis totam', '86542124566', '2023-12-30 01:30:12', '2023-12-30 01:30:12');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_20_065106_create_rentals_table', 1),
(6, '2023_03_20_065309_create_conditions_table', 1),
(7, '2023_03_20_065332_create_drivers_table - Copy', 1),
(8, '2023_03_20_065351_create_cars_table', 1),
(9, '2023_03_20_065420_create_rents_table', 1),
(10, '2023_03_20_065453_create_charges_table', 1),
(11, '2023_03_20_065511_create_payments_table', 1),
(12, '2023_03_20_074351_create_permission_tables', 1),
(13, '2023_12_29_164115_create_pemesanan_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', '9bccde7c-c1d8-3b68-9f10-d903a901ba42'),
(2, 'App\\Models\\User', '37a9ab01-a8a6-30cd-b6e1-af388b58b020'),
(2, 'App\\Models\\User', '5abbb9ed-edd2-39f9-b325-52716cf12719'),
(2, 'App\\Models\\User', '611b559f-5315-3a44-8357-f0bd47583933'),
(2, 'App\\Models\\User', 'c3e58de0-af56-34f1-89ca-30dcbede197f'),
(2, 'App\\Models\\User', 'e2b05886-119d-3742-bdd6-38a7369db2f8'),
(2, 'App\\Models\\User', 'f309ffa9-0f61-3cc3-9234-24e0748d616a'),
(2, 'App\\Models\\User', 'ff1e81a5-8148-396f-bc0d-3a34c86e8f3f'),
(3, 'App\\Models\\User', 'e5b0df53-030e-3938-95e0-770a22932981');

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
-- Table structure for table `pemesanans`
--

CREATE TABLE `pemesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `car_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `bbm` int(11) NOT NULL,
  `service` datetime NOT NULL,
  `riwayat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemesanans`
--

INSERT INTO `pemesanans` (`id`, `car_id`, `driver_id`, `start_date`, `end_date`, `bbm`, `service`, `riwayat`, `status`, `notes`, `created_at`, `updated_at`) VALUES
(1, '816b84f5-1300-33dc-a614-5a7be39f7565', 2, '1995-01-18 00:00:00', '2013-11-14 00:00:00', 73, '2008-03-01 00:00:00', 'Tenetur et voluptas', 1, 'Vero sit eu reprehen', '2023-12-29 20:07:46', '2023-12-29 22:44:51'),
(3, '15e86b3d-8161-3190-873a-0241331b17a2', 2, '1993-12-13 00:00:00', '1971-11-26 00:00:00', 9, '2013-07-12 00:00:00', 'Pariatur Nobis beat', 0, 'Velit molestias aspe', '2023-12-29 20:28:22', '2023-12-29 22:44:18'),
(4, 'acdd163d-3fb1-3598-a100-15f7688f9f0a', 2, '1986-01-12 00:00:00', '2000-05-12 00:00:00', 51, '1996-05-21 00:00:00', 'Architecto enim a il', 0, 'Repellendus Veniam', '2023-12-30 01:30:41', '2023-12-30 01:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regency_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `village_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `policies` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rentals`
--

INSERT INTO `rentals` (`id`, `user_id`, `name`, `province_id`, `regency_id`, `district_id`, `village_id`, `address`, `policies`, `photo`, `created_at`, `updated_at`) VALUES
('0abc7758-2b3a-30b9-9597-d21cf30efc60', '37a9ab01-a8a6-30cd-b6e1-af388b58b020', 'Bintang Cahaya Trans', '35', '3507', '3507010', '3507200002', '46880 D\'angelo Crest Suite 790\nSouth Aubree, OR 16048', NULL, NULL, '2023-12-29 20:05:59', '2023-12-29 20:05:59'),
('15be5352-d9fd-3d9d-a3a4-519e4e47a38b', 'e2b05886-119d-3742-bdd6-38a7369db2f8', 'Jaya Trans', '35', '3507', '3507010', '3507200002', '61771 Reynold Valley\nZitaview, WY 48318-0353', NULL, NULL, '2023-12-29 20:06:00', '2023-12-29 20:06:00'),
('32b227e0-4257-3aa5-af6d-56127ef4c6b6', 'ff1e81a5-8148-396f-bc0d-3a34c86e8f3f', 'Fast Trans', '35', '3507', '3507010', '3507200002', '66131 Lurline Mountains Apt. 811\nPort Roselyn, SD 45162', NULL, NULL, '2023-12-29 20:06:00', '2023-12-29 20:06:00'),
('3611eb8e-2b96-3ff7-80d6-e32b7b80b989', '611b559f-5315-3a44-8357-f0bd47583933', 'Hall Anthony', '73', '7301', '7301010', '1105080001', 'Et aut facilis ut no', NULL, NULL, '2023-12-30 00:18:13', '2023-12-30 00:18:13'),
('5decd674-2716-3d56-a4cc-2f17d014c2d0', '5abbb9ed-edd2-39f9-b325-52716cf12719', 'Adi Trans', '35', '3507', '3507010', '3507200002', '8510 Jonatan Lane\nWilkinsontown, OK 27896-1474', NULL, NULL, '2023-12-29 20:06:00', '2023-12-29 20:06:00'),
('fee34b97-669a-3f35-8ec9-60bc78282eb1', 'c3e58de0-af56-34f1-89ca-30dcbede197f', 'Happy Trans', '35', '3507', '3507010', '3507200002', '9771 Baumbach Via\nBalistreriland, VT 32442-8182', NULL, NULL, '2023-12-29 20:05:59', '2023-12-29 20:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-12-29 20:05:57', '2023-12-29 20:05:57'),
(2, 'rental', 'web', '2023-12-29 20:05:57', '2023-12-29 20:05:57'),
(3, 'customer', 'web', '2023-12-29 20:05:57', '2023-12-29 20:05:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone_number`, `address`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
('37a9ab01-a8a6-30cd-b6e1-af388b58b020', 'Bintang Cahaya Trans', 'bintang@gmail.com', NULL, '$2y$10$S50SmeSVokjzHljNR2ySme33eBsP9g0.5zj/uj6amiWc68bthUqcq', NULL, NULL, NULL, NULL, '2023-12-29 20:05:59', '2023-12-29 20:05:59'),
('5abbb9ed-edd2-39f9-b325-52716cf12719', 'Adi Trans', 'adi@gmail.com', NULL, '$2y$10$ql.dNwkQjB5GHMPqduZj1uIKgQtjkVqjrBJ5CHzI0UXAxiY4BDgRW', NULL, NULL, NULL, NULL, '2023-12-29 20:06:00', '2023-12-29 20:06:00'),
('611b559f-5315-3a44-8357-f0bd47583933', 'Hall Anthony', 'hall@gmail.com', NULL, '$2y$10$5vPIdVTRn3dh0QEpv6QhHupnrZvaqt6YE9rTEoz1cF1LpVit2oBly', NULL, NULL, NULL, NULL, '2023-12-30 00:18:13', '2023-12-30 00:18:13'),
('9bccde7c-c1d8-3b68-9f10-d903a901ba42', 'Gideon Rutherford', 'admin@gmail.com', '2023-12-29 20:05:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '7280 Rolfson Garden\nSouth Lonport, OK 72128-6473', NULL, 'W4ymi25B9falutIP7kCmW7jvYRyadTkBTyDCfK9ZhViYmB9qDohgjlod3fCK', '2023-12-29 20:05:58', '2023-12-29 20:05:58'),
('c3e58de0-af56-34f1-89ca-30dcbede197f', 'Happy Trans', 'happy@gmail.com', NULL, '$2y$10$wVGw4Q624sOGFQ4AE2fxNeBVbTtSMWy6q7B8kLJ25.UBEFg6nAThS', NULL, NULL, NULL, NULL, '2023-12-29 20:05:59', '2023-12-29 20:05:59'),
('e2b05886-119d-3742-bdd6-38a7369db2f8', 'Jaya Trans', 'jaya@gmail.com', NULL, '$2y$10$1l2QQtH6LBCZEUFUB0qSy.31v.lwH/9G7ZKXLljb0WLLdviXKzZZm', NULL, NULL, NULL, NULL, '2023-12-29 20:05:59', '2023-12-29 20:05:59'),
('e5b0df53-030e-3938-95e0-770a22932981', 'Annalise VonRueden IV', 'customer@gmail.com', '2023-12-29 20:05:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '64374 Wyman Spur Suite 489\nEast Eusebio, NC 82426-7058', NULL, 'KB0IoIY3P3', '2023-12-29 20:05:58', '2023-12-29 20:05:58'),
('f309ffa9-0f61-3cc3-9234-24e0748d616a', 'Gust Kilback', 'rental@gmail.com', '2023-12-29 20:05:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '28306 Quentin Mountain Apt. 383\nAlexandraton, IA 86641', NULL, 'jeujm2UiLc', '2023-12-29 20:05:58', '2023-12-29 20:05:58'),
('ff1e81a5-8148-396f-bc0d-3a34c86e8f3f', 'Fast Trans', 'fast@gmail.com', NULL, '$2y$10$AMrQcGMswOsBYrE3H6WA6.5Uj1hgOMdUISE1SqCepmCaYl0B44rK6', NULL, NULL, NULL, NULL, '2023-12-29 20:06:00', '2023-12-29 20:06:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
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
-- Indexes for table `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemesanans_car_id_foreign` (`car_id`),
  ADD KEY `pemesanans_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rentals_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pemesanans`
--
ALTER TABLE `pemesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Constraints for table `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD CONSTRAINT `pemesanans_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemesanans_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
