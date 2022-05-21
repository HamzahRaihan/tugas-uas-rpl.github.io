-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2022 at 07:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daging_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id_cart` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id_cart`, `user_id`, `product_id`, `banyak`, `total`) VALUES
(77, 19, 13, 1, 45000);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`) VALUES
(9, 'Bolu Jadul', 'bolu-jadul'),
(10, 'Bolu kukus', 'bolu-kukus');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id_driver` int(11) NOT NULL,
  `name_driver` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `no_pegawai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id_driver`, `name_driver`, `email`, `password`, `phone_number`, `jurusan`, `no_pegawai`) VALUES
(1, 'Sulton Rosadi', 'sulton@gmail.com', '$2y$10$GsqWG0SAYA2aB.M73mYz0.xzbUm0aVBaY8yZO4Xi0JXhWKCPzs1q2', '098887665455', 'JAKARTA', 11221133),
(2, 'Ahmad Faridh', 'farid@gmail.com', '$2y$10$jYa12Iccc3U5r.LOcVSi.etfKxweMBlRKJBfrwq.qf1/xu8q9UArG', '999999888767', 'BOGOR', 223355);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `unit` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `descriptions` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `stock` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id_product`, `product_name`, `unit`, `price`, `descriptions`, `category_id`, `stock`) VALUES
(13, 'Bolu Coklat', 1000, '45000', '', 9, '18000'),
(14, 'Bolu kukus', 1000, '3000', '', 10, '20000'),
(15, 'Bolu Jadul Original', 1000, '30000', '', 9, '40000');

-- --------------------------------------------------------

--
-- Table structure for table `products_galleries`
--

CREATE TABLE `products_galleries` (
  `id_gallery` int(11) NOT NULL,
  `photos` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_galleries`
--

INSERT INTO `products_galleries` (`id_gallery`, `photos`, `product_id`) VALUES
(1, '600104eb03a38.jpg', 1),
(2, '600104ce9b69e.jpg', 2),
(3, '600104f8a0997.jpg', 1),
(4, '60026547d7f93.jpg', 3),
(5, '6002656eba3d5.jpg', 4),
(6, '600ebe151ca22.png', 2),
(12, '6002cf749cccf.jpg', 7),
(13, '600ebe570ffd0.jpg', 3),
(14, '6003c040baec4.jpg', 8),
(15, '600ebfac95b8a.jpg', 8),
(16, '600ebdfacc340.png', 1),
(17, '600a368f4b692.jpg', 10),
(18, '600ebe36ba537.png', 2),
(19, '600ebe8184987.jpg', 3),
(20, '600ebece57d8c.jpg', 4),
(21, '600ebee07f7b5.jpg', 4),
(22, '600ebf6d45187.jpg', 7),
(23, '600ebf80c735f.png', 7),
(24, '600ebfc6b23c5.jpg', 8),
(25, '600ec04ed4350.jpg', 5),
(26, '600ec064aa140.jpg', 5),
(27, '600ec0719e06c.jpg', 5),
(28, '600ec18142208.jpg', 10),
(29, '600ec19130fe4.jpg', 10),
(30, '600ec1e730307.jpg', 12),
(31, '600ec1fd2b098.jpg', 12),
(32, '600ec20b44b6d.jpg', 12),
(33, '6267c6b353fe6.jpg', 13),
(35, '62886f0809bb6.jpg', 13),
(36, '628871ed3b870.jpg', 14),
(37, '6288723eac13e.jpg', 15);

-- --------------------------------------------------------

--
-- Table structure for table `rekening_numbers`
--

CREATE TABLE `rekening_numbers` (
  `id_rekening` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `rekening_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekening_numbers`
--

INSERT INTO `rekening_numbers` (`id_rekening`, `bank_name`, `number`, `rekening_name`) VALUES
(1, 'BCA', '0989878998787', 'Sayudi Cenah'),
(2, 'Mandiri', '076543212123', 'Mimin'),
(3, 'Syariah', '09999977656', 'Subardjoe');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id_transaction` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `rekening_id` int(11) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `weight_total` int(11) NOT NULL,
  `delivered` int(11) NOT NULL,
  `photo_transaction` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `time_arrived` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id_transaction`, `user_id`, `total_price`, `city`, `rekening_id`, `transaction_status`, `weight_total`, `delivered`, `photo_transaction`, `code`, `receiver`, `time_arrived`, `created_at`) VALUES
(1, 3, 260000, 'JAKARTA', 3, 'TERKIRIM', 4000, 0, '600d9b95c0711.jpg', 'EZM-57924', '', NULL, '2021-01-24 16:08:32'),
(2, 6, 200000, 'JAKARTA', 1, 'TERKIRIM', 4000, 0, '600d9c6b4e0d8.jpg', 'EZM-9366', '', NULL, '2021-01-24 16:12:13'),
(3, 9, 560000, 'JAKARTA', 1, 'KONFIRMASI', 3000, 0, '600e62cb73e61.png', 'EZM-86335', '', NULL, '2021-01-25 06:17:49'),
(4, 6, 100000, 'JAKARTA', 2, 'KONFIRMASI', 1000, 0, '600eba552a23c.png', 'EZM-81471', '', NULL, '2021-01-25 12:31:43'),
(5, 3, 218000, 'JAKARTA', 2, 'BELUM KONFIRMASI', 6000, 0, '6010cc60e12da.png', 'EZM-51571', '', NULL, '2021-01-25 13:06:50'),
(6, 9, 370000, 'JAKARTA', 1, 'TERKIRIM', 10000, 1, '6010ce5c5fc7f.png', 'EZM-98816', 'Mumun', '2021-01-27 05:26:45', '2021-01-27 02:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `transactions_details`
--

CREATE TABLE `transactions_details` (
  `id_transaction_detail` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `banyak` int(11) NOT NULL,
  `code_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions_details`
--

INSERT INTO `transactions_details` (`id_transaction_detail`, `transaction_id`, `product_id`, `price`, `banyak`, `code_product`) VALUES
(1, 1, 1, 50000, 2, 'PRD-12943'),
(2, 1, 2, 80000, 2, 'PRD-12943'),
(3, 2, 1, 50000, 2, 'PRD-13113'),
(4, 2, 1, 50000, 2, 'PRD-13113'),
(5, 3, 2, 80000, 2, 'PRD-40981'),
(6, 3, 6, 400000, 1, 'PRD-40981'),
(7, 4, 3, 100000, 1, 'PRD-60879'),
(8, 5, 5, 20000, 2, 'PRD-71011'),
(9, 5, 10, 75000, 2, 'PRD-71011'),
(10, 5, 12, 14000, 2, 'PRD-71011'),
(11, 6, 4, 36000, 5, 'PRD-94186'),
(12, 6, 1, 30000, 1, 'PRD-94186'),
(13, 6, 2, 40000, 4, 'PRD-94186');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `postal_code` varchar(191) NOT NULL,
  `roles` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `password`, `address`, `phone_number`, `postal_code`, `roles`) VALUES
(1, 'Hafizh Maulana Y', 'hafizhmy26@gmail.com', '$2y$10$/v28V4a4hxcdc3KtkVc8huoop7Ir2NKDk', '<p>Jln Gang Hamzah No 22</p>\r\n', '098987898765', '11111111', 'ADMIN'),
(3, 'AMANDA PUTRI', 'manda@gmail.com', '$2y$10$2jrwSDZqHQgKlTUxPGnRau8ZD8Jgj9lNE', '<p>Jln Kampung Gunung No 22</p>\r\n', '099998887776', '224455', 'USER'),
(6, 'Vita Mahandari', 'vita@gmail.com', '$2y$10$2s/dgjADHLW1D5Ha.1qdz.as3ShDVYB/2', '<p>Jln Rawa Belong No 54</p>\r\n', '098765432111', '445566', 'USER'),
(10, 'Syatya Athary', 'athar@gmail.com', '$2y$10$LGiCeFBz8fFfOTkL8hMJxO1P6e6qq2aW3', '<p>Jln H sanusi Gang Hamzah No 28</p>\r\n', '098777776668', '12345', 'OWNER'),
(18, 'hamzah', 'hamzah@gmail.com', '$2y$10$w3fN1eHMZM48hLFYrfrl3e9oqsWDee29BeBHibhJqZiQiwLzo/tFu', NULL, '089', '', 'ADMIN'),
(19, 'why', 'why@gmail.com', '$2y$10$2Ow8o/KFZ9LezC08pMYqT.cUUb3aaHxoMYdqnUh2K7Dj.dJmMidme', '', '980', '', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id_driver`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `products_galleries`
--
ALTER TABLE `products_galleries`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `rekening_numbers`
--
ALTER TABLE `rekening_numbers`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id_transaction`);

--
-- Indexes for table `transactions_details`
--
ALTER TABLE `transactions_details`
  ADD PRIMARY KEY (`id_transaction_detail`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id_driver` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products_galleries`
--
ALTER TABLE `products_galleries`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `rekening_numbers`
--
ALTER TABLE `rekening_numbers`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id_transaction` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transactions_details`
--
ALTER TABLE `transactions_details`
  MODIFY `id_transaction_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
