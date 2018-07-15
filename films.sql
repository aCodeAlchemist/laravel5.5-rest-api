-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2018 at 12:48 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `films`
--

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `release_date` date NOT NULL,
  `rating` int(11) NOT NULL,
  `ticket_price` double(8,2) NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `name`, `slug`, `description`, `release_date`, `rating`, `ticket_price`, `country`, `genre`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'y0wEAV28Y9', 'y0weav28y9', 'IvsMi4c34c14rFB8Yp8x6dlbnshbf5IgjdfW1sz8w62EkIUr1PupFFApCl4D4tKvdoFBMYlw98QPXmcKbB5A30EV87IPd24HbdpS', '2018-07-15', 2, 94.00, 'India', 'MJ99AR2r0J', 'https://cdn-2.cinemaparadiso.co.uk/1712111035356_l.jpg', NULL, NULL),
(2, 'MPFHCXhEtO', 'mpfhcxheto', 'PqGfLbIbUu3KpBr5o287vFHBYFxhhuOPVsAJDaCtUytbsXlgNYul67SyhKE8YjINJRv0C9xVbFLi6sqbXGzojA1v69cP0F690JRM', '2018-07-15', 2, 99.00, 'India', 'IfiOhtBn8D', 'https://cdn-2.cinemaparadiso.co.uk/1712111035356_l.jpg', NULL, NULL),
(3, 'SnpRT2nneC', 'snprt2nnec', 'ET9gcbfeMCxnmU8CcyjPRCsjlAIxeng65lHdeSSazEf2wY0KQueEXjWdDt3WDe2TwytXYsQgSFvMhGts4sUKrJ2b8UnTjHVwTs9y', '2018-07-15', 3, 100.00, 'India', 'ClT8kUV0oT', 'https://cdn-2.cinemaparadiso.co.uk/1712111035356_l.jpg', NULL, NULL),
(4, 'Middle School: The Worst Years of My Life', 'middle-school:-the-worst-years-of-my-life', 'After his principal (Andy Daly) destroys his sketchbook, Rafe (Griffin Gluck) and his best friend Leo (Thomas Barbusca) decide to \"destroy his book\" and break every rule in the school\'s Code of Conduct.', '2018-07-01', 4, 50.00, 'India', 'Action', 'https://m.media-amazon.com/images/M/MV5BNjQzMTczNjI0Ml5BMl5BanBnXkFtZTgwODY5MTY5OTE@._V1_UX182_CR0,0,182,268_AL__QL50.jpg', '2018-07-15 03:52:25', '2018-07-15 03:52:25'),
(5, 'Allah Tala', 'allah-tala', 'Allah Tala', '2018-07-10', 1, 50.00, 'Pakistan', 'Action', 'https://m.media-amazon.com/images/M/MV5BMTYwNzIxMjY5NF5BMl5BanBnXkFtZTcwODMwODY0OA@@._V1_UY268_CR2,0,182,268_AL__QL50.jpg', '2018-07-15 05:02:49', '2018-07-15 05:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `film_comments`
--

CREATE TABLE `film_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `film_comments`
--

INSERT INTO `film_comments` (`id`, `film_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Nice Film.', '2018-07-14 23:59:46', '2018-07-14 23:59:46'),
(2, 1, 1, 'Really Nice Film.', '2018-07-15 02:13:10', '2018-07-15 02:13:10'),
(3, 1, 2, 'this is amazing!', '2018-07-15 04:53:04', '2018-07-15 04:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_15_032451_create_films_table', 1),
(4, '2018_07_15_033842_create_film_comments_table', 1),
(5, '2018_07_15_045121_adds_api_token_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `api_token`) VALUES
(1, 'John', 'john.doe@gmail.com', '$2y$10$DKQ8JQfbnBHcyHP32VibzO7BFdh8jhkTVCw4ycp/dLA4O15ifGqGq', NULL, '2018-07-14 23:55:16', '2018-07-15 03:12:07', 'CSgwVo4FsaBud538JOuin5PtY8EkAYRKyJklCC1Jijhn33PpDIUkim2KGe9Y'),
(2, 'jay', 'jay@gmail.com', '$2y$10$NILcZlFpXxHC8MNdGZCaTugOQxj5Rjx4U.W/.4H9E6a8yxJrwCcby', NULL, '2018-07-15 03:06:41', '2018-07-15 04:52:51', '8BZbKupfDsXDBfRVYw32GT5QwlA99podXkwiKrT9gFEMNeLV2QU9mTOUa3fR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film_comments`
--
ALTER TABLE `film_comments`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `film_comments`
--
ALTER TABLE `film_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
