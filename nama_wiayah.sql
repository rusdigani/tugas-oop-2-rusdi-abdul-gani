-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Apr 2022 pada 19.57
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nama_wiayah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kabkota`
--

CREATE TABLE `tbl_kabkota` (
  `id_kabkota` int(11) NOT NULL,
  `kode_kabkota` varchar(26) NOT NULL,
  `nama_kabkota` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `kode_provinsi` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kabkota`
--

INSERT INTO `tbl_kabkota` (`id_kabkota`, `kode_kabkota`, `nama_kabkota`, `created_at`, `updated_at`, `kode_provinsi`) VALUES
(101, 'KSU', 'Kabupaten Adm. Kepulauan Seribu', '2022-04-13 14:32:21', '2022-04-13 14:41:41', 'ID-JK'),
(102, 'TNA', 'Kota Adm. Jakarta Pusat', '2022-04-13 14:38:29', '2022-04-13 14:41:53', 'ID-JK'),
(103, 'TJP', 'Kota Adm. Jakarta Utara', '2022-04-13 14:45:03', '2022-04-13 14:45:04', 'ID-JK'),
(104, 'GGP', 'Kota Adm. Jakarta Barat', '2022-04-13 14:46:12', '2022-04-13 14:48:26', 'ID-JK'),
(105, 'KYB', 'Kota Adm. Jakarta Selatan', '2022-04-13 14:49:18', '2022-04-13 14:49:19', 'ID-JK'),
(106, 'CKG', 'Kota Adm. Jakarta Timur', '2022-04-13 14:50:28', '2022-04-13 14:50:29', 'ID-JK'),
(201, 'CBI', 'Kabupaten Bogor', '2022-04-13 14:51:11', '2022-04-13 14:51:12', 'ID-JB'),
(202, 'SBM', 'Kabupaten Sukabumi', '2022-04-13 14:56:17', '2022-04-13 14:56:18', 'ID-JB'),
(203, 'CJR', 'Kabupaten Cianjur', '2022-04-13 14:56:52', '2022-04-13 14:57:07', 'ID-JB'),
(204, 'SOR', 'Kabupaten Bandung', '2022-04-13 14:57:58', '2022-04-13 14:57:59', 'ID-JB'),
(205, 'GRT', 'Kabupaten Garut', '2022-04-13 14:58:58', '2022-04-13 14:59:00', 'ID-JB'),
(206, 'SPA', 'Kabupaten Tasikmalaya', '2022-04-13 14:59:45', '2022-04-13 14:59:48', 'ID-JB'),
(207, 'CMS', 'Kabupaten Ciamis', '2022-04-13 15:00:34', '2022-04-13 15:00:35', 'ID-JB'),
(208, 'KNG', 'Kabupaten Kuningan', '2022-04-13 15:01:16', '2022-04-13 15:01:29', 'ID-JB'),
(209, 'SBR', 'Kabupaten Cirebon', '2022-04-13 15:02:16', '2022-04-13 15:02:17', 'ID-JB'),
(210, 'MJL', 'Kabupaten Majalengka', '2022-04-13 15:02:40', '2022-04-13 15:03:21', 'ID-JB'),
(211, 'SMD', 'Kabupaten Sumedang', '2022-04-13 15:04:04', '2022-04-13 15:04:24', 'ID-JB'),
(212, 'IDM', 'Kabupaten Indramayu', '2022-04-13 15:05:12', '2022-04-13 15:05:13', 'ID-JB'),
(213, 'SNG', 'Kabupaten Subang', '2022-04-13 15:05:53', '2022-04-13 15:06:14', 'ID-JB'),
(214, 'PWK', 'Kabupaten Purwakarta', '2022-04-13 15:07:04', '2022-04-13 15:07:06', 'ID-JB'),
(215, 'KWG', 'Kabupaten Karawang', '2022-04-13 15:08:07', '2022-04-13 15:08:08', 'ID-JB'),
(216, 'CKR', 'Kabupaten Bekasi', '2022-04-13 15:09:01', '2022-04-13 15:09:02', 'ID-JB'),
(217, 'NPH', 'Kabupaten Bandung Barat', '2022-04-13 15:09:44', '2022-04-13 15:09:48', 'ID-JB'),
(218, 'BGR', 'Kota Bogor', '2022-04-13 15:10:34', '2022-04-13 15:10:43', 'ID-JB'),
(219, 'SKB', 'Kota Sukabumi', '2022-04-13 15:11:59', '2022-04-13 15:12:00', 'ID-JB'),
(220, 'BDG', 'Kota Bandung', '2022-04-13 15:12:32', '2022-04-13 15:12:33', 'ID-JB'),
(221, 'CBN', 'Kota Cirebon', '2022-04-13 15:13:32', '2022-04-13 15:13:33', 'ID-JB'),
(222, 'BKS', 'Kota Bekasi', '2022-04-13 15:14:04', '2022-04-13 15:14:05', 'ID-JB'),
(223, 'DPK', 'Kota Depok', '2022-04-13 15:14:43', '2022-04-13 15:14:45', 'ID-JB'),
(224, 'CMH', 'Kota Cimahi', '2022-04-13 15:15:19', '2022-04-13 15:15:20', 'ID-JB'),
(225, 'TSM', 'Kota Tasikmalaya', '2022-04-13 15:16:13', '2022-04-13 15:16:14', 'ID-JB'),
(226, 'BJR', 'Kota Banjar', '2022-04-13 15:16:53', '2022-04-13 15:16:54', 'ID-JB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `kode_provinsi` varchar(26) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `nama_provinsi` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_provinsi`
--

INSERT INTO `tbl_provinsi` (`id_provinsi`, `kode_provinsi`, `created_at`, `updated_at`, `nama_provinsi`) VALUES
(1, 'ID-JK', '2022-04-13 14:25:53', '2022-04-13 14:26:01', 'DKI-JAKARTA'),
(2, 'ID-JB', '2022-04-13 14:28:15', '2022-04-13 14:28:17', 'JAWA BARAT');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_kabkota`
--
ALTER TABLE `tbl_kabkota`
  ADD PRIMARY KEY (`id_kabkota`) USING BTREE,
  ADD UNIQUE KEY `kode_kabkota` (`kode_kabkota`) USING BTREE,
  ADD KEY `kode_provinsi` (`kode_provinsi`);

--
-- Indeks untuk tabel `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  ADD PRIMARY KEY (`id_provinsi`) USING BTREE,
  ADD UNIQUE KEY `kode_provinsi` (`kode_provinsi`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_kabkota`
--
ALTER TABLE `tbl_kabkota`
  MODIFY `id_kabkota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;

--
-- AUTO_INCREMENT untuk tabel `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  MODIFY `id_provinsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
