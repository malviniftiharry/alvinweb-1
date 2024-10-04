-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Okt 2024 pada 08.40
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_klinik dpmheksahealthcare`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_absensi pegawai`
--

CREATE TABLE `data_absensi pegawai` (
  `nama_lengkap` varchar(50) NOT NULL,
  `nama_Pegawai` varchar(50) NOT NULL,
  `Tgl/bln/thn` text NOT NULL,
  `jam_masuk` datetime NOT NULL,
  `jam_keluar` datetime NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_resep obat`
--

CREATE TABLE `data_resep obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `Item` text NOT NULL,
  `Harga_jual` varchar(50) NOT NULL,
  `Harga_asli` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_ user`
--

CREATE TABLE `data_ user` (
  `full-name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `Password` text NOT NULL,
  `bagian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan keuangan`
--

CREATE TABLE `laporan keuangan` (
  `id_pegawai` int(11) NOT NULL,
  `Mulai_tgl` text NOT NULL,
  `sampai_tgl` text NOT NULL,
  `Jumlah Total` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `usia` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `keluhan` varchar(50) NOT NULL,
  `diagnosa` varchar(50) NOT NULL,
  `tgl_lahir` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `no_telpn` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `nama_pegawai` varchar(50) DEFAULT NULL,
  `usia` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `pekerjaan` text,
  `Status` varchar(20) DEFAULT NULL,
  `pendidikan` text,
  `alamat` text,
  `tgl_lahir` varchar(20) DEFAULT NULL,
  `no_telpn` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
