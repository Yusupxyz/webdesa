-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Inang: localhost
-- Waktu pembuatan: 12 Nov 2019 pada 04.12
-- Versi Server: 5.5.25a
-- Versi PHP: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `sideka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_agama`
--

CREATE TABLE IF NOT EXISTS `ref_agama` (
  `id_agama` int(5) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  `is_diakui` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_agama`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `ref_agama`
--

INSERT INTO `ref_agama` (`id_agama`, `deskripsi`, `is_diakui`) VALUES
(0, 'Tidak Diketahui', 'Y'),
(1, 'Islam', 'Y'),
(2, 'Kristen', 'Y'),
(3, 'Katholik', 'Y'),
(4, 'Hindu', 'Y'),
(5, 'Budha', 'Y'),
(6, 'Konghucu', 'Y'),
(7, 'Aliran Kepercayaan Kepada Tuhan YME', 'N'),
(8, 'Aliran Kepercayaan Lainnya', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_alasan_pindah`
--

CREATE TABLE IF NOT EXISTS `ref_alasan_pindah` (
  `id_alasan_pindah` int(10) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_alasan_pindah`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `ref_alasan_pindah`
--

INSERT INTO `ref_alasan_pindah` (`id_alasan_pindah`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Tidak Diketahui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_desa`
--

CREATE TABLE IF NOT EXISTS `ref_desa` (
  `id_desa` int(10) NOT NULL AUTO_INCREMENT,
  `kode_desa_bps` char(20) NOT NULL,
  `kode_desa_kemendagri` char(20) NOT NULL,
  `nama_desa` varchar(50) NOT NULL,
  `luas_wilayah` float NOT NULL,
  `id_kecamatan` int(10) NOT NULL,
  `id_penduduk` int(10) DEFAULT NULL,
  `alamat_desa` text,
  `kode_pos` char(6) NOT NULL,
  PRIMARY KEY (`id_desa`),
  KEY `id_kecamatan` (`id_kecamatan`),
  KEY `id_penduduk` (`id_penduduk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `ref_desa`
--

INSERT INTO `ref_desa` (`id_desa`, `kode_desa_bps`, `kode_desa_kemendagri`, `nama_desa`, `luas_wilayah`, `id_kecamatan`, `id_penduduk`, `alamat_desa`, `kode_pos`) VALUES
(0, '0', '0', 'Tidak Diketahui', 0, 0, NULL, '0', '0'),
(1, '28.14.26.3', '28.14.26.3', 'Caringin Nunggal', 131, 1, 17, 'Jl. Gudang No. 100', '43356');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_difabilitas`
--

CREATE TABLE IF NOT EXISTS `ref_difabilitas` (
  `id_difabilitas` int(10) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_difabilitas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `ref_difabilitas`
--

INSERT INTO `ref_difabilitas` (`id_difabilitas`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Tidak Cacat'),
(2, 'Cacat Fisik'),
(3, 'Cacat Netra / Buta'),
(4, 'Cacat Rungu / Wicara'),
(5, 'Cacat Mental / Jiwa'),
(6, 'Cacat Lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_dusun`
--

CREATE TABLE IF NOT EXISTS `ref_dusun` (
  `id_dusun` int(10) NOT NULL AUTO_INCREMENT,
  `kode_dusun_bps` char(20) NOT NULL,
  `kode_dusun_kemendagri` char(20) NOT NULL,
  `nama_dusun` varchar(50) NOT NULL,
  `luas_wilayah` float NOT NULL,
  `id_desa` int(10) NOT NULL,
  `id_penduduk` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_dusun`),
  KEY `id_desa` (`id_desa`),
  KEY `id_penduduk` (`id_penduduk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `ref_dusun`
--

INSERT INTO `ref_dusun` (`id_dusun`, `kode_dusun_bps`, `kode_dusun_kemendagri`, `nama_dusun`, `luas_wilayah`, `id_desa`, `id_penduduk`) VALUES
(0, '0', '0', 'Tidak Diketahui', 0, 0, NULL),
(1, '28.14.26.3.1', '28.14.26.3.1', 'Mareleng', 25, 1, NULL),
(2, '28.14.26.3.2', '28.14.26.3.2', 'Padabenghar', 19, 1, NULL),
(3, '28.14.26.3.3', '28.14.26.3.3', 'Cidolog', 34, 1, NULL),
(4, '28.14.26.3.4', '28.14.26.3.1', 'Cikakak', 12, 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_goldar`
--

CREATE TABLE IF NOT EXISTS `ref_goldar` (
  `id_goldar` int(10) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(75) NOT NULL,
  PRIMARY KEY (`id_goldar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `ref_goldar`
--

INSERT INTO `ref_goldar` (`id_goldar`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'A'),
(2, 'A+'),
(3, 'A-'),
(4, 'B'),
(5, 'B+'),
(6, 'B-'),
(7, 'AB'),
(8, 'AB+'),
(9, 'AB-'),
(10, 'O'),
(11, 'O+'),
(12, 'O-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_jabatan`
--

CREATE TABLE IF NOT EXISTS `ref_jabatan` (
  `id_jabatan` int(10) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `ref_jabatan`
--

INSERT INTO `ref_jabatan` (`id_jabatan`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Kepala Desa'),
(3, 'Sekretaris Desa'),
(5, 'Bendahara Desa'),
(6, 'Kaur Kesejahteraan Rakyat'),
(7, 'Kaur Pemerintahan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_jenis_pindah`
--

CREATE TABLE IF NOT EXISTS `ref_jenis_pindah` (
  `id_jenis_pindah` int(10) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_jenis_pindah`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `ref_jenis_pindah`
--

INSERT INTO `ref_jenis_pindah` (`id_jenis_pindah`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Tidak Diketahui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_jen_kel`
--

CREATE TABLE IF NOT EXISTS `ref_jen_kel` (
  `id_jen_kel` int(2) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(20) NOT NULL,
  PRIMARY KEY (`id_jen_kel`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `ref_jen_kel`
--

INSERT INTO `ref_jen_kel` (`id_jen_kel`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Laki - laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_kab_kota`
--

CREATE TABLE IF NOT EXISTS `ref_kab_kota` (
  `id_kab_kota` int(10) NOT NULL AUTO_INCREMENT,
  `kode_kab_kota_bps` char(10) NOT NULL,
  `kode_kab_kota_kemendagri` char(10) NOT NULL,
  `nama_kab_kota` varchar(50) NOT NULL,
  `luas_wilayah` float NOT NULL,
  `id_provinsi` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_kab_kota`),
  KEY `id_provinsi` (`id_provinsi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `ref_kab_kota`
--

INSERT INTO `ref_kab_kota` (`id_kab_kota`, `kode_kab_kota_bps`, `kode_kab_kota_kemendagri`, `nama_kab_kota`, `luas_wilayah`, `id_provinsi`) VALUES
(0, '0', '0', 'Tidak Diketahui', 0, 0),
(1, '28.14', '28.14', 'Sukabumi', 7485, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_kecamatan`
--

CREATE TABLE IF NOT EXISTS `ref_kecamatan` (
  `id_kecamatan` int(10) NOT NULL AUTO_INCREMENT,
  `kode_kecamatan_bps` char(10) NOT NULL,
  `kode_kecamatan_kemendagri` char(10) NOT NULL,
  `nama_kecamatan` varchar(50) NOT NULL,
  `luas_wilayah` float NOT NULL,
  `id_kab_kota` int(10) NOT NULL,
  PRIMARY KEY (`id_kecamatan`),
  KEY `id_kab_kota` (`id_kab_kota`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `ref_kecamatan`
--

INSERT INTO `ref_kecamatan` (`id_kecamatan`, `kode_kecamatan_bps`, `kode_kecamatan_kemendagri`, `nama_kecamatan`, `luas_wilayah`, `id_kab_kota`) VALUES
(0, '0', '0', 'Tidak Diketahui', 0, 0),
(1, '28.14.26', '28.14.26', 'Waluran', 2380, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_kelas_sosial`
--

CREATE TABLE IF NOT EXISTS `ref_kelas_sosial` (
  `id_kelas_sosial` int(10) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kelas_sosial`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `ref_kelas_sosial`
--

INSERT INTO `ref_kelas_sosial` (`id_kelas_sosial`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Kaya'),
(2, 'Sedang'),
(3, 'Miskin'),
(4, 'Sangat Miskin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_kewarganegaraan`
--

CREATE TABLE IF NOT EXISTS `ref_kewarganegaraan` (
  `id_kewarganegaraan` int(15) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kewarganegaraan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `ref_kewarganegaraan`
--

INSERT INTO `ref_kewarganegaraan` (`id_kewarganegaraan`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'WNI'),
(2, 'WNA'),
(3, 'DWIKEWARGANEGARAAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_klasifikasi_pindah`
--

CREATE TABLE IF NOT EXISTS `ref_klasifikasi_pindah` (
  `id_klasifikasi_pindah` int(10) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_klasifikasi_pindah`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `ref_klasifikasi_pindah`
--

INSERT INTO `ref_klasifikasi_pindah` (`id_klasifikasi_pindah`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Tidak Diketahui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_kode_surat`
--

CREATE TABLE IF NOT EXISTS `ref_kode_surat` (
  `kode_surat` int(10) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  `supra_kode` varchar(10) NOT NULL,
  PRIMARY KEY (`kode_surat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `ref_kode_surat`
--

INSERT INTO `ref_kode_surat` (`kode_surat`, `deskripsi`, `supra_kode`) VALUES
(1, 'Umum', '0'),
(2, 'Pemerintah', '100'),
(3, 'Politik', '200'),
(4, 'Keamanan / Ketertiban', '300'),
(5, 'Kesejahteraan Rakyat', '400'),
(6, 'Perekonomian', '500'),
(7, 'Pekerjaan Umum dan Ketenagakerjaan', '600'),
(8, 'Pengawasan', '700'),
(9, 'Kepegawaian', '800'),
(10, 'Keuangan', '900'),
(11, 'Kelahiran', '1000'),
(13, 'Kematian', '1100');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_kompetensi`
--

CREATE TABLE IF NOT EXISTS `ref_kompetensi` (
  `id_kompetensi` int(5) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kompetensi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `ref_kompetensi`
--

INSERT INTO `ref_kompetensi` (`id_kompetensi`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Kesehatan'),
(2, 'Profesional Bangunan'),
(3, 'Profesional Kelistrikan'),
(4, 'Profesional Pendidikan'),
(5, 'IT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_kontrasepsi`
--

CREATE TABLE IF NOT EXISTS `ref_kontrasepsi` (
  `id_kontrasepsi` int(10) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kontrasepsi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `ref_kontrasepsi`
--

INSERT INTO `ref_kontrasepsi` (`id_kontrasepsi`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Pil'),
(2, 'Suntik'),
(3, 'IUD'),
(4, 'Kondom'),
(5, 'Implant'),
(6, 'MOP'),
(7, 'MOW');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_pangkat_gol`
--

CREATE TABLE IF NOT EXISTS `ref_pangkat_gol` (
  `id_pangkat_gol` int(10) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(10) NOT NULL,
  PRIMARY KEY (`id_pangkat_gol`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `ref_pangkat_gol`
--

INSERT INTO `ref_pangkat_gol` (`id_pangkat_gol`, `deskripsi`) VALUES
(0, '-'),
(1, '3A'),
(2, '3B');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_pekerjaan`
--

CREATE TABLE IF NOT EXISTS `ref_pekerjaan` (
  `id_pekerjaan` int(15) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(75) NOT NULL,
  `deskripsi_singkat` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_pekerjaan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

--
-- Dumping data untuk tabel `ref_pekerjaan`
--

INSERT INTO `ref_pekerjaan` (`id_pekerjaan`, `deskripsi`, `deskripsi_singkat`) VALUES
(0, 'Tidak Diketahui', NULL),
(1, 'BELUM/TIDAK BEKERJA', ''),
(2, 'MENGURUS RUMAH TANGGA', ''),
(3, 'PELAJAR/MAHASISWA', ''),
(4, 'PENSIUNAN', ''),
(5, 'PEGAWAI NEGERI SIPIL (PNS)', ''),
(6, 'TENTARA NASIONAL INDONESIA (TNI)', ''),
(7, 'KEPOLISIAN RI ', ''),
(8, 'PERDAGANGAN', ''),
(9, 'PETANI/PEKEBUN', ''),
(10, 'PETERNAK', ''),
(11, 'NELAYAN/PERIKANAN', ''),
(12, 'INDUSTRI', ''),
(13, 'KONSTRUKSI', ''),
(14, 'TRANSPORTASI', ''),
(15, 'KARYAWAN SWASTA', ''),
(16, 'KARYAWAN BUMN', ''),
(17, 'KARYAWAN HONORER', ''),
(18, 'BURUH HARIAN LEPAS', ''),
(19, 'BURUH TANI/PERKEBUNAN', ''),
(20, 'BURUH NELAYAN/PERIKANAN', ''),
(21, 'BURUH PETERNAKAN', ''),
(22, 'PEMBANTU RUMAH TANGGA', ''),
(23, 'TUKANG CUKUR', ''),
(24, 'TUKANG BATU', ''),
(25, 'TUKANG LISTRIK', ''),
(26, 'TUKANG KAYU', ''),
(27, 'TUKANG SOL SEPATU', ''),
(28, 'TUKANG LAS/PANDAI BESI', ''),
(29, 'TUKANG JAIT', ''),
(30, 'TUKANG GIGI', ''),
(31, 'PENATA RIAS', ''),
(32, 'PENATA BUSANA', ''),
(33, 'PENATA RAMBUT', ''),
(34, 'MEKANIK', ''),
(35, 'SENIMAN', ''),
(36, 'TABIB', ''),
(37, 'PARAJI', ''),
(38, 'PERANCANG BUSANA', ''),
(39, 'PENTERJEMAH', ''),
(40, 'IMAM MASJID', ''),
(41, 'PENDETA', ''),
(42, 'PASTOR', ''),
(43, 'WARTAWAN', ''),
(44, 'USTADZ/MUBALIGH', ''),
(45, 'JURU MASAK', ''),
(46, 'PROMOTOR ACARA', ''),
(47, 'ANGGOTA DPR RI', ''),
(48, 'ANGGOTA DPD', ''),
(49, 'ANGGOTA BPK', ''),
(50, 'PRESIDEN', ''),
(51, 'WAKIL PRESIDEN', ''),
(52, 'ANGGOTA MAHKAMAH KONSTITUSI', ''),
(53, 'DUTA BESAR', ''),
(54, 'GUBERNUR', ''),
(55, 'WAKIL GUBERNUR', ''),
(56, 'BUPATI', ''),
(57, 'WAKIL BUPATI', ''),
(58, 'WALIKOTA', ''),
(59, 'WAKIL WALIKOTA', ''),
(60, 'ANGGOTA DPRD PROP', ''),
(61, 'ANGGOTA DPRD KAB. KOTA', ''),
(62, 'DOSEN', ''),
(63, 'GURU', ''),
(64, 'PILOT', ''),
(65, 'PENGACARA', ''),
(66, 'NOTARIS', ''),
(67, 'ARSITEK', ''),
(68, 'AKUNTAN', ''),
(69, 'KONSULTAN', ''),
(70, 'DOKTER', ''),
(71, 'BIDAN', ''),
(72, 'PERAWAT', ''),
(73, 'APOTEKER', ''),
(74, 'PSIKIATER/PSIKOLOG', ''),
(75, 'PENYIAR TELEVISI', ''),
(76, 'PENYIAR RADIO', ''),
(77, 'PELAUT', ''),
(78, 'PENELITI', ''),
(79, 'SOPIR', ''),
(80, 'PIALANG', ''),
(81, 'PARANORMAL', ''),
(82, 'PEDAGANG', ''),
(83, 'PERANGKAT DESA', ''),
(84, 'KEPALA DESA', ''),
(85, 'BIARAWATI', ''),
(86, 'WIRASWASTA', ''),
(87, 'BURUH MIGRAN', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_pekerjaan_ped`
--

CREATE TABLE IF NOT EXISTS `ref_pekerjaan_ped` (
  `id_pekerjaan_ped` int(10) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(75) NOT NULL,
  PRIMARY KEY (`id_pekerjaan_ped`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `ref_pekerjaan_ped`
--

INSERT INTO `ref_pekerjaan_ped` (`id_pekerjaan_ped`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Tidak Diketahui'),
(2, 'Petani'),
(3, 'Pedagang'),
(4, 'Petani Kebun'),
(5, 'Tukang Batu / Jasa Lainnya'),
(6, 'Seniman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_pelapor`
--

CREATE TABLE IF NOT EXISTS `ref_pelapor` (
  `id_pelapor` int(10) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pelapor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `ref_pelapor`
--

INSERT INTO `ref_pelapor` (`id_pelapor`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Ayah'),
(2, 'Ibu'),
(3, 'Kakak'),
(4, 'Adik'),
(5, 'Kakek'),
(6, 'Nenek'),
(7, 'Paman'),
(8, 'Tante'),
(9, 'Keponakan'),
(10, 'Sepupu'),
(11, 'Kerabat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_pendidikan`
--

CREATE TABLE IF NOT EXISTS `ref_pendidikan` (
  `id_pendidikan` int(15) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(75) NOT NULL,
  `is_bsm` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_pendidikan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data untuk tabel `ref_pendidikan`
--

INSERT INTO `ref_pendidikan` (`id_pendidikan`, `deskripsi`, `is_bsm`) VALUES
(0, 'Tidak Diketahui', 'N'),
(1, 'Tidak dapat membaca', 'N'),
(2, 'Tidak Pernah Sekolah', 'N'),
(3, 'Tidak Tamat SD/Sederajat', 'N'),
(4, 'Tamat SD/Sederajat', 'N'),
(5, 'Tamat SMP/Sederajat', 'N'),
(6, 'Tamat SMA/Sederajat', 'N'),
(7, 'Tamat D-3/Sederajat', 'N'),
(8, 'Tamat S-1/Sederajat', 'N'),
(9, 'Tamat S-2/Sederajat', 'N'),
(10, 'Tamat S-3/Sederajat', 'N'),
(11, 'Belum Masuk TK/PAUD ', 'N'),
(12, 'Sedang TK/PAUD', 'N'),
(13, 'Sedang SD/Sederajat', 'Y'),
(14, 'Sedang SMP/Sederajat', 'Y'),
(15, 'Sedang SMA/Sederajat', 'Y'),
(16, 'Sedang D-3/Sederajat', 'N'),
(17, 'Sedang S-1/Sederajat', 'N'),
(18, 'Sedang S-2/Sederajat', 'N'),
(19, 'Sedang S-3/Sederajat', 'N'),
(20, 'Putus Sekolah', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_provinsi`
--

CREATE TABLE IF NOT EXISTS `ref_provinsi` (
  `id_provinsi` int(10) NOT NULL AUTO_INCREMENT,
  `kode_provinsi_bps` char(10) NOT NULL,
  `kode_provinsi_kemendagri` char(10) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL,
  `luas_wilayah` float NOT NULL,
  PRIMARY KEY (`id_provinsi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `ref_provinsi`
--

INSERT INTO `ref_provinsi` (`id_provinsi`, `kode_provinsi_bps`, `kode_provinsi_kemendagri`, `nama_provinsi`, `luas_wilayah`) VALUES
(0, '0', '0', 'Tidak Diketahui', 0),
(1, '28', '28', 'Jawa Barat', 31859);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_rt`
--

CREATE TABLE IF NOT EXISTS `ref_rt` (
  `id_rt` int(10) NOT NULL AUTO_INCREMENT,
  `nomor_rt` char(10) NOT NULL,
  `luas_wilayah` float NOT NULL,
  `id_rw` int(10) NOT NULL,
  `id_penduduk` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_rt`),
  KEY `id_penduduk` (`id_penduduk`),
  KEY `id_rw` (`id_rw`),
  KEY `id_penduduk_2` (`id_penduduk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `ref_rt`
--

INSERT INTO `ref_rt` (`id_rt`, `nomor_rt`, `luas_wilayah`, `id_rw`, `id_penduduk`) VALUES
(0, '-', 0, 0, NULL),
(1, '01', 3, 1, 30),
(2, '02', 2, 1, 10),
(3, '01', 5, 2, NULL),
(4, '02', 3, 2, NULL),
(5, '01', 3, 3, NULL),
(6, '02', 3, 3, NULL),
(7, '01', 4, 4, 9),
(8, '02', 4, 4, 8),
(9, '01', 8, 6, NULL),
(10, '01', 6, 7, NULL),
(11, '02', 5, 7, NULL),
(12, '01', 7, 8, NULL),
(13, '02', 6, 8, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_rw`
--

CREATE TABLE IF NOT EXISTS `ref_rw` (
  `id_rw` int(10) NOT NULL AUTO_INCREMENT,
  `nomor_rw` char(10) NOT NULL,
  `luas_wilayah` float NOT NULL,
  `id_dusun` int(10) NOT NULL,
  `id_penduduk` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_rw`),
  KEY `id_dusun` (`id_dusun`),
  KEY `id_penduduk` (`id_penduduk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `ref_rw`
--

INSERT INTO `ref_rw` (`id_rw`, `nomor_rw`, `luas_wilayah`, `id_dusun`, `id_penduduk`) VALUES
(0, '-', 0, 0, NULL),
(1, '01', 5, 1, 35),
(2, '02', 8, 1, NULL),
(3, '03', 6, 1, NULL),
(4, '01', 8, 2, 9),
(5, '02', 7, 2, 34),
(6, '01', 12, 4, NULL),
(7, '01', 11, 3, NULL),
(8, '02', 13, 3, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_status_kawin`
--

CREATE TABLE IF NOT EXISTS `ref_status_kawin` (
  `id_status_kawin` int(10) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_status_kawin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `ref_status_kawin`
--

INSERT INTO `ref_status_kawin` (`id_status_kawin`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Belum Kawin'),
(2, 'Kawin'),
(3, 'Cerai Hidup'),
(4, 'Cerai Mati');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_status_keluarga`
--

CREATE TABLE IF NOT EXISTS `ref_status_keluarga` (
  `id_status_keluarga` int(10) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_status_keluarga`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `ref_status_keluarga`
--

INSERT INTO `ref_status_keluarga` (`id_status_keluarga`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Kepala Keluarga'),
(2, 'Suami'),
(3, 'Istri'),
(4, 'Anak'),
(5, 'Menantu'),
(6, 'Mertua'),
(7, 'Famili Lain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_status_penduduk`
--

CREATE TABLE IF NOT EXISTS `ref_status_penduduk` (
  `id_status_penduduk` int(5) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_status_penduduk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `ref_status_penduduk`
--

INSERT INTO `ref_status_penduduk` (`id_status_penduduk`, `deskripsi`) VALUES
(0, 'Tidak diketahui'),
(1, 'Tinggal Tetap'),
(2, 'Meninggal'),
(3, 'Pindahan Keluar'),
(4, 'Pindahan Masuk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_status_tinggal`
--

CREATE TABLE IF NOT EXISTS `ref_status_tinggal` (
  `id_status_tinggal` int(10) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  PRIMARY KEY (`id_status_tinggal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `ref_status_tinggal`
--

INSERT INTO `ref_status_tinggal` (`id_status_tinggal`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Tinggal Tetap'),
(2, 'Tinggal di luar desa (dalam 1 kab/kota)'),
(3, 'Tinggal di luar kota'),
(4, 'Tinggal di luar provinsi'),
(5, 'Tinggal di luar negeri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_berita`
--

CREATE TABLE IF NOT EXISTS `tbl_berita` (
  `id_berita` int(10) NOT NULL AUTO_INCREMENT,
  `id_pengguna` int(10) NOT NULL,
  `gambar` text NOT NULL,
  `judul_berita` varchar(100) NOT NULL,
  `isi_berita` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_berita`),
  KEY `id_pengguna` (`id_pengguna`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tbl_berita`
--

INSERT INTO `tbl_berita` (`id_berita`, `id_pengguna`, `gambar`, `judul_berita`, `isi_berita`, `waktu`) VALUES
(1, 2, 'uploads/berita/SDN+Mareleng+Raih+Juara+1+LCC+Tingkat+Kecamatan+Waluran.jpg', 'SDN Mareleng Raih Juara 1 LCC Tingkat Kecamatan Waluran', '<div align="justify"><b>Waluran Mandiri</b>, 12 Sepember Lorem, ipsum dolor sit amet consectetur adipisicing elit. Est minus incidunt optio ipsa dicta quae quaerat expedita corporis repellendus fugiat aliquam, laboriosam at nostrum autem assumenda dolorum distinctio voluptatibus, maxime quibusdam deleniti aliquid repellat quam. Exercitationem similique aut, porro asperiores ratione deleniti quia quas rerum voluptatibus fugiat! Quam voluptas assumenda sed tempore! Doloribus quae harum nobis culpa blanditiis provident esse fugiat quam necessitatibus unde optio nihil praesentium voluptate, inventore eum commodi. Quisquam nobis dolorem nihil aspernatur recusandae quam, minus accusamus beatae tempora <u>non</u> maxime, neque repellat libero aliquid fugit quasi ea earum. Obcaecati adipisci magni officiis itaque eaque minima. Perspiciatis reprehenderit ad dicta eum magni. Obcaecati, inventore. Deserunt reiciendis dolorem officiis perferendis facere earum, dignissimos labore odit praesentium a, assumenda ad aliquid et?<br></div>', '2019-11-11 15:34:41'),
(2, 2, 'uploads/berita/Waspada+Peredaran+Nyamuk+Saat+Musim+Hujan.jpg', 'Waspada Peredaran Nyamuk Saat Musim Hujan', '<div align="justify"><b>Caringin Nunggal</b>, 03 September Lorem, ipsum dolor sit amet consectetur adipisicing elit. Est minus incidunt optio ipsa dicta quae quaerat expedita corporis repellendus fugiat aliquam, laboriosam at nostrum autem assumenda dolorum distinctio voluptatibus, maxime quibusdam deleniti aliquid repellat quam. Exercitationem similique aut, porro asperiores ratione deleniti quia quas rerum voluptatibus fugiat! Quam voluptas assumenda sed tempore! Doloribus quae harum nobis culpa blanditiis provident esse fugiat quam necessitatibus unde optio nihil praesentium voluptate, inventore eum commodi. Quisquam nobis dolorem nihil aspernatur recusandae quam, minus accusamus beatae tempora non maxime, neque repellat libero aliquid fugit quasi ea earum. Obcaecati adipisci magni officiis itaque eaque minima. Perspiciatis reprehenderit ad dicta eum magni. Obcaecati, inventore. Deserunt reiciendis dolorem officiis perferendis facere earum, dignissimos labore odit praesentium a, assumenda ad aliquid et?<br></div>', '2019-11-11 15:31:23'),
(3, 2, 'uploads/berita/Kecamatan+Waluran+Gelar+PILKADES+Serentak.jpg', 'Kecamatan Waluran Gelar PILKADES Serentak', '<div align="justify"><b>Waluran</b>, 27 Mei Lorem, ipsum dolor sit amet consectetur adipisicing elit. Est minus incidunt optio ipsa dicta quae quaerat expedita corporis repellendus fugiat aliquam, laboriosam at nostrum autem assumenda dolorum distinctio voluptatibus, maxime quibusdam deleniti aliquid repellat quam. Exercitationem similique aut, porro asperiores ratione deleniti quia quas rerum voluptatibus fugiat! Quam voluptas assumenda sed tempore! Doloribus quae harum nobis culpa blanditiis provident esse fugiat quam necessitatibus unde optio nihil praesentium voluptate, inventore eum commodi. Quisquam nobis dolorem nihil aspernatur recusandae quam, minus accusamus beatae tempora non maxime, neque repellat libero aliquid fugit quasi ea earum. Obcaecati adipisci magni officiis itaque eaque minima. Perspiciatis reprehenderit ad dicta eum magni. Obcaecati, inventore. Deserunt reiciendis dolorem officiis perferendis facere earum, dignissimos labore odit praesentium a, assumenda ad aliquid et?<br></div>', '2019-11-11 15:25:55'),
(4, 2, 'uploads/berita/Semarak+Festival+GCP+Datangkan+Artis+Luar+Negri.jpg', 'Semarak Festival GCP Datangkan Artis Luar Negri', '<div align="justify"><b>Taman Jaya</b>, 13 Agustus Lorem, ipsum dolor sit amet consectetur adipisicing elit. Est minus incidunt optio ipsa dicta quae quaerat expedita corporis repellendus fugiat aliquam, laboriosam at nostrum autem assumenda dolorum distinctio voluptatibus, maxime quibusdam deleniti aliquid repellat <b>quam</b>. Exercitationem similique aut, porro asperiores ratione deleniti quia quas rerum voluptatibus fugiat! Quam voluptas assumenda sed tempore! Doloribus quae harum nobis culpa blanditiis provident esse fugiat quam necessitatibus unde optio nihil praesentium voluptate, inventore eum commodi. Quisquam nobis dolorem nihil aspernatur recusandae quam, minus accusamus beatae tempora non maxime, neque repellat libero aliquid fugit quasi ea earum. Obcaecati adipisci magni officiis itaque eaque minima. Perspiciatis reprehenderit ad dicta eum magni. Obcaecati, inventore. Deserunt reiciendis dolorem officiis perferendis facere earum, dignissimos labore odit praesentium a, assumenda ad aliquid et?<br></div>', '2019-11-11 15:28:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_demografi`
--

CREATE TABLE IF NOT EXISTS `tbl_demografi` (
  `id_demografi` int(10) NOT NULL AUTO_INCREMENT,
  `id_pengguna` int(10) NOT NULL,
  `isi_demografi` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `foto_banner` varchar(50) NOT NULL,
  PRIMARY KEY (`id_demografi`),
  KEY `id_pengguna` (`id_pengguna`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_demografi`
--

INSERT INTO `tbl_demografi` (`id_demografi`, `id_pengguna`, `isi_demografi`, `waktu`, `foto_banner`) VALUES
(1, 2, ' Caringin Nunggal Deserunt reiciendis dolorem officiis perferendis facere earum, dignissimos labore odit praesentium a, assumenda ad aliquid et?<br><ul><li>Luas Desa</li><li>Jumlah Penduduk</li></ul><div>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Est minus incidunt optio ipsa dicta quae quaerat expedita corporis repellendus fugiat aliquam, laboriosam at nostrum autem assumenda dolorum distinctio voluptatibus, maxime quibusdam deleniti aliquid repellat quam. Exercitationem similique aut, porro asperiores ratione deleniti quia quas rerum voluptatibus fugiat! Quam voluptas assumenda sed tempore! Doloribus quae harum nobis culpa blanditiis provident esse fugiat quam necessitatibus unde optio nihil praesentium voluptate, inventore eum commodi. Quisquam nobis dolorem nihil aspernatur recusandae quam, minus accusamus beatae tempora non maxime, neque repellat libero aliquid fugit quasi ea earum. Obcaecati adipisci magni officiis itaque eaque minima. Perspiciatis reprehenderit ad dicta eum magni. Obcaecati, inventore. Deserunt reiciendis dolorem officiis perferendis facere earum, dignissimos labore odit praesentium a, assumenda ad aliquid et?<br></div><div><br></div>   ', '2019-11-11 15:55:19', 'uploads/web/foto_banner_demografi.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gizi_buruk`
--

CREATE TABLE IF NOT EXISTS `tbl_gizi_buruk` (
  `id_gizi_buruk` int(10) NOT NULL AUTO_INCREMENT,
  `berat_badan` int(10) NOT NULL,
  `tinggi_badan` int(10) NOT NULL,
  `tgl_timbang` datetime NOT NULL,
  `id_penduduk` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_gizi_buruk`),
  KEY `id_penduduk` (`id_penduduk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_gizi_buruk`
--

INSERT INTO `tbl_gizi_buruk` (`id_gizi_buruk`, `berat_badan`, `tinggi_badan`, `tgl_timbang`, `id_penduduk`) VALUES
(1, 17, 150, '2019-03-13 00:00:00', 41);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_hub_kel`
--

CREATE TABLE IF NOT EXISTS `tbl_hub_kel` (
  `id_hub_kel` int(10) NOT NULL AUTO_INCREMENT,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `id_penduduk` int(10) NOT NULL,
  `id_keluarga` int(10) NOT NULL,
  `id_status_keluarga` int(10) NOT NULL,
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_hub_kel`),
  KEY `id_penduduk` (`id_penduduk`),
  KEY `id_keluarga` (`id_keluarga`),
  KEY `id_status_keluarga` (`id_status_keluarga`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data untuk tabel `tbl_hub_kel`
--

INSERT INTO `tbl_hub_kel` (`id_hub_kel`, `nama_ayah`, `nama_ibu`, `id_penduduk`, `id_keluarga`, `id_status_keluarga`, `is_delete`) VALUES
(8, 'ASEP', 'EUIS', 8, 4, 1, 'N'),
(9, 'JOKO', 'JENIFER', 9, 4, 1, 'N'),
(10, 'GAMA', 'YULI', 10, 4, 1, 'N'),
(11, 'SANDY', 'SEPIANI', 11, 4, 4, 'N'),
(12, 'YOGI', 'TINA', 12, 4, 4, 'N'),
(13, 'AGUS', 'LILIS', 13, 4, 4, 'N'),
(14, 'AHMAD', 'DINA', 14, 4, 3, 'N'),
(15, 'UCUP', 'SELFI', 15, 4, 1, 'N'),
(16, 'SAHRUL', 'IIS', 16, 4, 1, 'N'),
(17, 'DENI', 'ETI', 17, 4, 2, 'N'),
(18, 'ARIS', 'ILMI', 18, 4, 2, 'N'),
(19, 'AANG', 'NESA', 19, 4, 4, 'N'),
(20, 'ANANG', 'NORMA', 20, 4, 4, 'N'),
(21, 'ENO', 'WEWEN', 21, 4, 1, 'N'),
(22, 'KARNO', 'YAYAN', 22, 4, 3, 'N'),
(23, 'JAMAL', 'FATIMAH', 23, 4, 3, 'N'),
(24, 'ISEP', 'ENUNG', 24, 4, 3, 'N'),
(25, 'UDIN', 'MIRA', 25, 4, 3, 'N'),
(26, 'YUDI', 'YAYO', 26, 4, 3, 'N'),
(27, 'PEPENG', 'FITRIA', 27, 4, 3, 'N'),
(28, 'ANIN', 'RIANI', 28, 4, 4, 'N'),
(29, 'GAMA', 'RESTI', 29, 4, 4, 'N'),
(30, 'SANDY', 'PENTI', 30, 4, 4, 'N'),
(31, 'YOGI', 'KOKOM', 31, 4, 4, 'N'),
(32, 'AGUS', 'KEKEM', 32, 4, 4, 'N'),
(33, 'AHMAD', 'EEM', 33, 4, 4, 'N'),
(34, 'UCUP', 'IIM', 34, 4, 4, 'N'),
(35, 'SAHRUL', 'LISNA', 35, 4, 4, 'N'),
(36, 'DENI', 'PUTRI', 36, 4, 4, 'N'),
(37, 'ARIS', 'EUIS', 37, 4, 4, 'N'),
(38, 'AANG', 'JENIFER', 38, 4, 4, 'N'),
(39, 'ANANG', 'YULI', 39, 4, 4, 'N'),
(40, 'ENO', 'SEPIANI', 40, 4, 4, 'N'),
(41, 'TENO', 'TINA', 41, 4, 4, 'N'),
(42, 'IIN', 'LILIS', 42, 4, 4, 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ikut_pindah_keluar`
--

CREATE TABLE IF NOT EXISTS `tbl_ikut_pindah_keluar` (
  `id_ikut_pindah_keluar` int(10) NOT NULL AUTO_INCREMENT,
  `id_penduduk` int(10) NOT NULL,
  `id_pindah_keluar` int(10) NOT NULL,
  PRIMARY KEY (`id_ikut_pindah_keluar`),
  KEY `id_penduduk` (`id_penduduk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ikut_pindah_masuk`
--

CREATE TABLE IF NOT EXISTS `tbl_ikut_pindah_masuk` (
  `id_ikut_pindah_masuk` int(10) NOT NULL AUTO_INCREMENT,
  `id_penduduk` int(10) NOT NULL,
  `id_keluarga` int(10) NOT NULL,
  PRIMARY KEY (`id_ikut_pindah_masuk`),
  KEY `id_penduduk` (`id_penduduk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelahiran`
--

CREATE TABLE IF NOT EXISTS `tbl_kelahiran` (
  `id_kelahiran` int(10) NOT NULL AUTO_INCREMENT,
  `tgl_kelahiran` datetime NOT NULL,
  `nama_bayi` varchar(50) NOT NULL,
  `id_jen_kel` int(10) NOT NULL DEFAULT '0',
  `berat_bayi` varchar(10) DEFAULT NULL,
  `panjang_bayi` int(10) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `is_kembar` enum('Y','N') DEFAULT 'N',
  `lokasi_lahir` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `penolong` varchar(100) DEFAULT NULL,
  `id_keluarga` int(10) DEFAULT NULL,
  `nama_pelapor` varchar(100) DEFAULT NULL,
  `id_pelapor` int(10) DEFAULT NULL,
  `id_penduduk` int(4) DEFAULT NULL,
  `id_surat` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_kelahiran`),
  KEY `id_ayah` (`id_keluarga`),
  KEY `id_pelapor` (`id_pelapor`),
  KEY `id_penduduk` (`id_penduduk`),
  KEY `id_surat` (`id_surat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_keluarga`
--

CREATE TABLE IF NOT EXISTS `tbl_keluarga` (
  `id_keluarga` int(10) NOT NULL AUTO_INCREMENT,
  `no_kk` varchar(25) NOT NULL,
  `alamat_jalan` varchar(50) NOT NULL,
  `is_sementara` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_raskin` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_jamkesmas` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_pkh` enum('Y','N') NOT NULL DEFAULT 'N',
  `id_kelas_sosial` int(10) DEFAULT NULL,
  `id_kepala_keluarga` int(10) DEFAULT NULL,
  `id_rt` int(10) DEFAULT NULL,
  `id_rw` int(10) DEFAULT NULL,
  `id_dusun` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_keluarga`),
  KEY `FK_keluarga_penduduk` (`id_kepala_keluarga`),
  KEY `id_kelas_sosial` (`id_kelas_sosial`),
  KEY `id_kepala_keluarga` (`id_kepala_keluarga`),
  KEY `id_rt` (`id_rt`),
  KEY `id_rw` (`id_rw`),
  KEY `id_dusun` (`id_dusun`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `tbl_keluarga`
--

INSERT INTO `tbl_keluarga` (`id_keluarga`, `no_kk`, `alamat_jalan`, `is_sementara`, `is_raskin`, `is_jamkesmas`, `is_pkh`, `id_kelas_sosial`, `id_kepala_keluarga`, `id_rt`, `id_rw`, `id_dusun`) VALUES
(4, '7.2210506069301E+15', 'Jl. Gudang', 'N', 'N', 'Y', 'Y', 2, 8, 1, 1, 2),
(5, '7.2210506069301E+15', 'Jl. Gudang', 'Y', 'Y', 'Y', 'Y', 3, 9, 4, 2, 1),
(6, '7.2210506069301E+15', 'Jl. Siliwangi', 'N', 'N', 'N', 'N', 1, 10, 5, 3, 1),
(7, '7.2210506069301E+15', 'Jl. Jelegong', 'N', 'N', 'Y', 'N', 2, 15, 2, 1, 0),
(8, '7.2210506069301E+15', 'Jl. Nagrak', 'N', 'N', 'N', 'N', 2, 16, 1, 1, 0),
(9, '7.2210506069301E+15', 'Jl. Siliwangi', 'N', 'N', 'Y', 'N', 1, 21, 5, 3, 1),
(10, '7.2210506069301E+15', 'Jl. Siliwangi', 'N', 'N', 'Y', 'N', 2, 23, 4, 2, 2),
(11, '7.2210506069301E+15', 'Jl. Turbin', 'N', 'N', 'Y', 'N', 2, 24, 3, 2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kondisi_kehamilan`
--

CREATE TABLE IF NOT EXISTS `tbl_kondisi_kehamilan` (
  `id_kondisi_kehamilan` int(10) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(20) NOT NULL,
  `tgl_hpl` datetime NOT NULL,
  `is_resti` enum('Y','N') NOT NULL,
  `id_penduduk` int(10) NOT NULL,
  PRIMARY KEY (`id_kondisi_kehamilan`),
  KEY `id_penduduk` (`id_penduduk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_kondisi_kehamilan`
--

INSERT INTO `tbl_kondisi_kehamilan` (`id_kondisi_kehamilan`, `keterangan`, `tgl_hpl`, `is_resti`, `id_penduduk`) VALUES
(1, '5 bulan', '2020-01-01 00:00:00', 'N', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kontak`
--

CREATE TABLE IF NOT EXISTS `tbl_kontak` (
  `id_kontak` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pesan` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kontak`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tbl_kontak`
--

INSERT INTO `tbl_kontak` (`id_kontak`, `nama`, `email`, `pesan`, `waktu`) VALUES
(2, 'bubagi', 'bugabagiofficial@gmail.com', 'Izin buat KK', '2019-11-11 16:38:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_lembaga_desa`
--

CREATE TABLE IF NOT EXISTS `tbl_lembaga_desa` (
  `id_lembaga_desa` int(10) NOT NULL AUTO_INCREMENT,
  `id_pengguna` int(10) NOT NULL,
  `isi_lembaga_desa` blob NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_lembaga_desa`),
  KEY `id_pengguna` (`id_pengguna`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_lembaga_desa`
--

INSERT INTO `tbl_lembaga_desa` (`id_lembaga_desa`, `id_pengguna`, `isi_lembaga_desa`, `waktu`) VALUES
(1, 2, '', '2015-04-11 10:02:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log`
--

CREATE TABLE IF NOT EXISTS `tbl_log` (
  `id_log` int(20) NOT NULL AUTO_INCREMENT,
  `fungsi` varchar(50) NOT NULL,
  `kegiatan` text NOT NULL,
  `kegiatan_rinci` text NOT NULL,
  `table` varchar(50) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip_address` varchar(50) NOT NULL,
  `user_agent` text NOT NULL,
  `id_pengguna` int(10) NOT NULL,
  PRIMARY KEY (`id_log`),
  KEY `id_pengguna` (`id_pengguna`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data untuk tabel `tbl_log`
--

INSERT INTO `tbl_log` (`id_log`, `fungsi`, `kegiatan`, `kegiatan_rinci`, `table`, `waktu`, `ip_address`, `user_agent`, `id_pengguna`) VALUES
(1, 'delete', 'DELETE', '{"id_penduduk":"7"}', 'tbl_penduduk', '2019-11-11 08:21:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(2, 'delete', 'DELETE', '{"id_penduduk":"6"}', 'tbl_penduduk', '2019-11-11 08:21:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(3, 'delete', 'DELETE', '{"id_penduduk":"5"}', 'tbl_penduduk', '2019-11-11 08:21:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(4, 'delete', 'DELETE', '{"id_penduduk":"4"}', 'tbl_penduduk', '2019-11-11 08:21:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(5, 'delete', 'DELETE', '{"id_penduduk":"3"}', 'tbl_penduduk', '2019-11-11 08:21:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(6, 'delete', 'DELETE', '{"id_penduduk":"2"}', 'tbl_penduduk', '2019-11-11 08:21:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(7, 'delete', 'DELETE', '{"id_penduduk":"1"}', 'tbl_penduduk', '2019-11-11 08:21:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(8, 'delete', 'DELETE', '{"id_penduduk":""}', 'tbl_penduduk', '2019-11-11 08:21:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(9, 'delete', 'DELETE', '{"id_penduduk":"3"}', 'tbl_penduduk', '2019-11-11 08:21:12', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(10, 'delete', 'DELETE', '{"id_penduduk":"2"}', 'tbl_penduduk', '2019-11-11 08:21:12', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(11, 'delete', 'DELETE', '{"id_penduduk":"1"}', 'tbl_penduduk', '2019-11-11 08:21:12', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(12, 'delete', 'DELETE', '{"id_penduduk":""}', 'tbl_penduduk', '2019-11-11 08:21:12', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(13, 'delete', 'DELETE', '{"id_keluarga":"3"}', 'tbl_keluarga', '2019-11-11 08:21:24', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(14, 'delete', 'DELETE', '{"id_keluarga":"2"}', 'tbl_keluarga', '2019-11-11 08:21:24', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(15, 'delete', 'DELETE', '{"id_keluarga":"1"}', 'tbl_keluarga', '2019-11-11 08:21:24', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(16, 'delete', 'DELETE', '{"id_keluarga":""}', 'tbl_keluarga', '2019-11-11 08:21:24', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(17, 'delete', 'DELETE', '{"id_penduduk":"3"}', 'tbl_penduduk', '2019-11-11 08:22:14', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(18, 'delete', 'DELETE', '{"id_penduduk":"2"}', 'tbl_penduduk', '2019-11-11 08:22:14', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(19, 'delete', 'DELETE', '{"id_penduduk":"1"}', 'tbl_penduduk', '2019-11-11 08:22:14', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(20, 'delete', 'DELETE', '{"id_penduduk":""}', 'tbl_penduduk', '2019-11-11 08:22:14', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(21, 'update_penduduk', 'UPDATE : {"id_penduduk":"35"}', '{"is_sementara":"N","nik":"647105.060693.0132","nama":"ETI SULASTRI","tempat_lahir":"SUKABUMI","tanggal_lahir":"2006-04-16","no_telp":"87765100987","email":"Tidak Diketahui","no_kitas":"10032","no_paspor":"1243","id_agama":"5","id_goldar":"6","id_pendidikan":"13","id_pendidikan_terakhir":"","id_pekerjaan":"3","id_pekerjaan_ped":"","id_jen_kel":"2","id_kewarganegaraan":"1","id_kompetensi":"0","id_status_kawin":"1","id_status_penduduk":"1","id_status_tinggal":"1","id_difabilitas":"1","id_kontrasepsi":"","is_bsm":"N","foto":"uploads\\/647105.060693.0132.jpg","pendapatan_per_bulan":0}', 'tbl_penduduk', '2019-11-11 11:12:06', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(22, 'update_penduduk', 'UPDATE : {"id_penduduk":"29"}', '{"is_sementara":"N","nik":"647105.060693.0126","nama":"ISABELA LILA","tempat_lahir":"BOGOR","tanggal_lahir":"2000-04-16","no_telp":"87765100987","email":"Tidak Diketahui","no_kitas":"10026","no_paspor":"Tidak Diketahui","id_agama":"1","id_goldar":"4","id_pendidikan":"15","id_pendidikan_terakhir":"5","id_pekerjaan":"3","id_pekerjaan_ped":"","id_jen_kel":"2","id_kewarganegaraan":"1","id_kompetensi":"0","id_status_kawin":"1","id_status_penduduk":"1","id_status_tinggal":"1","id_difabilitas":"1","id_kontrasepsi":"","is_bsm":"N","foto":"uploads\\/647105.060693.0126.jpg","pendapatan_per_bulan":0}', 'tbl_penduduk', '2019-11-11 11:14:43', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(23, 'update_penduduk', 'UPDATE : {"id_penduduk":"35"}', '{"is_sementara":"N","nik":"647105.060693.0132","nama":"ETI SULASTRI","tempat_lahir":"SUKABUMI","tanggal_lahir":"2006-04-16","no_telp":"87765100987","email":"Tidak Diketahui","no_kitas":"10032","no_paspor":"1243","id_agama":"5","id_goldar":"6","id_pendidikan":"13","id_pendidikan_terakhir":"","id_pekerjaan":"3","id_pekerjaan_ped":"","id_jen_kel":"2","id_kewarganegaraan":"1","id_kompetensi":"0","id_status_kawin":"1","id_status_penduduk":"1","id_status_tinggal":"1","id_difabilitas":"1","id_kontrasepsi":"","is_bsm":"N","foto":"uploads\\/647105.060693.0132.jpg","pendapatan_per_bulan":0}', 'tbl_penduduk', '2019-11-11 17:20:34', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_logo`
--

CREATE TABLE IF NOT EXISTS `tbl_logo` (
  `id_logo` int(11) NOT NULL AUTO_INCREMENT,
  `konten_logo_desa` varchar(50) NOT NULL,
  `konten_logo_kabupaten` varchar(50) NOT NULL,
  `path_css` varchar(50) NOT NULL,
  PRIMARY KEY (`id_logo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_logo`
--

INSERT INTO `tbl_logo` (`id_logo`, `konten_logo_desa`, `konten_logo_kabupaten`, `path_css`) VALUES
(1, 'uploads/web/logo_desa.png', 'uploads/web/logo_kabupaten.jpg', 'assetku/css/style_kuning.css');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_meninggal`
--

CREATE TABLE IF NOT EXISTS `tbl_meninggal` (
  `id_meninggal` int(10) NOT NULL AUTO_INCREMENT,
  `tgl_meninggal` datetime NOT NULL,
  `nama` varchar(50) NOT NULL,
  `sebab` varchar(50) DEFAULT NULL,
  `id_penduduk` int(10) DEFAULT NULL,
  `penentu_kematian` varchar(50) DEFAULT NULL,
  `tempat_kematian` varchar(100) DEFAULT NULL,
  `id_pelapor` int(10) DEFAULT NULL,
  `nama_pelapor` varchar(100) DEFAULT NULL,
  `hubungan_pelapor` varchar(100) DEFAULT NULL,
  `id_surat` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_meninggal`),
  KEY `id_penduduk` (`id_penduduk`),
  KEY `id_pelapor` (`id_pelapor`),
  KEY `id_surat` (`id_surat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pages`
--

CREATE TABLE IF NOT EXISTS `tbl_pages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `title` text NOT NULL,
  `content` blob NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `url`, `title`, `content`, `updated`) VALUES
(1, 'web/c_home/get_detail_berita/1', 'SDN Mareleng Raih Juara 1 LCC Tingkat Kecamatan Waluran', 0x3c64697620616c69676e3d226a757374696679223e3c623e57616c7572616e204d616e646972693c2f623e2c20313220536570656d626572204c6f72656d2c20697073756d20646f6c6f722073697420616d657420636f6e7365637465747572206164697069736963696e6720656c69742e20457374206d696e757320696e636964756e74206f7074696f20697073612064696374612071756165207175616572617420657870656469746120636f72706f72697320726570656c6c656e6475732066756769617420616c697175616d2c206c61626f72696f73616d206174206e6f737472756d20617574656d20617373756d656e646120646f6c6f72756d2064697374696e6374696f20766f6c7570746174696275732c206d6178696d652071756962757364616d2064656c656e69746920616c697175696420726570656c6c6174207175616d2e20457865726369746174696f6e656d2073696d696c69717565206175742c20706f72726f206173706572696f72657320726174696f6e652064656c656e6974692071756961207175617320726572756d20766f6c7570746174696275732066756769617421205175616d20766f6c757074617320617373756d656e6461207365642074656d706f72652120446f6c6f7269627573207175616520686172756d206e6f6269732063756c706120626c616e6469746969732070726f766964656e74206573736520667567696174207175616d206e6563657373697461746962757320756e6465206f7074696f206e6968696c207072616573656e7469756d20766f6c7570746174652c20696e76656e746f72652065756d20636f6d6d6f64692e20517569737175616d206e6f62697320646f6c6f72656d206e6968696c2061737065726e61747572207265637573616e646165207175616d2c206d696e7573206163637573616d7573206265617461652074656d706f7261203c753e6e6f6e3c2f753e206d6178696d652c206e6571756520726570656c6c6174206c696265726f20616c697175696420667567697420717561736920656120656172756d2e204f6263616563617469206164697069736369206d61676e69206f6666696369697320697461717565206561717565206d696e696d612e2050657273706963696174697320726570726568656e64657269742061642064696374612065756d206d61676e692e204f62636165636174692c20696e76656e746f72652e204465736572756e74207265696369656e64697320646f6c6f72656d206f6666696369697320706572666572656e6469732066616365726520656172756d2c206469676e697373696d6f73206c61626f7265206f646974207072616573656e7469756d20612c20617373756d656e646120616420616c69717569642065743f3c62723e3c2f6469763e, '2019-11-11 15:34:41'),
(2, 'web/c_home/get_detail_berita/2', 'Waspada Peredaran Nyamuk Saat Musim Hujan', 0x3c64697620616c69676e3d226a757374696679223e3c623e436172696e67696e204e756e6767616c3c2f623e2c2030332053657074656d626572204c6f72656d2c20697073756d20646f6c6f722073697420616d657420636f6e7365637465747572206164697069736963696e6720656c69742e20457374206d696e757320696e636964756e74206f7074696f20697073612064696374612071756165207175616572617420657870656469746120636f72706f72697320726570656c6c656e6475732066756769617420616c697175616d2c206c61626f72696f73616d206174206e6f737472756d20617574656d20617373756d656e646120646f6c6f72756d2064697374696e6374696f20766f6c7570746174696275732c206d6178696d652071756962757364616d2064656c656e69746920616c697175696420726570656c6c6174207175616d2e20457865726369746174696f6e656d2073696d696c69717565206175742c20706f72726f206173706572696f72657320726174696f6e652064656c656e6974692071756961207175617320726572756d20766f6c7570746174696275732066756769617421205175616d20766f6c757074617320617373756d656e6461207365642074656d706f72652120446f6c6f7269627573207175616520686172756d206e6f6269732063756c706120626c616e6469746969732070726f766964656e74206573736520667567696174207175616d206e6563657373697461746962757320756e6465206f7074696f206e6968696c207072616573656e7469756d20766f6c7570746174652c20696e76656e746f72652065756d20636f6d6d6f64692e20517569737175616d206e6f62697320646f6c6f72656d206e6968696c2061737065726e61747572207265637573616e646165207175616d2c206d696e7573206163637573616d7573206265617461652074656d706f7261206e6f6e206d6178696d652c206e6571756520726570656c6c6174206c696265726f20616c697175696420667567697420717561736920656120656172756d2e204f6263616563617469206164697069736369206d61676e69206f6666696369697320697461717565206561717565206d696e696d612e2050657273706963696174697320726570726568656e64657269742061642064696374612065756d206d61676e692e204f62636165636174692c20696e76656e746f72652e204465736572756e74207265696369656e64697320646f6c6f72656d206f6666696369697320706572666572656e6469732066616365726520656172756d2c206469676e697373696d6f73206c61626f7265206f646974207072616573656e7469756d20612c20617373756d656e646120616420616c69717569642065743f3c62723e3c2f6469763e, '2019-11-11 15:31:23'),
(3, 'web/c_home/get_detail_berita/3', 'Kecamatan Waluran Gelar PILKADES Serentak', 0x3c64697620616c69676e3d226a757374696679223e3c623e57616c7572616e3c2f623e2c203237204d6569204c6f72656d2c20697073756d20646f6c6f722073697420616d657420636f6e7365637465747572206164697069736963696e6720656c69742e20457374206d696e757320696e636964756e74206f7074696f20697073612064696374612071756165207175616572617420657870656469746120636f72706f72697320726570656c6c656e6475732066756769617420616c697175616d2c206c61626f72696f73616d206174206e6f737472756d20617574656d20617373756d656e646120646f6c6f72756d2064697374696e6374696f20766f6c7570746174696275732c206d6178696d652071756962757364616d2064656c656e69746920616c697175696420726570656c6c6174207175616d2e20457865726369746174696f6e656d2073696d696c69717565206175742c20706f72726f206173706572696f72657320726174696f6e652064656c656e6974692071756961207175617320726572756d20766f6c7570746174696275732066756769617421205175616d20766f6c757074617320617373756d656e6461207365642074656d706f72652120446f6c6f7269627573207175616520686172756d206e6f6269732063756c706120626c616e6469746969732070726f766964656e74206573736520667567696174207175616d206e6563657373697461746962757320756e6465206f7074696f206e6968696c207072616573656e7469756d20766f6c7570746174652c20696e76656e746f72652065756d20636f6d6d6f64692e20517569737175616d206e6f62697320646f6c6f72656d206e6968696c2061737065726e61747572207265637573616e646165207175616d2c206d696e7573206163637573616d7573206265617461652074656d706f7261206e6f6e206d6178696d652c206e6571756520726570656c6c6174206c696265726f20616c697175696420667567697420717561736920656120656172756d2e204f6263616563617469206164697069736369206d61676e69206f6666696369697320697461717565206561717565206d696e696d612e2050657273706963696174697320726570726568656e64657269742061642064696374612065756d206d61676e692e204f62636165636174692c20696e76656e746f72652e204465736572756e74207265696369656e64697320646f6c6f72656d206f6666696369697320706572666572656e6469732066616365726520656172756d2c206469676e697373696d6f73206c61626f7265206f646974207072616573656e7469756d20612c20617373756d656e646120616420616c69717569642065743f3c62723e3c2f6469763e, '2019-11-11 15:25:55'),
(4, 'web/c_home/get_detail_berita/4', 'Semarak Festival GCP Datangkan Artis Luar Negri', 0x3c64697620616c69676e3d226a757374696679223e3c623e54616d616e204a6179613c2f623e2c2031332041677573747573204c6f72656d2c20697073756d20646f6c6f722073697420616d657420636f6e7365637465747572206164697069736963696e6720656c69742e20457374206d696e757320696e636964756e74206f7074696f20697073612064696374612071756165207175616572617420657870656469746120636f72706f72697320726570656c6c656e6475732066756769617420616c697175616d2c206c61626f72696f73616d206174206e6f737472756d20617574656d20617373756d656e646120646f6c6f72756d2064697374696e6374696f20766f6c7570746174696275732c206d6178696d652071756962757364616d2064656c656e69746920616c697175696420726570656c6c6174203c623e7175616d3c2f623e2e20457865726369746174696f6e656d2073696d696c69717565206175742c20706f72726f206173706572696f72657320726174696f6e652064656c656e6974692071756961207175617320726572756d20766f6c7570746174696275732066756769617421205175616d20766f6c757074617320617373756d656e6461207365642074656d706f72652120446f6c6f7269627573207175616520686172756d206e6f6269732063756c706120626c616e6469746969732070726f766964656e74206573736520667567696174207175616d206e6563657373697461746962757320756e6465206f7074696f206e6968696c207072616573656e7469756d20766f6c7570746174652c20696e76656e746f72652065756d20636f6d6d6f64692e20517569737175616d206e6f62697320646f6c6f72656d206e6968696c2061737065726e61747572207265637573616e646165207175616d2c206d696e7573206163637573616d7573206265617461652074656d706f7261206e6f6e206d6178696d652c206e6571756520726570656c6c6174206c696265726f20616c697175696420667567697420717561736920656120656172756d2e204f6263616563617469206164697069736369206d61676e69206f6666696369697320697461717565206561717565206d696e696d612e2050657273706963696174697320726570726568656e64657269742061642064696374612065756d206d61676e692e204f62636165636174692c20696e76656e746f72652e204465736572756e74207265696369656e64697320646f6c6f72656d206f6666696369697320706572666572656e6469732066616365726520656172756d2c206469676e697373696d6f73206c61626f7265206f646974207072616573656e7469756d20612c20617373756d656e646120616420616c69717569642065743f3c62723e3c2f6469763e, '2019-11-11 15:28:54'),
(5, 'web/c_sejarah', 'Sejarah Desa', 0x3c64697620616c69676e3d226a757374696679223e4465736120436172696e67696e204e756e6767616c2062657264697269207061646120746168756e20787878782c2064616e207465726d6173756b206b652064616c616d20617265612067656f7061726b204c6f72656d2c20697073756d20646f6c6f722073697420616d657420636f6e7365637465747572206164697069736963696e6720656c69742e20457374206d696e757320696e636964756e74206f7074696f20697073612064696374612071756165207175616572617420657870656469746120636f72706f72697320726570656c6c656e6475732066756769617420616c697175616d2c206c61626f72696f73616d206174206e6f737472756d20617574656d20617373756d656e646120646f6c6f72756d2064697374696e6374696f20766f6c7570746174696275732c206d6178696d652071756962757364616d2064656c656e69746920616c697175696420726570656c6c6174207175616d2e20457865726369746174696f6e656d2073696d696c69717565206175742c20706f72726f206173706572696f72657320726174696f6e652064656c656e6974692071756961207175617320726572756d20766f6c7570746174696275732066756769617421205175616d20766f6c757074617320617373756d656e6461207365642074656d706f72652120446f6c6f7269627573207175616520686172756d206e6f6269732063756c706120626c616e6469746969732070726f766964656e74206573736520667567696174207175616d206e6563657373697461746962757320756e6465206f7074696f206e6968696c207072616573656e7469756d20766f6c7570746174652c20696e76656e746f72652065756d20636f6d6d6f64692e20517569737175616d206e6f62697320646f6c6f72656d206e6968696c2061737065726e61747572207265637573616e646165207175616d2c206d696e7573206163637573616d7573206265617461652074656d706f7261206e6f6e206d6178696d652c206e6571756520726570656c6c6174206c696265726f20616c697175696420667567697420717561736920656120656172756d2e204f6263616563617469206164697069736369206d61676e69206f6666696369697320697461717565206561717565206d696e696d612e2050657273706963696174697320726570726568656e64657269742061642064696374612065756d206d61676e692e204f62636165636174692c20696e76656e746f72652e204465736572756e74207265696369656e64697320646f6c6f72656d206f6666696369697320706572666572656e6469732066616365726520656172756d2c206469676e697373696d6f73206c61626f7265206f646974207072616573656e7469756d20612c20617373756d656e646120616420616c69717569642065743f203c62723e3c2f6469763e3c64697620616c69676e3d226a757374696679223e4c6f72656d2c20697073756d20646f6c6f722073697420616d657420636f6e7365637465747572206164697069736963696e6720656c69742e20457374206d696e757320696e636964756e74206f7074696f20697073612064696374612071756165207175616572617420657870656469746120636f72706f72697320726570656c6c656e6475732066756769617420616c697175616d2c206c61626f72696f73616d206174206e6f737472756d20617574656d20617373756d656e646120646f6c6f72756d2064697374696e6374696f20766f6c7570746174696275732c206d6178696d652071756962757364616d2064656c656e69746920616c697175696420726570656c6c6174207175616d2e20457865726369746174696f6e656d2073696d696c69717565206175742c20706f72726f206173706572696f72657320726174696f6e652064656c656e6974692071756961207175617320726572756d20766f6c7570746174696275732066756769617421205175616d20766f6c757074617320617373756d656e6461207365642074656d706f72652120446f6c6f7269627573207175616520686172756d206e6f6269732063756c706120626c616e6469746969732070726f766964656e74206573736520667567696174207175616d206e6563657373697461746962757320756e6465206f7074696f206e6968696c207072616573656e7469756d20766f6c7570746174652c20696e76656e746f72652065756d20636f6d6d6f64692e20517569737175616d206e6f62697320646f6c6f72656d206e6968696c2061737065726e61747572207265637573616e646165207175616d2c206d696e7573206163637573616d7573206265617461652074656d706f7261206e6f6e206d6178696d652c206e6571756520726570656c6c6174206c696265726f20616c697175696420667567697420717561736920656120656172756d2e204f6263616563617469206164697069736369206d61676e69206f6666696369697320697461717565206561717565206d696e696d612e2050657273706963696174697320726570726568656e64657269742061642064696374612065756d206d61676e692e204f62636165636174692c20696e76656e746f72652e204465736572756e74207265696369656e64697320646f6c6f72656d206f6666696369697320706572666572656e6469732066616365726520656172756d2c206469676e697373696d6f73206c61626f7265206f646974207072616573656e7469756d20612c20617373756d656e646120616420616c69717569642065743f3c62723e3c2f6469763e3c64697620616c69676e3d226a757374696679223e4c6f72656d2c20697073756d20646f6c6f722073697420616d657420636f6e7365637465747572206164697069736963696e6720656c69742e20457374206d696e757320696e636964756e74206f7074696f20697073612064696374612071756165207175616572617420657870656469746120636f72706f72697320726570656c6c656e6475732066756769617420616c697175616d2c206c61626f72696f73616d206174206e6f737472756d20617574656d20617373756d656e646120646f6c6f72756d2064697374696e6374696f20766f6c7570746174696275732c206d6178696d652071756962757364616d2064656c656e69746920616c697175696420726570656c6c6174207175616d2e20457865726369746174696f6e656d2073696d696c69717565206175742c20706f72726f206173706572696f72657320726174696f6e652064656c656e6974692071756961207175617320726572756d20766f6c7570746174696275732066756769617421205175616d20766f6c757074617320617373756d656e6461207365642074656d706f72652120446f6c6f7269627573207175616520686172756d206e6f6269732063756c706120626c616e6469746969732070726f766964656e74206573736520667567696174207175616d206e6563657373697461746962757320756e6465206f7074696f206e6968696c207072616573656e7469756d20766f6c7570746174652c20696e76656e746f72652065756d20636f6d6d6f64692e20517569737175616d206e6f62697320646f6c6f72656d206e6968696c2061737065726e61747572207265637573616e646165207175616d2c206d696e7573206163637573616d7573206265617461652074656d706f7261206e6f6e206d6178696d652c206e6571756520726570656c6c6174206c696265726f20616c697175696420667567697420717561736920656120656172756d2e204f6263616563617469206164697069736369206d61676e69206f6666696369697320697461717565206561717565206d696e696d612e2050657273706963696174697320726570726568656e64657269742061642064696374612065756d206d61676e692e204f62636165636174692c20696e76656e746f72652e204465736572756e74207265696369656e64697320646f6c6f72656d206f6666696369697320706572666572656e6469732066616365726520656172756d2c206469676e697373696d6f73206c61626f7265206f646974207072616573656e7469756d20612c20617373756d656e646120616420616c69717569642065743f3c62723e3c2f6469763e2020, '2019-11-11 15:42:25'),
(6, 'web/c_demografi', 'Demografi Desa', 0x20436172696e67696e204e756e6767616c204465736572756e74207265696369656e64697320646f6c6f72656d206f6666696369697320706572666572656e6469732066616365726520656172756d2c206469676e697373696d6f73206c61626f7265206f646974207072616573656e7469756d20612c20617373756d656e646120616420616c69717569642065743f3c62723e3c756c3e3c6c693e4c75617320446573613c2f6c693e3c6c693e4a756d6c61682050656e647564756b3c2f6c693e3c2f756c3e3c6469763e4c6f72656d2c20697073756d20646f6c6f722073697420616d657420636f6e7365637465747572206164697069736963696e6720656c69742e20457374206d696e757320696e636964756e74206f7074696f20697073612064696374612071756165207175616572617420657870656469746120636f72706f72697320726570656c6c656e6475732066756769617420616c697175616d2c206c61626f72696f73616d206174206e6f737472756d20617574656d20617373756d656e646120646f6c6f72756d2064697374696e6374696f20766f6c7570746174696275732c206d6178696d652071756962757364616d2064656c656e69746920616c697175696420726570656c6c6174207175616d2e20457865726369746174696f6e656d2073696d696c69717565206175742c20706f72726f206173706572696f72657320726174696f6e652064656c656e6974692071756961207175617320726572756d20766f6c7570746174696275732066756769617421205175616d20766f6c757074617320617373756d656e6461207365642074656d706f72652120446f6c6f7269627573207175616520686172756d206e6f6269732063756c706120626c616e6469746969732070726f766964656e74206573736520667567696174207175616d206e6563657373697461746962757320756e6465206f7074696f206e6968696c207072616573656e7469756d20766f6c7570746174652c20696e76656e746f72652065756d20636f6d6d6f64692e20517569737175616d206e6f62697320646f6c6f72656d206e6968696c2061737065726e61747572207265637573616e646165207175616d2c206d696e7573206163637573616d7573206265617461652074656d706f7261206e6f6e206d6178696d652c206e6571756520726570656c6c6174206c696265726f20616c697175696420667567697420717561736920656120656172756d2e204f6263616563617469206164697069736369206d61676e69206f6666696369697320697461717565206561717565206d696e696d612e2050657273706963696174697320726570726568656e64657269742061642064696374612065756d206d61676e692e204f62636165636174692c20696e76656e746f72652e204465736572756e74207265696369656e64697320646f6c6f72656d206f6666696369697320706572666572656e6469732066616365726520656172756d2c206469676e697373696d6f73206c61626f7265206f646974207072616573656e7469756d20612c20617373756d656e646120616420616c69717569642065743f3c62723e3c2f6469763e3c6469763e3c62723e3c2f6469763e202020, '2019-11-11 15:55:19'),
(7, 'web/c_visimisi', 'Visi Misi Desa', 0x203c68333e3c666f6e7420666163653d2268656c766574696361223e566973693c2f666f6e743e3c2f68333e3c6469763e3c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572206164697069736963696e6720656c69742e2052656d20756c6c616d206869632c20756e6465206e6174757320617373756d656e64612071756f64206163637573616e7469756d20667567697420696e76656e746f726520636f6d6d6f6469206f646974207375736369706974206f7074696f21266e6273703b266e6273703b266e6273703b203c62723e3c2f703e3c703e3c62723e3c2f703e3c68333e3c666f6e7420666163653d2268656c766574696361223e4d6973693c2f666f6e743e3c2f68333e3c6f6c3e3c6c693e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572206164697069736963696e6720656c69742e2052656d20756c6c616d206869732e3c2f6c693e3c6c693e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572206164697069736963696e6720656c69742e20517561736920696e20717569732063756c70612065787065646974612e3c2f6c693e3c6c693e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572206164697069736963696e672e3c2f6c693e3c6c693e4c6f72656d20697073756d2c20646f6c6f722073697420616d657420636f6e7365637465747572206164697069736963696e6720656c69742e204163637573616d7573206d6f6c6c697469612c20656172756d20617373756d656e6461206f7074696f2065737365207265637573616e64616520697573746f2e3c2f6c693e3c2f6f6c3e3c2f6469763e202020, '2019-11-11 15:53:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ped_perkebunan`
--

CREATE TABLE IF NOT EXISTS `tbl_ped_perkebunan` (
  `id_ped_perkebunan` int(4) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  `penggarap` varchar(20) NOT NULL,
  `jumlah_penggarap` int(4) NOT NULL,
  `luas` float NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `id_dusun` int(4) NOT NULL,
  PRIMARY KEY (`id_ped_perkebunan`),
  KEY `id_dusun` (`id_dusun`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tbl_ped_perkebunan`
--

INSERT INTO `tbl_ped_perkebunan` (`id_ped_perkebunan`, `deskripsi`, `penggarap`, `jumlah_penggarap`, `luas`, `lokasi`, `id_dusun`) VALUES
(1, 'Pohon Jati', 'Buruh', 10, 5, 'Samping jalan', 1),
(2, 'Melon', 'Pribadi', 3, 1, '-', 3),
(3, 'Salak', 'Pribadi', 2, 1, '-', 4),
(4, 'Kopi', 'Buruh', 9, 4, 'Selatan karang tengah', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ped_pertambakan`
--

CREATE TABLE IF NOT EXISTS `tbl_ped_pertambakan` (
  `id_ped_pertambakan` int(4) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  `penggarap` varchar(20) NOT NULL,
  `jumlah_penggarap` int(4) NOT NULL,
  `luas` float NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `id_dusun` int(4) NOT NULL,
  PRIMARY KEY (`id_ped_pertambakan`),
  KEY `id_dusun` (`id_dusun`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tbl_ped_pertambakan`
--

INSERT INTO `tbl_ped_pertambakan` (`id_ped_pertambakan`, `deskripsi`, `penggarap`, `jumlah_penggarap`, `luas`, `lokasi`, `id_dusun`) VALUES
(1, 'Lele', 'Pribadi', 5, 1, 'Belakang Rumah Pak Haji', 2),
(2, 'Ikan Mas', 'Pribadi', 2, 1, 'Pudunan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ped_pertanian`
--

CREATE TABLE IF NOT EXISTS `tbl_ped_pertanian` (
  `id_ped_pertanian` int(4) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  `penggarap` varchar(20) NOT NULL,
  `jumlah_penggarap` int(4) NOT NULL,
  `luas` float NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `id_dusun` int(4) NOT NULL,
  PRIMARY KEY (`id_ped_pertanian`),
  KEY `id_dusun` (`id_dusun`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `tbl_ped_pertanian`
--

INSERT INTO `tbl_ped_pertanian` (`id_ped_pertanian`, `deskripsi`, `penggarap`, `jumlah_penggarap`, `luas`, `lokasi`, `id_dusun`) VALUES
(4, 'Sayuran', 'Buruh', 50, 4, 'Turunan cagak', 3),
(5, 'Padi', 'Pribadi', 6, 1, 'Dibelakang kuburan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ped_potensi_wisata`
--

CREATE TABLE IF NOT EXISTS `tbl_ped_potensi_wisata` (
  `id_ped_potensi_wisata` int(4) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `id_dusun` int(4) NOT NULL,
  PRIMARY KEY (`id_ped_potensi_wisata`),
  KEY `id_dusun` (`id_dusun`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tbl_ped_potensi_wisata`
--

INSERT INTO `tbl_ped_potensi_wisata` (`id_ped_potensi_wisata`, `deskripsi`, `lokasi`, `id_dusun`) VALUES
(1, 'Nipah Valley', '-', 3),
(2, 'Kuliner Bukit Balekambang', '-', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ped_sumber_air`
--

CREATE TABLE IF NOT EXISTS `tbl_ped_sumber_air` (
  `id_ped_sumber_air` int(4) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `id_dusun` int(4) NOT NULL,
  PRIMARY KEY (`id_ped_sumber_air`),
  KEY `id_dusun` (`id_dusun`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tbl_ped_sumber_air`
--

INSERT INTO `tbl_ped_sumber_air` (`id_ped_sumber_air`, `deskripsi`, `lokasi`, `id_dusun`) VALUES
(1, 'Sungai Cikolawing', 'Belokan', 2),
(2, 'Danau', '-', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ped_sumber_energi`
--

CREATE TABLE IF NOT EXISTS `tbl_ped_sumber_energi` (
  `id_ped_sumber_energi` int(4) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `id_dusun` int(4) NOT NULL,
  PRIMARY KEY (`id_ped_sumber_energi`),
  KEY `id_dusun` (`id_dusun`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_ped_sumber_energi`
--

INSERT INTO `tbl_ped_sumber_energi` (`id_ped_sumber_energi`, `deskripsi`, `lokasi`, `id_dusun`) VALUES
(1, 'Gardu Listrik PLN Tenaga Nuklir', '-', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penduduk`
--

CREATE TABLE IF NOT EXISTS `tbl_penduduk` (
  `id_penduduk` int(10) NOT NULL AUTO_INCREMENT,
  `nik` varchar(25) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(25) DEFAULT NULL,
  `tanggal_lahir` datetime DEFAULT NULL,
  `foto` varchar(50) DEFAULT 'uploads/defaultFotoPenduduk.jpg',
  `no_telp` char(15) DEFAULT 'Tidak Diketahui',
  `email` varchar(50) DEFAULT 'Tidak Diketahui',
  `no_kitas` varchar(25) DEFAULT 'Tidak Diketahui',
  `no_paspor` varchar(25) DEFAULT 'Tidak Diketahui',
  `is_sementara` enum('Y','N') NOT NULL DEFAULT 'Y',
  `id_rt` int(10) DEFAULT '0',
  `id_rw` int(10) DEFAULT '0',
  `id_dusun` int(10) DEFAULT '0',
  `id_pendidikan` int(10) DEFAULT '0',
  `is_bsm` enum('Y','N') NOT NULL DEFAULT 'N',
  `id_agama` int(10) DEFAULT '0',
  `id_goldar` int(10) DEFAULT '0',
  `id_pendidikan_terakhir` int(10) DEFAULT '0',
  `id_jen_kel` int(10) DEFAULT '0',
  `id_kewarganegaraan` int(10) DEFAULT '0',
  `id_pekerjaan` int(10) DEFAULT '0',
  `id_pekerjaan_ped` int(10) DEFAULT '0',
  `id_kompetensi` int(10) DEFAULT '0',
  `id_status_kawin` int(10) DEFAULT '0',
  `id_status_penduduk` int(10) DEFAULT '0',
  `id_status_tinggal` int(10) DEFAULT '0',
  `id_difabilitas` int(10) DEFAULT '0',
  `id_kontrasepsi` int(10) DEFAULT '0',
  `pendapatan_per_bulan` double DEFAULT '0',
  PRIMARY KEY (`id_penduduk`),
  KEY `id_rt` (`id_rt`),
  KEY `id_rw` (`id_rw`),
  KEY `id_dusun` (`id_dusun`),
  KEY `id_pendidikan` (`id_pendidikan`),
  KEY `id_agama` (`id_agama`),
  KEY `id_goldar` (`id_goldar`),
  KEY `id_pendidikan_terakhir` (`id_pendidikan_terakhir`),
  KEY `id_jen_kel` (`id_jen_kel`),
  KEY `id_kewarganegaraan` (`id_kewarganegaraan`),
  KEY `id_pekerjaan` (`id_pekerjaan`),
  KEY `id_pekerjaan_ped` (`id_pekerjaan_ped`),
  KEY `id_kompetensi` (`id_kompetensi`),
  KEY `id_status_kawin` (`id_status_kawin`),
  KEY `id_status_penduduk` (`id_status_penduduk`),
  KEY `id_status_tinggal` (`id_status_tinggal`),
  KEY `id_difabilitas` (`id_difabilitas`),
  KEY `id_kontrasepsi` (`id_kontrasepsi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data untuk tabel `tbl_penduduk`
--

INSERT INTO `tbl_penduduk` (`id_penduduk`, `nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `foto`, `no_telp`, `email`, `no_kitas`, `no_paspor`, `is_sementara`, `id_rt`, `id_rw`, `id_dusun`, `id_pendidikan`, `is_bsm`, `id_agama`, `id_goldar`, `id_pendidikan_terakhir`, `id_jen_kel`, `id_kewarganegaraan`, `id_pekerjaan`, `id_pekerjaan_ped`, `id_kompetensi`, `id_status_kawin`, `id_status_penduduk`, `id_status_tinggal`, `id_difabilitas`, `id_kontrasepsi`, `pendapatan_per_bulan`) VALUES
(8, '647105.060693.0105', 'WAHYU SAEPUL BAHRI', 'SUKABUMI', '1965-06-06 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '089619256006', 'Tidak Diketahui', 'Tidak Diketahui', '10002', 'N', 1, 1, 2, 17, 'N', 1, 10, 6, 1, 3, 36, 0, 2, 3, 1, 1, 1, 0, 0),
(9, '647105.060693.0106', 'RESA SOPIAN', 'SUKABUMI', '1957-06-06 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '089619256007', 'Tidak Diketahui', 'Tidak Diketahui', 'Tidak Diketahui', 'N', 4, 2, 1, 17, 'N', 1, 7, 6, 1, 2, 44, 3, 2, 2, 1, 1, 1, 0, 0),
(10, '647105.060693.0107', 'MUHAMAD NASRU', 'MALAYSIA', '1993-10-31 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '089619256008', 'Tidak Diketahui', 'Tidak Diketahui', 'Tidak Diketahui', 'N', 5, 3, 1, 9, 'N', 1, 2, 9, 1, 1, 15, 0, 4, 2, 1, 1, 1, 0, 0),
(11, '647105.060693.0108', 'ABDUL MUJIB', 'SLEMAN', '1994-06-21 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '89619256009', 'abdu@yahoo.com', 'Tidak Diketahui', 'Tidak Diketahui', 'N', 5, 3, 1, 6, 'N', 1, 2, 6, 1, 1, 45, 0, 2, 2, 1, 1, 1, 0, 0),
(12, '647105.060693.0109', 'YOHAN PERTIWI', 'BANDUNG', '1994-04-22 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '85890210023', 'yohan@gmail.com', 'Tidak Diketahui', 'Tidak Diketahui', 'N', 4, 2, 3, 6, 'N', 1, 7, 6, 2, 2, 42, 0, 4, 1, 1, 1, 1, 0, 0),
(13, '647105.060693.0110', 'KARINA ULTIMATUM', 'JAKARTA', '1997-04-08 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '85890210024', 'karina@outlook.com', '10010', 'Tidak Diketahui', 'N', 3, 2, 3, 15, 'Y', 5, 6, 5, 2, 1, 3, 3, 0, 1, 1, 1, 1, 0, 0),
(14, '647105.060693.0111', 'PAMELA SAFITRI', 'SUKABUMI', '1985-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '85890210025', 'Tidak Diketahui', '10011', 'Tidak Diketahui', 'N', 3, 2, 3, 6, 'N', 1, 6, 6, 2, 1, 31, 2, 1, 2, 1, 1, 1, 5, 0),
(15, '647105.060693.0112', 'RONI SAHRI', 'SUKABUMI', '1986-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '085430340251', 'Tidak Diketahui', '10012', 'Tidak Diketahui', 'N', 2, 1, 3, 8, 'N', 1, 10, 6, 1, 1, 15, 0, 0, 1, 1, 1, 5, 0, 0),
(16, '647105.060693.0113', 'SARIPUDIN', 'SUKABUMI', '1987-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '085430340251', 'Tidak Diketahui', '10013', 'Tidak Diketahui', 'N', 1, 1, 3, 8, 'N', 1, 3, 5, 1, 1, 4, 0, 0, 2, 1, 1, 5, 4, 0),
(17, '647105.060693.0114', 'UDIN SAPRUDIN', 'SUKABUMI', '1988-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '85430340251', 'Tidak Diketahui', '10014', 'Tidak Diketahui', 'N', 1, 1, 3, 8, 'N', 2, 2, 6, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0),
(18, '647105.060693.0115', 'ASEP GUMASEP', 'SUKABUMI', '1989-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '85430340251', 'Tidak Diketahui', '10015', 'Tidak Diketahui', 'N', 6, 3, 1, 10, 'N', 1, 4, 6, 1, 1, 16, 0, 0, 1, 1, 1, 1, 0, 0),
(19, '647105.060693.0116', 'CEP BADRU JAMAN', 'SUKABUMI', '1990-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '85430340251', 'Tidak Diketahui', '10016', 'Tidak Diketahui', 'N', 2, 1, 2, 17, 'N', 1, 10, 6, 1, 1, 36, 2, 0, 3, 1, 1, 1, 0, 0),
(20, '647105.060693.0117', 'ACENG ALI', 'SUKABUMI', '1991-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '85430340251', 'Tidak Diketahui', '10017', 'Tidak Diketahui', 'N', 4, 2, 2, 17, 'Y', 1, 7, 5, 1, 1, 44, 0, 0, 2, 1, 1, 1, 0, 0),
(21, '647105.060693.0118', 'ROHMAT NASUTION', 'SUKABUMI', '1992-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '085430340251', 'Tidak Diketahui', '10018', 'Tidak Diketahui', 'N', 5, 3, 1, 9, 'N', 1, 2, 6, 1, 1, 15, 2, 0, 2, 1, 1, 1, 0, 0),
(22, '647105.060693.0119', 'TAN MALAKA', 'SUKABUMI', '1993-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '85430340251', 'Tidak Diketahui', '10019', 'Tidak Diketahui', 'N', 3, 2, 2, 6, 'N', 1, 2, 6, 1, 1, 45, 0, 0, 2, 1, 1, 1, 0, 0),
(23, '647105.060693.0120', 'COKRO HARIO', 'SUKABUMI', '1994-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '085430340251', 'Tidak Diketahui', '10020', 'Tidak Diketahui', 'N', 4, 2, 2, 6, 'N', 1, 7, 5, 1, 1, 42, 0, 0, 1, 1, 1, 1, 0, 0),
(24, '647105.060693.0121', 'HARYONO', 'SUKABUMI', '1995-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '085430340251', 'Tidak Diketahui', 'Tidak Diketahui', 'Tidak Diketahui', 'N', 3, 2, 2, 15, 'N', 5, 6, 6, 2, 1, 3, 0, 0, 1, 1, 1, 1, 0, 0),
(25, '647105.060693.0122', 'ULFA SRI RAHAYU', 'SUKABUMI', '1996-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '85430340251', 'Tidak Diketahui', 'Tidak Diketahui', 'Tidak Diketahui', 'N', 2, 1, 2, 5, 'N', 1, 6, 6, 2, 1, 31, 0, 0, 2, 1, 1, 1, 5, 0),
(26, '647105.060693.0123', 'AYU FATIMAH', 'JAKARTA', '1997-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '85430340251', 'Tidak Diketahui', 'Tidak Diketahui', 'Tidak Diketahui', 'N', 1, 1, 4, 15, 'N', 1, 10, 5, 2, 1, 3, 2, 0, 1, 1, 1, 1, 0, 0),
(27, '647105.060693.0124', 'ENENG ELIS', 'SUKABUMI', '1998-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '85430340251', 'Tidak Diketahui', 'Tidak Diketahui', 'Tidak Diketahui', 'N', 1, 1, 4, 15, 'N', 1, 3, 5, 1, 1, 3, 0, 0, 1, 1, 1, 1, 4, 0),
(28, '647105.060693.0125', 'JAMAL KUN', 'BOGOR', '1999-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '85430340251', 'elis@yahoo.com', 'Tidak Diketahui', 'Tidak Diketahui', 'N', 1, 1, 4, 15, 'N', 2, 2, 5, 2, 1, 3, 0, 0, 1, 1, 1, 1, 0, 0),
(29, '647105.060693.0126', 'ISABELA LILA', 'BOGOR', '2000-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '87765100987', 'Tidak Diketahui', '10026', 'Tidak Diketahui', 'N', 1, 1, 4, 15, 'N', 1, 4, 5, 2, 1, 3, 0, 0, 1, 1, 1, 1, 0, 0),
(30, '647105.060693.0127', 'LELAH SRI', 'SUKABUMI', '2001-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '87765100987', 'Tidak Diketahui', '10027', 'Tidak Diketahui', 'N', 3, 2, 1, 15, 'N', 1, 10, 5, 2, 1, 3, 5, 0, 1, 1, 1, 4, 0, 0),
(31, '647105.060693.0128', 'NUNUNG MELENUNG', 'SUKABUMI', '2002-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '87765100987', 'Tidak Diketahui', '10028', 'Tidak Diketahui', 'N', 6, 3, 1, 15, 'N', 1, 7, 5, 2, 1, 3, 0, 0, 1, 1, 1, 1, 0, 0),
(32, '647105.060693.0129', 'JONI SENDIRI', 'SUKABUMI', '2003-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '87765100987', 'Tidak Diketahui', '10029', 'Tidak Diketahui', 'N', 3, 2, 1, 15, 'N', 1, 2, 5, 1, 1, 3, 0, 0, 1, 1, 1, 1, 0, 0),
(33, '647105.060693.0130', 'SUPRI SUPIR', 'SUKABUMI', '2004-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '87765100987', 'Tidak Diketahui', '10030', 'Tidak Diketahui', 'N', 3, 2, 1, 13, 'N', 1, 2, 0, 1, 1, 3, 0, 0, 1, 1, 1, 1, 0, 0),
(34, '647105.060693.0131', 'BAGUS HARADI', 'SUKABUMI', '2005-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '87765100987', 'Tidak Diketahui', '10031', 'Tidak Diketahui', 'N', 3, 2, 1, 13, 'N', 1, 7, 0, 1, 1, 3, 0, 0, 1, 1, 1, 1, 0, 0),
(35, '647105.060693.0132', 'ETI SULASTRI', 'SUKABUMI', '2006-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '87765100987', 'Tidak Diketahui', '10032', '1243', 'N', 1, 1, 4, 13, 'N', 5, 6, 0, 2, 1, 3, 0, 0, 1, 1, 1, 1, 0, 0),
(36, '647105.060693.0133', 'LASRI SULASTRI', 'SUKABUMI', '2007-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '87765100987', 'Tidak Diketahui', '10033', '3432', 'N', 2, 1, 2, 13, 'N', 1, 6, 0, 2, 1, 3, 0, 0, 1, 1, 1, 1, 0, 0),
(37, '647105.060693.0134', 'DINA NUR', 'CIANJUR', '2008-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '87765100987', 'Tidak Diketahui', '10034', 'Tidak Diketahui', 'N', 1, 1, 4, 13, 'Y', 1, 10, 0, 2, 1, 3, 5, 0, 1, 1, 1, 1, 0, 0),
(38, '647105.060693.0135', 'LALA KUMALASARI', 'CIANJUR', '2009-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '87765100987', 'lala@gmaill.com', '10035', 'Tidak Diketahui', 'N', 6, 3, 1, 13, 'N', 1, 3, 0, 2, 1, 3, 0, 0, 1, 1, 1, 1, 0, 0),
(39, '647105.060693.0136', 'CELSI OKI', 'CIANJUR', '2010-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '87765100987', 'Tidak Diketahui', '10036', 'Tidak Diketahui', 'N', 0, 1, 3, 13, 'N', 2, 2, 0, 2, 1, 3, 0, 0, 1, 1, 1, 1, 0, 0),
(40, '647105.060693.0137', 'DEJAN TARAJAJAN', 'CIANJUR', '2011-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '87765100987', 'Tidak Diketahui', '10037', 'Tidak Diketahui', 'N', 3, 2, 3, 13, 'Y', 1, 4, 0, 1, 1, 3, 0, 0, 1, 1, 1, 1, 0, 0),
(41, '647105.060693.0138', 'LILIS GUMELLIS', 'BANDUNG', '2012-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '87765100987', 'Tidak Diketahui', '10038', '23432', 'N', 3, 2, 3, 13, 'N', 1, 10, 0, 2, 1, 3, 0, 0, 1, 1, 1, 1, 0, 0),
(42, '647105.060693.0139', 'SOLIHIN', 'SUKABUMI', '2013-04-16 00:00:00', 'uploads/defaultFotoPenduduk.jpg', '87765100987', 'Tidak Diketahui', '10039', 'Tidak Diketahui', 'N', 2, 1, 3, 13, 'N', 5, 7, 0, 1, 1, 3, 0, 0, 1, 1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE IF NOT EXISTS `tbl_pengguna` (
  `id_pengguna` int(10) NOT NULL AUTO_INCREMENT,
  `nik` varchar(20) NOT NULL,
  `nama_pengguna` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `role` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_pengguna`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`id_pengguna`, `nik`, `nama_pengguna`, `password`, `nama`, `no_telepon`, `role`, `foto`, `is_delete`) VALUES
(2, '', 'admindesa', 'c3284d0f94606de1fd2af172aba15bf3', 'Ujang Saepuloh', '', 'Administrator', '', 'Y'),
(4, '16363575', 'pengelola', '1f32aa4c9a1d2ea010adcf2348166a04', 'obet', '086452', 'Pengelola Data', '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_perangkat`
--

CREATE TABLE IF NOT EXISTS `tbl_perangkat` (
  `id_perangkat` int(10) NOT NULL AUTO_INCREMENT,
  `nip` varchar(25) NOT NULL,
  `niap` varchar(25) NOT NULL,
  `no_sk_angkat` varchar(50) NOT NULL,
  `tgl_angkat` datetime NOT NULL,
  `id_pangkat_gol` int(11) NOT NULL,
  `no_sk_berhenti` varchar(50) DEFAULT NULL,
  `tgl_berhenti` datetime DEFAULT NULL,
  `id_jabatan` int(10) NOT NULL,
  `id_penduduk` int(10) DEFAULT NULL,
  `is_aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_perangkat`),
  KEY `id_jabatan` (`id_jabatan`),
  KEY `id_penduduk` (`id_penduduk`),
  KEY `id_pangkat_gol` (`id_pangkat_gol`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `tbl_perangkat`
--

INSERT INTO `tbl_perangkat` (`id_perangkat`, `nip`, `niap`, `no_sk_angkat`, `tgl_angkat`, `id_pangkat_gol`, `no_sk_berhenti`, `tgl_berhenti`, `id_jabatan`, `id_penduduk`, `is_aktif`) VALUES
(1, '121412', '142142', '14241212', '2019-03-20 00:00:00', 1, '214124', '2019-11-09 00:00:00', 3, 35, 'Y'),
(2, '643225', '352535', '3525632', '2019-11-01 00:00:00', 2, '62346224', '2019-11-30 00:00:00', 5, 29, 'Y'),
(3, '3434356436', '4365464', '436566454', '2019-07-17 00:00:00', 1, '36534635454', '2024-11-06 00:00:00', 1, 17, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_peta`
--

CREATE TABLE IF NOT EXISTS `tbl_peta` (
  `id_peta` int(4) NOT NULL AUTO_INCREMENT,
  `embed` blob NOT NULL,
  `id_desa` int(4) NOT NULL,
  PRIMARY KEY (`id_peta`),
  KEY `id_desa` (`id_desa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_peta`
--

INSERT INTO `tbl_peta` (`id_peta`, `embed`, `id_desa`) VALUES
(1, 0x20203c696672616d65207372633d2268747470733a2f2f7777772e676f6f676c652e636f6d2f6d6170732f656d6265643f70623d21316d313821316d313221316d3321316433313636322e3332373437313434323438342132643130362e35323732333833313835303736362133642d372e3236343631373731343339363038373521326d3321316630213266302133663021336d322131693130323421326937363821346631332e3121336d3321316d322131733078326536383164376133386165643334393a307833373638666264666639633633333866213273436172696e67696e204e756e6767616c2c2057616c7572616e2c2053756b6162756d6920526567656e63792c204a6177612042617261742135653021336d32213173696421327369642134763135373334393230333330383821356d3221317369642132736964222077696474683d2236303022206865696768743d2234353022206672616d65626f726465723d223022207374796c653d22626f726465723a303b2220616c6c6f7766756c6c73637265656e3d22223e3c2f696672616d653e20, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pindah_keluar`
--

CREATE TABLE IF NOT EXISTS `tbl_pindah_keluar` (
  `id_pindah_keluar` int(10) NOT NULL AUTO_INCREMENT,
  `tgl_pindah_keluar` datetime NOT NULL,
  `no_kk` varchar(25) NOT NULL,
  `alamat_jalan` varchar(100) NOT NULL,
  `nomor_rt` varchar(5) NOT NULL,
  `nomor_rw` varchar(5) NOT NULL,
  `nama_dusun` varchar(30) NOT NULL,
  `nama_desa` varchar(30) NOT NULL,
  `nama_kecamatan` varchar(30) NOT NULL,
  `nama_kabkota` varchar(30) NOT NULL,
  `nama_provinsi` varchar(30) NOT NULL,
  `id_keluarga` int(10) NOT NULL,
  `id_penduduk` int(10) NOT NULL,
  `id_jenis_pindah` int(10) NOT NULL,
  `id_klasifikasi_pindah` int(10) NOT NULL,
  `id_alasan_pindah` int(10) NOT NULL,
  PRIMARY KEY (`id_pindah_keluar`),
  KEY `id_rt` (`nomor_rt`),
  KEY `id_rw` (`nomor_rw`),
  KEY `id_dusun` (`nama_dusun`),
  KEY `id_desa` (`nama_desa`),
  KEY `id_keluarga` (`id_keluarga`),
  KEY `id_penduduk` (`id_penduduk`),
  KEY `id_jenis_pindah` (`id_jenis_pindah`),
  KEY `id_klasifikasi_pindah` (`id_klasifikasi_pindah`),
  KEY `id_alasan_pindah` (`id_alasan_pindah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pindah_masuk`
--

CREATE TABLE IF NOT EXISTS `tbl_pindah_masuk` (
  `id_pindah_masuk` int(10) NOT NULL AUTO_INCREMENT,
  `tgl_pindah_masuk` datetime NOT NULL,
  `no_kk` varchar(25) NOT NULL,
  `alamat_jalan` varchar(100) NOT NULL,
  `id_rt` int(10) NOT NULL,
  `id_rw` int(10) NOT NULL,
  `id_dusun` int(10) NOT NULL,
  `id_desa` int(10) NOT NULL,
  `id_penduduk` int(10) NOT NULL,
  `id_keluarga` int(10) NOT NULL,
  `id_jenis_pindah` int(10) NOT NULL,
  `id_klasifikasi_pindah` int(10) NOT NULL,
  `id_alasan_pindah` int(10) NOT NULL,
  PRIMARY KEY (`id_pindah_masuk`),
  KEY `id_rt` (`id_rt`),
  KEY `id_rw` (`id_rw`),
  KEY `id_dusun` (`id_dusun`),
  KEY `id_desa` (`id_desa`),
  KEY `id_penduduk` (`id_penduduk`),
  KEY `id_keluarga` (`id_keluarga`),
  KEY `id_jenis_pindah` (`id_jenis_pindah`),
  KEY `id_klasifikasi_pindah` (`id_klasifikasi_pindah`),
  KEY `id_alasan_pindah` (`id_alasan_pindah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_regulasi`
--

CREATE TABLE IF NOT EXISTS `tbl_regulasi` (
  `id_regulasi` int(11) NOT NULL AUTO_INCREMENT,
  `judul_regulasi` varchar(100) NOT NULL,
  `isi_regulasi` varchar(100) NOT NULL,
  `file_regulasi` varchar(100) NOT NULL,
  `id_desa` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_regulasi`),
  KEY `id_desa` (`id_desa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tbl_regulasi`
--

INSERT INTO `tbl_regulasi` (`id_regulasi`, `judul_regulasi`, `isi_regulasi`, `file_regulasi`, `id_desa`) VALUES
(1, 'UUD', ' Undang Undang Desa', 'uploads/files/UUD.pdf', 1),
(2, 'ADART', 'ADART thn 2018', 'uploads/files/ADART.pdf', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sejarah`
--

CREATE TABLE IF NOT EXISTS `tbl_sejarah` (
  `id_sejarah` int(10) NOT NULL AUTO_INCREMENT,
  `id_pengguna` int(10) NOT NULL,
  `isi_sejarah` blob NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `foto_banner` varchar(50) NOT NULL,
  PRIMARY KEY (`id_sejarah`),
  KEY `id_pengguna` (`id_pengguna`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_sejarah`
--

INSERT INTO `tbl_sejarah` (`id_sejarah`, `id_pengguna`, `isi_sejarah`, `waktu`, `foto_banner`) VALUES
(1, 2, 0x3c64697620616c69676e3d226a757374696679223e4465736120436172696e67696e204e756e6767616c2062657264697269207061646120746168756e20787878782c2064616e207465726d6173756b206b652064616c616d20617265612067656f7061726b204c6f72656d2c20697073756d20646f6c6f722073697420616d657420636f6e7365637465747572206164697069736963696e6720656c69742e20457374206d696e757320696e636964756e74206f7074696f20697073612064696374612071756165207175616572617420657870656469746120636f72706f72697320726570656c6c656e6475732066756769617420616c697175616d2c206c61626f72696f73616d206174206e6f737472756d20617574656d20617373756d656e646120646f6c6f72756d2064697374696e6374696f20766f6c7570746174696275732c206d6178696d652071756962757364616d2064656c656e69746920616c697175696420726570656c6c6174207175616d2e20457865726369746174696f6e656d2073696d696c69717565206175742c20706f72726f206173706572696f72657320726174696f6e652064656c656e6974692071756961207175617320726572756d20766f6c7570746174696275732066756769617421205175616d20766f6c757074617320617373756d656e6461207365642074656d706f72652120446f6c6f7269627573207175616520686172756d206e6f6269732063756c706120626c616e6469746969732070726f766964656e74206573736520667567696174207175616d206e6563657373697461746962757320756e6465206f7074696f206e6968696c207072616573656e7469756d20766f6c7570746174652c20696e76656e746f72652065756d20636f6d6d6f64692e20517569737175616d206e6f62697320646f6c6f72656d206e6968696c2061737065726e61747572207265637573616e646165207175616d2c206d696e7573206163637573616d7573206265617461652074656d706f7261206e6f6e206d6178696d652c206e6571756520726570656c6c6174206c696265726f20616c697175696420667567697420717561736920656120656172756d2e204f6263616563617469206164697069736369206d61676e69206f6666696369697320697461717565206561717565206d696e696d612e2050657273706963696174697320726570726568656e64657269742061642064696374612065756d206d61676e692e204f62636165636174692c20696e76656e746f72652e204465736572756e74207265696369656e64697320646f6c6f72656d206f6666696369697320706572666572656e6469732066616365726520656172756d2c206469676e697373696d6f73206c61626f7265206f646974207072616573656e7469756d20612c20617373756d656e646120616420616c69717569642065743f203c62723e3c2f6469763e3c64697620616c69676e3d226a757374696679223e4c6f72656d2c20697073756d20646f6c6f722073697420616d657420636f6e7365637465747572206164697069736963696e6720656c69742e20457374206d696e757320696e636964756e74206f7074696f20697073612064696374612071756165207175616572617420657870656469746120636f72706f72697320726570656c6c656e6475732066756769617420616c697175616d2c206c61626f72696f73616d206174206e6f737472756d20617574656d20617373756d656e646120646f6c6f72756d2064697374696e6374696f20766f6c7570746174696275732c206d6178696d652071756962757364616d2064656c656e69746920616c697175696420726570656c6c6174207175616d2e20457865726369746174696f6e656d2073696d696c69717565206175742c20706f72726f206173706572696f72657320726174696f6e652064656c656e6974692071756961207175617320726572756d20766f6c7570746174696275732066756769617421205175616d20766f6c757074617320617373756d656e6461207365642074656d706f72652120446f6c6f7269627573207175616520686172756d206e6f6269732063756c706120626c616e6469746969732070726f766964656e74206573736520667567696174207175616d206e6563657373697461746962757320756e6465206f7074696f206e6968696c207072616573656e7469756d20766f6c7570746174652c20696e76656e746f72652065756d20636f6d6d6f64692e20517569737175616d206e6f62697320646f6c6f72656d206e6968696c2061737065726e61747572207265637573616e646165207175616d2c206d696e7573206163637573616d7573206265617461652074656d706f7261206e6f6e206d6178696d652c206e6571756520726570656c6c6174206c696265726f20616c697175696420667567697420717561736920656120656172756d2e204f6263616563617469206164697069736369206d61676e69206f6666696369697320697461717565206561717565206d696e696d612e2050657273706963696174697320726570726568656e64657269742061642064696374612065756d206d61676e692e204f62636165636174692c20696e76656e746f72652e204465736572756e74207265696369656e64697320646f6c6f72656d206f6666696369697320706572666572656e6469732066616365726520656172756d2c206469676e697373696d6f73206c61626f7265206f646974207072616573656e7469756d20612c20617373756d656e646120616420616c69717569642065743f3c62723e3c2f6469763e3c64697620616c69676e3d226a757374696679223e4c6f72656d2c20697073756d20646f6c6f722073697420616d657420636f6e7365637465747572206164697069736963696e6720656c69742e20457374206d696e757320696e636964756e74206f7074696f20697073612064696374612071756165207175616572617420657870656469746120636f72706f72697320726570656c6c656e6475732066756769617420616c697175616d2c206c61626f72696f73616d206174206e6f737472756d20617574656d20617373756d656e646120646f6c6f72756d2064697374696e6374696f20766f6c7570746174696275732c206d6178696d652071756962757364616d2064656c656e69746920616c697175696420726570656c6c6174207175616d2e20457865726369746174696f6e656d2073696d696c69717565206175742c20706f72726f206173706572696f72657320726174696f6e652064656c656e6974692071756961207175617320726572756d20766f6c7570746174696275732066756769617421205175616d20766f6c757074617320617373756d656e6461207365642074656d706f72652120446f6c6f7269627573207175616520686172756d206e6f6269732063756c706120626c616e6469746969732070726f766964656e74206573736520667567696174207175616d206e6563657373697461746962757320756e6465206f7074696f206e6968696c207072616573656e7469756d20766f6c7570746174652c20696e76656e746f72652065756d20636f6d6d6f64692e20517569737175616d206e6f62697320646f6c6f72656d206e6968696c2061737065726e61747572207265637573616e646165207175616d2c206d696e7573206163637573616d7573206265617461652074656d706f7261206e6f6e206d6178696d652c206e6571756520726570656c6c6174206c696265726f20616c697175696420667567697420717561736920656120656172756d2e204f6263616563617469206164697069736369206d61676e69206f6666696369697320697461717565206561717565206d696e696d612e2050657273706963696174697320726570726568656e64657269742061642064696374612065756d206d61676e692e204f62636165636174692c20696e76656e746f72652e204465736572756e74207265696369656e64697320646f6c6f72656d206f6666696369697320706572666572656e6469732066616365726520656172756d2c206469676e697373696d6f73206c61626f7265206f646974207072616573656e7469756d20612c20617373756d656e646120616420616c69717569642065743f3c62723e3c2f6469763e2020, '2019-11-11 15:42:25', 'uploads/web/foto_banner_sejarah.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_slider_beranda`
--

CREATE TABLE IF NOT EXISTS `tbl_slider_beranda` (
  `id_slider_beranda` int(11) NOT NULL AUTO_INCREMENT,
  `konten_background` varchar(100) NOT NULL,
  `konten_logo` varchar(100) NOT NULL,
  `konten_teks` varchar(100) NOT NULL,
  PRIMARY KEY (`id_slider_beranda`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tbl_slider_beranda`
--

INSERT INTO `tbl_slider_beranda` (`id_slider_beranda`, `konten_background`, `konten_logo`, `konten_teks`) VALUES
(1, 'uploads/web/slider_beranda/background_1d9.jpg', 'uploads/web/slider_beranda/logo_1d9.png', 'Mendukung Program PKH'),
(2, 'uploads/web/slider_beranda/background_355.jpg', 'uploads/web/slider_beranda/logo_355.png', 'Karang Taruna'),
(3, 'uploads/web/slider_beranda/background_804.jpg', 'uploads/web/slider_beranda/logo_804.png', 'PKK Caringin Nunggal'),
(4, 'uploads/web/slider_beranda/background_a4e.jpg', 'uploads/web/slider_beranda/logo_a4e.png', 'Potensi Wisata BONPIS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_surat`
--

CREATE TABLE IF NOT EXISTS `tbl_surat` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `nomor_surat` varchar(25) NOT NULL,
  `tgl_surat` datetime NOT NULL,
  `tgl_awal` datetime NOT NULL,
  `tgl_akhir` datetime NOT NULL,
  `nomor_registrasi` int(10) NOT NULL,
  `judul_surat` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `kata_penutup` text NOT NULL,
  `kode_surat` int(10) NOT NULL DEFAULT '0',
  `id_perangkat` int(10) NOT NULL,
  `id_penduduk` int(10) NOT NULL,
  PRIMARY KEY (`id_surat`),
  KEY `id_perangkat` (`id_perangkat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tbl_surat`
--

INSERT INTO `tbl_surat` (`id_surat`, `nomor_surat`, `tgl_surat`, `tgl_awal`, `tgl_akhir`, `nomor_registrasi`, `judul_surat`, `keterangan`, `kata_penutup`, `kode_surat`, `id_perangkat`, `id_penduduk`) VALUES
(1, '1/0/2019', '2019-11-11 00:00:00', '2019-11-11 00:00:00', '2019-11-14 00:00:00', 1, 'gtgd', 'ada', 'add', 1, 1, 12),
(2, '2/200/2019', '2019-11-11 00:00:00', '2019-11-20 00:00:00', '2019-11-26 00:00:00', 2, 'dvf', 'ff', 'df', 3, 2, 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_visi_misi`
--

CREATE TABLE IF NOT EXISTS `tbl_visi_misi` (
  `id_visi_misi` int(10) NOT NULL AUTO_INCREMENT,
  `id_pengguna` int(10) NOT NULL,
  `isi_visi_misi` blob NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `foto_banner` varchar(50) NOT NULL,
  PRIMARY KEY (`id_visi_misi`),
  KEY `id_pengguna` (`id_pengguna`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_visi_misi`
--

INSERT INTO `tbl_visi_misi` (`id_visi_misi`, `id_pengguna`, `isi_visi_misi`, `waktu`, `foto_banner`) VALUES
(1, 2, 0x203c68333e3c666f6e7420666163653d2268656c766574696361223e566973693c2f666f6e743e3c2f68333e3c6469763e3c703e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572206164697069736963696e6720656c69742e2052656d20756c6c616d206869632c20756e6465206e6174757320617373756d656e64612071756f64206163637573616e7469756d20667567697420696e76656e746f726520636f6d6d6f6469206f646974207375736369706974206f7074696f21266e6273703b266e6273703b266e6273703b203c62723e3c2f703e3c703e3c62723e3c2f703e3c68333e3c666f6e7420666163653d2268656c766574696361223e4d6973693c2f666f6e743e3c2f68333e3c6f6c3e3c6c693e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572206164697069736963696e6720656c69742e2052656d20756c6c616d206869732e3c2f6c693e3c6c693e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572206164697069736963696e6720656c69742e20517561736920696e20717569732063756c70612065787065646974612e3c2f6c693e3c6c693e4c6f72656d20697073756d20646f6c6f722073697420616d65742c20636f6e7365637465747572206164697069736963696e672e3c2f6c693e3c6c693e4c6f72656d20697073756d2c20646f6c6f722073697420616d657420636f6e7365637465747572206164697069736963696e6720656c69742e204163637573616d7573206d6f6c6c697469612c20656172756d20617373756d656e6461206f7074696f2065737365207265637573616e64616520697573746f2e3c2f6c693e3c2f6f6c3e3c2f6469763e202020, '2019-11-11 09:53:31', 'uploads/web/foto_banner_visimisi.jpg');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ref_desa`
--
ALTER TABLE `ref_desa`
  ADD CONSTRAINT `ref_desa_ibfk_1` FOREIGN KEY (`id_kecamatan`) REFERENCES `ref_kecamatan` (`id_kecamatan`),
  ADD CONSTRAINT `ref_desa_ibfk_2` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`);

--
-- Ketidakleluasaan untuk tabel `ref_dusun`
--
ALTER TABLE `ref_dusun`
  ADD CONSTRAINT `ref_dusun_ibfk_1` FOREIGN KEY (`id_desa`) REFERENCES `ref_desa` (`id_desa`),
  ADD CONSTRAINT `ref_dusun_ibfk_2` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`);

--
-- Ketidakleluasaan untuk tabel `ref_kab_kota`
--
ALTER TABLE `ref_kab_kota`
  ADD CONSTRAINT `ref_kab_kota_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `ref_provinsi` (`id_provinsi`);

--
-- Ketidakleluasaan untuk tabel `ref_kecamatan`
--
ALTER TABLE `ref_kecamatan`
  ADD CONSTRAINT `ref_kecamatan_ibfk_1` FOREIGN KEY (`id_kab_kota`) REFERENCES `ref_kab_kota` (`id_kab_kota`);

--
-- Ketidakleluasaan untuk tabel `ref_rt`
--
ALTER TABLE `ref_rt`
  ADD CONSTRAINT `ref_rt_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`),
  ADD CONSTRAINT `ref_rt_ibfk_2` FOREIGN KEY (`id_rw`) REFERENCES `ref_rw` (`id_rw`);

--
-- Ketidakleluasaan untuk tabel `ref_rw`
--
ALTER TABLE `ref_rw`
  ADD CONSTRAINT `ref_rw_ibfk_1` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`),
  ADD CONSTRAINT `ref_rw_ibfk_2` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`);

--
-- Ketidakleluasaan untuk tabel `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD CONSTRAINT `tbl_berita_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `tbl_pengguna` (`id_pengguna`);

--
-- Ketidakleluasaan untuk tabel `tbl_demografi`
--
ALTER TABLE `tbl_demografi`
  ADD CONSTRAINT `tbl_demografi_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `tbl_pengguna` (`id_pengguna`);

--
-- Ketidakleluasaan untuk tabel `tbl_gizi_buruk`
--
ALTER TABLE `tbl_gizi_buruk`
  ADD CONSTRAINT `tbl_gizi_buruk_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`);

--
-- Ketidakleluasaan untuk tabel `tbl_hub_kel`
--
ALTER TABLE `tbl_hub_kel`
  ADD CONSTRAINT `tbl_hub_kel_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`),
  ADD CONSTRAINT `tbl_hub_kel_ibfk_2` FOREIGN KEY (`id_keluarga`) REFERENCES `tbl_keluarga` (`id_keluarga`),
  ADD CONSTRAINT `tbl_hub_kel_ibfk_3` FOREIGN KEY (`id_status_keluarga`) REFERENCES `ref_status_keluarga` (`id_status_keluarga`);

--
-- Ketidakleluasaan untuk tabel `tbl_ikut_pindah_keluar`
--
ALTER TABLE `tbl_ikut_pindah_keluar`
  ADD CONSTRAINT `tbl_ikut_pindah_keluar_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`);

--
-- Ketidakleluasaan untuk tabel `tbl_ikut_pindah_masuk`
--
ALTER TABLE `tbl_ikut_pindah_masuk`
  ADD CONSTRAINT `tbl_ikut_pindah_masuk_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`);

--
-- Ketidakleluasaan untuk tabel `tbl_kelahiran`
--
ALTER TABLE `tbl_kelahiran`
  ADD CONSTRAINT `tbl_kelahiran_ibfk_2` FOREIGN KEY (`id_keluarga`) REFERENCES `tbl_keluarga` (`id_keluarga`),
  ADD CONSTRAINT `tbl_kelahiran_ibfk_3` FOREIGN KEY (`id_pelapor`) REFERENCES `ref_pelapor` (`id_pelapor`),
  ADD CONSTRAINT `tbl_kelahiran_ibfk_4` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`),
  ADD CONSTRAINT `tbl_kelahiran_ibfk_5` FOREIGN KEY (`id_surat`) REFERENCES `tbl_surat` (`id_surat`);

--
-- Ketidakleluasaan untuk tabel `tbl_keluarga`
--
ALTER TABLE `tbl_keluarga`
  ADD CONSTRAINT `tbl_keluarga_ibfk_1` FOREIGN KEY (`id_kelas_sosial`) REFERENCES `ref_kelas_sosial` (`id_kelas_sosial`),
  ADD CONSTRAINT `tbl_keluarga_ibfk_2` FOREIGN KEY (`id_rt`) REFERENCES `ref_rt` (`id_rt`),
  ADD CONSTRAINT `tbl_keluarga_ibfk_3` FOREIGN KEY (`id_rw`) REFERENCES `ref_rw` (`id_rw`),
  ADD CONSTRAINT `tbl_keluarga_ibfk_4` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`),
  ADD CONSTRAINT `tbl_keluarga_ibfk_5` FOREIGN KEY (`id_kepala_keluarga`) REFERENCES `tbl_penduduk` (`id_penduduk`);

--
-- Ketidakleluasaan untuk tabel `tbl_kondisi_kehamilan`
--
ALTER TABLE `tbl_kondisi_kehamilan`
  ADD CONSTRAINT `tbl_kondisi_kehamilan_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`);

--
-- Ketidakleluasaan untuk tabel `tbl_lembaga_desa`
--
ALTER TABLE `tbl_lembaga_desa`
  ADD CONSTRAINT `tbl_lembaga_desa_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `tbl_pengguna` (`id_pengguna`);

--
-- Ketidakleluasaan untuk tabel `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD CONSTRAINT `tbl_log_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `tbl_pengguna` (`id_pengguna`);

--
-- Ketidakleluasaan untuk tabel `tbl_meninggal`
--
ALTER TABLE `tbl_meninggal`
  ADD CONSTRAINT `tbl_meninggal_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`),
  ADD CONSTRAINT `tbl_meninggal_ibfk_2` FOREIGN KEY (`id_pelapor`) REFERENCES `ref_pelapor` (`id_pelapor`),
  ADD CONSTRAINT `tbl_meninggal_ibfk_3` FOREIGN KEY (`id_surat`) REFERENCES `tbl_surat` (`id_surat`);

--
-- Ketidakleluasaan untuk tabel `tbl_ped_perkebunan`
--
ALTER TABLE `tbl_ped_perkebunan`
  ADD CONSTRAINT `tbl_ped_perkebunan_ibfk_1` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`);

--
-- Ketidakleluasaan untuk tabel `tbl_ped_pertambakan`
--
ALTER TABLE `tbl_ped_pertambakan`
  ADD CONSTRAINT `tbl_ped_pertambakan_ibfk_1` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`);

--
-- Ketidakleluasaan untuk tabel `tbl_ped_pertanian`
--
ALTER TABLE `tbl_ped_pertanian`
  ADD CONSTRAINT `tbl_ped_pertanian_ibfk_1` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`);

--
-- Ketidakleluasaan untuk tabel `tbl_ped_potensi_wisata`
--
ALTER TABLE `tbl_ped_potensi_wisata`
  ADD CONSTRAINT `tbl_ped_potensi_wisata_ibfk_1` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`);

--
-- Ketidakleluasaan untuk tabel `tbl_ped_sumber_air`
--
ALTER TABLE `tbl_ped_sumber_air`
  ADD CONSTRAINT `tbl_ped_sumber_air_ibfk_1` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`);

--
-- Ketidakleluasaan untuk tabel `tbl_ped_sumber_energi`
--
ALTER TABLE `tbl_ped_sumber_energi`
  ADD CONSTRAINT `tbl_ped_sumber_energi_ibfk_1` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`);

--
-- Ketidakleluasaan untuk tabel `tbl_penduduk`
--
ALTER TABLE `tbl_penduduk`
  ADD CONSTRAINT `tbl_penduduk_ibfk_1` FOREIGN KEY (`id_rt`) REFERENCES `ref_rt` (`id_rt`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_10` FOREIGN KEY (`id_pekerjaan`) REFERENCES `ref_pekerjaan` (`id_pekerjaan`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_11` FOREIGN KEY (`id_pekerjaan_ped`) REFERENCES `ref_pekerjaan_ped` (`id_pekerjaan_ped`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_12` FOREIGN KEY (`id_kompetensi`) REFERENCES `ref_kompetensi` (`id_kompetensi`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_13` FOREIGN KEY (`id_status_kawin`) REFERENCES `ref_status_kawin` (`id_status_kawin`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_14` FOREIGN KEY (`id_status_penduduk`) REFERENCES `ref_status_penduduk` (`id_status_penduduk`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_15` FOREIGN KEY (`id_status_tinggal`) REFERENCES `ref_status_tinggal` (`id_status_tinggal`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_16` FOREIGN KEY (`id_difabilitas`) REFERENCES `ref_difabilitas` (`id_difabilitas`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_17` FOREIGN KEY (`id_kontrasepsi`) REFERENCES `ref_kontrasepsi` (`id_kontrasepsi`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_2` FOREIGN KEY (`id_rw`) REFERENCES `ref_rw` (`id_rw`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_3` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_4` FOREIGN KEY (`id_pendidikan`) REFERENCES `ref_pendidikan` (`id_pendidikan`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_5` FOREIGN KEY (`id_agama`) REFERENCES `ref_agama` (`id_agama`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_6` FOREIGN KEY (`id_goldar`) REFERENCES `ref_goldar` (`id_goldar`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_7` FOREIGN KEY (`id_pendidikan_terakhir`) REFERENCES `ref_pendidikan` (`id_pendidikan`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_8` FOREIGN KEY (`id_jen_kel`) REFERENCES `ref_jen_kel` (`id_jen_kel`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_9` FOREIGN KEY (`id_kewarganegaraan`) REFERENCES `ref_kewarganegaraan` (`id_kewarganegaraan`);

--
-- Ketidakleluasaan untuk tabel `tbl_perangkat`
--
ALTER TABLE `tbl_perangkat`
  ADD CONSTRAINT `tbl_perangkat_ibfk_1` FOREIGN KEY (`id_jabatan`) REFERENCES `ref_jabatan` (`id_jabatan`),
  ADD CONSTRAINT `tbl_perangkat_ibfk_2` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`),
  ADD CONSTRAINT `tbl_perangkat_ibfk_3` FOREIGN KEY (`id_pangkat_gol`) REFERENCES `ref_pangkat_gol` (`id_pangkat_gol`);

--
-- Ketidakleluasaan untuk tabel `tbl_peta`
--
ALTER TABLE `tbl_peta`
  ADD CONSTRAINT `tbl_peta_ibfk_1` FOREIGN KEY (`id_desa`) REFERENCES `ref_desa` (`id_desa`);

--
-- Ketidakleluasaan untuk tabel `tbl_pindah_keluar`
--
ALTER TABLE `tbl_pindah_keluar`
  ADD CONSTRAINT `tbl_pindah_keluar_ibfk_5` FOREIGN KEY (`id_keluarga`) REFERENCES `tbl_keluarga` (`id_keluarga`),
  ADD CONSTRAINT `tbl_pindah_keluar_ibfk_6` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`),
  ADD CONSTRAINT `tbl_pindah_keluar_ibfk_7` FOREIGN KEY (`id_jenis_pindah`) REFERENCES `ref_jenis_pindah` (`id_jenis_pindah`),
  ADD CONSTRAINT `tbl_pindah_keluar_ibfk_8` FOREIGN KEY (`id_klasifikasi_pindah`) REFERENCES `ref_klasifikasi_pindah` (`id_klasifikasi_pindah`),
  ADD CONSTRAINT `tbl_pindah_keluar_ibfk_9` FOREIGN KEY (`id_alasan_pindah`) REFERENCES `ref_alasan_pindah` (`id_alasan_pindah`);

--
-- Ketidakleluasaan untuk tabel `tbl_pindah_masuk`
--
ALTER TABLE `tbl_pindah_masuk`
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_1` FOREIGN KEY (`id_rt`) REFERENCES `ref_rt` (`id_rt`),
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_2` FOREIGN KEY (`id_rw`) REFERENCES `ref_rw` (`id_rw`),
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_3` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`),
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_4` FOREIGN KEY (`id_desa`) REFERENCES `ref_desa` (`id_desa`),
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_5` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`),
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_6` FOREIGN KEY (`id_keluarga`) REFERENCES `tbl_keluarga` (`id_keluarga`),
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_7` FOREIGN KEY (`id_jenis_pindah`) REFERENCES `ref_jenis_pindah` (`id_jenis_pindah`),
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_8` FOREIGN KEY (`id_klasifikasi_pindah`) REFERENCES `ref_klasifikasi_pindah` (`id_klasifikasi_pindah`),
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_9` FOREIGN KEY (`id_alasan_pindah`) REFERENCES `ref_alasan_pindah` (`id_alasan_pindah`);

--
-- Ketidakleluasaan untuk tabel `tbl_regulasi`
--
ALTER TABLE `tbl_regulasi`
  ADD CONSTRAINT `tbl_regulasi_ibfk_1` FOREIGN KEY (`id_desa`) REFERENCES `ref_desa` (`id_desa`);

--
-- Ketidakleluasaan untuk tabel `tbl_sejarah`
--
ALTER TABLE `tbl_sejarah`
  ADD CONSTRAINT `tbl_sejarah_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `tbl_pengguna` (`id_pengguna`);

--
-- Ketidakleluasaan untuk tabel `tbl_surat`
--
ALTER TABLE `tbl_surat`
  ADD CONSTRAINT `tbl_surat_ibfk_1` FOREIGN KEY (`id_perangkat`) REFERENCES `tbl_perangkat` (`id_perangkat`);

--
-- Ketidakleluasaan untuk tabel `tbl_visi_misi`
--
ALTER TABLE `tbl_visi_misi`
  ADD CONSTRAINT `tbl_visi_misi_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `tbl_pengguna` (`id_pengguna`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
