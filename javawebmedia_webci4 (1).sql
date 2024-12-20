-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2024 at 10:36 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javawebmedia_webci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `ringkasan` varchar(500) NOT NULL,
  `isi` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `keywords` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori`, `slug_berita`, `judul_berita`, `ringkasan`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `icon`, `hits`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
(1, 1, 2, 'pembuatan-website-profil', 'Pembuatan Website Profil', 'Pastikan perusahaan Anda bisa diakses secara online sehingga meningkatkan brand image perusahaan yang akhirnya meningkatkan omset usaha.', '<h3><strong>Tujuan</strong></h3>\r\n<p>Website perusahaan dibangun sebagai:</p>\r\n<ul>\r\n<li>Sarana komunikasi resmi perusahaan dengan pelanggan</li>\r\n<li>Menyediakan informasi resmi perusahaan</li>\r\n<li>Menyajikan informasi produk dan layanan yang dimiliki</li>\r\n<li>Sebagai media pemasaran bagi perusahaan</li>\r\n</ul>\r\n<h3><strong>Fitur-fitur utama</strong></h3>\r\n<p>Website perusahaan ini menyediakan fitur-fitur sebagai berikut (disesuaikan dengan paket yang dipilih):</p>\r\n<ol>\r\n<li>Modul Berita untuk mengelola dan menampilkan berita</li>\r\n<li>Modul Profil untuk mengelola dan menampilkan profil perusahaan</li>\r\n<li>Modul Staff untuk mengelola dan menampilkan data staff/personil perusahaan</li>\r\n<li>Modul Galeri untuk mengelola galeri foto dan menampilkannya</li>\r\n<li>Modul Video berfungsi untuk mempublikasikan video sebagai sarana komunikasi</li>\r\n<li>Modul Agenda/Event untuk menampilkan event-event atau agenda yang ada di perusahaan</li>\r\n<li>Modul Produk dan layanan untuk mengelola dan menampilkan produk/layanan yang dipasarkan</li>\r\n<li>Modul Kontak untuk mengelola komunikasi pelanggan/customer dengan perusahaan</li>\r\n<li>Modul SEO untuk membantu hasil pencarian di Google</li>\r\n<li>Integrasi dengan jejaring sosial yang dimiliki</li>\r\n<li>Dan fitur-fitur lainnya</li>\r\n</ol>\r\n<h3>Paket Dasar</h3>\r\n<table class=\"table table-bordered table-stripped table-hover tiny-table\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Website UKM Dasar</td>\r\n<td>Hosting 250MB<br />Bandwidth Unlimited</td>\r\n<td>Rp. 1.500.000&nbsp;<sup class=\"text-danger\">*</sup></td>\r\n</tr>\r\n<tr>\r\n<td>Website Perusahaan Kecil</td>\r\n<td>Hosting dan bandwidth unlimeted<br />Fully responsive web design</td>\r\n<td>Rp. 3.000.000&nbsp;<sup class=\"text-danger\">*</sup></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\"><span class=\"text-danger\">* Harga dasar dengan syarat tertentu</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Publish', 'Berita', 'Pastikan perusahaan Anda bisa diakses secara online sehingga meningkatkan brand image perusahaan yang akhirnya meningkatkan omset usaha.', 'website-perusahaan-company-profile-web-javawebmedia1.jpg', '', 18, '2019-05-13 15:51:51', '2019-05-13 15:51:00', '2024-12-19 09:03:14'),
(2, 1, 3, 'kursus-algoritma', 'Kursus Algoritma', 'Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.', '<p>Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.</p>\r\n<p>Materi Kursus:</p>\r\n<ul>\r\n<ul>\r\n<li>Pengantar manajemen dan analisis data</li>\r\n<li>Transfer data, Entry data dan Cleaning Data</li>\r\n<li>Transformasi data (select cases, recode, split, dll)</li>\r\n<li>Statistik deskriptif untuk data numeric (mean, median, standar deviasi, varians, percentile dll) dan data kategorik (proporsi/persentase)</li>\r\n<li>Penyajian data (Box Plot, Bar Diagram, Pie, Histogram, dll)</li>\r\n</ul>\r\n</ul>\r\n<p><strong>Bonus: Uji Validitas dan Reliabilitas Instrumen, durasi 1 jam</strong></p>\r\n<h3><strong>Paket In house Training</strong></h3>\r\n<p>Paket in house training ini dilakukan sesuai kebutuhan institusi atau personal. Untuk materi dan biaya akan kami ajukan melalui proposal.</p>', 'Publish', 'Layanan', 'Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.', 'instagram-kursus-statistik-javawebmedia.png', 'fa fa-chart-bar', 21, '2019-05-17 04:15:33', '2019-05-17 04:06:00', '2024-12-19 04:50:13'),
(4, 1, 2, 'profil-law-firm-adamsyah-associates', 'Profil Law Firm ADAMSYAH & ASSOCIATES ', 'Law Firm ADAMSYAH & ASSOCIATES  Berpengalaman dalam menangani perkara litigasi/non litigasi Undang Undang Fidusia, dan juga menekuni berbagai bidang Hukum lainnya seperti Hukum Perdata, Perusahaan, Pidana, Legal Drafting, Kepailitan.', '<p style=\"text-align: justify;\">Law Firm ADAMSYAH &amp; ASSOCIATES Berpengalaman dalam menangani perkara litigasi/non litigasi Undang Undang Fidusia, dan juga menekuni berbagai bidang Hukum lainnya seperti Hukum Perdata, Perusahaan, Pidana, Legal Drafting, Kepailitan. Pendiri Telah berpengalaman dalam menangani perkara litigasi baik pidana maupun perdata perbankan di Kepolisian Republik Indonesia, Kejaksaan Republik Indonesia dan kantor pengadilan dibeberapa wilayah di Indonesia, serta instansi instansi terkait dalam penangan diplomasi dan negoisasi. Pendiri ADAMSYAH &amp; ASSOCIATES juga telah mengikuti pendidikan Non Formal pendidikan Mediator dan Arbitrase pada tahun 2022.&nbsp;</p>\r\n<p style=\"text-align: justify;\">Sejak didirikan pada awal September 2009 Di Jakarta, Law Firm ADAMSYAH &amp; ASSOCIATES memberanikan diri untuk bersaing dan ikut berkompetisi menginspirasikan dalam mencari keadilan setiap warga yang datang ke Law Firm kami, meskipun banyak kantor Hukum yang menawarkan jasa di ibu Kota Indonesia, namun tidak sedikitpun bergeming untuk mundur dalam persaingan, karena mencari sebuah kadilan adalah sebuah seni seni mencari keadilan, berawal dari berusaha untuk berdiri diatas kaki sendiri, satu satu persatu rekanan sejawat ikut bergabung bersama sama, dan mempunyai warna tersendiri bagi rekan rekan yang tergabung dalam ADAMSYAH &amp; ASSOCIATES, hingga memupuk pengalaman demi pengalaman yang cukup mumpuni dalam setiap penanganan kasus kasus maupun permasalahan Hukum yaitu gabungan dari kantor hukum kami bersama team handal dan para tokoh akdemisi merangkap seorang Praktisi yang sudah malang melintang sebagai Tenaga Ahli dan serta para tokoh aktifist Perempuan.</p>\r\n<p style=\"text-align: justify;\">&ldquo;Law Firm ADAMSYAH &amp; ASSOCIATES merambah ke Daerah Khususnya Kota Medan, atas dasar Motifasi Senior yang sekaligus Dosen/Guru memantapkan diri untuk dalam satu Wadah tetap dalam satu bendera Law Firm ADAMSYAH &amp; ASSOCIATES adalah gabungan Advokat/Pengacara, Ahli Hukum, dan Ahli Perbankan yang berpengalaman di bidangnya.</p>\r\n<p style=\"text-align: justify;\">ADAMSYAH &amp; ASSOCIATES yang dalam penanganannya secara Kolektif. Kombinasi dari keahlian tersebut membawa kepada sebuah Tim yang Solid dan Profesional yang tergabung dari para senior senior akademisi dan beberapa junior yang mempunyai keahlian dimasing masing bidang, yang mempunyai prestasi baik dari bidang penelitian, Konsersium, Kompetisi Hukum, dan penanganan Kasus secara Non Litigasi dan Litigasi, yang beprestasi secara Nasional, serta bersama-sama dengan Tim berupaya semaksimal mungkin untuk meraih hasil yang optimal</p>', 'Publish', 'Profil', 'Consellor, Attorney At Law & Mediator, Arbitrage', 'Capture.PNG', 'fas fa-check-circle', 30, '2019-07-26 10:38:15', '2019-07-26 10:36:00', '2024-12-12 07:40:18'),
(7, 1, 3, 'web-based-application', 'Web Based Application', 'Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan & mengembangkan aplikasi tersebut.', '<p>Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan &amp; mengembangkan aplikasi tersebut.</p>\r\n<h3><strong>Tujuan</strong></h3>\r\n<p>Website perusahaan dibangun sebagai:</p>\r\n<ul>\r\n<li>Otomasi proses bisnis yang bisa diakses 24 jam dengan internet</li>\r\n<li>Menyederhanakan proses pengumpulan data konsumen/customer/siswa dsb</li>\r\n<li>Sarana pengelolaan proses bisnis/usaha yang mudah dan praktis</li>\r\n</ul>\r\n<h3><strong>Fitur-fitur utama</strong></h3>\r\n<p>Website perusahaan ini menyediakan fitur-fitur sebagai berikut (disesuaikan dengan paket yang dipilih):</p>\r\n<ol>\r\n<li><strong>Fitur pendaftaran online</strong></li>\r\n<li><strong>Fitur login, logout, update profile dan transaksi bagi konsumen/customer</strong></li>\r\n<li><strong>Fitur-fitur lain yang disesuaikan dengan kebutuhan perusahaan</strong></li>\r\n<li>Modul Berita untuk mengelola dan menampilkan berita</li>\r\n<li>Modul Profil untuk mengelola dan menampilkan profil perusahaan</li>\r\n<li>Modul Staff untuk mengelola dan menampilkan data staff/personil perusahaan</li>\r\n<li>Modul Galeri untuk mengelola galeri foto dan menampilkannya</li>\r\n<li>Modul Video berfungsi untuk mempublikasikan video sebagai sarana komunikasi</li>\r\n<li>Modul Agenda/Event untuk menampilkan event-event atau agenda yang ada di perusahaan</li>\r\n<li>Modul Produk dan layanan untuk mengelola dan menampilkan produk/layanan yang dipasarkan</li>\r\n<li>Modul Kontak untuk mengelola komunikasi pelanggan/customer dengan perusahaan</li>\r\n<li>Modul SEO untuk membantu hasil pencarian di Google</li>\r\n<li>Integrasi dengan jejaring sosial yang dimiliki</li>\r\n<li>Dan fitur-fitur lainnya</li>\r\n</ol>', 'Publish', 'Layanan', 'Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan & mengembangkan aplikasi tersebut.', 'web-application-pendaftaran-online-javawebmedia.jpg', 'fa fa-globe', 3, '2020-02-13 07:45:07', '2020-02-13 07:44:00', '2024-12-12 06:32:15'),
(25, 1, 2, 'ini-judul-berita', 'ini judul berita', 'ini ringkasan', '<p>ini isi berita</p>', 'Publish', 'Berita', 'judul berita', 'download.jpg', '', 7, '2024-12-12 09:02:33', '2024-12-12 09:01:00', '2024-12-19 06:15:41'),
(26, 1, 2, 'sejarah-adamsyah-associaties', 'Sejarah Adamsyah & Associaties', 'Sejak didirikan pada awal September 2009 Di Jakarta, Law Firm ADAMSYAH & ASSOCIATES memberanikan diri untuk bersaing dan ikut berkompetisi menginspirasikan dalam mencari keadilan', '<p style=\"text-align: justify;\">Sejak didirikan pada awal September 2009 Di Jakarta, Law Firm ADAMSYAH &amp; ASSOCIATES memberanikan diri untuk bersaing dan ikut berkompetisi menginspirasikan dalam mencari keadilan setiap warga yang datang ke Law Firm kami, meskipun banyak kantor Hukum yang menawarkan jasa di ibu Kota Indonesia, namun tidak sedikitpun bergeming untuk mundur dalam persaingan, karena mencari sebuah kadilan adalah sebuah seni seni mencari keadilan, berawal dari berusaha untuk berdiri diatas kaki sendiri, satu satu persatu rekanan sejawat ikut bergabung bersama sama, dan mempunyai warna tersendiri bagi rekan rekan yang tergabung dalam ADAMSYAH &amp; ASSOCIATES, hingga memupuk pengalaman demi pengalaman yang cukup mumpuni dalam setiap penanganan kasus kasus maupun permasalahan Hukum yaitu gabungan dari kantor hukum kami bersama team handal dan para tokoh akdemisi merangkap seorang Praktisi yang sudah malang melintang sebagai Tenaga Ahli dan serta para tokoh aktifist Perempuan.</p>', 'Publish', 'Profil', 'Sejarah Adamsya & Associaties', 'IMG_20150917_00171424.jpg', 'fa fa-globe', 1, '2024-12-12 14:24:03', '2024-12-12 14:20:00', '2024-12-12 07:40:27'),
(27, 1, 2, 'pencapaian-adamsyah-associaties', 'Pencapaian Adamsyah & Associaties', 'Law Firm ADAMSYAH & ASSOCIATES Telah menunjukan prestasi yang luar biasa dalam menangani kasus-kasus litigasi yang kompleks termasuk kasus-kasus pidana yang dalam sorotan media massa dan perhatian publik', '<p style=\"text-align: justify;\">Law Firm ADAMSYAH &amp; ASSOCIATES Telah menunjukan prestasi yang luar biasa dalam menangani kasus-kasus litigasi yang kompleks termasuk kasus-kasus pidana yang dalam sorotan media massa dan perhatian publik, antara lain :</p>\r\n<ol style=\"text-align: justify;\">\r\n<li>UTANG PIUTANG</li>\r\n<li>MEMASUKKAN KETERANGAN PALSU DALAM AKTA OTENTIK</li>\r\n<li>ASURANSI</li>\r\n<li>PAILIT / PKPU</li>\r\n<li>KORUPSI</li>\r\n<li>PENGGELAPAN</li>\r\n<li>NARKOTIKA</li>\r\n<li>ASURANSI</li>\r\n<li>MEREK / HAKI</li>\r\n<li>PENIPUAN dll</li>\r\n<li>Sengketa Pemilu.</li>\r\n<li>Pidana kesehatan</li>\r\n<li>Zona eksekutif (maritim)</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">PENCAPAIAN KAMI</p>\r\n<p style=\"text-align: justify;\">Keprofesionalan, Kredibilitas serta kinerja Tim Advokat/Pengacara kami membuat beberapa Perusahaan, PT, CV menunjuk kami untuk mewakili kepentingan mereka yang pada akhirnya mempercayakan Law Firm ADAMSYAH &amp; ASSOCIATES untuk mengurus serta melindungi kepentingan Hukum mereka, antara lain:</p>\r\n<ol>\r\n<li style=\"text-align: justify;\">PT ERA BARU - Jakarta</li>\r\n<li style=\"text-align: justify;\">PT RADJA AUTO MOBIL - Medan</li>\r\n<li style=\"text-align: justify;\">RESTAURAN SINAR MINANG - Jakarta</li>\r\n<li style=\"text-align: justify;\">PT BI n JEE - Jakarta</li>\r\n<li style=\"text-align: justify;\">PT RAM COFEE - Medan</li>\r\n<li style=\"text-align: justify;\">PT Wiliam Okta. Deli Serdang</li>\r\n<li style=\"text-align: justify;\">CV Merak Kupi. Medan</li>\r\n<li style=\"text-align: justify;\">PT Radja Auto Mobil. Medan</li>\r\n</ol>', 'Publish', 'Profil', 'Pencapaian Adamsyah & Associaties', 'IMG_20150917_00171424.jpg', 'fa fa-book', 5, '2024-12-12 14:38:00', '2024-12-12 14:27:00', '2024-12-12 07:43:21'),
(28, 1, 2, 'ini-ska', 'ini ska', 'ini', '<p>ini isi</p>', 'Publish', 'Berita', 'ini', 'AA1w66ue.jpg', '', 7, '2024-12-19 11:56:45', '2024-12-19 11:51:00', '2024-12-19 09:04:25');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `jenis_client` enum('Perorangan','Perusahaan','Organisasi') NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pimpinan` varchar(255) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `isi_testimoni` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_client` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `id_user`, `jenis_client`, `nama`, `pimpinan`, `alamat`, `telepon`, `website`, `email`, `isi_testimoni`, `gambar`, `status_client`, `tempat_lahir`, `tanggal_lahir`, `tanggal_post`, `tanggal`) VALUES
(2, 1, 'Perorangan', 'AWS Indonesia', 'Uli Handayani', 'Jalan Lapangan Banteng Barat No. 3-4\r\nTromol Pos 3500', '', 'https://awsindonesia.org', 'javawebmedia@gmail.com', 'Website Yayasan AWS Indonesia saat ini sudah aktif dan bisa diakses tepat pada waktunya. Semoga selalu sukses ya.', 'Powered-by-Yayasan-AWS-Indonesia---SQUARE-2.png', 'Publish', 'JAKARTA', '1962-01-02', '0000-00-00 00:00:00', '2021-04-24 05:14:19'),
(3, 1, 'Perusahaan', 'Pemprov DKI Jakarta', 'Suprianto', 'Jl Permata No 1, Halim Perdanakusuma', '0813 8841 0829', 'http://bkddki.jakarta.go.id', 'lalu-kekah@bkkbn.go.id', 'Sebelumnya kami menggunakan website berbasis CMS Joomla. Saat ini website sudah diupdate dan berfungsi dengan baik sekali.', '5a1d2cd419e0c365574115.png', 'Publish', 'Depok', '2020-03-02', '0000-00-00 00:00:00', '2021-04-24 05:21:38'),
(5, 1, 'Perusahaan', 'Hotel Bumi Wiyata', 'Winda', 'Depok Town Square Lantai 2 Unit SS 5-7\r\nJl. Margonda Raya Kota Depok', '+6285715100485', 'https://hotelbumiwiyata.com', 'javawebmedia@gmail.com', 'Java Web Media sangat membantu proses pengembangan website kami. Menyediakan dan mempersiapkan konten mulai dari gambar hingga copy writing. Terimakasih', 'b7630a2a75006840b351bde15efe52be.jpg', 'Publish', 'Blora', '1983-02-22', '2021-04-24 07:34:12', '2021-04-24 05:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(11) NOT NULL,
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_download` varchar(200) DEFAULT NULL,
  `jenis_download` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `id_kategori_download`, `id_user`, `judul_download`, `jenis_download`, `isi`, `gambar`, `website`, `hits`, `tanggal_post`, `tanggal`) VALUES
(3, 2, 1, 'Paket Harga Kursus Desain dan Programming Java Web Media 2020', 'Download', '<p>Paket Harga Kursus Desain dan Programming Java Web Media 2020</p>', 'Daftar_Harga_Kursus_2020_v2.pdf', '', 0, '0000-00-00 00:00:00', '2020-02-13 00:50:27'),
(4, 1, 1, 'Formulir Pendaftaran Siswa Kursus', 'Download', '<p>Formulir Pendaftaran Siswa Kursus</p>', 'FORMULIR_PENDAFTARAN_SISWA_KURSUS.pdf', '', 0, '0000-00-00 00:00:00', '2020-02-13 00:50:10'),
(5, 2, 1, 'Paket Harga Kursus Statistik Java Web Media 2020', 'Download', '<p>Paket Harga Kursus Statistik Java Web Media 2020</p>', 'KURSUS_STATISTIK.pdf', '', 0, '0000-00-00 00:00:00', '2020-02-13 00:50:48'),
(6, 2, 1, 'Panduan Untuk Admin Engineering Utama aaa', 'Download', '<p>Panduan Untuk Admin Engineering Utama</p>', '010-Undangan-Workshop-Rekonsiliasi-Feb-2021.pdf', '', 0, '2021-04-23 20:06:25', '2021-04-24 01:27:48'),
(7, 2, 1, 'Panduan Untuk Admin Engineeringa', 'Panduan', '', 'SURAT-TUGAS-BOGOR-27-29-NOVEMBER-2019.pdf', '', 0, '2021-04-24 02:31:13', '2021-04-24 01:26:00'),
(8, 2, 1, 'Panduan Website', 'Download', '<p>Panduan Website</p>', 'RENCANA-JADWAL-MAS-FAISAL-BSM.pdf', '', 4, '2021-04-24 08:20:48', '2021-04-24 03:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_galeri` varchar(200) DEFAULT NULL,
  `jenis_galeri` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `status_text` enum('Ya','Tidak','','') NOT NULL,
  `tanggal_post` datetime DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_kategori_galeri`, `id_user`, `judul_galeri`, `jenis_galeri`, `isi`, `gambar`, `website`, `hits`, `status_text`, `tanggal_post`, `tanggal`) VALUES
(4, 5, 1, 'Adamsyah Associaties', 'Homepage', '<div class=\"align-items-center d-none d-md-flex\" style=\"text-align: justify;\">Profesionalisme dan Kredibilitas serta Transfaransi komunikasi kami, adalah bentuk kesungguhan Kami, mampu memberikan Pelayanan yang terbaik bagi Klient dan atau Pengguna Jasa Hukum.</div>\r\n<div class=\"d-flex align-items-center\">&nbsp;</div>', 'd.jpeg', '', NULL, 'Ya', NULL, '2024-12-12 03:59:53'),
(5, 5, 1, 'Adamsyah Associaties', 'Homepage', '<p style=\"text-align: justify;\"><strong><em>Law Firm ADAMSYAH &amp; ASSOCIATES</em></strong> menganggap Advokat dan atau Pengacara sebagai salah satu aset utama. Team kami didorong untuk mengadopsi pendekatan Preventif, Progresif, Proaktif, Persuasif, Prespektif atau yang kami sebut (P5) dalam Praktek Hukum dalam aktifitas sehari hari kami</p>', 'WhatsApp-Image-2024-12-12-at-09.05.29-(1).jpeg', '', NULL, 'Ya', NULL, '2024-12-12 04:00:13'),
(7, 5, 1, 'Kursus Web Development Java Web Media', 'Galeri', '<p>Kursus Web Development Java Web Media</p>', 'web-development-javawebmedia1.png', '', NULL, 'Ya', NULL, '2020-02-13 00:52:02'),
(8, 5, 1, 'Web Application Java Web Media', 'Galeri', '<p>Web Application Java Web Media</p>', 'web-application-pendaftaran-online-javawebmedia1.jpg', '', NULL, 'Ya', NULL, '2020-02-13 00:52:18'),
(9, 5, 1, 'Kursus Statistik di Java Web Media', 'Galeri', '<p>Kursus Statistik di Java Web Media</p>', 'instagram-kursus-statistik-javawebmedia1.png', '', NULL, 'Ya', NULL, '2020-02-13 00:53:55'),
(10, 5, 1, 'Web Development Java Web Media', 'Galeri', '<p>Web Development Java Web Media</p>', 'website-perusahaan-company-profile-web-javawebmedia12.jpg', '', NULL, 'Ya', NULL, '2020-02-13 00:54:28'),
(12, 6, 1, 'Festival Kabupaten Lestari 2019', 'Galeri', '<p>Festival Kabupaten Lestari 2019</p>', '1.jpg', 'http://javawebmedia.com', NULL, 'Ya', '2021-04-24 02:45:16', '2021-04-24 05:27:53'),
(13, 6, 1, 'Welcome to Java Web Media', 'Galeri', '<p>Welcome to Java Web Media</p>', 'Kursus-Banner-02.jpg', 'http://javawebmedia.com', NULL, 'Ya', '2021-04-24 08:13:13', '2021-04-24 01:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_user`, `slug_kategori`, `nama_kategori`, `urutan`, `hits`, `tanggal`) VALUES
(1, 1, 'web-design', 'Web Design', 1, 0, '2021-04-20 22:20:49'),
(2, 1, 'berita', 'Berita', 2, 15, '2024-12-19 06:15:16'),
(3, 1, 'adamsyah-associaties', 'Adamsyah Associaties', 3, 2, '2024-12-12 06:28:16'),
(4, 1, 'updates', 'Updates', 4, 0, '2021-04-20 22:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_download`
--

CREATE TABLE `kategori_download` (
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori_download` varchar(255) NOT NULL,
  `nama_kategori_download` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_download`
--

INSERT INTO `kategori_download` (`id_kategori_download`, `id_user`, `slug_kategori_download`, `nama_kategori_download`, `urutan`, `hits`, `tanggal`) VALUES
(1, 0, 'formulir-pendaftaran', 'Formulir Pendaftaran', 1, 0, '2021-04-21 00:37:58'),
(2, 1, 'promosi-java-web-media-2021', 'Promosi Java Web Media 2021', 2, 0, '2021-04-21 01:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori_galeri` varchar(255) NOT NULL,
  `nama_kategori_galeri` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id_kategori_galeri`, `id_user`, `slug_kategori_galeri`, `nama_kategori_galeri`, `urutan`, `hits`, `tanggal`) VALUES
(4, 0, 'kegiatan', 'Kegiatan', 4, 0, '2021-04-21 00:38:46'),
(5, 0, 'banner-website', 'Banner Website', 4, 0, '2021-04-21 00:38:46'),
(6, 1, 'family-gathering', 'Family gathering', 2, 0, '2021-04-21 00:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_staff`
--

CREATE TABLE `kategori_staff` (
  `id_kategori_staff` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori_staff` varchar(255) NOT NULL,
  `nama_kategori_staff` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_staff`
--

INSERT INTO `kategori_staff` (`id_kategori_staff`, `id_user`, `slug_kategori_staff`, `nama_kategori_staff`, `urutan`, `hits`, `tanggal`) VALUES
(1, 0, 'pejabat-eselon-1', 'Pejabat Eselon 1', 1, 0, '2021-04-21 00:44:24'),
(2, 0, 'pejabat-struktural', 'Pejabat Struktural', 2, 0, '2021-04-21 00:44:24'),
(3, 1, 'team-inti', 'Team Inti', 2, 0, '2021-04-21 01:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `id_berita` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `balasan` text NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `id_berita`, `nama`, `isi`, `balasan`, `tanggal`) VALUES
(1, 1, 'leo', 'ini komn', 'iyah benar sekali', '2024-12-19 13:13:58'),
(2, 1, 'ahmad', 'sok mantap', ' fsdf', '2024-12-19 13:26:49'),
(3, 28, 'ahmad', 'boleh komen\r\n', 'iyah silahkan kakak', '2024-12-19 16:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tentang` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_cadangan` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `nama_facebook` varchar(255) DEFAULT NULL,
  `nama_twitter` varchar(255) DEFAULT NULL,
  `nama_instagram` varchar(255) DEFAULT NULL,
  `nama_youtube` varchar(255) DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `protocol` varchar(255) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_timeout` int(11) NOT NULL,
  `smtp_user` varchar(255) NOT NULL,
  `smtp_pass` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `id_user`, `namaweb`, `singkatan`, `tagline`, `tentang`, `deskripsi`, `website`, `email`, `email_cadangan`, `alamat`, `telepon`, `hp`, `logo`, `icon`, `keywords`, `metatext`, `facebook`, `twitter`, `instagram`, `youtube`, `nama_facebook`, `nama_twitter`, `nama_instagram`, `nama_youtube`, `google_map`, `protocol`, `smtp_host`, `smtp_port`, `smtp_timeout`, `smtp_user`, `smtp_pass`, `tanggal`) VALUES
(1, 1, 'Adamsyah & Associaties', 'Adamsyah & Associaties', 'Consellor, Attorney At Law & Mediator, Arbitrage', '<p style=\"text-align: justify;\">Profesionalisme dan Kredibilitas serta Transfaransi komunikasi kami, adalah bentuk kesungguhan Kami, mampu memberikan Pelayanan yang terbaik bagi Klient dan atau Pengguna Jasa Hukum</p>\r\n<p style=\"text-align: justify;\">Law Firm ADAMSYAH &amp; ASSOCIATES menganggap Advokat dan atau Pengacara sebagai salah satu aset utama. Team kami didorong untuk mengadopsi pendekatan Preventif, Progresif, Proaktif, Persuasif, Prespektif atau yang kami sebut (P5) dalam Praktek Hukum dalam aktifitas sehari hari kami. Law Firm ADAMSYAH &amp; ASSOCIATES mewakili berbagai Klient, mulai dari perorangan maupun Badan Hukum baik Instansi maupun Swasta bahkan menjadi Tenaga Ahli di instansi Pemerintahan.&nbsp;</p>\r\n<p style=\"text-align: justify;\">Ubi Societas Ibi Justicia yang artinya dimana ada masyarakat dan kehidupan, disana ada hukum. adagium tersebut adalah yang paling tepat yang dapat menggambarkan secara eksplisit mengenai relasi antara hukum dan kehidupan manusia, yang secara filosifis menegaskan eksistensi hukum akan selalu ada dalam setiap aktifitas kehidupan manusia. Sehingga karena semakin pesatnya perkembangan peradaban manusia, maka kedudukan hukum akan selalu selaras dengan perkembangan itu.</p>\r\n<p style=\"text-align: justify;\">Dalam aktifitasnya, seseorang (individu) maupun suatu kelompok dan atau badan hukum selalu dihadapkan dengan berbagai permasalahan hukum atau konflik hukum, yang mana jika hal itu dibiarkan ataupun ditangani dengan tidak tepat maka akan menimbulkan berbagai macam efek yang tidak menguntungkan bagi diri seseorang, kelompok dan atau badan hukum tersebut. Apalagi dalam dunia bisnis tidak jarang pula permasalahan hukum atau konflik hukum tersebut berdampak tidak baik bagi keberlangsungan karir seseorang atau masa depan usahanya.</p>\r\n<p style=\"text-align: justify;\">Fenomena yang sering terjadi bahwa hukum senantiasa baru dianggap sebagai suatu hal yang sangat penting manakala permasalahan atau konflik hukum itu muncul serta tidak terhindarkan lagi oleh para pihak. Sehingga tidak dapat dipungkiri bahwa berhadapan dengan permasalahan atau konflik hukum bukan saja menguras tenaga dan pikiran, tetapi juga menghabiskan banyak waktu dan biaya yang kadang kala tidaklah sedikit. Untuk itu dengan menunjuk suatu kantor advokat dan konsultan hukum sebagai kuasa hukum tetap guna menjaga kepentingan dan keberlangsungan suatu usaha secara hukum adalah langkah brilian dan sangat tepat.</p>\r\n<p style=\"text-align: justify;\">Oleh karenanya Kantor Advokat dan Konsultan Hukum yang berkedudukan di Gd Auto Radja Mobil, Lt II, jalan Merak, No. 12 A, Kel. Sei Sikambing, Kec Medan Sunggal, Kota Medan, dan kantor cabang di Jalan Duku, No. 10, Kel Srengseng, Kec Kembangan. Jakarta barat. dan di Jl. Cempedak Raya No.2, Lamper Lor, Kec. Semarang Selatan, Kota Semarang, Jawa Tengah 50249. dimana kantor hukum komersial yang senantiasa berupaya secara maksimal untuk memberikan pelayanan hukum terbaik bagi masyarakat. Bukan saja membantu masyarakat dalam menghadapi dan memecahkan permasalahan atau konflik hukum yang sedang dihadapi, akan tetapi juga membantu masyarakat untuk mengantisipasi potensi permasalahan atau konflik hukum yang mungkin muncul dari aktifitas usaha atau bisnis.</p>', 'Consellor, Attorney At Law & Mediator, Arbitrage', 'Jalan merak no 12 A, Kel Sei Sikambing B , Kec Medan Sunggal, Kota Medan.', 'adamsyah@gmail.com', 'adamsyah@gmail.com', '<p><b>Adamsyah & Associaties </b><span style=\"font-size: 1rem;\">Jalan merak no 12 A, Kel Sei Sikambing B , Kec Medan Sunggal, Kota Medan</span></p>', '+6282277911758', '+6285767487917', 'Capture.PNG', 'icon.jpeg', 'Java Web Media adalah Pusat Kursus Private dan Reguler bidang Desain Grafis, Web Programming, Mobile Application dan Statistik\r\n', 'adada', 'https://www.facebook.com/', 'http://twitter.com/', 'https://instagram.com/', 'https://www.youtube.com/watch?v=Ha-YETOLe3o', 'Adamsyah Associaties', 'Adamsyah Associaties', 'Adamsyah Associaties', 'Adamsyah Associaties', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3982.0118240064726!2d98.62931547497315!3d3.584759196389396!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zM8KwMzUnMDUuMSJOIDk4wrAzNyc1NC44IkU!5e0!3m2!1sid!2sid!4v1733970997833!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'smtp', 'ssl://mail.websitemu.com', 465, 7, 'contact@websitemu.com', 'muhammad', '2024-12-12 06:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_kategori_staff` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jabatan` varchar(200) DEFAULT NULL,
  `keahlian` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_staff` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `id_user`, `id_kategori_staff`, `nama`, `alamat`, `telepon`, `website`, `email`, `jabatan`, `keahlian`, `gambar`, `status_staff`, `tempat_lahir`, `tanggal_lahir`, `tanggal`) VALUES
(9, 1, 3, 'Andoyo Cakep', 'Jl Permata No 1, Halim Perdanakusuma', '0813 8841 0829', 'https://sidatablkbogorkab.com', 'lalu-kekah@bkkbn.go.id', 'Direktur', 'ada', '6.jpg', 'Publish', 'Depok', '1983-02-22', '2021-04-24 01:51:22'),
(10, 1, 3, 'Andoyo Cakep', 'Depok Town Square Lantai 2 Unit SS 5-7\r\nJl. Margonda Raya Kota Depok', '+6285715100485', 'https://javawebmedia.com', 'javawebmedia@gmail.com', 'Graphic Designer', '', '4.jpg', 'Publish', 'Depok', '1983-02-22', '2021-04-24 01:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `kode_rahasia` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `kode_rahasia`, `gambar`, `keterangan`, `tanggal_post`, `tanggal`) VALUES
(1, 'Admin', 'adamsyah@gmail.com', 'admin', '7318a8b83f03df2dd6d0604a858813c387ab3612', 'Admin', NULL, 'icon-educamedia.png', '', '2019-10-12 15:50:21', '2024-12-12 03:23:29'),
(2, 'Rayyan', 'andoyoandoyo@gmail.com', 'rayyan', 'acc5d43e0936dbf3f27b906891aaafdf9ede4508', 'User', NULL, NULL, '', '2019-04-24 17:21:18', '2019-04-24 10:21:18'),
(3, 'Kheira Alexandrina', 'andoyoandoyo@gmail.com', 'diana', '6a90af129eeefc2f6e6a38746a2b33cb04c2c632', 'User', NULL, NULL, '<p>adada</p>', '2019-10-12 14:10:05', '2021-04-21 01:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id_user_log` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `tanggal_updates` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id_user_log`, `id_user`, `ip_address`, `username`, `url`, `tanggal_updates`) VALUES
(1, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2021-05-03 01:19:34'),
(2, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-12 02:01:01'),
(3, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-12 02:01:10'),
(4, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 02:01:22'),
(5, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/berita/tambah', '2024-12-12 02:01:25'),
(6, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/berita/tambah', '2024-12-12 02:02:33'),
(7, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Berita', '2024-12-12 02:02:33'),
(8, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/berita/author/1', '2024-12-12 02:02:39'),
(9, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/user', '2024-12-12 02:02:50'),
(10, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/user/edit/1', '2024-12-12 02:02:58'),
(11, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi/logo', '2024-12-12 02:03:07'),
(12, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-12 02:07:44'),
(13, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 02:08:15'),
(14, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 02:10:33'),
(15, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 02:10:34'),
(16, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-12 02:11:52'),
(17, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi/logo', '2024-12-12 02:11:56'),
(18, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi/logo', '2024-12-12 02:12:09'),
(19, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi/logo', '2024-12-12 02:12:10'),
(20, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi/icon', '2024-12-12 02:12:52'),
(21, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi/icon', '2024-12-12 02:14:00'),
(22, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi/icon', '2024-12-12 02:14:02'),
(23, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 02:14:31'),
(24, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 02:39:15'),
(25, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 02:39:15'),
(26, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 02:40:11'),
(27, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 02:40:11'),
(28, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 02:42:06'),
(29, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 02:42:06'),
(30, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 02:43:13'),
(31, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 02:43:13'),
(32, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 02:43:13'),
(33, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 02:44:07'),
(34, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 02:44:07'),
(35, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/konfigurasi/seo', '2024-12-12 02:44:53'),
(36, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/user', '2024-12-12 02:47:00'),
(37, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/client', '2024-12-12 02:47:02'),
(38, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/berita/tambah', '2024-12-12 02:47:19'),
(39, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/kategori', '2024-12-12 02:47:31'),
(40, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 02:50:35'),
(41, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/berita/edit/2', '2024-12-12 02:50:47'),
(42, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/berita/edit/2', '2024-12-12 02:51:34'),
(43, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Layanan', '2024-12-12 02:51:34'),
(44, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/kategori_galeri', '2024-12-12 02:52:37'),
(45, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/kategori', '2024-12-12 02:52:44'),
(46, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 02:52:53'),
(47, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/berita/edit/3', '2024-12-12 02:53:07'),
(48, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/berita/edit/3', '2024-12-12 03:00:09'),
(49, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 03:00:10'),
(50, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-12 03:16:20'),
(51, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/akun', '2024-12-12 03:16:27'),
(52, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/akun', '2024-12-12 03:17:42'),
(53, 1, '::1', 'javawebmedia', 'http://localhost/compro-codeigniter-4/admin/akun', '2024-12-12 03:17:42'),
(54, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-12 03:23:04'),
(55, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/akun', '2024-12-12 03:23:13'),
(56, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/akun', '2024-12-12 03:23:29'),
(57, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/akun', '2024-12-12 03:23:29'),
(58, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-12 03:23:48'),
(59, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-12 03:34:13'),
(60, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-12 03:35:26'),
(61, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/akun', '2024-12-12 03:35:38'),
(62, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/staff', '2024-12-12 03:35:47'),
(63, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/staff/edit/10', '2024-12-12 03:36:01'),
(64, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/staff/edit/10', '2024-12-12 03:37:15'),
(65, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/staff', '2024-12-12 03:37:16'),
(66, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/staff/edit/10', '2024-12-12 03:37:27'),
(67, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/staff/edit/10', '2024-12-12 03:38:33'),
(68, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/staff', '2024-12-12 03:38:33'),
(69, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 03:38:59'),
(70, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-12 03:39:04'),
(71, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 03:42:55'),
(72, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri', '2024-12-12 03:43:04'),
(73, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri', '2024-12-12 03:43:15'),
(74, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/tambah', '2024-12-12 03:43:24'),
(75, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 03:43:30'),
(76, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori_galeri', '2024-12-12 03:44:36'),
(77, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori', '2024-12-12 03:44:41'),
(78, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori', '2024-12-12 03:44:46'),
(79, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-12 03:44:51'),
(80, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/client', '2024-12-12 03:45:03'),
(81, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri', '2024-12-12 03:45:12'),
(82, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri/tambah', '2024-12-12 03:45:18'),
(83, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori_galeri', '2024-12-12 03:45:23'),
(84, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori', '2024-12-12 03:45:27'),
(85, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 03:45:31'),
(86, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri', '2024-12-12 03:46:01'),
(87, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri/edit/5', '2024-12-12 03:46:15'),
(88, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri/edit/5', '2024-12-12 03:46:48'),
(89, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri', '2024-12-12 03:46:48'),
(90, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri/edit/5', '2024-12-12 03:47:05'),
(91, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri/edit/5', '2024-12-12 03:47:50'),
(92, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri', '2024-12-12 03:47:52'),
(93, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri/edit/5', '2024-12-12 03:55:51'),
(94, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri/edit/5', '2024-12-12 03:57:13'),
(95, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri', '2024-12-12 03:57:13'),
(96, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri/edit/4', '2024-12-12 03:57:59'),
(97, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri/edit/4', '2024-12-12 03:59:52'),
(98, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri', '2024-12-12 03:59:53'),
(99, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri/edit/5', '2024-12-12 04:00:02'),
(100, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri/edit/5', '2024-12-12 04:00:12'),
(101, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri', '2024-12-12 04:00:13'),
(102, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori_galeri', '2024-12-12 04:36:19'),
(103, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 04:36:25'),
(104, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/23', '2024-12-12 04:36:35'),
(105, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/23', '2024-12-12 04:38:20'),
(106, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 04:38:21'),
(107, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 04:38:38'),
(108, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 05:53:37'),
(109, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 05:53:37'),
(110, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/delete/23', '2024-12-12 05:54:40'),
(111, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 05:54:41'),
(112, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/delete/3', '2024-12-12 05:55:41'),
(113, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 05:55:41'),
(114, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 06:02:45'),
(115, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 06:03:16'),
(116, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 06:03:16'),
(117, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 06:03:49'),
(118, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 06:04:56'),
(119, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 06:04:56'),
(120, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 06:05:14'),
(121, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 06:05:24'),
(122, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 06:05:24'),
(123, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/tambah', '2024-12-12 06:05:28'),
(124, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 06:10:46'),
(125, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 06:10:49'),
(126, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 06:12:32'),
(127, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 06:12:32'),
(128, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 06:14:16'),
(129, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori', '2024-12-12 06:14:49'),
(130, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori/edit/5', '2024-12-12 06:15:10'),
(131, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori/edit/5', '2024-12-12 06:15:20'),
(132, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori', '2024-12-12 06:15:20'),
(133, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 06:15:25'),
(134, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 06:16:00'),
(135, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 06:16:09'),
(136, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 06:16:09'),
(137, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 06:17:14'),
(138, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 06:17:31'),
(139, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 06:17:31'),
(140, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori', '2024-12-12 06:18:22'),
(141, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori/delete/6', '2024-12-12 06:18:48'),
(142, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori', '2024-12-12 06:18:48'),
(143, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori/delete/5', '2024-12-12 06:19:25'),
(144, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori', '2024-12-12 06:19:25'),
(145, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 06:21:35'),
(146, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/7', '2024-12-12 06:21:42'),
(147, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/7', '2024-12-12 06:21:50'),
(148, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Berita', '2024-12-12 06:21:50'),
(149, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/1', '2024-12-12 06:21:57'),
(150, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/1', '2024-12-12 06:22:01'),
(151, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Berita', '2024-12-12 06:22:01'),
(152, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/galeri', '2024-12-12 06:22:39'),
(153, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 06:23:03'),
(154, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/2', '2024-12-12 06:23:12'),
(155, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/2', '2024-12-12 06:23:27'),
(156, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Layanan', '2024-12-12 06:23:27'),
(157, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/2', '2024-12-12 06:23:57'),
(158, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/2', '2024-12-12 06:24:06'),
(159, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Layanan', '2024-12-12 06:24:06'),
(160, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori', '2024-12-12 06:25:01'),
(161, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori/edit/3', '2024-12-12 06:25:12'),
(162, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori/edit/3', '2024-12-12 06:25:28'),
(163, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori', '2024-12-12 06:25:28'),
(164, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 06:25:38'),
(165, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/kategori/3', '2024-12-12 06:25:48'),
(166, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 06:26:55'),
(167, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/7', '2024-12-12 06:27:17'),
(168, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/7', '2024-12-12 06:27:29'),
(169, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Berita', '2024-12-12 06:27:29'),
(170, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/7', '2024-12-12 06:27:58'),
(171, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/7', '2024-12-12 06:28:12'),
(172, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Layanan', '2024-12-12 06:28:12'),
(173, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 06:29:02'),
(174, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori', '2024-12-12 06:29:14'),
(175, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 06:29:33'),
(176, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 06:29:45'),
(177, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 06:29:51'),
(178, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/2', '2024-12-12 06:29:55'),
(179, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 06:30:41'),
(180, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/7', '2024-12-12 06:32:08'),
(181, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/7', '2024-12-12 06:32:15'),
(182, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Layanan', '2024-12-12 06:32:15'),
(183, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 06:47:20'),
(184, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 06:47:38'),
(185, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 06:49:08'),
(186, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 06:49:09'),
(187, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 06:49:13'),
(188, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 06:49:13'),
(189, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 06:51:09'),
(190, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 06:51:09'),
(191, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 06:51:54'),
(192, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 06:51:54'),
(193, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 06:52:35'),
(194, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/tambah', '2024-12-12 06:52:37'),
(195, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-12 06:54:17'),
(196, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/tambah', '2024-12-12 06:54:39'),
(197, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-12 06:54:42'),
(198, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-12 06:59:36'),
(199, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/client', '2024-12-12 07:02:06'),
(200, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/staff', '2024-12-12 07:07:05'),
(201, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/staff', '2024-12-12 07:07:14'),
(202, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori_staff', '2024-12-12 07:07:21'),
(203, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/kategori_staff', '2024-12-12 07:07:30'),
(204, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/staff', '2024-12-12 07:07:37'),
(205, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/client', '2024-12-12 07:07:45'),
(206, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/staff', '2024-12-12 07:07:49'),
(207, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-12 07:17:48'),
(208, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 07:18:04'),
(209, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/4', '2024-12-12 07:19:47'),
(210, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 07:19:48'),
(211, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 07:19:55'),
(212, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/tambah', '2024-12-12 07:20:22'),
(213, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/tambah', '2024-12-12 07:24:03'),
(214, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 07:24:04'),
(215, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/tambah', '2024-12-12 07:27:40'),
(216, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/tambah', '2024-12-12 07:38:00'),
(217, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 07:38:00'),
(218, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/27', '2024-12-12 07:39:29'),
(219, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/27', '2024-12-12 07:40:03'),
(220, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 07:40:03'),
(221, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/27', '2024-12-12 07:40:49'),
(222, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/27', '2024-12-12 07:41:19'),
(223, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 07:41:19'),
(224, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/27', '2024-12-12 07:41:39'),
(225, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/27', '2024-12-12 07:42:35'),
(226, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 07:42:35'),
(227, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/27', '2024-12-12 07:42:51'),
(228, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/edit/27', '2024-12-12 07:43:16'),
(229, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Profil', '2024-12-12 07:43:16'),
(230, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/konfigurasi', '2024-12-12 07:44:51'),
(231, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-13 07:19:24'),
(232, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/video', '2024-12-13 07:20:11'),
(233, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/video/edit/2', '2024-12-13 07:20:21'),
(234, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/video/edit/2', '2024-12-13 07:22:53'),
(235, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/video', '2024-12-13 07:22:53'),
(236, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-13 07:23:14'),
(237, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 02:51:42'),
(238, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 03:52:47'),
(239, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-19 03:52:55'),
(240, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/tambah', '2024-12-19 03:53:06'),
(241, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/tambah', '2024-12-19 03:53:33'),
(242, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 04:51:22'),
(243, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita', '2024-12-19 04:51:37'),
(244, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/tambah', '2024-12-19 04:51:52'),
(245, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/tambah', '2024-12-19 04:56:45'),
(246, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Berita', '2024-12-19 04:56:45'),
(247, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Berita', '2024-12-19 06:19:16'),
(248, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Berita', '2024-12-19 06:19:36'),
(249, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Berita', '2024-12-19 06:19:53'),
(250, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Berita', '2024-12-19 06:20:07'),
(251, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 06:23:01'),
(252, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 06:23:21'),
(253, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 06:23:32'),
(254, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 06:26:00'),
(255, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 06:26:02'),
(256, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/komentar', '2024-12-19 06:26:05'),
(257, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/berita/jenis_berita/Berita', '2024-12-19 06:33:44'),
(258, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 06:33:49'),
(259, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/komentar', '2024-12-19 06:33:53'),
(260, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/komentar', '2024-12-19 06:33:53'),
(261, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 06:43:57'),
(262, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 06:44:01'),
(263, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 06:45:18'),
(264, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 06:45:22'),
(265, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 06:48:42'),
(266, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 06:48:46'),
(267, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/adminkomentar', '2024-12-19 07:03:50'),
(268, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/adminkomentar', '2024-12-19 07:04:49'),
(269, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 07:13:47'),
(270, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 07:13:50'),
(271, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 07:16:32'),
(272, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 07:16:36'),
(273, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 07:16:56'),
(274, 1, '::1', 'admin', 'http://localhost/compro-codeigniter-4/admin/dasbor', '2024-12-19 07:21:00');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `video` text NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `id_user`, `judul`, `keterangan`, `video`, `tanggal_post`, `tanggal`) VALUES
(1, 1, 'INSTALASI XAMPP DAN SUBLIME TEXT', 'INSTALASI XAMPP DAN SUBLIME TEXT', 'A66PiaPuTZs', '0000-00-00 00:00:00', '2020-02-13 00:48:03'),
(2, 1, 'Adamsyah & Associates', 'Adamsyah & Associates', 'Ha-YETOLe3o', '0000-00-00 00:00:00', '2024-12-13 07:22:53'),
(3, 1, 'Makan bersama dengan Bunda', 'Makan bersama dengan Bunda', 'jVr6CYLhjQo', '0000-00-00 00:00:00', '2021-04-23 20:49:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori_download`
--
ALTER TABLE `kategori_download`
  ADD PRIMARY KEY (`id_kategori_download`);

--
-- Indexes for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD PRIMARY KEY (`id_kategori_galeri`);

--
-- Indexes for table `kategori_staff`
--
ALTER TABLE `kategori_staff`
  ADD PRIMARY KEY (`id_kategori_staff`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_berita` (`id_berita`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id_user_log`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori_download`
--
ALTER TABLE `kategori_download`
  MODIFY `id_kategori_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori_staff`
--
ALTER TABLE `kategori_staff`
  MODIFY `id_kategori_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id_user_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_berita`) REFERENCES `berita` (`id_berita`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
