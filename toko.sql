-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jan 2024 pada 19.14
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3'),
('admin1', '827ccb0eea8a706c4c34a16891f84e7b'),
('admin2', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabeltokocategories`
--

CREATE TABLE `tabeltokocategories` (
  `id` int(6) UNSIGNED NOT NULL,
  `category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabeltokocategories`
--

INSERT INTO `tabeltokocategories` (`id`, `category`) VALUES
(1, 'Sepatu'),
(2, 'Celana'),
(4, 'Baju');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabeltokoconfig`
--

CREATE TABLE `tabeltokoconfig` (
  `id` int(6) UNSIGNED NOT NULL,
  `config` varchar(150) NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabeltokoconfig`
--

INSERT INTO `tabeltokoconfig` (`id`, `config`, `value`) VALUES
(1, 'cfg', '{\"websitetitle\":\"Toko Online WA\",\"maincolor\":\"#0DF2E0\",\"secondcolor\":\"#0AFFE4\",\"about\":\"<p>Toko online belanja melalui wa<\\/p>\",\"language\":\"id\",\"thumbnailmode\":\"0\",\"logo\":\"4u9cdtxp31.png\",\"background\":\"fi8wlb0uc0.jpeg\",\"adminwhatsapp\":\"085161671965\",\"currencysymbol\":\"Rp\",\"baseurl\":\"http:\\/\\/localhost\\/WhatsUpShop\\/\",\"enablerecentpostsliders\":\"1\",\"enablefacebookcomment\":\"1\",\"enablepublishdate\":\"1\",\"disabledecimals\":\"1\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabeltokologin`
--

CREATE TABLE `tabeltokologin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabeltokomessages`
--

CREATE TABLE `tabeltokomessages` (
  `id` int(6) UNSIGNED NOT NULL,
  `date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` varchar(1300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabeltokomessages`
--

INSERT INTO `tabeltokomessages` (`id`, `date`, `message`) VALUES
(1, '1703691749360', 'ORDER ID: 8497/2023-12-27 22:41:58\nDATE: Wed Dec 27 2023 22:41:58 GMT+0700 (Western Indonesia Time)\n- Baju polos x 1 = Rp 35000\n- kemeja x 2 = Rp 200000\n- Sepatu sneakers x 2 = Rp 140000\n- Sepatu ventela x 1 = Rp 250000\nTotal Semua = Rp 625000\nNama: test\nNo Hp/Wa: 085161671865\nAlamat: jl.beruang raya\nMetode Pengiriman: Home Delivery\nORDER NOTES: test');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabeltokoposts`
--

CREATE TABLE `tabeltokoposts` (
  `id` int(6) UNSIGNED NOT NULL,
  `postid` varchar(70) NOT NULL,
  `catid` int(6) NOT NULL,
  `normalprice` float NOT NULL,
  `discountprice` float NOT NULL,
  `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(150) NOT NULL,
  `options` varchar(200) NOT NULL,
  `picture` varchar(300) NOT NULL,
  `moreimages` text NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stok` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabeltokoposts`
--

INSERT INTO `tabeltokoposts` (`id`, `postid`, `catid`, `normalprice`, `discountprice`, `title`, `time`, `options`, `picture`, `moreimages`, `content`, `stok`) VALUES
(1, 'mamfrjalsw', 1, 80000, 0, 'Sepatu ventela 1', '1703777037878', '', 'rkmyjqkgp1.jpeg', '', '<p>p</p>', 1),
(2, 'pvbehzsang', 4, 10000, 0, 'Baju polos', '1703777057158', '', '9tcadpfdoz.jpeg', '', '<p>p</p>', 12);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `tabeltokocategories`
--
ALTER TABLE `tabeltokocategories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabeltokoconfig`
--
ALTER TABLE `tabeltokoconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabeltokomessages`
--
ALTER TABLE `tabeltokomessages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabeltokoposts`
--
ALTER TABLE `tabeltokoposts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabeltokocategories`
--
ALTER TABLE `tabeltokocategories`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tabeltokoconfig`
--
ALTER TABLE `tabeltokoconfig`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tabeltokomessages`
--
ALTER TABLE `tabeltokomessages`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tabeltokoposts`
--
ALTER TABLE `tabeltokoposts`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
