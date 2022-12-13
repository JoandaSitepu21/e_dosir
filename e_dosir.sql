-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Des 2022 pada 02.48
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_dosir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:44:12', 1),
(3, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ini adalah pesan ', '2017-06-21 03:45:57', 1),
(5, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:53:19', 1),
(7, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Hi, there!', '2017-07-01 07:28:08', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kepegawaian`
--

CREATE TABLE `tbl_kepegawaian` (
  `kepegawaian_id` int(11) NOT NULL,
  `kepegawaian_nip` varchar(225) NOT NULL,
  `kepegawaian_nrp` varchar(225) NOT NULL,
  `kepegawaian_jabatan` varchar(225) NOT NULL,
  `kepegawaian_pangkat` varchar(225) NOT NULL,
  `kepegawaian_tempatlahir` varchar(225) NOT NULL,
  `kepegawaian_tanggallahir` varchar(225) NOT NULL,
  `kepegawaian_nama` varchar(225) NOT NULL,
  `kepegawaian_agama` varchar(225) NOT NULL,
  `kepegawaian_jk` varchar(225) NOT NULL,
  `kepegawaian_goldarah` varchar(225) NOT NULL,
  `kepegawaian_alamat` varchar(500) NOT NULL,
  `kepegawaian_notelp` varchar(225) NOT NULL,
  `kepegawaian_email` varchar(225) NOT NULL,
  `kepegawaian_unitkerja` varchar(225) NOT NULL,
  `kepegawaian_foto` varchar(225) NOT NULL,
  `kepegawaian_author` varchar(100) NOT NULL,
  `kepegawaian_tanngal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kepegawaian`
--

INSERT INTO `tbl_kepegawaian` (`kepegawaian_id`, `kepegawaian_nip`, `kepegawaian_nrp`, `kepegawaian_jabatan`, `kepegawaian_pangkat`, `kepegawaian_tempatlahir`, `kepegawaian_tanggallahir`, `kepegawaian_nama`, `kepegawaian_agama`, `kepegawaian_jk`, `kepegawaian_goldarah`, `kepegawaian_alamat`, `kepegawaian_notelp`, `kepegawaian_email`, `kepegawaian_unitkerja`, `kepegawaian_foto`, `kepegawaian_author`, `kepegawaian_tanngal`) VALUES
(73, '12364', '008', 'IIc', 'Administrator', 'Medan', '11 Januari 1995', 'Joanda Fernando Sitepu, Sp.d', 'Protestan', 'Laki-Laki', 'Joanda Fernando Sitepu,Sp.d', 'Jl. Pintu Air IV, Gang Mulia, Medan , Sumatra Utara', '082296160713', 'joandafernando19@gmail.com', 'administrasi', '73288522b70f31aaa6f8e14088a80699.png', '', '2022-12-11 12:48:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mapdua`
--

CREATE TABLE `tbl_mapdua` (
  `mapdua_id` int(11) NOT NULL,
  `mapdua_pegawai_id` int(11) NOT NULL,
  `mapdua_namaberkas` varchar(225) NOT NULL,
  `mapdua_tanggalberkas` varchar(225) NOT NULL,
  `mapdua_fileberkas` varchar(225) NOT NULL,
  `mapdua_author` varchar(225) NOT NULL,
  `mapdua_tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_mapdua`
--

INSERT INTO `tbl_mapdua` (`mapdua_id`, `mapdua_pegawai_id`, `mapdua_namaberkas`, `mapdua_tanggalberkas`, `mapdua_fileberkas`, `mapdua_author`, `mapdua_tanggal`) VALUES
(3, 73, 'Akte Kelahiran', '17-07-2018', 'bd48d06272fb9d50f0617d18cad7aed1.pdf', '', '2022-12-11 12:49:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mapempat`
--

CREATE TABLE `tbl_mapempat` (
  `mapempat_id` int(11) NOT NULL,
  `mapempat_pegawai_id` int(11) NOT NULL,
  `mapempat_namaberkas` varchar(225) NOT NULL,
  `mapempat_tanggalberkas` varchar(225) NOT NULL,
  `mapempat_fileberkas` varchar(225) NOT NULL,
  `mapempat_author` varchar(225) NOT NULL,
  `mapempat_tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_mapempat`
--

INSERT INTO `tbl_mapempat` (`mapempat_id`, `mapempat_pegawai_id`, `mapempat_namaberkas`, `mapempat_tanggalberkas`, `mapempat_fileberkas`, `mapempat_author`, `mapempat_tanggal`) VALUES
(2, 73, 'Data IV', '12-09-2020', '21044b9524a60f1761e26db91558f5c2.pdf', '', '2022-12-11 12:50:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_maplima`
--

CREATE TABLE `tbl_maplima` (
  `maplima_id` int(11) NOT NULL,
  `maplima_pegawai_id` int(11) NOT NULL,
  `maplima_namaberkas` varchar(225) NOT NULL,
  `maplima_tanggalberkas` varchar(225) NOT NULL,
  `maplima_fileberkas` varchar(225) NOT NULL,
  `maplima_author` varchar(225) NOT NULL,
  `maplima_tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_maplima`
--

INSERT INTO `tbl_maplima` (`maplima_id`, `maplima_pegawai_id`, `maplima_namaberkas`, `maplima_tanggalberkas`, `maplima_fileberkas`, `maplima_author`, `maplima_tanggal`) VALUES
(3, 73, 'Data V', '19 - 07- 2019', '40e45fbfbfb7fc4cc8a89bc322d1bc5b.pdf', '', '2022-12-11 12:51:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mapsatu`
--

CREATE TABLE `tbl_mapsatu` (
  `mapsatu_id` int(11) NOT NULL,
  `mapsatu_pegawai_id` int(11) NOT NULL,
  `mapsatu_namaberkas` varchar(225) NOT NULL,
  `mapsatu_tanggalberkas` varchar(225) NOT NULL,
  `mapsatu_fileberkas` varchar(225) NOT NULL,
  `mapsatu_author` varchar(225) NOT NULL,
  `mapsatu_tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_mapsatu`
--

INSERT INTO `tbl_mapsatu` (`mapsatu_id`, `mapsatu_pegawai_id`, `mapsatu_namaberkas`, `mapsatu_tanggalberkas`, `mapsatu_fileberkas`, `mapsatu_author`, `mapsatu_tanggal`) VALUES
(8, 73, 'Ijazah', '12-09-2020', '7f9d8f6d623d3e767ca64585d84765e4.pdf', '', '2022-12-11 12:49:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_maptiga`
--

CREATE TABLE `tbl_maptiga` (
  `maptiga_id` int(11) NOT NULL,
  `maptiga_pegawai_id` int(11) NOT NULL,
  `maptiga_namaberkas` varchar(225) NOT NULL,
  `maptiga_tanggalberkas` varchar(225) NOT NULL,
  `maptiga_fileberkas` varchar(225) NOT NULL,
  `maptiga_author` varchar(225) NOT NULL,
  `maptiga_tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_maptiga`
--

INSERT INTO `tbl_maptiga` (`maptiga_id`, `maptiga_pegawai_id`, `maptiga_namaberkas`, `maptiga_tanggalberkas`, `maptiga_fileberkas`, `maptiga_author`, `maptiga_tanggal`) VALUES
(2, 73, 'data I', '17-07-2018', 'fd73509986a0710a1f875691e1835a92.pdf', '', '2022-12-11 12:50:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(5, 'Kurotama', NULL, 'L', 'kuro', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'kurotama888@gmail.com', '082296160713', NULL, NULL, NULL, NULL, 1, '1', '2022-02-24 03:43:59', '5a6ba67feef66297373a6ba3bffc2240.png'),
(6, 'admin', NULL, 'L', 'admin', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'admin@gmail.com', '-', NULL, NULL, NULL, NULL, 1, '1', '2022-03-05 07:51:32', 'fd971c3edac86aaf0821c97b7292f151.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_kepegawaian`
--
ALTER TABLE `tbl_kepegawaian`
  ADD PRIMARY KEY (`kepegawaian_id`);

--
-- Indeks untuk tabel `tbl_mapdua`
--
ALTER TABLE `tbl_mapdua`
  ADD PRIMARY KEY (`mapdua_id`);

--
-- Indeks untuk tabel `tbl_mapempat`
--
ALTER TABLE `tbl_mapempat`
  ADD PRIMARY KEY (`mapempat_id`);

--
-- Indeks untuk tabel `tbl_maplima`
--
ALTER TABLE `tbl_maplima`
  ADD PRIMARY KEY (`maplima_id`);

--
-- Indeks untuk tabel `tbl_mapsatu`
--
ALTER TABLE `tbl_mapsatu`
  ADD PRIMARY KEY (`mapsatu_id`);

--
-- Indeks untuk tabel `tbl_maptiga`
--
ALTER TABLE `tbl_maptiga`
  ADD PRIMARY KEY (`maptiga_id`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_kepegawaian`
--
ALTER TABLE `tbl_kepegawaian`
  MODIFY `kepegawaian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `tbl_mapdua`
--
ALTER TABLE `tbl_mapdua`
  MODIFY `mapdua_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_mapempat`
--
ALTER TABLE `tbl_mapempat`
  MODIFY `mapempat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_maplima`
--
ALTER TABLE `tbl_maplima`
  MODIFY `maplima_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_mapsatu`
--
ALTER TABLE `tbl_mapsatu`
  MODIFY `mapsatu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_maptiga`
--
ALTER TABLE `tbl_maptiga`
  MODIFY `maptiga_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
