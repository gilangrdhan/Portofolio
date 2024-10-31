-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2024 at 02:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angkatan3_compro`
--

-- --------------------------------------------------------

--
-- Table structure for table `general_setting`
--

CREATE TABLE `general_setting` (
  `id` int(11) NOT NULL,
  `website_name` varchar(50) NOT NULL,
  `website_link` varchar(100) DEFAULT NULL,
  `website_phone` varchar(50) NOT NULL,
  `website_email` varchar(50) NOT NULL,
  `website_address` text NOT NULL,
  `twitter_link` varchar(100) DEFAULT NULL,
  `fb_link` varchar(100) DEFAULT NULL,
  `ig_link` varchar(100) DEFAULT NULL,
  `linkedin_link` varchar(100) DEFAULT NULL,
  `youtube_link` varchar(100) DEFAULT NULL,
  `logo` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_setting`
--

INSERT INTO `general_setting` (`id`, `website_name`, `website_link`, `website_phone`, `website_email`, `website_address`, `twitter_link`, `fb_link`, `ig_link`, `linkedin_link`, `youtube_link`, `logo`, `created_at`, `updated_at`) VALUES
(7, 'ppkd', 'https://www.ppkd.com', '5686845', 'ppkdjakpus@gmail.com', 'jl. karet tengsin', NULL, NULL, NULL, NULL, NULL, '60956ee89fed2.jpg', '2024-10-24 04:16:19', '2024-10-25 03:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `instruktur`
--

CREATE TABLE `instruktur` (
  `id` int(11) NOT NULL,
  `nama_instruktur` varchar(100) NOT NULL,
  `jurusan_instruktur` varchar(40) NOT NULL,
  `fb_link` varchar(50) DEFAULT NULL,
  `ig_link` varchar(50) DEFAULT NULL,
  `twitter_link` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instruktur`
--

INSERT INTO `instruktur` (`id`, `nama_instruktur`, `jurusan_instruktur`, `fb_link`, `ig_link`, `twitter_link`, `created_at`, `updated_at`, `foto`) VALUES
(3, 'Dr. Rudianto., MA', 'Lecturer Conservation and Marine Restora', NULL, NULL, NULL, '2024-10-25 04:20:54', '2024-10-30 08:06:52', 'bapak-rudianto.jpg'),
(4, 'Profesor Liudmila Alexandrovna Bespalova ', 'Institute of Earth Sciences, Southern Fe', NULL, NULL, NULL, '2024-10-25 04:36:42', '2024-10-30 08:03:52', 'bespallova.png'),
(5, 'Reza Ibrahim', 'Full Stack Developer', NULL, NULL, NULL, '2024-10-30 08:11:49', '2024-10-30 08:11:49', 'round-circle-with-mans-head-circle-with-circle-middle_807814-680.jpg'),
(6, 'Tri Adhy Yulianto', 'Full Stack Developer', NULL, NULL, NULL, '2024-10-30 08:12:18', '2024-10-30 08:12:18', 'round-circle-with-mans-head-circle-with-circle-middle_807814-680.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_profil`
--

CREATE TABLE `kategori_profil` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_profil`
--

INSERT INTO `kategori_profil` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Latar Belakang', '2024-10-25 07:39:09', '2024-10-25 07:39:09'),
(2, 'Visi dan Misi', '2024-10-25 07:39:09', '2024-10-25 07:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` int(11) NOT NULL,
  `nama_pendidikan` varchar(300) NOT NULL,
  `deskripsi` varchar(300) NOT NULL,
  `tahun_masuk` varchar(100) NOT NULL,
  `tahun_keluar` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `nama_pendidikan`, `deskripsi`, `tahun_masuk`, `tahun_keluar`, `created_at`, `updated_at`) VALUES
(6, 'Junior High School', '-', '2009', '2012', '2024-10-30 01:31:49', '2024-10-31 00:57:21'),
(7, 'Senior High School', 'Science', '2012', '2015', '2024-10-30 01:47:22', '2024-10-31 00:56:46'),
(8, 'Bachelor Degree', 'Marine Science', '2015', '2019', '2024-10-30 07:31:17', '2024-10-31 00:55:35'),
(9, 'Master Degree', 'Ecology and Nature Management', '2022', '2024', '2024-10-30 07:32:12', '2024-10-31 00:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `pengalaman_kerja`
--

CREATE TABLE `pengalaman_kerja` (
  `id` int(11) NOT NULL,
  `pengalaman_kerja` varchar(500) NOT NULL,
  `tahun` varchar(500) NOT NULL,
  `jabatan` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengalaman_kerja`
--

INSERT INTO `pengalaman_kerja` (`id`, `pengalaman_kerja`, `tahun`, `jabatan`, `created_at`, `updated_at`) VALUES
(4, 'Ozon Russia', '2023-2024', 'Staff Logistic, manage the consolidation and scanning of over 1.200 items monthly with ensuring accurate tracking and inventory management. Organized and packed 500+ boxes/week and optimizing space reducing packing time by 20%', '2024-10-30 04:19:41', '2024-10-30 07:08:48'),
(5, 'Ocean Young Guard', '2024', 'Program Manager, project carbon sequestration s the process of capturing and storing atmospheric carbon dioxide (CO2) to mitigate climate change', '2024-10-30 04:35:40', '2024-10-30 07:13:48'),
(6, 'Rumah Reina', 'July 2022 - October 2022', 'Project Management, Ensured the contuinity of 5 on going project by coordinating with team member and stakeholders maintaining 95% project', '2024-10-30 04:36:27', '2024-10-30 07:13:33'),
(7, 'Teached Russia Langguage for Russia people', 'June 2023 - October 2023 ', 'Indonesia Student Russia Association, taught indonesia 5 Russian students creating lesson plans and instructional materials to varying proficiency levels. Assesed students progress trough reguler test and assignment achieving 90% satisfaction rate among participants', '2024-10-30 04:38:54', '2024-10-30 07:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `slug` text NOT NULL,
  `isi` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projek`
--

CREATE TABLE `projek` (
  `id` int(11) NOT NULL,
  `nama_projek` varchar(500) NOT NULL,
  `foto` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projek`
--

INSERT INTO `projek` (`id`, `nama_projek`, `foto`, `created_at`, `updated_at`) VALUES
(8, 'Pemetaan Batimetri Pantai Tanjung Gelam Karimun Jawa', 'batimetri.jpg', '2024-10-30 03:28:46', '2024-10-30 06:36:26'),
(9, 'Pemetaan Klorofil di Sulawesi Tenggara menggunakan citra landsat', 'klorofil.jpg', '2024-10-30 06:37:39', '2024-10-30 06:37:39'),
(10, 'Pemetaan Terumbu Karang di Nusa Penida Bali', 'terumbu karang.jpg', '2024-10-30 06:38:38', '2024-10-30 06:38:38'),
(11, 'Pemetaan Total Suspended Matter di Teluk Jakarta', 'tsm.jpg', '2024-10-30 06:39:32', '2024-10-30 06:39:32'),
(12, 'Banyuwangi Underwater Festival 2018, Tari Gandrung Bawah Air dan Pengamatan ikan nemo selama 48 jam', 'banyuwnagi-underwater-festival_20180404_181235.jpg', '2024-10-30 06:40:56', '2024-10-30 06:40:56'),
(13, 'Warehouse Ozon', 'sklad.jpg', '2024-10-30 06:42:20', '2024-10-30 06:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Gilang Ramadhan', 'admin@gmail.com', '123', '', '2024-10-22 06:15:22', '2024-10-22 06:15:22'),
(5, 'tono', 'snoopy@gmail.com', '123', '', '2024-10-23 03:13:35', '2024-10-23 04:37:07'),
(6, 'howard', 'snoopy@gmail.com', '123', '', '2024-10-23 03:13:54', '2024-10-23 04:46:10'),
(7, 'bunga', 'bunga@gmail.com', '123', 'kucing.png', '2024-10-23 07:35:37', '2024-10-23 07:35:37'),
(8, 'anji', 'anji@gmail.com', '123', '6_20190405155912_17093803_xlarge.jpg', '2024-10-29 03:21:50', '2024-10-29 03:21:50'),
(9, 'Muhammad Gilang Ramadhan', 'admin@gmail.com', '123', '6_20190405155912_17093803_xlarge.jpg', '2024-10-30 08:22:00', '2024-10-30 08:22:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `general_setting`
--
ALTER TABLE `general_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instruktur`
--
ALTER TABLE `instruktur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_profil`
--
ALTER TABLE `kategori_profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengalaman_kerja`
--
ALTER TABLE `pengalaman_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projek`
--
ALTER TABLE `projek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `general_setting`
--
ALTER TABLE `general_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `instruktur`
--
ALTER TABLE `instruktur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori_profil`
--
ALTER TABLE `kategori_profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pengalaman_kerja`
--
ALTER TABLE `pengalaman_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projek`
--
ALTER TABLE `projek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
