-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Okt 2024 pada 13.52
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `profil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `sender` varchar(10) DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `contactusinfo`
--

CREATE TABLE `contactusinfo` (
  `id_info` int(11) NOT NULL,
  `alamat_kami` tinytext DEFAULT NULL,
  `email_kami` varchar(255) DEFAULT NULL,
  `telp_kami` char(15) DEFAULT NULL,
  `wa_kami` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contactusinfo`
--

INSERT INTO `contactusinfo` (`id_info`, `alamat_kami`, `email_kami`, `telp_kami`, `wa_kami`) VALUES
(1, 'Jl. iya jadian kaga', 'batarisalon@gmail.com', '6287778251975', '6285326620447');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama` text NOT NULL,
  `email` text NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `nama`, `email`, `pesan`) VALUES
(3, 'adjie', 'hellowordpart1@gmail.com', 'hallo guys');

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_about`
--

CREATE TABLE `p_about` (
  `id_about` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_about`
--

INSERT INTO `p_about` (`id_about`, `judul`, `isi`) VALUES
(1, 'Page About Us', '<p style=\"text-align: justify;\">Fakultas Ekonomi dan Bisnis Universitas Bina Insan Lubuklinggau merupakan salah satu Fakultas Universitas Bina Insan yang berada di Kota Lubuklinggau, Provinsi Sumatera Selatan, yang berdiri pada tanggal 6 agustus tahun 1999. Fakultas Universitas Bina Insan sampai sekarang adalah kampus yang telah diakui oleh Masyarakat dan Pemerintah Kota Lubuklinggau dan sekitarnya sebagai salah satu perguruan tinggi swasta di Indonesia, khususnya di L2Dikti II.</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_akta_perkawinan`
--

CREATE TABLE `p_akta_perkawinan` (
  `id_aktaperkawinan` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_artikel`
--

CREATE TABLE `p_artikel` (
  `partikelid` int(11) NOT NULL,
  `pa_judul` text NOT NULL,
  `pa_tgl` date NOT NULL,
  `pa_isi` text NOT NULL,
  `pa_link` varchar(99) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pa_file` varchar(99) NOT NULL,
  `pa_penulis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_artikel`
--

INSERT INTO `p_artikel` (`partikelid`, `pa_judul`, `pa_tgl`, `pa_isi`, `pa_link`, `id_kategori`, `pa_file`, `pa_penulis`) VALUES
(1, 'berita utama hari ini', '2020-10-24', 'Cras vitae turpis lacinia, lacinia lacus non, fermentum nisi. Donec et sollicitudin est, in euismod.', 'berita-utama-hari-ini', 1, '1.png', 'adjie'),
(2, 'What is Lorem Ipsum?', '2020-10-24', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'What-is-Lorem-Ipsum', 1, '2.png', 'admin'),
(3, 'Where does it come from?', '2020-10-23', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'Where-doe-it-come-rom', 1, '3.png', 'admin'),
(4, 'Where can I get some', '2020-10-24', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Where-can-I-get-some', 1, '4.png', 'anonim');

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_detail_menu`
--

CREATE TABLE `p_detail_menu` (
  `pdetailmenuid` int(11) NOT NULL,
  `pdm_link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_detail_menu`
--

INSERT INTO `p_detail_menu` (`pdetailmenuid`, `pdm_link`) VALUES
(1, 'home/about'),
(3, 'home/blog'),
(4, 'home/prodi'),
(5, 'home/kontak'),
(8, 'home/fakultas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_fakultas`
--

CREATE TABLE `p_fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_fakultas`
--

INSERT INTO `p_fakultas` (`id_fakultas`, `judul`, `isi`) VALUES
(1, 'DAFTAR URUT KEPANGKATAN', '<div class=\"text-center mb-4\" style=\"box-sizing: border-box; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; margin-bottom: 1rem; text-align: center; font-family: Arial, sans-serif; border: 0px solid #e5e7eb;\">\r\n<div class=\"text-center mb-4\" style=\"box-sizing: border-box; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgb(59 130 246 / 0.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; margin-bottom: 1rem; border: 0px solid #e5e7eb;\">\r\nDAFTAR URUT KEPANGKATAN (DUK) PEGAWAI NEGERI SIPIL\r\nDINAS KEPENDUDUKAN DAN PENCATATAN SIPIL\r\nPEMERINTAH KABUPATEN LUWU UTARA\r\nKEADAAN TAHUN 2021\r\n</div>\r\n\r\n\r\n\r\nNO\r\nNAMANIPTEMPAT LAHIRTGL LAHIR\r\nUMURThn\r\nSTATUS KEPEGAWAIAN\r\nPKT/GOL. TERAKHIR\r\nNO.SERI KARPEG\r\nJABATAN\r\nESELON\r\nMASA KERJA\r\nPENDIDIKAN\r\nSTRUKTURAL\r\nFUNGSIONAL\r\nL/P\r\n\r\n\r\nCPNS TMT\r\nPNS TMT\r\nTMT\r\nGOLONGAN\r\nTERAKHIR TMT\r\nLAMA TMT\r\nBARU TMT\r\nGOLONGAN\r\nSELURUHNYA\r\nIJAZAH PENGANGK CPNS/PNS TAHUN\r\nIJAZAH TERAKHIR/ JURUSAN TAHUN\r\n\r\n\r\n\r\n\r\n1\r\nNAKICAH, S.IP19680811 198503 1 014Bone, 11-08-1968\r\n47\r\n10-10-1989\r\n01-07-1991\r\nII/a\r\nPembina Tk.I IV/b\r\n01-10-2012\r\nE.871835\r\nSekretaris\r\nSekretaris\r\n21\r\n03\r\n26\r\nSMA 1987\r\nS1 Pemerintahan 1997\r\nDiklat Pim Tk.III 1999\r\n&nbsp;\r\nP\r\n\r\n\r\n2\r\nDrs.JUSMAN19640906 198703 1 013Padang sare, 06-09-1964\r\n56\r\nII/a\r\n24-04-1987\r\nII/a\r\nPembina IV/a\r\n01-03-1987\r\nE.427992\r\nKabid.Peng Informasi Adm Kependudukan\r\nKabid.Peng Informasi Adm Kependudukan\r\n18\r\n0\r\n18\r\nSMA 1983\r\nSMA 1983\r\n&nbsp;\r\n&nbsp;\r\nL\r\n\r\n\r\n3\r\nDra.ROSMAWATI19660630 199312 2 004Palopo, 30-06-1966\r\n49\r\n01-12-1993\r\n01-03-1995\r\nIII/a\r\nPenata Tk.I III/d\r\n01-04-2006\r\nG.147514\r\nKasi Pemanfaatan Data dan Dokumen Kependudukan\r\nKasi Pemanfaatan Data dan Dokumen Kependudukan\r\n22\r\n01\r\n22\r\nS1 1990\r\nS1 Sejarah Indonesia 1990\r\nDiklat Pim Tk.IV 2006\r\n&nbsp;\r\nP\r\n\r\n\r\n4\r\nRAMLAH MADJID, A.Ag19711005 199803 2 006Ujung Pandang, 05-10-1971\r\n43\r\n01-03-1988\r\n01-02-1999\r\nIII/a\r\nPenata Tk.I III/d\r\n01-04-2008\r\nI. 020620\r\nKasi Tata Kelola &amp; SDM Teknologi dan Komunikasi\r\nKasi Evaluasi Data Dan Pelaporan\r\n08\r\n00\r\n18\r\nS1 1995\r\nS2 Adm. Kebijakan Publik 2011\r\nLatpim TK. IV 2000\r\n&nbsp;\r\nP\r\n\r\n\r\n5\r\nA.DWIFO KRESNA19740409 200701 2 011Sabbang-09-04-1974\r\n46\r\n01-01-2007\r\n01-01-2008\r\nIII/a\r\nPenata Muda III/d\r\n01-01-2008\r\nN.261874\r\nSekretaris Kec. Sabbang\r\nKabid Pelayanan Capil\r\n01\r\n02\r\n&nbsp;\r\nS.I 1999\r\nS.I 1999\r\n&nbsp;\r\n&nbsp;\r\nP\r\n\r\n\r\n6\r\nDra.NURSIAH19671018 200701 2 009Luwu, 18-10-1967\r\n53\r\n01-01-2007\r\n01-01-2008\r\nIII/d\r\nPenata Muda III/d\r\n01-01-2008\r\nN.261811\r\nStaf\r\nStaf\r\n05\r\n08\r\n05\r\nS.I 1992\r\nS.I Ilmu Sosial dan Ilmu Politik 1992\r\n&nbsp;\r\n&nbsp;\r\nP\r\n\r\n\r\n7\r\nDEWI SARTIKA,S.Kom19790924 200502 2 002Wotu, 24-9-1979\r\n37\r\n01-02-2015\r\n01-02-2006\r\nIII/a\r\nPenata Tk.I III/d\r\n01-04-2015\r\n261841\r\nKasi Pengolahan Data\r\nKasi Pengolahan Data\r\n10\r\n03\r\n11\r\nS1 2002\r\nS1 Komputer 2002\r\n&nbsp;\r\n&nbsp;\r\nP\r\n\r\n\r\n8\r\nJUHERAH, S.Pd19641231 198503 2 061Radda, 31-12-1964\r\n46\r\n01-03-1985\r\n01-10-1986\r\nIII/a\r\nPenata Tk.I III/d\r\n01-10-2012\r\nE. 336918\r\nKasi Pendataan Penduduk\r\nKasi Pendataan Penduduk\r\n22\r\n07\r\n26\r\nD1 1984\r\nS1 Pendidikan IPS 2004\r\n&nbsp;\r\n&nbsp;\r\nP\r\n\r\n\r\n\r\n</div>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_galeri`
--

CREATE TABLE `p_galeri` (
  `pfotoid` int(11) NOT NULL,
  `pf_judul` text NOT NULL,
  `pf_tanggal` date NOT NULL,
  `pf_ket` text NOT NULL,
  `pfuserid` varchar(50) NOT NULL,
  `pf_file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_galeri`
--

INSERT INTO `p_galeri` (`pfotoid`, `pf_judul`, `pf_tanggal`, `pf_ket`, `pfuserid`, `pf_file`) VALUES
(1, 'photo bersama', '2020-10-24', 'bagus', '1', 'img/bg-img/1.png'),
(2, 'test 1', '2020-10-24', 'test 1', '1', 'img/bg-img/2.png'),
(3, 'test 2', '2020-10-24', 'test', '1', 'img/bg-img/3.png'),
(7, 'Disdukcapil Lutra Temukan Banyak Data Kependudukan tak Sinkron', '2024-10-16', 'Dinas Kependudukan dan Pencatatan Sipil (Disdukcapil) Kabupaten Lutra menemukan banyak ketidaksesuaian data kependudukan, terutama antara data di ijazah dan dokumen kependudukan lainnya.   Kepala Disdukcapil Lutra Muhammad Kasrum mengungkapkan bahwa masalah ini muncul karena banyak warga yang belum memahami pentingnya tertib dokumen kependudukan.  “Saya sering melihat di pelayanan itu rata-rata mereka belum paham betapa pentingnya dokumen kependudukan. Banyak masalah, utamanya ketidaksesuaian antara dokumen yang satu dengan dokumen yang lainnya itu beda,” ungkap Kasrum, Sabtu (07/9/2024).', '7', 'img/bg-img/670f58586ec45.png'),
(8, 'Disdukcapil Lutra Serahkan 200 Dokumen Kependudukan di Bansel', '2024-10-16', 'Kepala Dinas Kependudukan dan Pencatatan Sipil (Disdukcapil) Kabupaten Luwu Utara menyerahkan 200 dokumen kependudukan milik warga Kecamatan Baebunta Selatan (Bansel) kepada Kepala Desa Muktijaya, Muhammad Yusuf, Selasa (24/9/2024), di Bansel. Dokumen kependudukan tersebut di antaranya adalah KTP Elektronik (KTP El), Kartu Keluarga (KK), serta Kartu Identitas Anak (KIA).  Kasrum pada kesempatan itu menyampaikan apresiasi kepada Kepala Desa Muktijaya yang terus memfasilitasi warga desa untuk mengurus dokumen kependudukannya, khususnya warga yang di dalam KTP-nya masih tercantum alamat yang lama, yakni alamat kecamatan Baebunta.', '7', 'img/bg-img/670f5bfd076eb.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_ketegori`
--

CREATE TABLE `p_ketegori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_ketegori`
--

INSERT INTO `p_ketegori` (`id_kategori`, `kategori`) VALUES
(1, 'news'),
(2, 'artikel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_menu`
--

CREATE TABLE `p_menu` (
  `pmenuid` int(20) NOT NULL,
  `pdetailmenuid` varchar(50) NOT NULL,
  `pm_nama` text NOT NULL,
  `pm_status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_menu`
--

INSERT INTO `p_menu` (`pmenuid`, `pdetailmenuid`, `pm_nama`, `pm_status`) VALUES
(3, '3', 'Struktur Organisasi', '1'),
(4, '4', 'Visi Dan Misi', '1'),
(7, '8', 'Daftar Urut Kepangkatan', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_pengumuman`
--

CREATE TABLE `p_pengumuman` (
  `id_pem` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_pengumuman`
--

INSERT INTO `p_pengumuman` (`id_pem`, `tgl`, `judul`, `isi`, `file`) VALUES
(1, '2020-10-24', 'Pengumuman 1', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'lb-1.jpg'),
(2, '2020-10-24', 'penguman 2', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'lb-2.jpg'),
(3, '2020-10-24', 'pengumuman 3', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters', 'lb-3.jpg'),
(4, '2020-10-24', 'Dalam 12 Hari, Disdukcapil Luwu Utara Lakukan Perekaman e-KTP Terhadap 1.052 Orang', 'Luwu utara, Dinas Kependudukan dan Pencatatan Sipil (Disdukcapil) Kabupaten Luwu Utara telah melaporkan hasil Pelayanan Keliling Perekaman KTP elektronik (e-KTP) yang dilakukan sejak tanggal 29 Juli 2024 sampai dengan 15 Agustus 2024. Laporan tersebut ditujukan kepada Gubernur Sulawesi Selatan, Cq. Kadis Dukcapil Sulsel. Dalam laporan tersebut disebutkan, layanan keliling perekaman e-KTP atau program Jemput Bola (Jebol) dimaksudkan untuk mendukung Pilkada Serentak 2024. Total perekaman e-KTP yang telah dilakukan Disdukcapil Lutra sejak 19 Juli sampai dengan 15 Agustus 2024 sebanyak 1.052 orang. Rinciannya, 854 pelajar SMA yang ada di 13 kecamatan (minus Rongkong, Seko, dan Rampi), dan 198 orang dari masyarakat umum.', '670fe6f4d05e0.png'),
(5, '2020-10-28', 'Pengumuman 5', 'Berhasil edit pengumuman', '5f9984ea6ea8c.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_prodi`
--

CREATE TABLE `p_prodi` (
  `id_prodi` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_prodi`
--

INSERT INTO `p_prodi` (`id_prodi`, `judul`, `isi`) VALUES
(1, 'VISI &amp; MISI', '<p style=\"text-align: center;\">VISI PELAYANAN:</p>\r\n<p style=\"text-align: center;\">\" PELAYANAN YANG BERKUALITAS MENUJU MASYARAKAT LUWU UTARA TERTIB ADMINISTRASI KEPENDUDUKAN \".</p>\r\n<p style=\"text-align: center;\">MISI PELAYANAN:</p>\r\n<p style=\"text-align: center;\">1. Mewujudkan Pelayanan Dukcapil Responsif, Ramah dan Memuaskan.</p>\r\n<p style=\"text-align: center;\">2. Meningkatkan kesadaran dan partisipasi masyarakat untuk sadar Administrasi Kependudukan.</p>\r\n<p style=\"text-align: center;\">3. Melaksanakan layanan terintegrasi yang cepat dan tepat.</p>\r\n<p style=\"text-align: center;\">4. Meningkatkan kualitas Sumber Daya Manusia (SDM) Pengelola SIAK</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_slider`
--

CREATE TABLE `p_slider` (
  `psliderid` int(20) NOT NULL,
  `ps_file` varchar(30) NOT NULL,
  `ps_tanggal` date NOT NULL,
  `ps_title` text NOT NULL,
  `ps_status` enum('0','1') NOT NULL,
  `ps_userid` varchar(30) NOT NULL,
  `ps_link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_slider`
--

INSERT INTO `p_slider` (`psliderid`, `ps_file`, `ps_tanggal`, `ps_title`, `ps_status`, `ps_userid`, `ps_link`) VALUES
(1, '670e34cae7177.jpg', '2024-10-15', 'Bupati Luwu Utara Indah Putri Indriani melantik Muh Kasrum Patawari sebagai Kepala Dinas Kependudukan dan Catatan Sipil Luwu Utara', '1', '1', 'home'),
(2, '670f78a1585af.jpeg', '2024-10-16', 'Kuliah Keluar Kampus', '1', '1', 'home');

-- --------------------------------------------------------

--
-- Struktur dari tabel `p_user`
--

CREATE TABLE `p_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(90) NOT NULL,
  `password` varchar(90) NOT NULL,
  `pupegnip` int(20) NOT NULL,
  `role` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `p_user`
--

INSERT INTO `p_user` (`id_user`, `username`, `password`, `pupegnip`, `role`) VALUES
(2, 'pengelola', '$2y$10$jPoZjCs/do8LFZUGcPQcqeD0vJMZ3TRrB56dTwGtllcgV3lGkQDMa', 1213, '2'),
(4, 'super', '$2y$10$FE8p7Kdkt2qv/V1saOkZzOv4D7BiEOhztobLxv8W6bVylpWhaq2ji', 1213, '2'),
(7, 'admin', '$2y$10$FEzHR9XP.QxSSGHkwiCvl.MgtvF/CsicpjzdQXMA4f7DhxHUdA6QS', 123456, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_seting` int(11) NOT NULL,
  `judul` text NOT NULL,
  `telp` text NOT NULL,
  `alamat` text NOT NULL,
  `email` text NOT NULL,
  `logo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_seting`, `judul`, `telp`, `alamat`, `email`, `logo`) VALUES
(1, '', '+6282281022494', '', 'mail2@mail.com', '670bb65a31e83.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visitor`
--

CREATE TABLE `visitor` (
  `id_visitor` int(11) NOT NULL,
  `visitor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `p_about`
--
ALTER TABLE `p_about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indeks untuk tabel `p_artikel`
--
ALTER TABLE `p_artikel`
  ADD PRIMARY KEY (`partikelid`);

--
-- Indeks untuk tabel `p_detail_menu`
--
ALTER TABLE `p_detail_menu`
  ADD PRIMARY KEY (`pdetailmenuid`);

--
-- Indeks untuk tabel `p_fakultas`
--
ALTER TABLE `p_fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indeks untuk tabel `p_galeri`
--
ALTER TABLE `p_galeri`
  ADD PRIMARY KEY (`pfotoid`);

--
-- Indeks untuk tabel `p_ketegori`
--
ALTER TABLE `p_ketegori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `p_menu`
--
ALTER TABLE `p_menu`
  ADD PRIMARY KEY (`pmenuid`);

--
-- Indeks untuk tabel `p_pengumuman`
--
ALTER TABLE `p_pengumuman`
  ADD PRIMARY KEY (`id_pem`);

--
-- Indeks untuk tabel `p_prodi`
--
ALTER TABLE `p_prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indeks untuk tabel `p_slider`
--
ALTER TABLE `p_slider`
  ADD PRIMARY KEY (`psliderid`);

--
-- Indeks untuk tabel `p_user`
--
ALTER TABLE `p_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_seting`);

--
-- Indeks untuk tabel `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id_visitor`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `p_about`
--
ALTER TABLE `p_about`
  MODIFY `id_about` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `p_artikel`
--
ALTER TABLE `p_artikel`
  MODIFY `partikelid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `p_detail_menu`
--
ALTER TABLE `p_detail_menu`
  MODIFY `pdetailmenuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `p_fakultas`
--
ALTER TABLE `p_fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `p_galeri`
--
ALTER TABLE `p_galeri`
  MODIFY `pfotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `p_ketegori`
--
ALTER TABLE `p_ketegori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `p_menu`
--
ALTER TABLE `p_menu`
  MODIFY `pmenuid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `p_pengumuman`
--
ALTER TABLE `p_pengumuman`
  MODIFY `id_pem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `p_prodi`
--
ALTER TABLE `p_prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `p_slider`
--
ALTER TABLE `p_slider`
  MODIFY `psliderid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `p_user`
--
ALTER TABLE `p_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_seting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id_visitor` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
