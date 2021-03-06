-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Feb 2022 pada 19.23
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_surat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id_akun`, `username`, `password`, `level`) VALUES
(1, 'admin666', 'fae0b27c451c728867a567e8c1bb4e53', 'admin'),
(3, '123', '202cb962ac59075b964b07152d234b70', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `disposisi`
--

CREATE TABLE `disposisi` (
  `id_disposisi` int(11) NOT NULL,
  `nama_disposisi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `disposisi`
--

INSERT INTO `disposisi` (`id_disposisi`, `nama_disposisi`) VALUES
(1, 'ESDM 2'),
(3, 'KEPEGAWAIAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_surat_masuk` int(11) NOT NULL,
  `nama_surat` varchar(255) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `tgl_s_masuk` varchar(50) NOT NULL,
  `tgl_t_sm` varchar(50) NOT NULL,
  `asal_surat_masuk` varchar(100) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `file_surat` text NOT NULL,
  `disposisi` varchar(20) NOT NULL,
  `bulan_smasuk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_masuk`
--

INSERT INTO `surat_masuk` (`id_surat_masuk`, `nama_surat`, `no_surat`, `tgl_s_masuk`, `tgl_t_sm`, `asal_surat_masuk`, `perihal`, `file_surat`, `disposisi`, `bulan_smasuk`) VALUES
(1, 'asassaas 2', 'sasa', '2022-12-12', '2022-12-12', 'a', 'sadsa\"', '', '1', '02'),
(3, 'qqq', 'qqq', '2022-02-08', '2022-02-08', 'qqqq', 'qqq', '', '1', '2-08'),
(4, 'www', 'w', '2022-02-18', '2022-02-18', 'w', 'w', '', '1', '-18'),
(5, 'pp', 'p', '2022-02-09', '2022-02-25', 'p', 'p', '', '3', '02'),
(6, 'asas', 'asas', '2022-10-08', '2022-10-22', 'sasa', 'sa', '', '1', '10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indeks untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indeks untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id_surat_masuk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  MODIFY `id_disposisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_surat_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
