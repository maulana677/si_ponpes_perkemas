-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2021 at 12:35 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ponpes_c`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata_mudhir`
--

CREATE TABLE `biodata_mudhir` (
  `id_biodata_mudhir` bigint(20) UNSIGNED NOT NULL,
  `id_kategori_gaji` bigint(20) UNSIGNED NOT NULL,
  `nama_mudhir` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telepon` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidang_ilmu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biodata_mudhir`
--

INSERT INTO `biodata_mudhir` (`id_biodata_mudhir`, `id_kategori_gaji`, `nama_mudhir`, `alamat`, `no_telepon`, `jenis_kelamin`, `pendidikan`, `bidang_ilmu`, `foto`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mulyono', 'Jalan Bumi Manti 3 kampung baru, Labuhan Ratu', '089645673421', 'laki-laki', 'Sarjana Ilmu Komputer', 'IT', NULL, '2021-08-09 03:20:06', '2021-08-09 03:20:06'),
(2, 2, 'Budi', 'Jalan Bumi Manti 2 Kampung Baru, Labuhan Ratu', '089645673421', 'laki-laki', 'SMA', NULL, NULL, '2021-08-09 08:07:36', '2021-08-09 08:07:36'),
(3, 3, 'Rosidi', 'bumi manti', '08963375542', 'laki-laki', 'Sarjana', 'h', 0x687474703a2f2f6c6f63616c686f73743a383030302f32393836362e706e67, '2021-08-10 04:41:12', '2021-09-17 03:10:24'),
(4, 1, 'Arif Samsudi', 'Sepang Jaya', '089656784356', 'laki-laki', 'Sarjana', 'IT', 0x687474703a2f2f6c6f63616c686f73743a383030302f31343332312e706e67, '2021-08-10 04:42:10', '2021-09-17 03:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `biodata_siswa`
--

CREATE TABLE `biodata_siswa` (
  `id_biodata_siswa` bigint(20) UNSIGNED NOT NULL,
  `NIS` int(11) DEFAULT NULL,
  `nama_siswa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_samaran_siswa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sekolah` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ayah` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp_orang_tua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_orang_tua` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nisn` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kelas` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biodata_siswa`
--

INSERT INTO `biodata_siswa` (`id_biodata_siswa`, `NIS`, `nama_siswa`, `nama_samaran_siswa`, `jenis_kelamin`, `asal_sekolah`, `nama_ayah`, `nama_ibu`, `telp_orang_tua`, `alamat_orang_tua`, `nisn`, `id_kelas`, `user_id`, `foto`, `created_at`, `updated_at`) VALUES
(3, NULL, 'tes5', 'citra', 'perempuan', 'smp muhammadiyah 3', 'ayah', 'ibu', '09898989898', 'b', '325', '2', '6', '', '2021-08-09 07:48:26', '2021-08-09 07:48:26'),
(4, 6, 'tes6', 'irawan', 'laki-laki', 'smp muhammadiyah 3', 'ayah', 'ibu', '09898989898', 'b', '326', '1', '7', '', '2021-08-09 07:50:56', '2021-08-09 07:56:31'),
(5, 123456, 'Tono', 'Toni', 'laki-laki', 'smp', 'ayah', 'ibu', '089655459856', 'bumi', '123', '1', '8', '', '2021-09-18 08:09:41', '2021-09-19 08:15:17'),
(6, NULL, 'jon', 'joni', 'laki-laki', 'SMP A', 'ayah', 'ibu', '08132123123', 'jalan x', '32143253', '1', '9', '1632132170_user.jpg', '2021-09-20 03:02:50', '2021-09-20 03:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `donatur`
--

CREATE TABLE `donatur` (
  `id_donatur` bigint(20) UNSIGNED NOT NULL,
  `nama_donatur` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_donatur` enum('Tunai','Barang') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_donatur` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donatur`
--

INSERT INTO `donatur` (`id_donatur`, `nama_donatur`, `jenis_donatur`, `nominal`, `barang`, `keterangan`, `tanggal_donatur`, `created_at`, `updated_at`) VALUES
(1, 'Hengki', 'Tunai', '600000', '-', 'tunai', '2021-08-10', '2021-08-09 20:25:18', '2021-08-09 20:25:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id_gaji` bigint(20) UNSIGNED NOT NULL,
  `id_kategori_gaji` bigint(20) UNSIGNED NOT NULL,
  `gaji` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id_gaji`, `id_kategori_gaji`, `gaji`, `created_at`, `updated_at`) VALUES
(1, 1, '1000000', '2021-08-09 03:20:29', '2021-08-09 03:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `infak`
--

CREATE TABLE `infak` (
  `id_infak` bigint(20) UNSIGNED NOT NULL,
  `infak_bangunan` int(11) NOT NULL,
  `infak_pendaftaran` int(11) NOT NULL,
  `ekskul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pengeluaran`
--

CREATE TABLE `jenis_pengeluaran` (
  `id_jenis_pengeluaran` bigint(20) UNSIGNED NOT NULL,
  `jenis_pengeluaran` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `jenis_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `jenis_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 1, 'Infak Jum\'at', '2021-08-31 22:53:15', '2021-08-31 22:53:15'),
(5, 2, 'Biaya Listrik', '2021-08-31 23:01:25', '2021-08-31 23:01:25'),
(8, 1, 'Infak Jum\'at', '2021-08-31 23:58:46', '2021-08-31 23:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_gaji`
--

CREATE TABLE `kategori_gaji` (
  `id_kategori_gaji` bigint(20) UNSIGNED NOT NULL,
  `kategori_gaji` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal_gaji` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_gaji`
--

INSERT INTO `kategori_gaji` (`id_kategori_gaji`, `kategori_gaji`, `nominal_gaji`, `created_at`, `updated_at`) VALUES
(1, 'Mudhir', '2000000', '2021-08-09 03:19:30', '2021-08-09 03:19:30'),
(2, 'Petugas Kebersihan', '600000', '2021-08-09 08:02:15', '2021-08-09 08:02:15'),
(3, 'Kepala Sekolah', '5000000', '2021-08-10 04:39:44', '2021-08-10 04:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` bigint(20) UNSIGNED NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kelas` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`, `nama_kelas`, `created_at`, `updated_at`) VALUES
(1, '10', 'Kelas Tahfiz', '2021-08-09 20:21:32', '2021-08-09 20:21:32'),
(2, '11', 'Kelas Tilawah', '2021-09-18 08:42:40', '2021-09-18 08:42:40'),
(3, '12', 'Kelas Murottal', '2021-09-18 08:42:52', '2021-09-18 08:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_ajaran`
--

CREATE TABLE `kelas_ajaran` (
  `id_kelas_ajaran` bigint(20) UNSIGNED NOT NULL,
  `id_kelas` bigint(20) UNSIGNED NOT NULL,
  `id_tahun_ajaran` bigint(20) UNSIGNED NOT NULL,
  `id_biodata_siswa` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas_ajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(57, '2014_10_12_000000_create_users_table', 1),
(58, '2014_10_12_100000_create_password_resets_table', 1),
(59, '2019_08_19_000000_create_failed_jobs_table', 1),
(60, '2021_04_10_004329_create_spp_table', 1),
(61, '2021_04_10_012903_create_kategori_gaji_table', 1),
(62, '2021_04_10_013210_create_gaji_table', 1),
(63, '2021_04_10_014414_create_biodata_mudhir_table', 1),
(64, '2021_04_10_020907_create_pembayaran_gaji_table', 1),
(65, '2021_04_10_022428_create_jenis_pengeluaran_table', 1),
(66, '2021_04_10_023142_create_pengeluaran_harian_table', 1),
(67, '2021_04_11_022922_create_donatur_table', 1),
(68, '2021_04_11_025010_create_pengeluaran_table', 1),
(69, '2021_04_25_055644_create_tahun_ajaran_table', 1),
(70, '2021_04_25_060909_create_pendaftaran_table', 1),
(71, '2021_04_25_064652_create_kelas_table', 1),
(72, '2021_04_25_073535_create_infak_table', 1),
(73, '2021_04_25_075616_create_biodata_siswa_table', 1),
(80, '2021_04_30_071355_create_pembayaran_spp_table', 2),
(81, '2021_04_30_071823_create_pembayaran_infak_table', 2),
(82, '2021_04_30_071935_create_kelas_ajaran_table', 2),
(83, '2021_08_21_172905_create_kategori_table', 2),
(84, '2021_08_21_173111_create_pemasukan_table', 2),
(85, '2021_08_21_173126_create_pengeluaran_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan`
--

CREATE TABLE `pemasukan` (
  `id_pemasukan` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemasukan`
--

INSERT INTO `pemasukan` (`id_pemasukan`, `id_kategori`, `tanggal`, `jumlah`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 8, '2021-08-27', 400000, 'infak jumat minggu lalu', '2021-09-01 00:33:27', '2021-09-01 00:33:27');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_gaji`
--

CREATE TABLE `pembayaran_gaji` (
  `id_pembayaran_gaji` bigint(20) UNSIGNED NOT NULL,
  `id_kategori_gaji` bigint(20) UNSIGNED NOT NULL,
  `id_biodata_mudhir` bigint(20) UNSIGNED NOT NULL,
  `id_gaji` bigint(20) UNSIGNED DEFAULT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `bulan` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran_gaji`
--

INSERT INTO `pembayaran_gaji` (`id_pembayaran_gaji`, `id_kategori_gaji`, `id_biodata_mudhir`, `id_gaji`, `tanggal_pembayaran`, `bulan`, `created_at`, `updated_at`) VALUES
(3, 3, 3, NULL, '2021-08-09', 'SEPTEMBER', '2021-08-10 04:33:13', '2021-08-10 04:54:54'),
(5, 1, 1, NULL, '2021-08-09', 'SEPTEMBER', '2021-08-10 04:57:15', '2021-08-10 04:57:15'),
(7, 2, 2, NULL, '2021-09-19', 'JANUARI', '2021-09-19 08:52:45', '2021-09-19 08:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_infak`
--

CREATE TABLE `pembayaran_infak` (
  `id_pembayaran_infak` bigint(20) UNSIGNED NOT NULL,
  `id_biodata_siswa` bigint(20) UNSIGNED NOT NULL,
  `infak_bangunan` int(11) NOT NULL,
  `infak_pendaftaran` int(11) NOT NULL,
  `infak_ekskul` int(11) NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran_spp`
--

CREATE TABLE `pembayaran_spp` (
  `id_pembayaran_spp` bigint(20) UNSIGNED NOT NULL,
  `id_biodata_siswa` bigint(20) UNSIGNED NOT NULL,
  `id_kelas` bigint(20) UNSIGNED NOT NULL,
  `id_spp` bigint(20) UNSIGNED NOT NULL,
  `id_tahun_ajaran` bigint(20) UNSIGNED NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Lunas','Belum Lunas') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran_spp`
--

INSERT INTO `pembayaran_spp` (`id_pembayaran_spp`, `id_biodata_siswa`, `id_kelas`, `id_spp`, `id_tahun_ajaran`, `tanggal_pembayaran`, `bulan`, `status`, `created_at`, `updated_at`) VALUES
(11, 5, 1, 25, 2, '2021-09-19', 'SEPTEMBER', 'Lunas', '2021-09-19 09:24:34', '2021-09-19 09:24:34'),
(15, 3, 2, 25, 2, '2021-09-19', 'JANUARI', 'Lunas', '2021-09-19 09:29:47', '2021-09-19 09:29:47'),
(16, 4, 2, 25, 2, '2021-09-19', 'MEI', 'Lunas', '2021-09-19 09:30:08', '2021-09-19 09:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftaran` bigint(20) UNSIGNED NOT NULL,
  `nama_siswa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_samaran_siswa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_sekolah` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ayah` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp_orang_tua` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_orang_tua` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `id_kategori`, `tanggal`, `jumlah`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 5, '2021-09-01', 200000, 'Biaya Listrik Bulanan', '2021-08-31 23:35:50', '2021-08-31 23:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran_harian`
--

CREATE TABLE `pengeluaran_harian` (
  `id_pengeluaran_harian` bigint(20) UNSIGNED NOT NULL,
  `id_jenis_pengeluaran` bigint(20) UNSIGNED NOT NULL,
  `biaya` int(11) NOT NULL,
  `tanggal_pengeluaran` date NOT NULL,
  `nama_penginfak` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('infak','tunai') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_spp` bigint(20) UNSIGNED NOT NULL,
  `spp` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_spp`, `spp`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(24, '300000', '2021-09-18', '2021-09-19', 0, '2021-09-17 22:47:22', '2021-09-19 07:24:15'),
(25, '350000', '2021-09-19', NULL, 1, '2021-09-19 07:24:15', '2021-09-19 07:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id_tahun_ajaran` bigint(20) UNSIGNED NOT NULL,
  `semester` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('A','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`id_tahun_ajaran`, `semester`, `tahun`, `status`, `created_at`, `updated_at`) VALUES
(1, '1', '2020/2021', 'N', '2021-08-17 22:29:48', '2021-09-01 03:37:26'),
(2, '1', '2021/2022', 'A', '2021-09-01 03:37:22', '2021-09-01 03:37:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','bendahara','siswa') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$7l79VbYOzpWYlfpgHrg5qu.2HOAqYH9mWRkjlCUgVjBuwhlRDwXnC', 'admin', NULL, '2021-08-09 03:13:46', '2021-08-09 03:13:46'),
(2, 'Bendaharaa', 'bendaharaa@gmail.com', NULL, '$2y$10$fPUa32A5oUdZMIaRaj0zWeJLxQhbHzsmSBAtFPXF3s45J32FsRv9e', 'bendahara', NULL, '2021-08-09 07:22:44', '2021-08-09 07:22:44'),
(3, 'tes1', 'tes1@mail.com', NULL, '$2y$10$fegv0OgBJIiSIFO0AIovbun7GVokZbOkLGbZgyCKzSnzxuE48ORMG', 'siswa', NULL, '2021-08-09 07:25:46', '2021-08-09 07:25:46'),
(4, 'tes2', 'tes2@mail.com', NULL, '$2y$10$OG9ZNhCJiN15B4rb2BJ1i.zdf8CSXKNYTkDk6aHmAMP1GuuBhynOa', 'siswa', NULL, '2021-08-09 07:33:03', '2021-08-09 07:33:03'),
(5, 'tes3', 'tes3@mail.com', NULL, '$2y$10$VRXrQ7cvaEzsjMECBkQY2eviRaLsrcYL4XwZ4nN0NamqPyHUcQrMK', 'siswa', NULL, '2021-08-09 07:39:08', '2021-08-09 07:39:08'),
(6, 'tes5', 'tes5@mail.com', NULL, '$2y$10$r3pyZFGZqOEVn5rZc4evPeEqPgVuS5e9FWPiV0WrPpHfJ6/qyi/5O', 'siswa', NULL, '2021-08-09 07:48:26', '2021-08-09 07:48:26'),
(7, 'tes6', 'tes6@mail.com', NULL, '$2y$10$7mPBc1qihyhhNzSM09DQfO9OvGM6vNkdoY1KL3tPhFJ6rp9ch0mn.', 'siswa', NULL, '2021-08-09 07:50:56', '2021-08-09 07:50:56'),
(8, 'Tono', 'tono@gmail.com', NULL, '$2y$10$bpsXISshGWPY.msVHjpXXevNMDaaMtPDiUTbIoRhaedmC1QZUmCka', 'siswa', NULL, '2021-09-18 08:09:41', '2021-09-18 08:09:41'),
(9, 'jon', 'siswa@em.com', NULL, '$2y$10$8c.P6/ARzsNvNeKgjj3BCu3CKtK3P95iCaiC7dr7PwaQijSa.0Nce', 'siswa', NULL, '2021-09-20 03:02:50', '2021-09-20 03:02:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata_mudhir`
--
ALTER TABLE `biodata_mudhir`
  ADD PRIMARY KEY (`id_biodata_mudhir`),
  ADD KEY `biodata_mudhir_id_kategori_gaji_foreign` (`id_kategori_gaji`);

--
-- Indexes for table `biodata_siswa`
--
ALTER TABLE `biodata_siswa`
  ADD PRIMARY KEY (`id_biodata_siswa`);

--
-- Indexes for table `donatur`
--
ALTER TABLE `donatur`
  ADD PRIMARY KEY (`id_donatur`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id_gaji`),
  ADD KEY `gaji_id_kategori_gaji_foreign` (`id_kategori_gaji`);

--
-- Indexes for table `infak`
--
ALTER TABLE `infak`
  ADD PRIMARY KEY (`id_infak`);

--
-- Indexes for table `jenis_pengeluaran`
--
ALTER TABLE `jenis_pengeluaran`
  ADD PRIMARY KEY (`id_jenis_pengeluaran`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_gaji`
--
ALTER TABLE `kategori_gaji`
  ADD PRIMARY KEY (`id_kategori_gaji`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kelas_ajaran`
--
ALTER TABLE `kelas_ajaran`
  ADD PRIMARY KEY (`id_kelas_ajaran`),
  ADD KEY `kelas_ajaran_id_kelas_foreign` (`id_kelas`),
  ADD KEY `kelas_ajaran_id_tahun_ajaran_foreign` (`id_tahun_ajaran`),
  ADD KEY `kelas_ajaran_id_biodata_siswa_foreign` (`id_biodata_siswa`);

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
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id_pemasukan`),
  ADD KEY `pemasukan_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `pembayaran_gaji`
--
ALTER TABLE `pembayaran_gaji`
  ADD PRIMARY KEY (`id_pembayaran_gaji`),
  ADD KEY `pembayaran_gaji_id_kategori_gaji_foreign` (`id_kategori_gaji`),
  ADD KEY `pembayaran_gaji_id_biodata_mudhir_foreign` (`id_biodata_mudhir`),
  ADD KEY `pembayaran_gaji_id_gaji_foreign` (`id_gaji`);

--
-- Indexes for table `pembayaran_infak`
--
ALTER TABLE `pembayaran_infak`
  ADD PRIMARY KEY (`id_pembayaran_infak`),
  ADD KEY `pembayaran_infak_id_biodata_siswa_foreign` (`id_biodata_siswa`);

--
-- Indexes for table `pembayaran_spp`
--
ALTER TABLE `pembayaran_spp`
  ADD PRIMARY KEY (`id_pembayaran_spp`),
  ADD KEY `pembayaran_spp_id_biodata_siswa_foreign` (`id_biodata_siswa`),
  ADD KEY `pembayaran_spp_id_kelas_foreign` (`id_kelas`),
  ADD KEY `pembayaran_spp_id_spp_foreign` (`id_spp`),
  ADD KEY `pembayaran_spp_id_tahun_ajaran_foreign` (`id_tahun_ajaran`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `pengeluaran_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `pengeluaran_harian`
--
ALTER TABLE `pengeluaran_harian`
  ADD PRIMARY KEY (`id_pengeluaran_harian`),
  ADD KEY `pengeluaran_harian_id_jenis_pengeluaran_foreign` (`id_jenis_pengeluaran`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- Indexes for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id_tahun_ajaran`);

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
-- AUTO_INCREMENT for table `biodata_mudhir`
--
ALTER TABLE `biodata_mudhir`
  MODIFY `id_biodata_mudhir` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `biodata_siswa`
--
ALTER TABLE `biodata_siswa`
  MODIFY `id_biodata_siswa` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donatur`
--
ALTER TABLE `donatur`
  MODIFY `id_donatur` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id_gaji` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `infak`
--
ALTER TABLE `infak`
  MODIFY `id_infak` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_pengeluaran`
--
ALTER TABLE `jenis_pengeluaran`
  MODIFY `id_jenis_pengeluaran` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kategori_gaji`
--
ALTER TABLE `kategori_gaji`
  MODIFY `id_kategori_gaji` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas_ajaran`
--
ALTER TABLE `kelas_ajaran`
  MODIFY `id_kelas_ajaran` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `id_pemasukan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembayaran_gaji`
--
ALTER TABLE `pembayaran_gaji`
  MODIFY `id_pembayaran_gaji` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pembayaran_infak`
--
ALTER TABLE `pembayaran_infak`
  MODIFY `id_pembayaran_infak` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembayaran_spp`
--
ALTER TABLE `pembayaran_spp`
  MODIFY `id_pembayaran_spp` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_pendaftaran` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengeluaran_harian`
--
ALTER TABLE `pengeluaran_harian`
  MODIFY `id_pengeluaran_harian` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id_tahun_ajaran` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `biodata_mudhir`
--
ALTER TABLE `biodata_mudhir`
  ADD CONSTRAINT `biodata_mudhir_id_kategori_gaji_foreign` FOREIGN KEY (`id_kategori_gaji`) REFERENCES `kategori_gaji` (`id_kategori_gaji`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gaji`
--
ALTER TABLE `gaji`
  ADD CONSTRAINT `gaji_id_kategori_gaji_foreign` FOREIGN KEY (`id_kategori_gaji`) REFERENCES `kategori_gaji` (`id_kategori_gaji`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kelas_ajaran`
--
ALTER TABLE `kelas_ajaran`
  ADD CONSTRAINT `kelas_ajaran_id_biodata_siswa_foreign` FOREIGN KEY (`id_biodata_siswa`) REFERENCES `biodata_siswa` (`id_biodata_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kelas_ajaran_id_kelas_foreign` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kelas_ajaran_id_tahun_ajaran_foreign` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tahun_ajaran` (`id_tahun_ajaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD CONSTRAINT `pemasukan_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembayaran_gaji`
--
ALTER TABLE `pembayaran_gaji`
  ADD CONSTRAINT `pembayaran_gaji_id_biodata_mudhir_foreign` FOREIGN KEY (`id_biodata_mudhir`) REFERENCES `biodata_mudhir` (`id_biodata_mudhir`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_gaji_id_gaji_foreign` FOREIGN KEY (`id_gaji`) REFERENCES `gaji` (`id_gaji`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_gaji_id_kategori_gaji_foreign` FOREIGN KEY (`id_kategori_gaji`) REFERENCES `kategori_gaji` (`id_kategori_gaji`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembayaran_infak`
--
ALTER TABLE `pembayaran_infak`
  ADD CONSTRAINT `pembayaran_infak_id_biodata_siswa_foreign` FOREIGN KEY (`id_biodata_siswa`) REFERENCES `biodata_siswa` (`id_biodata_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembayaran_spp`
--
ALTER TABLE `pembayaran_spp`
  ADD CONSTRAINT `pembayaran_spp_id_biodata_siswa_foreign` FOREIGN KEY (`id_biodata_siswa`) REFERENCES `biodata_siswa` (`id_biodata_siswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_spp_id_kelas_foreign` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_spp_id_spp_foreign` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_spp_id_tahun_ajaran_foreign` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tahun_ajaran` (`id_tahun_ajaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD CONSTRAINT `pengeluaran_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengeluaran_harian`
--
ALTER TABLE `pengeluaran_harian`
  ADD CONSTRAINT `pengeluaran_harian_id_jenis_pengeluaran_foreign` FOREIGN KEY (`id_jenis_pengeluaran`) REFERENCES `jenis_pengeluaran` (`id_jenis_pengeluaran`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
