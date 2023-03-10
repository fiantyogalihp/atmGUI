-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 28, 2023 at 10:11 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java_atm`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int NOT NULL,
  `nama_bank` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `nama_bank`) VALUES
(1, 'BCA');

-- --------------------------------------------------------

--
-- Table structure for table `setor_tarik_tunai`
--

CREATE TABLE `setor_tarik_tunai` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `jenis` enum('setor','tarik') NOT NULL,
  `jumlah` double NOT NULL,
  `sisa_saldo` double NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `setor_tarik_tunai`
--

INSERT INTO `setor_tarik_tunai` (`id`, `user_id`, `jenis`, `jumlah`, `sisa_saldo`, `tgl`) VALUES
(1, 1, 'tarik', 50000, 450000, '2023-02-27 02:24:42'),
(2, 1, '', 50000, 450000, '2023-02-27 05:50:13'),
(3, 1, 'tarik', 50000, 400000, '2023-02-27 06:08:15'),
(4, 1, 'setor', 100000, 500000, '2023-02-27 06:09:03'),
(5, 1, 'setor', 50000, 480000, '2023-02-28 22:35:53'),
(6, 1, 'setor', 300000, 670000, '2023-03-01 01:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id` int NOT NULL,
  `uuid` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `bank_penerima` varchar(10) NOT NULL,
  `id_user_pengirim` int NOT NULL,
  `jumlah` double NOT NULL,
  `penerima` varchar(20) NOT NULL,
  `pengirim` varchar(20) NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`id`, `uuid`, `bank_penerima`, `id_user_pengirim`, `jumlah`, `penerima`, `pengirim`, `tgl`) VALUES
(1, '0', 'BCA', 1, 50000, 'GILANG PEDO', 'FIANTYO', '2023-02-28 17:33:04'),
(2, '0', 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-02-28 21:07:57'),
(3, '82885', 'BCA', 1, 50000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 01:23:15'),
(4, '39', 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 01:28:11'),
(5, '5013646', 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 01:29:03'),
(6, '6631', 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 01:29:55'),
(7, '0', 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 01:33:26'),
(8, '483', 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 01:40:46'),
(9, '0', 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 01:41:42'),
(10, '0', 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 01:44:05'),
(11, '17', 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 01:50:50'),
(12, '0', 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 01:53:58'),
(13, '0', 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 02:10:19'),
(14, '63967', 'BCA', 1, 100000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 02:13:30'),
(15, '1', 'BCA', 1, 50000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 02:31:51'),
(16, '0', 'BCA', 1, 80000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 03:53:25'),
(17, '0', 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 04:05:37'),
(18, '0', 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 04:07:55'),
(19, '0', 'BCA', 1, 30000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 04:21:41'),
(20, '0', 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 05:05:15'),
(21, '7137ccd1-acdb-4056-b', 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 05:06:51'),
(22, '5ff8a98c-b177-4ce2-bfab-921ac23bdab0', 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-03-01 05:09:24');

--
-- Triggers `transfer`
--
DELIMITER $$
CREATE TRIGGER `update_saldo` AFTER INSERT ON `transfer` FOR EACH ROW BEGIN
    UPDATE user SET jumlah_saldo = jumlah_saldo - NEW.jumlah WHERE id = NEW.id_user_pengirim;
    UPDATE user SET jumlah_saldo = jumlah_saldo + NEW.jumlah WHERE nama = NEW.penerima;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `id_bank` int NOT NULL,
  `jumlah_saldo` double NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_rekening` int NOT NULL,
  `pin` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `id_bank`, `jumlah_saldo`, `nama`, `no_rekening`, `pin`) VALUES
(1, 1, 170000, 'FIANTYO', 98760, '123451'),
(10, 1, 1180000, 'GILANG PEDO', 76201, '121314'),
(11, 1, 500000, 'UWIIII', 659995, '1122443');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setor_tarik_tunai`
--
ALTER TABLE `setor_tarik_tunai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_pin` (`pin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setor_tarik_tunai`
--
ALTER TABLE `setor_tarik_tunai`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
