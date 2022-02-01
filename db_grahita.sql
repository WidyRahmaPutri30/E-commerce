-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Feb 2022 pada 11.21
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_grahita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `administrators`
--

CREATE TABLE `administrators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `administrators`
--

INSERT INTO `administrators` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.org', '$2y$10$ovYC.Cm4uLMvif7xcg6n.epilNF2W01yQhc9XNNUpuMj1HJGIxiRi', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(2, 'Administrator', 'admin@domain.com', '$2y$10$.r3xvGJSoFF4ZjdeNLsnZ.EHx7WtsTdxjiAITosN8PeIDBf1/oyaW', '2022-01-31 13:26:14', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `kecamatans`
--

CREATE TABLE `kecamatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kecamatans`
--

INSERT INTO `kecamatans` (`id`, `name`, `kota_id`, `created_at`, `updated_at`) VALUES
(1, 'Tanah Abang', 1, NULL, NULL),
(2, 'Kemayoran', 1, NULL, NULL),
(3, 'Kebayoran Baru', 2, NULL, NULL),
(4, 'Kebayoran Lama', 2, NULL, NULL),
(5, 'Buahbatu', 3, NULL, NULL),
(6, 'Gedebage', 3, NULL, NULL),
(7, 'Cimahi Selatan', 4, NULL, NULL),
(8, 'Cimahi Tengah', 4, NULL, NULL),
(9, 'Cimahi Utara', 4, NULL, NULL),
(10, 'Tugu', 5, NULL, NULL),
(11, 'Banyumanik', 5, NULL, NULL),
(12, 'Banjarnegara', 6, NULL, NULL),
(13, 'Purwonegoro', 6, NULL, NULL),
(14, 'Banyuwangi', 7, NULL, NULL),
(15, 'Bangorejo', 7, NULL, NULL),
(16, 'Tegalsari', 8, NULL, NULL),
(17, 'Sukolilo', 8, NULL, NULL),
(18, 'Bantul', 9, NULL, NULL),
(19, 'Sanden', 9, NULL, NULL),
(20, 'Kotagede', 10, NULL, NULL),
(21, 'Kraton', 10, NULL, NULL),
(22, 'Tanah Abang', 1, NULL, NULL),
(23, 'Kemayoran', 1, NULL, NULL),
(24, 'Kebayoran Baru', 2, NULL, NULL),
(25, 'Kebayoran Lama', 2, NULL, NULL),
(26, 'Buahbatu', 3, NULL, NULL),
(27, 'Gedebage', 3, NULL, NULL),
(28, 'Cimahi Selatan', 4, NULL, NULL),
(29, 'Cimahi Tengah', 4, NULL, NULL),
(30, 'Cimahi Utara', 4, NULL, NULL),
(31, 'Tugu', 5, NULL, NULL),
(32, 'Banyumanik', 5, NULL, NULL),
(33, 'Banjarnegara', 6, NULL, NULL),
(34, 'Purwonegoro', 6, NULL, NULL),
(35, 'Banyuwangi', 7, NULL, NULL),
(36, 'Bangorejo', 7, NULL, NULL),
(37, 'Tegalsari', 8, NULL, NULL),
(38, 'Sukolilo', 8, NULL, NULL),
(39, 'Bantul', 9, NULL, NULL),
(40, 'Sanden', 9, NULL, NULL),
(41, 'Kotagede', 10, NULL, NULL),
(42, 'Kraton', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelurahans`
--

CREATE TABLE `kelurahans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelurahans`
--

INSERT INTO `kelurahans` (`id`, `name`, `kecamatan_id`, `created_at`, `updated_at`) VALUES
(1, 'Kebon Kacang', 1, NULL, NULL),
(2, 'Kebon Melati', 1, NULL, NULL),
(3, 'Cempaka Baru', 2, NULL, NULL),
(4, 'Kemayoran', 2, NULL, NULL),
(5, 'Melawai', 3, NULL, NULL),
(6, 'Senayan', 3, NULL, NULL),
(7, 'Kebayoran Lama Selatan', 4, NULL, NULL),
(8, 'Kebayoran Lama Utara', 4, NULL, NULL),
(9, 'Margasari', 5, NULL, NULL),
(10, 'Sekejati', 5, NULL, NULL),
(11, 'Rancabolang', 6, NULL, NULL),
(12, 'Rancanumpang', 6, NULL, NULL),
(13, 'Cibeureum', 7, NULL, NULL),
(14, 'Leuwigajah', 7, NULL, NULL),
(15, 'Baros', 8, NULL, NULL),
(16, 'Padasuka', 8, NULL, NULL),
(17, 'Cipageran', 9, NULL, NULL),
(18, 'Cibabat', 9, NULL, NULL),
(19, 'Karangayar', 10, NULL, NULL),
(20, 'Tugurejo', 10, NULL, NULL),
(21, 'Banyumanik', 11, NULL, NULL),
(22, 'Padangsari', 11, NULL, NULL),
(23, 'Ampelsari', 12, NULL, NULL),
(24, 'Kutabanjarnegara', 12, NULL, NULL),
(25, 'Danaraja', 13, NULL, NULL),
(26, 'Kutawaluh', 13, NULL, NULL),
(27, 'Pakis', 14, NULL, NULL),
(28, 'Sumberrejo', 14, NULL, NULL),
(29, 'Bangorejo', 15, NULL, NULL),
(30, 'Sukorejo', 15, NULL, NULL),
(31, 'Tegalsari', 16, NULL, NULL),
(32, 'Wonorejo', 16, NULL, NULL),
(33, 'Keputih', 17, NULL, NULL),
(34, 'Gebang Putih', 17, NULL, NULL),
(35, 'Bantul', 18, NULL, NULL),
(36, 'Sabdodadi', 18, NULL, NULL),
(37, 'Gadingharjo', 19, NULL, NULL),
(38, 'Gadingsari', 19, NULL, NULL),
(39, 'Rejowinangun', 20, NULL, NULL),
(40, 'Prengan', 20, NULL, NULL),
(41, 'Purbayan', 20, NULL, NULL),
(42, 'Kadiapten', 21, NULL, NULL),
(43, 'Panembahan', 21, NULL, NULL),
(44, 'Patehan', 21, NULL, NULL),
(45, 'Kebon Kacang', 1, NULL, NULL),
(46, 'Kebon Melati', 1, NULL, NULL),
(47, 'Cempaka Baru', 2, NULL, NULL),
(48, 'Kemayoran', 2, NULL, NULL),
(49, 'Melawai', 3, NULL, NULL),
(50, 'Senayan', 3, NULL, NULL),
(51, 'Kebayoran Lama Selatan', 4, NULL, NULL),
(52, 'Kebayoran Lama Utara', 4, NULL, NULL),
(53, 'Margasari', 5, NULL, NULL),
(54, 'Sekejati', 5, NULL, NULL),
(55, 'Rancabolang', 6, NULL, NULL),
(56, 'Rancanumpang', 6, NULL, NULL),
(57, 'Cibeureum', 7, NULL, NULL),
(58, 'Leuwigajah', 7, NULL, NULL),
(59, 'Baros', 8, NULL, NULL),
(60, 'Padasuka', 8, NULL, NULL),
(61, 'Cipageran', 9, NULL, NULL),
(62, 'Cibabat', 9, NULL, NULL),
(63, 'Karangayar', 10, NULL, NULL),
(64, 'Tugurejo', 10, NULL, NULL),
(65, 'Banyumanik', 11, NULL, NULL),
(66, 'Padangsari', 11, NULL, NULL),
(67, 'Ampelsari', 12, NULL, NULL),
(68, 'Kutabanjarnegara', 12, NULL, NULL),
(69, 'Danaraja', 13, NULL, NULL),
(70, 'Kutawaluh', 13, NULL, NULL),
(71, 'Pakis', 14, NULL, NULL),
(72, 'Sumberrejo', 14, NULL, NULL),
(73, 'Bangorejo', 15, NULL, NULL),
(74, 'Sukorejo', 15, NULL, NULL),
(75, 'Tegalsari', 16, NULL, NULL),
(76, 'Wonorejo', 16, NULL, NULL),
(77, 'Keputih', 17, NULL, NULL),
(78, 'Gebang Putih', 17, NULL, NULL),
(79, 'Bantul', 18, NULL, NULL),
(80, 'Sabdodadi', 18, NULL, NULL),
(81, 'Gadingharjo', 19, NULL, NULL),
(82, 'Gadingsari', 19, NULL, NULL),
(83, 'Rejowinangun', 20, NULL, NULL),
(84, 'Prengan', 20, NULL, NULL),
(85, 'Purbayan', 20, NULL, NULL),
(86, 'Kadiapten', 21, NULL, NULL),
(87, 'Panembahan', 21, NULL, NULL),
(88, 'Patehan', 21, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kotas`
--

CREATE TABLE `kotas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kotas`
--

INSERT INTO `kotas` (`id`, `name`, `provinsi_id`, `created_at`, `updated_at`) VALUES
(1, 'Jakarta Pusat', 1, NULL, NULL),
(2, 'Jakarta Selatan', 1, NULL, NULL),
(3, 'Kota Bandung', 2, NULL, NULL),
(4, 'Kota Cimahi', 2, NULL, NULL),
(5, 'Kota Semarang', 3, NULL, NULL),
(6, 'Kabupaten Banjarnegara', 3, NULL, NULL),
(7, 'Kabupaten Banyuwangi', 4, NULL, NULL),
(8, 'Kota Surabaya', 4, NULL, NULL),
(9, 'Kabupaten Bantul', 5, NULL, NULL),
(10, 'Kota Yogyakarta', 5, NULL, NULL),
(11, 'Jakarta Pusat', 1, NULL, NULL),
(12, 'Jakarta Selatan', 1, NULL, NULL),
(13, 'Kota Bandung', 2, NULL, NULL),
(14, 'Kota Cimahi', 2, NULL, NULL),
(15, 'Kota Semarang', 3, NULL, NULL),
(16, 'Kabupaten Banjarnegara', 3, NULL, NULL),
(17, 'Kabupaten Banyuwangi', 4, NULL, NULL),
(18, 'Kota Surabaya', 4, NULL, NULL),
(19, 'Kabupaten Bantul', 5, NULL, NULL),
(20, 'Kota Yogyakarta', 5, NULL, NULL);

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_27_032056_create_products_table', 2),
(6, '2022_01_27_070235_create_orders_table', 3),
(7, '2022_01_27_070634_create_order_items_table', 4),
(8, '2022_01_27_072428_create_provinsis_table', 5),
(9, '2022_01_27_072638_create_kotas_table', 5),
(10, '2022_01_27_072726_create_kecamatans_table', 5),
(11, '2022_01_27_072814_create_kelurahans_table', 5),
(12, '2022_01_27_074335_create_product_reviews_table', 6),
(13, '2022_01_31_024530_create_admins_table', 7),
(14, '2022_01_31_050938_create_admins_table', 8),
(15, '2022_01_31_062005_create_administrators_table', 9),
(16, '2022_01_15_013620_create_admins_table', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `total_price`, `shipping_address`, `zip_code`, `created_at`, `updated_at`) VALUES
(2, 2, 'SELESAI', '170000', 'Kebon Kopi No 54', 40535, '2022-01-30 07:33:24', '2022-01-31 21:49:28'),
(3, 2, 'SEDANG DIPROSES', '480000', 'Jl. Cipageran No.41', 40511, '2022-01-30 07:44:49', '2022-01-31 21:50:11'),
(4, 4, 'PENDING', '35000', 'Jl. Kenanga', 5678, '2022-01-30 10:18:34', '2022-01-30 10:18:34'),
(6, 6, 'PENDING', '520000', 'jl kenanga', 40525, '2022-02-01 02:39:05', '2022-02-01 02:39:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 50000, '2022-01-27 00:22:13', '2022-01-27 00:22:13'),
(2, 2, 9, 2, 35000, '2022-01-30 07:33:24', '2022-01-30 07:33:24'),
(3, 2, 1, 1, 50000, '2022-01-30 07:33:24', '2022-01-30 07:33:24'),
(4, 2, 8, 1, 50000, '2022-01-30 07:33:24', '2022-01-30 07:33:24'),
(5, 3, 6, 1, 480000, '2022-01-30 07:44:49', '2022-01-30 07:44:49'),
(6, 4, 9, 1, 35000, '2022-01-30 10:18:34', '2022-01-30 10:18:34'),
(7, 5, 1, 1, 50000, '2022-01-31 00:04:30', '2022-01-31 00:04:30'),
(8, 6, 6, 1, 480000, '2022-02-01 02:39:05', '2022-02-01 02:39:05'),
(9, 6, 5, 1, 40000, '2022-02-01 02:39:05', '2022-02-01 02:39:05'),
(10, 7, 8, 1, 50000, '2022-02-01 03:09:01', '2022-02-01 03:09:01'),
(11, 8, 3, 1, 30000, '2022-02-01 03:15:45', '2022-02-01 03:15:45');

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
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `description`, `price`, `image_url`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'STRAP MASKER 2IN1 PREMIUM GREY', '<p><span style=\"background-color: #ffffff; color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px;\">✅</span><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Matterial batu berkualitas</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Tali elastis import quality dengan plihan warna yang super best banget</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Panjang keseluruhan kurang lebih 70cm</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Tali dilengkapi dengan stopper bulat berfungsi untuk mengatur panjang pendeknya tali (cara pakai tekan sambil digeser aja)</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Packaging with box</span></p>', '50000', '6.jpg', NULL, '2022-01-26 21:05:51', '2022-01-26 21:05:51'),
(2, 1, 'STRAP MASKER 2IN1 Rosequartz Butterfly', '<p><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Material : batu berkualitas</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Tali elastis export quality</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Stopper round bisa untuk atur panjang pendeknya tali sesuai kebutuhan kita (caranya tinggal tekan aja dan geser)</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Design classy, looknya cantik elegant</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Nyaman dipakai</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Packaging with box cocok untuk kado saudara maupun bestie kamu</span></p>', '48000', '7.jpg', NULL, '2022-01-26 21:47:19', '2022-01-26 21:47:19'),
(3, 1, 'STRAP MASKER 2IN1 PREMIUM Brown', '<p><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Material : batu berkualitas</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Tali elastis export quality</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Stopper round bisa untuk atur panjang pendeknya tali sesuai kebutuhan kita (caranya tinggal tekan aja dan geser)</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Design classy, looknya cantik elegant</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Nyaman dipakai</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Packaging with box cocok utk kado sodara maupun bestie kamu</span></p>', '30000', '12.jpg', NULL, '2022-01-26 21:51:31', '2022-01-26 21:51:31'),
(4, 2, 'STRAP MASKER 2IN1  Crystal pearl', '<p><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Material : Batu berkualitas mix synthetic pearl</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Tali elastis export quality</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Stopper round bisa untuk atur panjang pendeknya tali sesuai kebutuhan kita (caranya tinggal tekan aja dan geser-geser)</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Design classy,, looknya cantik elegant</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Nyaman dipakai</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Packaging with box cocok utk kado sodara maupun bestie kamu</span></p>', '35000', '4.jpg', NULL, '2022-01-30 04:16:21', '2022-01-30 04:16:21'),
(5, 2, 'STRAP MASKER 2IN1 PREMIUM Black', '<p><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅ Panjang +- 65cm</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Matterial batu berkualitas</span></p>', '40000', '5.jpg', NULL, '2022-01-30 04:18:45', '2022-01-30 04:18:45'),
(6, 2, 'STRAP MASKER 2IN1 PREMIUM Orange', '<p><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✨3 size options for our strapmask✨</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Buat kamu yang punya masalah kepanjangan kalo pake strapmask, sekarang kami hadirkan 3 plihan size</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Untuk ukurn normal yang biasa dijual adalah ukuran L.</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Dari 3 ukuran ini perbedaannya adalah di panjang batunya, ukuran L paling banyak pasang batunya.</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅ Kamu yang biasa pake hijab dengan iketan rambut yang cukup besar atau agak tinggi bisa plih size L</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Kamu yang berhijab ada iketan rambutnya sedeng aja bisa plih size M</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Yang berhijab tapi iketan rambutnya kecil doang bisa plih sise S</span></p>', '480000', '8.jpg', NULL, '2022-01-30 04:26:12', '2022-01-30 04:26:12'),
(7, 2, 'STRAP MASKER 2IN Indian Brown', '<p><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Material batu alam berkualitas</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Tali elastis export quality</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Stopper round bisa untuk atur panjang pendeknya tali sesuai kebutuhan kita (caranya tinggal tekan aja dan geser-geser)</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Design classy, looknya cantik elegant</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Nyaman dipakai</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Packaging with box cocok untuk kado sodara maupun bestie kamu</span></p>', '45000', '11.jpg', NULL, '2022-01-30 04:31:01', '2022-01-30 04:31:01'),
(8, 2, 'STRAP MASKER 2IN1 Black & White II', '<p><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Material batu berkualitas</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Tali elastis import quality dengan plihan warna2 yang super best banget</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Panjang keseluruhan kurang lebih 65cm</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Tali dilengkapi dengan stopper bulat berfungsi untuk mengatur panjng pendeknya tali (cara pakai tekan sambil digeser-geser aja)</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Packaging with box putih</span></p>', '50000', '13.jpg', NULL, '2022-01-30 04:33:50', '2022-01-30 04:33:50'),
(9, 2, 'STRAP MASKER 2IN1 Crystal Pearl White', '<p><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Material batu berkualitas</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Tali elastis import quality dengan plihan warna-warna yang super best banget</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Panjang keseluruhan kurang lebih 65cm</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Tali dilengkapi dengan stopper bulat berfungsi uuntuk mengatur panjang pendeknya tali (cara pakai tekan sambil digeser-geser aja)</span><br style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #262626; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">✅Packaging with box</span></p>', '35000', '14.jpg', NULL, '2022-01-30 04:36:39', '2022-01-30 04:36:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `description`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '<p>Pengemasan rapih</p>', '5', '2022-01-27 00:51:58', '2022-01-27 00:51:58'),
(2, 7, 8, '<p>masker nyaman dipakai</p>', '5', '2022-02-01 03:08:29', '2022-02-01 03:08:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsis`
--

CREATE TABLE `provinsis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `provinsis`
--

INSERT INTO `provinsis` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'DKI Jakarta', NULL, NULL),
(2, 'Jawa Barat', NULL, NULL),
(3, 'Jawa Tengah', NULL, NULL),
(4, 'Jawa Timur', NULL, NULL),
(5, 'Yogyakarta', NULL, NULL),
(6, 'DKI Jakarta', NULL, NULL),
(7, 'Jawa Barat', NULL, NULL),
(8, 'Jawa Tengah', NULL, NULL),
(9, 'Jawa Timur', NULL, NULL),
(10, 'Yogyakarta', NULL, NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'User1', 'user1@gmail.com', NULL, '$2y$10$DXnyRvDQv1pIM5aRqsOenOfb/akOZ2eRn3A/eoOCB3zB3gsip0lEm', NULL, '2022-01-30 16:38:39', '2022-01-30 16:38:39'),
(7, 'User2', 'user2@gmail.com', NULL, '$2y$10$DXnyRvDQv1pIM5aRqsOenOfb/akOZ2eRn3A/eoOCB3zB3gsip0lEm', NULL, '2022-01-30 17:16:52', '2022-01-30 17:16:52'),
(8, 'User3', 'user3@gmail.com', NULL, '$2y$10$DXnyRvDQv1pIM5aRqsOenOfb/akOZ2eRn3A/eoOCB3zB3gsip0lEm', NULL, '2022-01-31 02:24:18', '2022-01-31 02:24:20'),
(9, 'User4', 'user4@gmail.com', NULL, '$2y$10$DXnyRvDQv1pIM5aRqsOenOfb/akOZ2eRn3A/eoOCB3zB3gsip0lEm', NULL, '2022-01-31 02:24:21', '2022-01-30 19:13:45'),
(10, 'User5', 'user5@gmail.com', NULL, '$2y$10$DXnyRvDQv1pIM5aRqsOenOfb/akOZ2eRn3A/eoOCB3zB3gsip0lEm', NULL, '2022-01-30 19:11:16', '2022-01-30 19:11:16'),
(13, 'Putri', 'putri@gmail.com', NULL, '$2y$10$ufAeBu.E8xCfNvpk7iJ2SeWd6oqOtxx0beU/81IGI42A7b8R7vOne', NULL, '2022-01-31 08:41:34', '2022-01-31 08:41:34');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kecamatans`
--
ALTER TABLE `kecamatans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelurahans`
--
ALTER TABLE `kelurahans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kotas`
--
ALTER TABLE `kotas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `provinsis`
--
ALTER TABLE `provinsis`
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
-- AUTO_INCREMENT untuk tabel `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kecamatans`
--
ALTER TABLE `kecamatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `kelurahans`
--
ALTER TABLE `kelurahans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `kotas`
--
ALTER TABLE `kotas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `provinsis`
--
ALTER TABLE `provinsis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
