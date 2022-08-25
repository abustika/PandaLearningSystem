-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2021 at 08:58 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pandasystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ques1` varchar(50) NOT NULL,
  `ques2` varchar(50) NOT NULL,
  `ques3` varchar(50) NOT NULL,
  `ques4` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `formativeans1`
--

CREATE TABLE `formativeans1` (
  `email` varchar(100) NOT NULL,
  `Id` int(11) NOT NULL,
  `ques1` varchar(250) NOT NULL,
  `ques2` varchar(250) NOT NULL,
  `ques3` varchar(250) NOT NULL,
  `ques4` varchar(250) NOT NULL,
  `ques5` varchar(250) NOT NULL,
  `scoref21` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `formativeans1`
--

INSERT INTO `formativeans1` (`email`, `Id`, `ques1`, `ques2`, `ques3`, `ques4`, `ques5`, `scoref21`) VALUES
('iklil98@gmail.com', 24, 'A. i dan ii', 'A. Banyak ke banyak', 'A. Bujur, Murid', 'A. Seorang warganegara mempunyai satu kad pengenalan sahaja.', 'A. Data nombor telefon tersebut tidak akan hilang ketekalannya.', 2),
('kris0422@hotmail.com', 26, 'A. i dan ii', 'A. Banyak ke banyak', 'A. Bujur, Murid', 'A. Seorang warganegara mempunyai satu kad pengenalan sahaja.', 'A. Data nombor telefon tersebut tidak akan hilang ketekalannya.', 2),
('feizhi98@hotmail.com', 27, 'A. i dan ii', 'A. Banyak ke banyak', 'A. Bujur, Murid', 'A. Seorang warganegara mempunyai satu kad pengenalan sahaja.', 'A. Data nombor telefon tersebut tidak akan hilang ketekalannya.', 2),
('ais@g.com', 32, 'A. i dan ii', 'A. Banyak ke banyak', 'C. Segi empat tepat, Boh Leng', 'C. Seorang murid boleh menyertai lebih daripada satu kelab di sekolah', 'C. Tiada jawapan', 3);

-- --------------------------------------------------------

--
-- Table structure for table `formativeans2`
--

CREATE TABLE `formativeans2` (
  `email` varchar(100) NOT NULL,
  `Id` int(11) NOT NULL,
  `ques1` varchar(250) NOT NULL,
  `ques2` varchar(250) NOT NULL,
  `ques3` varchar(250) NOT NULL,
  `ques4` varchar(250) NOT NULL,
  `ques5` varchar(250) NOT NULL,
  `scoref22` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `formativeans2`
--

INSERT INTO `formativeans2` (`email`, `Id`, `ques1`, `ques2`, `ques3`, `ques4`, `ques5`, `scoref22`) VALUES
('ais@g.com', 8, 'C. ii, i, iii', 'D. Mengelakkan berlakunya pertindihan data daripada rekod yang sama berulang-ulang disimpan di dalam pangkalan data. Seterusnya, dapat menjimatkan ruang stor komputer.', 'D. Semua di atas.', 'C. Berlaku apabila atribut2 bergantung sepenuhnya kepada kesemua atribut kunci dalam jadual.', 'C. MURID (ID Murid , Nama Murid, No Telefon Bimbit)', 0),
('ais@g.com', 9, 'A. i, ii, iii', 'D. Mengelakkan berlakunya pertindihan data daripada rekod yang sama berulang-ulang disimpan di dalam pangkalan data. Seterusnya, dapat menjimatkan ruang stor komputer.', 'B. Entiti yang terjadi bersama dengan satu atau banyak jenis entiti yang lain.', 'B. Berlaku apabila atribut2 bergantung kepada salah satu daripada atribut kunci dalam jadual.', 'B. PINJAMAN (Kod Buku , ID Murid , Tarikh Pinjam, Tarikh Hantar) BUKU (Kod Buku , Nama Buku, Pengarang) MURID (ID Murid , No Telefon Bimbit ) TELEFON (No Telefon Bimbit , Nama Murid)', 0),
('ais@g.com', 10, 'B. iii, ii, i', 'B. Untuk menghasilkan hubungan di antara dua jadual, jadual yang ingin mewujudkan hubungan akan menambahkan atribut kunci asing daripada jadual sasaran sebagai kunci primer.', 'C. Entiti ini wujud dengan tidak bergantung pada entiti yang lain.', 'A. Berlaku apabila atribut2 bergantung kepada atribut biasa yang lain dalam jadual.', 'A. PINJAMAN (Kod Buku , ID Murid , Tarikh Pinjam, Tarikh Hantar) BUKU (Kod Buku , Nama Buku, Pengarang) MURID (ID Murid , Nama Murid, No Telefon Bimbit)', 2),
('feizhi98@hotmail.com', 12, 'B. iii, ii, i', 'B. Untuk menghasilkan hubungan di antara dua jadual, jadual yang ingin mewujudkan hubungan akan menambahkan atribut kunci asing daripada jadual sasaran sebagai kunci primer.', 'A. Entiti ini bergantung pada entiti sama jenis yang lain.', 'B. Berlaku apabila atribut2 bergantung kepada salah satu daripada atribut kunci dalam jadual.', 'B. PINJAMAN (Kod Buku , ID Murid , Tarikh Pinjam, Tarikh Hantar) BUKU (Kod Buku , Nama Buku, Pengarang) MURID (ID Murid , No Telefon Bimbit ) TELEFON (No Telefon Bimbit , Nama Murid)', 0),
('iklil98@gmail.com', 13, 'A. i, ii, iii', 'A. Untuk menghasilkan hubungan di antara dua jadual, jadual yang ingin mewujudkan hubungan akan menambahkan atribut kunci primer daripada jadual sasaran sebagai kunci asing.', 'A. Entiti ini bergantung pada entiti sama jenis yang lain.', 'A. Berlaku apabila atribut2 bergantung kepada atribut biasa yang lain dalam jadual.', 'A. PINJAMAN (Kod Buku , ID Murid , Tarikh Pinjam, Tarikh Hantar) BUKU (Kod Buku , Nama Buku, Pengarang) MURID (ID Murid , Nama Murid, No Telefon Bimbit)', 2);

-- --------------------------------------------------------

--
-- Table structure for table `formativeans3`
--

CREATE TABLE `formativeans3` (
  `email` varchar(100) NOT NULL,
  `Id` int(11) NOT NULL,
  `ques1` varchar(250) NOT NULL,
  `ques2` varchar(250) NOT NULL,
  `ques3` varchar(250) NOT NULL,
  `ques4` varchar(250) NOT NULL,
  `ques5` varchar(250) NOT NULL,
  `scoref23` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `formativeans3`
--

INSERT INTO `formativeans3` (`email`, `Id`, `ques1`, `ques2`, `ques3`, `ques4`, `ques5`, `scoref23`) VALUES
('ais@g.com', 6, 'C. i, iii, ii, iv', 'C. Mengesahkan data melalui ciri2 borang.', 'C. Membolehkan borang direka cipta khusus dengan menentukan rekod2 yang ingin dipamerkan daripada satu atau lebih jadual dalam pangkalan data.', 'D. Pilih atribut2 dalam jadual terlibat.', 'B. i dan ii', 1),
('ais@g.com', 7, 'B. iv, iii, ii, i', 'C. Mengesahkan data melalui ciri2 borang.', 'B. Mempamerkan beberapa rekod jadual dalam satu borang.', 'A. Daripada tab Create, klik ikon Query Wizard untuk memulakan proses bagi menghasilkan query.', 'A. i sahaja', 0),
('ais@g.com', 8, 'A. i, ii, iii, iv', 'A. Memaparkan data daripada setiap rekod dalam jadual pangkalan data melalui susun atur yang lebih mudah difahami oleh pengguna.', 'A. Mempamerkan borang dan jadual dalam Design view.', 'B. Pada tab Borang Pinjaman, klik kanan dan pilih Close untuk menutup borang.', 'B. i dan ii', 2),
('feizhi98@hotmail.com', 10, 'A. i, ii, iii, iv', 'B. Mengutip data untuk disimpan sebagai rekod dalam susun atur yang lebih mudah difahami oleh pengguna.', 'D. Menggubal borang Pinjaman.', 'A. Daripada tab Create, klik ikon Query Wizard untuk memulakan proses bagi menghasilkan query.', 'B. i dan ii', 0),
('feizhi98@hotmail.com', 11, 'A. i, ii, iii, iv', 'A. Memaparkan data daripada setiap rekod dalam jadual pangkalan data melalui susun atur yang lebih mudah difahami oleh pengguna.', 'A. Mempamerkan borang dan jadual dalam Design view.', 'A. Daripada tab Create, klik ikon Query Wizard untuk memulakan proses bagi menghasilkan query.', 'A. i sahaja', 1),
('iklil98@gmail.com', 12, 'A. i, ii, iii, iv', 'A. Memaparkan data daripada setiap rekod dalam jadual pangkalan data melalui susun atur yang lebih mudah difahami oleh pengguna.', 'A. Mempamerkan borang dan jadual dalam Design view.', 'A. Daripada tab Create, klik ikon Query Wizard untuk memulakan proses bagi menghasilkan query.', 'A. i sahaja', 1);

-- --------------------------------------------------------

--
-- Table structure for table `formativeans4`
--

CREATE TABLE `formativeans4` (
  `email` varchar(100) NOT NULL,
  `Id` int(11) NOT NULL,
  `ques1` varchar(250) NOT NULL,
  `ques2` varchar(250) NOT NULL,
  `ques3` varchar(250) NOT NULL,
  `ques4` varchar(250) NOT NULL,
  `ques5` varchar(250) NOT NULL,
  `scoref24` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `formativeans4`
--

INSERT INTO `formativeans4` (`email`, `Id`, `ques1`, `ques2`, `ques3`, `ques4`, `ques5`, `scoref24`) VALUES
('iklil98@gmail.com', 5, 'A. i,ii,iii,iv', 'A. pangkalan data bermaklumat', 'A. SELECT', 'A. semakan ketekalan', 'A. DROP', 2),
('feizhi98@hotmail.com', 6, 'A. i,ii,iii,iv', 'A. pangkalan data bermaklumat', 'A. SELECT', 'A. semakan ketekalan', 'A. DROP', 2),
('feizhi98@hotmail.com', 7, 'C. iv,i,iii,ii', 'C. pangkalan data berkomputer', 'A. SELECT', 'B. semakan penormalan', 'A. DROP', 5),
('ais@g.com', 8, 'A. i,ii,iii,iv', 'A. pangkalan data bermaklumat', 'A. SELECT', 'C. semakan julat', 'A. DROP', 2),
('ais@g.com', 9, 'D. iii,iv,i,ii', 'B. pangkalan data berteknologi', 'A. SELECT', 'C. semakan julat', 'A. DROP', 2),
('ais@g.com', 10, 'C. iv,i,iii,ii', 'C. pangkalan data berkomputer', 'A. SELECT', 'A. semakan ketekalan', 'A. DROP', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sumatifstudentanswer`
--

CREATE TABLE `sumatifstudentanswer` (
  `email` varchar(100) NOT NULL,
  `Id` int(11) NOT NULL,
  `ques1` varchar(100) NOT NULL,
  `ques2` varchar(100) NOT NULL,
  `ques3` varchar(100) NOT NULL,
  `ques4` varchar(100) NOT NULL,
  `ques5` varchar(100) NOT NULL,
  `scoresumatif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sumatifstudentanswer`
--

INSERT INTO `sumatifstudentanswer` (`email`, `Id`, `ques1`, `ques2`, `ques3`, `ques4`, `ques5`, `scoresumatif`) VALUES
('yeop123@hotmail.com', 20, 'A. Kunci primer', 'A. Jenis data', 'A. memasukkan data', 'A. Model Hubungan Entiti', 'A. pengesahsahihan', 1),
('yeop123@hotmail.com', 21, 'A. Kunci primer', 'A. Jenis data', 'C. carian data', 'C. Model data hierarki', 'B. semakan julat', 0),
('yeop123@hotmail.com', 25, 'D. Atribut', 'B. Kunci primer', 'D. mengekstrapolasi data', 'A. Model Hubungan Entiti', 'C. penyenggaraan fail', 5),
('iklil98@gmail.com', 27, 'A. Kunci primer', 'A. Jenis data', 'A. memasukkan data', 'A. Model Hubungan Entiti', 'A. pengesahsahihan', 1),
('feizhi98@hotmail.com', 28, 'C. Rekod', 'A. Jenis data', 'A. memasukkan data', 'A. Model Hubungan Entiti', 'A. pengesahsahihan', 1),
('feizhi98@hotmail.com', 29, 'D. Atribut', 'B. Kunci primer', 'D. mengekstrapolasi data', 'A. Model Hubungan Entiti', 'C. penyenggaraan fail', 5),
('kris0422@hotmail.com', 30, 'D. Atribut', 'B. Kunci primer', 'D. mengekstrapolasi data', 'A. Model Hubungan Entiti', 'C. penyenggaraan fail', 5),
('ais@g.com', 36, 'B. Kunci asing', 'C. Kunci asing', 'A. memasukkan data', 'C. Model data hierarki', 'D. penormalan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `birthday` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `recent_page` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `birthday`, `gender`, `password`, `recent_page`) VALUES
(' Alifah Ilyana Soharto', 'ais@g.com', '1998-02-23', 'Perempuan', 'alifahilyana', 'http://localhost:8080/Panda_system/tables.jsp'),
('Tan Fei Zhi', 'feizhi98@hotmail.com', '2021-01-26', 'Perempuan', '123123', 'http://localhost:8080/Panda_system/review24formative.jsp'),
('Iklil Izzati', 'iklil98@gmail.com', '2020-12-10', 'Perempuan', '12234567', 'http://localhost:8080/Panda_system/tables.jsp'),
('Krisnavenii', 'kris0422@hotmail.com', '2020-01-10', 'Perempuan', '588', 'http://localhost:8080/Panda_system/tables.jsp'),
('Amirul Faiz', 'yeop123@hotmail.com', '2020-11-04', 'Lelaki', '123yeop', 'http://localhost:8080/Panda_system/index.jsp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `formativeans1`
--
ALTER TABLE `formativeans1`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `formativeans2`
--
ALTER TABLE `formativeans2`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `formativeans3`
--
ALTER TABLE `formativeans3`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `formativeans4`
--
ALTER TABLE `formativeans4`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sumatifstudentanswer`
--
ALTER TABLE `sumatifstudentanswer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `formativeans1`
--
ALTER TABLE `formativeans1`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `formativeans2`
--
ALTER TABLE `formativeans2`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `formativeans3`
--
ALTER TABLE `formativeans3`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `formativeans4`
--
ALTER TABLE `formativeans4`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sumatifstudentanswer`
--
ALTER TABLE `sumatifstudentanswer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
