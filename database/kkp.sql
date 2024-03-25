-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Mar 2024 pada 02.29
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kkp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mushroom`
--

CREATE TABLE `mushroom` (
  `id` int(255) NOT NULL,
  `namaLatin` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `toksisitas` varchar(255) NOT NULL,
  `gejala` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mushroom`
--

INSERT INTO `mushroom` (`id`, `namaLatin`, `deskripsi`, `toksisitas`, `gejala`) VALUES
(1, 'Galerina marginata', 'Autumn Skullcap adalah jamur kecil dengan tudung yang coklat atau merah kecoklatan. Mereka sering ditemukan tumbuh pada serasah dedaunan basah di musim gugur.', 'Sangat beracun, mengandung amatoxin yang dapat merusak hati dan ginjal.', 'Gejalanya mungkin tidak terlihat hingga 6-24 jam setelah konsumsi, tetapi dapat menyebabkan kegagalan organ dan kematian.'),
(2, 'Amanita phalloides', 'Death Cap adalah jamur berukuran sedang hingga besar dengan tudung coklat zaitun dan pangkalan tudung yang menonjol. Mereka sering ditemukan di bawah pohon-pohon ek atau pohon-pohon lain.', 'Sangat beracun, mengandung amatoxin yang dapat merusak hati dan ginjal.', 'Gejalanya mungkin tidak terlihat hingga 6-24 jam setelah konsumsi, tetapi dapat menyebabkan kegagalan organ dan kematian.'),
(5, 'Amanita bisporigera, Amanita ocreata, Amanita virosa', 'Destroying Angels adalah kelompok jamur beracun yang termasuk dalam genus Amanita. Mereka memiliki tudung putih dengan gumpalan bulu-bulu di pangkalan tudung.', 'Sangat beracun, mengandung amatoxin yang dapat merusak hati dan ginjal.', 'Gejalanya mungkin tidak terlihat hingga 6-24 jam setelah konsumsi, tetapi dapat menyebabkan kegagalan organ dan kematian.'),
(6, 'Gyromitra spp.', 'False Morel memiliki bentuk yang agak mirip dengan morel asli, tetapi berbeda dalam struktur dan kandungan kimia. Mereka sering ditemukan di hutan-hutan konifer dan daerah-daerah beriklim sedang.', 'Beracun jika dimakan mentah atau kurang dimasak. Mengandung gyromitrin yang dapat merusak hati.', 'Gejalanya mungkin muncul setelah beberapa jam hingga beberapa hari setelah konsumsi, termasuk mual, muntah, diare, dan kerusakan hati.'),
(7, 'Galeria SPP', 'Poison Fire Coral adalah kelompok jamur beracun yang termasuk dalam genus Galerina. Mereka memiliki bentuk yang menyerupai koral api dan sering ditemukan pada kayu mati atau tanaman busuk di hutan-hutan.', 'Beracun, mengandung amatoxin yang dapat merusak hati dan ginjal.', 'Gejalanya mungkin tidak terlihat hingga 6-24 jam setelah konsumsi, tetapi dapat menyebabkan kegagalan organ dan kematian.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mushroom`
--
ALTER TABLE `mushroom`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mushroom`
--
ALTER TABLE `mushroom`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
