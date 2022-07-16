-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2022 at 07:56 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laragigs`
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
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `tags`, `company`, `location`, `email`, `website`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Amet rerum et aut eius repudiandae et ab.', 'laravel, api, backend', 'Dach PLC', 'Schneiderborough', 'aniyah90@sporer.com', 'http://www.douglas.com/iste-nostrum-ullam-eos-qui-fugit', 'Omnis repellat deserunt iure laborum quibusdam debitis voluptas. Id maxime qui ratione. Non et perferendis necessitatibus nihil omnis. Enim et aut dolores quod maiores facere. Repellat mollitia ratione sit ut sit sit est.', '2022-07-16 15:31:50', '2022-07-16 15:31:50'),
(2, 'Sit voluptatem et nesciunt ullam repudiandae debitis.', 'laravel, api, backend', 'Frami-Kautzer', 'New Ruthechester', 'walter.reginald@grant.com', 'http://www.douglas.com/ratione-quae-debitis-corrupti-rerum-aperiam', 'Laboriosam repudiandae totam aut totam. Fugit magnam laudantium eum odio dignissimos id ducimus. Asperiores inventore voluptatum aspernatur aspernatur. Molestiae odio eveniet officiis quasi. Voluptas illo iure vitae iste saepe odio. Quam doloremque occaecati qui voluptatem dolor qui at et.', '2022-07-16 15:31:50', '2022-07-16 15:31:50'),
(3, 'Rerum nam eum repudiandae ipsa.', 'laravel, api, backend', 'Larkin, Dooley and Orn', 'Cartwrightland', 'dameon.reynolds@beer.biz', 'http://www.pouros.com/dignissimos-quia-sed-iusto-beatae-similique-voluptatem-non-quia.html', 'Minus at minus sit similique hic est. Consequatur porro ut qui sed est in provident. Sapiente ipsum reiciendis id ad maxime maiores et nemo. Consectetur iste eaque rerum officiis quae et. Consequuntur rerum nihil et debitis nesciunt. Ut sit vel quos quo.', '2022-07-16 15:31:50', '2022-07-16 15:31:50'),
(4, 'Sit molestiae quia autem.', 'laravel, api, backend', 'Gorczany-Wunsch', 'Strackemouth', 'kihn.elvera@pouros.com', 'http://oconner.com/sequi-laboriosam-et-libero-cumque-optio-quo.html', 'Ipsam et ipsum quia nulla. Aut rem unde ipsa. Maiores accusantium corporis voluptas quia itaque. Eum quos velit in rem aut numquam. Non itaque dicta debitis voluptatem.', '2022-07-16 15:31:50', '2022-07-16 15:31:50'),
(5, 'Animi aut et voluptatum at nam.', 'laravel, api, backend', 'Cassin, Rempel and Conn', 'Port Zaria', 'jaclyn86@adams.com', 'https://www.durgan.info/modi-ab-aliquam-quis-distinctio-aspernatur-voluptatibus', 'Error dolor quia sunt quis omnis. Ut omnis itaque sit voluptatibus magnam. Voluptatem temporibus sequi architecto. Esse perferendis illum ea corporis ut quisquam dolores. Ratione numquam sit laboriosam quia aspernatur.', '2022-07-16 15:31:50', '2022-07-16 15:31:50'),
(6, 'Nulla accusantium amet molestiae in.', 'laravel, api, backend', 'Stark and Sons', 'Port Garretthaven', 'xkris@buckridge.com', 'http://www.will.com/', 'Sint ipsam ut similique quia quod. Vel et ducimus et voluptas soluta illo. Ipsum temporibus eligendi quasi veniam culpa deleniti quia exercitationem. Quia deleniti et illum mollitia eos consequatur consectetur eos.', '2022-07-16 15:31:50', '2022-07-16 15:31:50');

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
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2022_07_16_171310_create_listings_table', 1);

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
(1, 'Mariam Howell', 'msmith@example.com', '2022-07-16 15:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GQINixSjQG', '2022-07-16 15:31:50', '2022-07-16 15:31:50'),
(2, 'Tyree Kuhn', 'wellington14@example.net', '2022-07-16 15:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iEGf1uahQz', '2022-07-16 15:31:50', '2022-07-16 15:31:50'),
(3, 'Mr. Stuart Wisozk', 'lhermann@example.org', '2022-07-16 15:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wa9oH8lWki', '2022-07-16 15:31:50', '2022-07-16 15:31:50'),
(4, 'Kathryn Zemlak', 'maggie.wilkinson@example.com', '2022-07-16 15:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lUygM4LDwZ', '2022-07-16 15:31:50', '2022-07-16 15:31:50'),
(5, 'Sage Larson', 'considine.aiyana@example.net', '2022-07-16 15:31:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ukj8TLueoN', '2022-07-16 15:31:50', '2022-07-16 15:31:50');

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
-- Indexes for table `listings`
--
ALTER TABLE `listings`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
