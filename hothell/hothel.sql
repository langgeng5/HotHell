-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2018 at 08:29 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hothel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id_hotel` int(11) NOT NULL,
  `nama_hotel` varchar(100) NOT NULL,
  `owner` int(11) NOT NULL,
  `tdup` text NOT NULL,
  `provinsi` int(11) NOT NULL,
  `kabupaten` int(11) NOT NULL,
  `lat` decimal(10,0) NOT NULL,
  `long` decimal(10,0) NOT NULL,
  `alamat` text NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_kadaluarsa_app` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_booking`
--

CREATE TABLE `hotel_booking` (
  `id_trh` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `tgl_checkin` datetime NOT NULL,
  `tgl_pengajuan` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `bukti_pembayaran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_jenis_kamar`
--

CREATE TABLE `hotel_jenis_kamar` (
  `id_hjk` int(11) NOT NULL,
  `jenis_kamar` varchar(50) NOT NULL,
  `detail_kamar` text NOT NULL,
  `harga_kamar` decimal(10,0) NOT NULL,
  `total_kamar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel_jenis_kamar`
--

INSERT INTO `hotel_jenis_kamar` (`id_hjk`, `jenis_kamar`, `detail_kamar`, `harga_kamar`, `total_kamar`) VALUES
(2, 'jenis22334', 'tidak ada', '2000', 1),
(3, 'ekonomi', 'kelas ekonomi', '10000', 100),
(4, 'jenis3', 'blablabla', '2900', 2),
(5, 'jenis4', 'tes', '288000', 3),
(6, 'bisnis', 'coba', '289890000', 2),
(7, 'ya', 'ya', '1000', 12);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_transaksi`
--

CREATE TABLE `hotel_transaksi` (
  `id_trk` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `nama_tamu` varchar(100) NOT NULL,
  `jenis_kamar` int(11) NOT NULL,
  `biaya_sewa` decimal(10,0) NOT NULL,
  `tgl_checkin` datetime NOT NULL,
  `tgl_checkout` datetime NOT NULL,
  `charge_sewa` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL,
  `id_pengirim` int(11) NOT NULL,
  `id_penerima` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transasksi_sewa_app`
--

CREATE TABLE `transasksi_sewa_app` (
  `id_trsa` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `tgl_transaksi` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_pass_token`
--

CREATE TABLE `user_pass_token` (
  `id_upt` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_pemesan`
--

CREATE TABLE `user_pemesan` (
  `id_user` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `tgl_daftar` datetime NOT NULL,
  `user_type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Indexes for table `hotel_jenis_kamar`
--
ALTER TABLE `hotel_jenis_kamar`
  ADD PRIMARY KEY (`id_hjk`);

--
-- Indexes for table `hotel_transaksi`
--
ALTER TABLE `hotel_transaksi`
  ADD PRIMARY KEY (`id_trk`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `transasksi_sewa_app`
--
ALTER TABLE `transasksi_sewa_app`
  ADD PRIMARY KEY (`id_trsa`);

--
-- Indexes for table `user_pass_token`
--
ALTER TABLE `user_pass_token`
  ADD PRIMARY KEY (`id_upt`);

--
-- Indexes for table `user_pemesan`
--
ALTER TABLE `user_pemesan`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hotel_jenis_kamar`
--
ALTER TABLE `hotel_jenis_kamar`
  MODIFY `id_hjk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `hotel_transaksi`
--
ALTER TABLE `hotel_transaksi`
  MODIFY `id_trk` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transasksi_sewa_app`
--
ALTER TABLE `transasksi_sewa_app`
  MODIFY `id_trsa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_pass_token`
--
ALTER TABLE `user_pass_token`
  MODIFY `id_upt` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_pemesan`
--
ALTER TABLE `user_pemesan`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
