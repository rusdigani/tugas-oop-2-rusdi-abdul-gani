-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Apr 2022 pada 07.01
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
-- Database: `wilayah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kabkota`
--

CREATE TABLE `tbl_kabkota` (
  `id_kabkota` int(11) NOT NULL,
  `kode_kabkota` varchar(6) NOT NULL,
  `nama_kabkota` varchar(39) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `kode_provinsi` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kabkota`
--

INSERT INTO `tbl_kabkota` (`id_kabkota`, `kode_kabkota`, `nama_kabkota`, `created_at`, `updated_at`, `kode_provinsi`) VALUES
(11, 'CBI', 'KABUPATEN BOGOR', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(12, 'SBM', 'KABUPATEN SUKABUMI', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(13, 'CJR', 'KABUPATEN CIANJUR', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(14, 'SOR', 'KABUPATEN BANDUNG', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(15, 'GRT', 'KABUPATEN GARUT', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(16, 'SPA', 'KABUPATEN TASIKMALAYA', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(17, 'CMS', 'KABUPATEN CIAMIS', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(18, 'KNG', 'KABUPATEN KUNINGAN', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(19, 'SBR', 'KABUPATEN CIREBON', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(21, 'KSU', 'KEPULAUAN SERIBU', '2022-04-12 16:22:48', '2022-04-12 16:23:19', 'ID-JK'),
(22, 'TNA', 'JAKARTA PUSAT', '2022-04-12 16:23:07', '2022-04-12 16:23:46', 'ID-JK'),
(23, 'TJP', 'JAKARTA UTARA', '2022-04-12 16:24:35', NULL, 'ID-JK'),
(24, 'GGP', 'JAKARTA BARAT', '2022-04-12 16:37:41', NULL, 'ID-JK'),
(25, 'KYB', 'JAKARTA SELATAN', '2022-04-12 16:39:40', NULL, 'ID-JK'),
(26, 'CKG', 'JAKARTA TIMUR', '2022-04-12 16:39:40', NULL, 'ID-JK'),
(110, 'MJL', 'KABUPATEN MAJALENGKA', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(111, 'SMD', 'KABUPATEN SUMEDANG', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(112, 'IDM', 'KABUPATEN INDRAMAYU', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(113, 'SNG', 'KABUPATEN SUBANG', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(114, 'PWK', 'KABUPATEN PURWAKARTA', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(115, 'KWG', 'KABUPATEN KARAWANG', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(116, 'CKR', 'KABUPATEN BEKASI', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(117, 'NPH', 'KABUPATEN BANDUNG BARAT', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(118, 'BGR', 'KOTA BOGOR', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(119, 'SKB', 'KOTA SUKABUMI', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(120, 'BDG', 'KOTA BANDUNG', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(121, 'CBN', 'KOTA CIREBON', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(122, 'BKS', 'KOTA BEKASI', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(123, 'DPK', 'KOTA DEPOK', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(124, 'CMH', 'KOTA CIMAHI', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(125, 'TSM', 'KOTA TASIKMALAYA', '2022-04-12 17:38:30', NULL, 'ID-JB'),
(126, 'BJR', 'KOTA BANJAR', '2022-04-12 17:38:30', NULL, 'ID-JB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `kode_provinsi` varchar(6) NOT NULL,
  `nama_provinsi` varchar(26) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_provinsi`
--

INSERT INTO `tbl_provinsi` (`id_provinsi`, `kode_provinsi`, `nama_provinsi`, `created_at`, `updated_at`) VALUES
(1, 'ID-JB', 'JAWA BARAT', '2022-04-12 16:19:52', NULL),
(2, 'ID-JK', 'JAKARTA', '2022-04-12 16:20:50', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_kabkota`
--
ALTER TABLE `tbl_kabkota`
  ADD PRIMARY KEY (`id_kabkota`),
  ADD UNIQUE KEY `id_kabkota` (`kode_kabkota`),
  ADD KEY `FK_tbl_kabkota_tbl_provinsi` (`kode_provinsi`);

--
-- Indeks untuk tabel `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  ADD PRIMARY KEY (`id_provinsi`),
  ADD UNIQUE KEY `id_provinsi` (`kode_provinsi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_kabkota`
--
ALTER TABLE `tbl_kabkota`
  MODIFY `id_kabkota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT untuk tabel `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  MODIFY `id_provinsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_kabkota`
--
ALTER TABLE `tbl_kabkota`
  ADD CONSTRAINT `FK_tbl_kabkota_tbl_provinsi` FOREIGN KEY (`kode_provinsi`) REFERENCES `tbl_provinsi` (`kode_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
