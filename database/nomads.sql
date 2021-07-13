-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2021 pada 09.06
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nomads`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/gallery/1P1WKi0Rbyvq1HiHH4EW2xSsc8fp9p24aAslR7Pd.jpg', NULL, '2021-07-07 05:25:28', '2021-07-13 00:03:29'),
(2, 3, 'assets/gallery/SwB69CorjCuNvSeHu2eHNSvWs3z7HEJKYOSwiSSf.jpg', NULL, '2021-07-08 03:13:23', '2021-07-13 00:02:27'),
(3, 4, 'assets/gallery/k73JSn8IdEfNlK0b70voqsnaSiy2KdEA03YN3hcO.jpg', NULL, '2021-07-08 03:13:39', '2021-07-13 00:01:51'),
(4, 5, 'assets/gallery/9I3NxUGX4iJ0yvpZtvv20R2luv815Ctici0dFI1m.jpg', NULL, '2021-07-08 03:14:20', '2021-07-13 00:01:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_06_114356_create_travel_packages_table', 2),
(5, '2021_07_06_153530_create_galleries_table', 2),
(6, '2021_07_06_154215_create_transactions_table', 2),
(7, '2021_07_06_154616_create_transaction_details_table', 2),
(8, '2021_07_06_170346_add_roles_field_to_users_table', 3),
(9, '2021_07_06_183530_add_username_field_to_users_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 190, 290, 'SUCCESS', NULL, '2021-07-08 09:05:50', '2021-07-08 02:40:29'),
(2, 3, 1, 0, 200, 'IN_CART', NULL, '2021-07-08 09:00:30', '2021-07-08 09:00:30'),
(3, 3, 1, 0, 200, 'IN_CART', NULL, '2021-07-08 09:01:21', '2021-07-08 09:01:21'),
(4, 3, 1, 0, 200, 'IN_CART', NULL, '2021-07-08 09:02:38', '2021-07-08 09:02:38'),
(5, 3, 1, 0, 200, 'IN_CART', NULL, '2021-07-08 09:02:47', '2021-07-08 09:02:47'),
(6, 3, 1, 190, 590, 'PENDING', NULL, '2021-07-08 09:03:58', '2021-07-08 09:37:48'),
(7, 5, 1, 190, 390, 'PENDING', NULL, '2021-07-10 06:12:40', '2021-07-10 06:13:18'),
(8, 3, 1, 190, 590, 'PENDING', NULL, '2021-07-10 07:52:18', '2021-07-10 07:53:00'),
(9, 5, 2, 190, 390, 'PENDING', NULL, '2021-07-10 08:27:14', '2021-07-10 08:28:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'fathurzoy', 'ID', 1, '2021-07-08', NULL, '2021-07-08 09:08:43', '2021-07-08 09:08:43'),
(2, 1, 'user', 'ID', 0, '2021-07-08', NULL, '2021-07-08 09:08:43', '2021-07-08 09:08:43'),
(3, 6, 'fathurzoy', 'ID', 0, '2026-07-08', NULL, '2021-07-08 09:03:58', '2021-07-08 09:03:58'),
(4, 6, 'user', 'CN', 1, '2021-07-08', '2021-07-08 09:34:51', '2021-07-08 09:34:18', '2021-07-08 09:34:51'),
(5, 6, 'user', 'CN', 1, '2021-07-08', NULL, '2021-07-08 09:35:53', '2021-07-08 09:35:53'),
(6, 7, 'fathurzoy', 'ID', 0, '2026-07-10', NULL, '2021-07-10 06:12:40', '2021-07-10 06:12:40'),
(7, 7, 'user', 'CN', 1, '2021-07-08', NULL, '2021-07-10 06:13:04', '2021-07-10 06:13:04'),
(8, 8, 'fathurzoy', 'ID', 0, '2026-07-10', NULL, '2021-07-10 07:52:18', '2021-07-10 07:52:18'),
(9, 8, 'user', 'CN', 1, '2021-07-08', NULL, '2021-07-10 07:52:48', '2021-07-10 07:52:48'),
(10, 9, 'user', 'ID', 0, '2026-07-10', NULL, '2021-07-10 08:27:14', '2021-07-10 08:27:14'),
(11, 9, 'fathurzoy', 'CN', 1, '2021-07-10', NULL, '2021-07-10 08:27:57', '2021-07-10 08:27:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Liburan Santay', 'liburan-santay', 'Jakarta', 'Enak coy', 'Joget', 'Indonesia', 'Seblak', '2002-02-22', '2D', 'hotel', 200, NULL, '2021-07-07 02:53:26', '2021-07-07 03:15:49'),
(2, 'Liburan Santai', 'liburan-santai', 'Jakarta', 'Enak coy', 'Joget', 'Indonesia', 'Seblak', '2002-02-22', '2D', 'hotel', 200, '2021-07-07 03:29:10', '2021-07-07 02:57:13', '2021-07-07 03:29:10'),
(3, 'Nusa Perinda', 'nusa-perinda', 'Indonesia', 'Liburan asik', 'Seluncur', 'Indonesia', 'Sunda', '2021-07-08', '2D', 'Open Trip', 200, NULL, '2021-07-08 03:11:00', '2021-07-08 03:11:00'),
(4, 'Data Dummy', 'data-dummy', 'Data Dummy', 'Data Dummy', 'Data Dummy', 'Data Dummy', 'Data Dummy', '2021-07-08', 'Data Dummy', 'Data Dummy', 150, NULL, '2021-07-08 03:11:36', '2021-07-08 03:11:36'),
(5, 'Borobudur', 'borobudur', 'Jogja', 'keren', 'Keren', 'Indo', 'Jogja', '2021-07-08', '2D', 'Open Trip', 100, NULL, '2021-07-08 03:12:49', '2021-07-08 03:12:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'fathur', 'fathurrahmanf123@gmail.com', '2021-07-06 10:58:11', '$2y$10$61ssdpEkOKfvL9ZoiMtIxe2Hqt.Vkma4q/t9awgHyzrNDOYl/3i1C', NULL, '2021-07-06 10:57:01', '2021-07-06 10:58:11', 'ADMIN', 'fathurzoy'),
(2, 'user', 'user@gmail.com', '2021-07-06 11:16:26', '$2y$10$61fEYZz7/iMIA3muW0ISmet5euV5orKM22iijqaNfFoYEvYCAmO5m', NULL, '2021-07-06 11:16:13', '2021-07-06 11:16:26', 'USER', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
