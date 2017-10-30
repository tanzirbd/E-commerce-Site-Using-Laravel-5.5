-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2017 at 04:13 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Sony', '<p>Well</p>', 1, '2017-10-21 07:28:23', '2017-10-21 07:28:23'),
(2, 'Walton', '<p>Well   </p>', 1, '2017-10-21 08:06:30', '2017-10-21 08:06:30'),
(3, 'Samsung', '<p>Well</p>', 0, '2017-10-21 08:06:42', '2017-10-21 08:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'Odio dolore sunt rerum eligendi quia. Quo modi exercitationem ipsum ullam quod provident nisi. Voluptate repellendus consequatur laudantium illum aut.', 1, '2017-10-21 07:19:12', '2017-10-23 07:45:15'),
(4, 'Sports', 'Odio natus in porro. Perferendis nam enim ducimus eum.', 1, '2017-10-21 07:19:12', '2017-10-23 07:45:17'),
(5, 'Man Fashion', 'Et perferendis recusandae eum consequatur minima quos. Ut tempora est aliquam. Quisquam fugiat harum tempore omnis labore dolorem.', 1, '2017-10-21 07:19:12', '2017-10-21 07:19:12');

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
(3, '2017_10_19_181421_create_categories_table', 1),
(4, '2017_10_20_102152_create_brands_table', 1),
(5, '2017_10_21_133625_create_products_table', 2),
(6, '2017_10_21_143422_create_sub_images_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_count` int(11) NOT NULL DEFAULT '0',
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `product_price`, `product_quantity`, `short_description`, `long_description`, `product_image`, `sales_count`, `publication_status`, `created_at`, `updated_at`) VALUES
(3, 1, 1, 'New NAme', 12341212.00, 2133, 'cxz ZZzx ascas', 'asdasdasdasdasda', 'product-images/b3.jpg', 0, 1, '2017-10-23 06:57:04', '2017-10-23 06:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `sub_images`
--

CREATE TABLE `sub_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sub_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_images`
--

INSERT INTO `sub_images` (`id`, `product_id`, `sub_image`, `created_at`, `updated_at`) VALUES
(1, 3, 'sub-images/Ixia-Contact-1400x500.jpg', '2017-10-23 06:57:04', '2017-10-23 06:57:04'),
(2, 3, 'sub-images/n.jpg', '2017-10-23 06:57:04', '2017-10-23 06:57:04'),
(3, 3, 'sub-images/n.png', '2017-10-23 06:57:04', '2017-10-23 06:57:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shaun Hoeger', 'garret40@example.com', '$2y$10$Ke4iVLa0nKxy/twOxS4gZOOyZKVLbkpsT.xye0sz6MgMTUBGvbHJu', 'yWmv7OPid2', '2017-10-21 06:50:18', '2017-10-21 06:50:18'),
(2, 'Coralie Lind', 'angus.damore@example.net', '$2y$10$Ke4iVLa0nKxy/twOxS4gZOOyZKVLbkpsT.xye0sz6MgMTUBGvbHJu', 'BCmv9r895b', '2017-10-21 06:50:18', '2017-10-21 06:50:18'),
(3, 'Federico Jakubowski', 'cwilderman@example.com', '$2y$10$Ke4iVLa0nKxy/twOxS4gZOOyZKVLbkpsT.xye0sz6MgMTUBGvbHJu', 'iu4jTh8Qzp', '2017-10-21 06:50:18', '2017-10-21 06:50:18'),
(4, 'Adella Yundt MD', 'donald.marvin@example.net', '$2y$10$Ke4iVLa0nKxy/twOxS4gZOOyZKVLbkpsT.xye0sz6MgMTUBGvbHJu', 'PubPCiEx86', '2017-10-21 06:50:18', '2017-10-21 06:50:18'),
(5, 'Mr. Evans Cormier MD', 'rosella.conn@example.com', '$2y$10$Ke4iVLa0nKxy/twOxS4gZOOyZKVLbkpsT.xye0sz6MgMTUBGvbHJu', '3OERvImbCT', '2017-10-21 06:50:18', '2017-10-21 06:50:18'),
(6, 'Prof. Guido Johnson V', 'gorczany.yoshiko@example.net', '$2y$10$Ke4iVLa0nKxy/twOxS4gZOOyZKVLbkpsT.xye0sz6MgMTUBGvbHJu', '219W8LGSLj', '2017-10-21 06:50:18', '2017-10-21 06:50:18'),
(7, 'Elna Ward', 'tdickens@example.com', '$2y$10$Ke4iVLa0nKxy/twOxS4gZOOyZKVLbkpsT.xye0sz6MgMTUBGvbHJu', 'UuTrKLml0M', '2017-10-21 06:50:18', '2017-10-21 06:50:18'),
(8, 'Ryann Hermiston MD', 'kozey.alexie@example.com', '$2y$10$Ke4iVLa0nKxy/twOxS4gZOOyZKVLbkpsT.xye0sz6MgMTUBGvbHJu', 'lz74dxnl4b', '2017-10-21 06:50:18', '2017-10-21 06:50:18'),
(9, 'Tito Lehner', 'rmueller@example.org', '$2y$10$Ke4iVLa0nKxy/twOxS4gZOOyZKVLbkpsT.xye0sz6MgMTUBGvbHJu', 'aJAwkLgZE3', '2017-10-21 06:50:18', '2017-10-21 06:50:18'),
(10, 'Mr. Jamar Rohan III', 'swunsch@example.com', '$2y$10$Ke4iVLa0nKxy/twOxS4gZOOyZKVLbkpsT.xye0sz6MgMTUBGvbHJu', 'yOQRQDLdwW', '2017-10-21 06:50:18', '2017-10-21 06:50:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_images`
--
ALTER TABLE `sub_images`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sub_images`
--
ALTER TABLE `sub_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
