-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jan 2021 pada 03.29
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bengkelku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'wad1234', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `type` varchar(8) NOT NULL,
  `req_date` varchar(100) NOT NULL,
  `req_time` varchar(100) NOT NULL,
  `ret_date` varchar(100) NOT NULL,
  `ret_time` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `pickup_point` varchar(100) NOT NULL,
  `keluhan` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(14) NOT NULL,
  `confirmation` int(11) NOT NULL,
  `veh_reg` varchar(100) NOT NULL,
  `driverid` int(11) NOT NULL,
  `finished` int(11) NOT NULL,
  `paid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `booking`
--

INSERT INTO `booking` (`booking_id`, `name`, `username`, `alamat`, `type`, `req_date`, `req_time`, `ret_date`, `ret_time`, `destination`, `pickup_point`, `keluhan`, `email`, `mobile`, `confirmation`, `veh_reg`, `driverid`, `finished`, `paid`) VALUES
(64, 'faisal rizqi', 'faisalrizqi', 'Jl. Kiara Condong No.401A, Kb. Kangkung, Kec. Kiaracondong, Kota Bandung, Jawa Barat 40284', '150', '01/16/2021', '', '', '', '', '', '9 : 10 AM', 'motor agak gaenak', 0, 2147483647, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `partner`
--

CREATE TABLE `partner` (
  `part_id` int(11) NOT NULL,
  `part_alamat` varchar(500) CHARACTER SET latin1 NOT NULL,
  `part_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `part_desc` varchar(1000) CHARACTER SET latin1 NOT NULL,
  `part_photo` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `partner`
--

INSERT INTO `partner` (`part_id`, `part_alamat`, `part_name`, `part_desc`, `part_photo`) VALUES
(1, 'Faishal Rizqi Irfandi', 'BRT (Bintang Racing Team)', ' BRT terlahir dari suatu keinginan dan hasrat dari staff PT. Bintang Niaga Jaya , sebuah authorized dealer sepeda motor Honda di Cibinong, Bogor, Jawa barat untuk lebih mendalami dunia sepeda motor dengan cara terjun ke arena balap dan memenangkannya.\r\n\r\n', '4387131_0eb882df-d6af-424b-ae0c-8f69f718979c.jpg'),
(2, 'Jl. Kiara Condong No.401A, Kb. Kangkung, Kec. Kiaracondong, Kota Bandung, Jawa Barat 40284', 'Fortuna Motor', 'Fortuna Motor adalah Dealer resmi motor yamaha 3S ( Sales, Service, Spare Part ) berdiri sejak tahun 2009, yang mengusung konsep Totalitas kepuasan dan kemudahan semua Customer Yamaha.\r\n\r\nKami melayani pembelian secara CASH dan CREDIT dengan harga kompetitif semua type ( Moped, Matic, Naked, Maxi, Sport, dan CBU ).\r\n\r\nKami siap melayani TUKAR TAMBAH ( Trade – In ) semua merek motor dengan Motor Baru Yamaha.', 'YAMAHA-FORTUNA-MOTOR.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sparepart`
--

CREATE TABLE `sparepart` (
  `spar_id` int(11) NOT NULL,
  `spar_reg` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `spar_description` varchar(255) NOT NULL,
  `spar_photo` varchar(255) NOT NULL,
  `spar_available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sparepart`
--

INSERT INTO `sparepart` (`spar_id`, `spar_reg`, `brand`, `spar_description`, `spar_photo`, `spar_available`) VALUES
(37, 'Rp. 20.000', 'Spion Rizoma Circuit 744 CNC Aluminium NMAX XMAX Aerox 155 PCX', ' Spion Rizoma Circuit 744 CNC Aluminium NMAX XMAX Aerox 155 PCX\r\n\r\nFitur :\r\n- Grade ORI.\r\n- Full CNC Aluminium.\r\n- Terdapat tulisan Rizoma.\r\n- Kaca cembung anti glare biru.\r\n- Sudah termasuk baut, dudukan, dan kunci L.\r\n\r\nPilihan Warna : Full Hitam\r\n\r\nDap', '564359ef2ec6dfcd08c50a3725e464d5.jpg', 0),
(38, 'Rp. 1.349.000', 'Knalpot ROB1 endcap V Nmax Aerox 155 Lexy ADV150 Allnew Vario 125/150 2018', ' Ready Stock!\r\nKnalpot ROB1 Standard racing Fullstainless\r\n- Yamaha Nmax 155\r\n- Yamaha Aerox 155 \r\n- Yamaha lexy\r\n- Honda ADV 150\r\n- Honda Allnew Vario 125/150 2018\r\n\r\n.\r\nKnalpot ganteng,suara adem\r\nBikin motor jadi keceh!\r\nSelain itu performa motor lebih', '238d44361de4d34d6dea2d93038c64fb.jpg', 0),
(39, 'Rp. 1.100.000', 'ECU JUKEN 5 BRT CRF 150 Racing Turbo', ' MODEL : JUKEN 5 RACING TURBO\r\nTYPE : CRF 150\r\nNO. PART : 919 - K84 - 118RT - 00R\r\n\r\nGARANSI BRT SETAHUN SEJAK TGL PEMBELIAN\r\n\r\nKELENGKAPAN :\r\no 1 pcs ECU Juken 5 Racing Turbo\r\no 1 pcs kabel dualband\r\n\r\n\r\nFITUR :\r\no Smart Dual i-Core\r\no Programmable ECU d', '-1_f2511d27-2cf5-4e68-a275-4c5da589f7d8.jpg', 0),
(40, 'Rp. 60.000', 'Sein sen senja running led pnp honda adv 150 vario 150 CBR150 CB150R', ' Sen Senja Running\r\n\r\nSenja biru\r\nSen kuning\r\n\r\nPNP untuk tipe motor \r\nNew vario 125 150 New 2018\r\nHonda adv 150\r\nHonda Cbr 150 Led\r\nHonda Cb150 Led\r\n\r\nHarga sepasang kanan kiri', 'batch-upload_0f6c7073-f4b3-4e14-9ec1-66ebc5e7e2b7.jpg', 0),
(41, 'Rp. 130.000', 'cover tutup radiator alumunium CNC untuk motor HONDA ADV 150 PCX VARIO 150 VARIO 125', ' Deskripsi Cover Tutup Radiator Variasi Vario Model HRC Silver Murah\r\n\r\n??Masuk motor \r\nVario 125 lama \r\nVario 125 150 led\r\nVario 125 150 New\r\nPCX lama \r\nPCX lokal\r\nADV 150\r\n\r\n??Cover Radiator Nmax Model HRC\r\nBahan Aluminium Anti Karat\r\nTebal 2mm tidak go', '77409867-cc43-4693-9dac-d5e63d52baa3.jpg', 0),
(42, 'Rp. 20.000', 'DECKPAD FULL SET ALL NEW NMAX 2020 - TANKPAD ALL NEW NMAX 2020 - AKSESORIS ALL NEW NMAX', ' \"DECK PAD PROTECTOR YAMAHA ALL NEW NMAX 2020  (FULL SET)\"\r\n\r\nFUNGSI : MELINDUNG DECK MOTOR NMAX DARI KOTORAN DAN GORESAN , MEMPERCANTIK TAMPILAN YAMAHA NMAX\r\nANDA,DAN SUDAH DI SEDIAKAN DOUBLE TAPE 3M DI BALIKNYA, JADI CARA PEMASANGANNYA SANGAT GAMPANG,\r\n', 'download (1).jpg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `email`, `username`, `password`, `admin`) VALUES
(16, 'faisal', 'rizqi', 'faisalrizqiirfandi@gmail.com', 'faisalrizqi', 'isal1109', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indeks untuk tabel `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`part_id`);

--
-- Indeks untuk tabel `sparepart`
--
ALTER TABLE `sparepart`
  ADD PRIMARY KEY (`spar_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `partner`
--
ALTER TABLE `partner`
  MODIFY `part_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sparepart`
--
ALTER TABLE `sparepart`
  MODIFY `spar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
