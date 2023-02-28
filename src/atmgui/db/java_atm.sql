-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 28, 2023 at 02:17 PM
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
(4, 1, 'setor', 100000, 500000, '2023-02-27 06:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id` int NOT NULL,
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

INSERT INTO `transfer` (`id`, `bank_penerima`, `id_user_pengirim`, `jumlah`, `penerima`, `pengirim`, `tgl`) VALUES
(1, 'BCA', 1, 50000, 'GILANG PEDO', 'FIANTYO', '2023-02-28 17:33:04'),
(2, 'BCA', 1, 20000, 'GILANG PEDO', 'FIANTYO', '2023-02-28 21:07:57');

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
(1, 1, 430000, 'FIANTYO', 98760, '123451'),
(10, 1, 570000, 'GILANG PEDO', 76201, '121314'),
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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
