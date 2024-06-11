-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2024 at 03:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rekap_kehadiran2`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen_guru`
--

CREATE TABLE `absen_guru` (
  `id_absen_guru` int(11) NOT NULL,
  `tgl_absen` date DEFAULT NULL,
  `keterangan` varchar(1) DEFAULT NULL,
  `id_guru` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `absen_guru`
--

INSERT INTO `absen_guru` (`id_absen_guru`, `tgl_absen`, `keterangan`, `id_guru`) VALUES
(129, '2024-01-11', 'h', 24),
(130, '2024-01-11', 'h', 18),
(131, '2024-01-11', 'h', 21),
(132, '2024-01-11', 'h', 23),
(133, '2024-01-11', 'h', 19),
(134, '2024-01-11', 'h', 20);

-- --------------------------------------------------------

--
-- Table structure for table `absen_jam_ngajar`
--

CREATE TABLE `absen_jam_ngajar` (
  `id_absen_jam_ngajar` int(11) NOT NULL,
  `tgl_ngajar` date NOT NULL,
  `jumlah_jam` int(11) NOT NULL,
  `id_jam_mengajar` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `absen_jam_ngajar`
--

INSERT INTO `absen_jam_ngajar` (`id_absen_jam_ngajar`, `tgl_ngajar`, `jumlah_jam`, `id_jam_mengajar`, `id_guru`) VALUES
(10, '2018-03-08', 4, 2, 6),
(11, '2018-03-08', 2, 1, 15),
(12, '2018-03-09', 4, 3, 6),
(14, '2018-03-09', 2, 2, 6),
(15, '2018-07-22', 2, 2, 6),
(16, '2018-07-22', 2, 3, 6),
(17, '2018-07-22', 2, 1, 15),
(18, '2018-07-21', 2, 2, 6),
(19, '2018-07-21', 2, 3, 6),
(20, '2018-08-28', 2, 2, 6),
(21, '2018-08-28', 2, 3, 6),
(22, '2018-08-28', 1, 1, 15),
(23, '2018-08-27', 2, 2, 6),
(24, '2018-08-27', 2, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `absen_siswa`
--

CREATE TABLE `absen_siswa` (
  `id_absen_siswa` int(11) NOT NULL,
  `tgl_absen` date DEFAULT NULL,
  `keterangan` varchar(1) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `absen_siswa`
--

INSERT INTO `absen_siswa` (`id_absen_siswa`, `tgl_absen`, `keterangan`, `id_siswa`) VALUES
(53, '2017-11-13', 'h', 28),
(54, '2017-11-13', 'h', 19),
(55, '2017-11-13', 's', 29),
(56, '2017-11-13', 's', 20),
(58, '2017-11-15', 's', 23),
(59, '2017-11-15', 's', 31),
(60, '2018-07-22', 's', 32),
(61, '2018-08-27', 's', 33),
(62, '2018-08-27', 's', 34),
(63, '2018-08-27', 's', 32),
(64, '2018-08-28', 'i', 33),
(65, '2018-08-28', 'i', 34),
(66, '2018-08-28', 'i', 32),
(67, '2018-08-28', 'a', 33),
(68, '2018-08-28', 'a', 34),
(69, '2018-08-28', 'a', 32),
(70, '2018-08-29', 'a', 33),
(71, '2018-08-29', 'a', 34),
(72, '2018-08-29', 'a', 32),
(73, '2018-08-30', 'h', 33),
(74, '2018-08-30', 'h', 34),
(75, '2018-08-30', 'h', 32),
(77, '2018-08-05', 'i', 34),
(78, '2018-08-05', 'h', 32),
(81, '2018-08-05', 'h', 33),
(82, '2024-05-19', 'h', 36),
(83, '2024-05-29', 'h', 36),
(84, '2024-06-03', 'i', 36),
(85, '2024-06-05', 'h', 36),
(86, '2024-01-05', 's', 36),
(87, '2024-01-10', 'h', 19),
(88, '2024-01-10', 'h', 20),
(89, '2024-01-10', 'h', 23),
(90, '2024-01-10', 'h', 27),
(91, '2024-01-10', 'h', 28),
(92, '2024-01-10', 'h', 29),
(93, '2024-01-10', 'h', 31),
(94, '2024-01-10', 'h', 32),
(95, '2024-01-10', 'h', 33),
(96, '2024-01-10', 'h', 34),
(97, '2024-01-11', 'h', 19),
(98, '2024-01-11', 'h', 20),
(99, '2024-01-11', 'h', 23),
(100, '2024-01-11', 's', 27),
(101, '2024-01-11', 's', 28);

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id_biodata` int(11) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `kota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id_biodata`, `nama_sekolah`, `alamat`, `photo`, `email`, `telepon`, `kota`) VALUES
(1, 'Yayasan Al-Farisi\r\nSD IT Al-Farisi', 'Jl. Terusan Rancabango Kp. Cipenta RT 03/11', 'logo_sdit_alfarisi.png', 'email@gmail.com', '(088) 838-7377 x35', 'Garut');

-- --------------------------------------------------------

--
-- Table structure for table `biodata_laporan`
--

CREATE TABLE `biodata_laporan` (
  `id` int(11) NOT NULL,
  `nama_ketua` varchar(100) NOT NULL,
  `nama_wakil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `biodata_laporan`
--

INSERT INTO `biodata_laporan` (`id`, `nama_ketua`, `nama_wakil`) VALUES
(1, 'Ahmad Kamaludin S.pd.i', 'Siti Robiah Agustin S.pd.i');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `nuptk` varchar(255) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `status` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nip`, `nuptk`, `nama`, `jenis_kelamin`, `status`, `alamat`, `jabatan`, `telepon`, `tgl_lahir`) VALUES
(16, '0', '0', 'Tanti Rostini, S.Pd.I', 'p', 'pns', '-', 'Guru', '', '0000-00-00'),
(17, '0', '0', 'Rifa Indria Sari', 'p', 'gty', '-', 'Guru', '', '0000-00-00'),
(18, '0', '0', 'Ai Sulastri, S.Pd', 'p', 'pns', '-', 'Guru', '', '0000-00-00'),
(19, '0', '0', 'Hajaryanti', 'p', 'gty', '-', 'Guru', '', '0000-00-00'),
(20, '0', '0', 'Neng Sifa Latifah, S.Pd', 'p', 'pns', '-', 'Guru', '', '0000-00-00'),
(21, '0', '0', 'Dede Roni', 'l', 'gty', '-', 'Guru', '', '0000-00-00'),
(22, '0', '0', 'Sovi Nursabani', 'p', 'gty', '-', 'Guru', '', '0000-00-00'),
(23, '0', '0', 'Gina Mildayanti', 'p', 'gty', '-', 'Guru', '', '0000-00-00'),
(24, '0', '0', 'Ahmad Kamaludin S.pd.i', 'l', 'pns', '-', 'Kepala Sekolah', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `jam_mengajar`
--

CREATE TABLE `jam_mengajar` (
  `id_jam_mengajar` int(11) NOT NULL,
  `jam` int(11) NOT NULL,
  `id_pelajaran` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jam_mengajar`
--

INSERT INTO `jam_mengajar` (`id_jam_mengajar`, `jam`, `id_pelajaran`, `id_guru`, `id_kelas`) VALUES
(1, 2, 1, 15, 3),
(2, 4, 3, 6, 4),
(3, 4, 3, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'Kelas 1'),
(2, 'Kelas 2'),
(3, 'Kelas 3'),
(4, 'Kelas 4'),
(5, 'Kelas 5'),
(6, 'Kelas 6');

-- --------------------------------------------------------

--
-- Table structure for table `pelajaran`
--

CREATE TABLE `pelajaran` (
  `id_pelajaran` int(11) NOT NULL,
  `mata_pelajaran` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pelajaran`
--

INSERT INTO `pelajaran` (`id_pelajaran`, `mata_pelajaran`) VALUES
(1, 'PJOK'),
(3, 'Sejarah Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `kelas` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `telepon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama`, `jenis_kelamin`, `kelas`, `alamat`, `tgl_lahir`, `telepon`) VALUES
(19, 'Agnia Putri Rudimansyah', 'P', 1, 'Garut', '0000-00-00', '0'),
(20, 'Bintang Aqila Fredella', 'P', 1, 'Garut', '0000-00-00', '0'),
(23, 'Dera Rapi Ahmad', 'L', 1, 'Garut', '0000-00-00', '0'),
(27, 'Fadhli Nur Fauzan', 'L', 1, 'Garut', '0000-00-00', '0'),
(28, 'Fadlan Nur Fauzan', 'L', 1, 'Garut', '0000-00-00', '0'),
(29, 'M Faisal Syaputra', 'L', 1, 'Garut', '0000-00-00', '0'),
(31, 'Ranvi Muhammad Santika', 'L', 1, 'Garut', '0000-00-00', '0'),
(32, 'Solahudin', 'L', 1, 'Garut', '0000-00-00', '0'),
(33, 'Wildan Pratama', 'L', 1, 'Garut', '0000-00-00', '0'),
(34, 'Zahira As-Shidiqiyah', 'P', 1, 'Garut', '0000-00-00', '0'),
(36, 'ALFI ZAELANI', 'L', 2, 'Garut', '0000-00-00', '0'),
(37, 'ALIEFAH AILLA ASDZIKRIA', 'p', 2, '-', '0000-00-00', ''),
(38, 'NYIMAS SRI NURLAELA', 'p', 2, '-', '0000-00-00', ''),
(39, 'PUTRI TAVASYA', 'p', 2, '-', '0000-00-00', ''),
(40, 'RIPKAL ANANDA PUTRA', 'p', 2, '-', '0000-00-00', ''),
(41, 'SAEFUL', 'l', 2, '-', '0000-00-00', ''),
(42, 'SIPA ADELIA PUTRI', 'p', 2, '-', '0000-00-00', ''),
(43, 'SRI PUJI YANTI', 'p', 2, '-', '0000-00-00', ''),
(44, 'KIRANA ALESHA', 'p', 2, '-', '0000-00-00', ''),
(45, 'AZKA MUHAMMAD WAFY', 'l', 3, '-', '0000-00-00', ''),
(46, 'FAUZIYA HASNA ANNIDA', 'p', 3, '-', '0000-00-00', ''),
(47, 'FITRIA SAYITRI', 'p', 3, '0', '0000-00-00', ''),
(48, 'JULIAN RAMADHANSYAH', 'l', 3, '-', '0000-00-00', ''),
(49, 'MUHAMMAD RAIHAN RAMADHANI', 'l', 3, '-', '0000-00-00', ''),
(50, 'PUTRI ROSMAYA RAMADHANI', 'p', 3, '-', '0000-00-00', ''),
(51, 'RAHMAT KUSUMAH', 'l', 3, '-', '0000-00-00', ''),
(52, 'ZIDAN MAULA AL QATIRI', 'l', 3, '-', '0000-00-00', ''),
(53, 'AINI WULANDARI', 'l', 4, '-', '0000-00-00', ''),
(54, 'ALIF MUHAMMAD SYAHID', 'l', 4, '-', '0000-00-00', ''),
(55, 'ALYA JASMINE', 'l', 4, '-', '0000-00-00', ''),
(56, 'DERA SAHARA', 'p', 4, '-', '0000-00-00', ''),
(57, 'DESI DESVIA ANGGRAENI', 'p', 4, '-', '0000-00-00', ''),
(58, 'MISCELLA PUTRI ANGGRAENI', 'l', 4, '-', '0000-00-00', ''),
(59, 'MUHAMMAD GERRY ADRIAN', 'l', 4, '-', '0000-00-00', ''),
(60, 'RAISYA ISMI RATULAH', 'p', 4, '-', '0000-00-00', ''),
(61, 'SULTAN RAJAB SETIAWAN', 'l', 4, '-', '0000-00-00', ''),
(62, 'WIDYA ULFAH AZZAHRA', 'p', 4, '-', '0000-00-00', ''),
(63, 'GATHAN', 'l', 4, '-', '0000-00-00', ''),
(64, 'ZAKI', 'l', 4, '-', '0000-00-00', ''),
(65, 'PAIZ HAPIDIL ILMI', 'l', 4, '-', '0000-00-00', ''),
(66, 'Ananda Putra', 'l', 5, '-', '0000-00-00', ''),
(67, 'Andra Arsi Kumalasari', 'p', 5, '-', '0000-00-00', ''),
(68, 'Atiqah Khoiriyah Aqilah Labiib', 'p', 5, '-', '0000-00-00', ''),
(69, 'Meli Amelia', 'p', 5, '-', '0000-00-00', ''),
(70, 'Muhamad Ikal Al Fazri', 'l', 5, '-', '0000-00-00', ''),
(71, 'Muhamad Rafka Hadiyansyah', 'l', 5, '-', '0000-00-00', ''),
(72, 'Muhammad Rangga Marjaeni', 'l', 5, '-', '0000-00-00', ''),
(73, 'Muhammad Zaelani', 'l', 5, '-', '0000-00-00', ''),
(74, 'Najwa Azkia Fatahilah', 'p', 5, '-', '0000-00-00', ''),
(75, 'Neng Siti Sarah', 'l', 5, '-', '0000-00-00', ''),
(76, 'Raisa Zahrana', 'p', 5, '-', '0000-00-00', ''),
(77, 'Rifki', 'l', 5, '-', '0000-00-00', ''),
(78, 'Rosania Anatasya', 'p', 5, '-', '0000-00-00', ''),
(79, 'Yasmin Nursyifa', 'p', 5, '-', '0000-00-00', ''),
(80, 'Yuna Leza', 'p', 5, '-', '0000-00-00', ''),
(81, 'Zamzam Alghifari', 'l', 5, '-', '0000-00-00', ''),
(82, 'Zanesya Regina Putri', 'p', 5, '-', '0000-00-00', ''),
(83, 'ANDHIN SEPTIANI', 'l', 6, '-', '0000-00-00', ''),
(84, 'ATIKA FERLI MUTIA', 'p', 6, '-', '0000-00-00', ''),
(85, 'AZ-ZAHRA RAMADHANI', 'p', 6, '-', '0000-00-00', ''),
(86, 'AZKIA DWIPAH', 'p', 6, '-', '0000-00-00', ''),
(87, 'FATMA NURFADILLAH', 'l', 6, '-', '0000-00-00', ''),
(88, 'FITRI PURNAMASARI', 'p', 6, '-', '0000-00-00', ''),
(89, 'MUHAMMAD RIFKI', 'l', 6, '-', '0000-00-00', ''),
(90, 'MUHAMMAD SETIAWAN ALVIN MAULAN', 'l', 6, '-', '0000-00-00', ''),
(91, 'NAZRIEL NATALEGAWA', 'l', 6, '-', '0000-00-00', ''),
(92, 'SALSABILA SEPTIANI SHIHHA', 'p', 6, '-', '0000-00-00', ''),
(93, 'WAFAA TSANIA MARWAH', 'p', 6, '-', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `akses` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `email`, `akses`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@gmail.com', 'admin'),
(2, 'petugas', 'petugas', 'petugas', 'petugas@gmail.com', 'petugas_piket'),
(3, 'kesiswaan', 'kesiswaan', 'kesiswaan', 'kesiswaan@gmail.com', 'kesiswaan'),
(4, 'koordinator', 'koordinator', 'koordinator', 'koordinator@gmail.com', 'koordinator'),
(5, 'kepsek', 'kepsek', 'Kepala Sekolah', 'kepalasekolah@gmail.com', 'admin'),
(6, 'zefrifahlevi', 'zefrifahlevi', 'Zefri Fahlevi', 'zefrifahlevi@gmail.com', 'petugas_piket');

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id_wali` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`id_wali`, `username`, `password`, `id_guru`, `id_kelas`) VALUES
(2, 'zxcvbnm', 'zxcvbnm', 6, 6),
(3, 'walikelas1', 'walikelas1', 16, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen_guru`
--
ALTER TABLE `absen_guru`
  ADD PRIMARY KEY (`id_absen_guru`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `absen_jam_ngajar`
--
ALTER TABLE `absen_jam_ngajar`
  ADD PRIMARY KEY (`id_absen_jam_ngajar`);

--
-- Indexes for table `absen_siswa`
--
ALTER TABLE `absen_siswa`
  ADD PRIMARY KEY (`id_absen_siswa`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id_biodata`);

--
-- Indexes for table `biodata_laporan`
--
ALTER TABLE `biodata_laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `jam_mengajar`
--
ALTER TABLE `jam_mengajar`
  ADD PRIMARY KEY (`id_jam_mengajar`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`id_pelajaran`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id_wali`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen_guru`
--
ALTER TABLE `absen_guru`
  MODIFY `id_absen_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `absen_jam_ngajar`
--
ALTER TABLE `absen_jam_ngajar`
  MODIFY `id_absen_jam_ngajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `absen_siswa`
--
ALTER TABLE `absen_siswa`
  MODIFY `id_absen_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `biodata_laporan`
--
ALTER TABLE `biodata_laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `jam_mengajar`
--
ALTER TABLE `jam_mengajar`
  MODIFY `id_jam_mengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `id_pelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id_wali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absen_guru`
--
ALTER TABLE `absen_guru`
  ADD CONSTRAINT `absen_guru_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`);

--
-- Constraints for table `absen_siswa`
--
ALTER TABLE `absen_siswa`
  ADD CONSTRAINT `absen_siswa_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
