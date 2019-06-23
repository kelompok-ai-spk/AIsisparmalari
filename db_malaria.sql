-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jun 2019 pada 15.22
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_malaria`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id` int(5) NOT NULL,
  `G001` tinyint(1) DEFAULT NULL,
  `G002` tinyint(1) DEFAULT NULL,
  `G003` tinyint(1) DEFAULT NULL,
  `G004` tinyint(1) DEFAULT NULL,
  `G005` tinyint(1) DEFAULT NULL,
  `G006` tinyint(1) DEFAULT NULL,
  `G007` tinyint(1) DEFAULT NULL,
  `G008` tinyint(1) DEFAULT NULL,
  `G009` tinyint(1) DEFAULT NULL,
  `G010` tinyint(1) DEFAULT NULL,
  `G011` tinyint(1) DEFAULT NULL,
  `G012` tinyint(1) DEFAULT NULL,
  `G013` tinyint(1) DEFAULT NULL,
  `G014` tinyint(1) DEFAULT NULL,
  `G015` tinyint(1) DEFAULT NULL,
  `G016` tinyint(1) DEFAULT NULL,
  `G017` tinyint(1) DEFAULT NULL,
  `G018` tinyint(1) DEFAULT NULL,
  `G019` tinyint(1) DEFAULT NULL,
  `G020` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_gejala`
--

INSERT INTO `tb_gejala` (`id`, `G001`, `G002`, `G003`, `G004`, `G005`, `G006`, `G007`, `G008`, `G009`, `G010`, `G011`, `G012`, `G013`, `G014`, `G015`, `G016`, `G017`, `G018`, `G019`, `G020`) VALUES
(1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1),
(2, 1, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1),
(3, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1),
(4, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1),
(5, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0),
(6, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1),
(7, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gejala_1`
--

CREATE TABLE `tb_gejala_1` (
  `id` int(5) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `gejala` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_gejala_1`
--

INSERT INTO `tb_gejala_1` (`id`, `kode`, `gejala`) VALUES
(1, 'G001', 'Demam'),
(2, 'G002', 'Mengigil'),
(3, 'G003', 'Berkeringat \r\n'),
(4, 'G004', 'Sakit Kepala\r\n'),
(5, 'G005', 'Hilang Kesadaran /Pingsan\r\n'),
(6, 'G006', 'Anemia\r\n'),
(7, 'G007', 'Panas Iregular\r\n'),
(8, 'G008', 'parasitemia\r\n'),
(9, 'G009', 'Splenomigali\r\n'),
(10, 'G010', 'Muka merah\r\n'),
(11, 'G011', 'muntah\r\n'),
(12, 'G012', 'diare\r\n'),
(13, 'G013', 'pegal-pegal\r\n'),
(14, 'G014', 'kejang-kejang\r\n'),
(15, 'G015', 'dehidrasi\r\n'),
(16, 'G016', 'sesak nafas\r\n'),
(17, 'G017', 'mual\r\n'),
(18, 'G018', 'gagal ginjal\r\n'),
(19, 'G019', 'pendarahan\r\n'),
(20, 'G020', 'kurang nafsu makan\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penyakit`
--

CREATE TABLE `tb_penyakit` (
  `id` int(5) NOT NULL,
  `penyakit` varchar(50) DEFAULT NULL,
  `info` longtext NOT NULL,
  `solusi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_penyakit`
--

INSERT INTO `tb_penyakit` (`id`, `penyakit`, `info`, `solusi`) VALUES
(1, 'Malaria Tertiana', 'Malaria tertiana adalah salah satu dari jenis-jenis malaria yang terbilang umum dan ringan meski masih ada yang lebih ringan dari ini, yakni malaria ovale. Jenis tertiana adalah kondisi malaria yang ada hubungannya dengan parasit bernama Plasmodium vivax. Parasit inilah yang pada umumnya menyebabkan adanya infeksi pada eritrosit muda di mana diameternya juga memang lebih besar ketimbang yang normal.', '\r\nKetika sudah menempuh diagnosa, maka akan dapat ditentukan oleh dokter bahwa malaria tersebut memang jenis malaria tertiana dan pengobatan pun bisa diberikan. Ada sejumlah obat-obatan yang bakal diberikan oleh dokter kepada penderita. Obat penurun demam adalah yang paling pasti diberikan oleh dokter, sekaligus vitamin sebagai cara meningkatkan daya tahan tubuh penderita.'),
(2, 'Malaria Quartana', 'Malaria quartana merupakan salah satu jenis malaria yang disebabkan oleh adanya plasmodium malariae. Jenis malara kuartana juga bisadikatakan merupakan salah satu jenis malaria yang tingkat keparahannya bisa lebih besar dibandingkan dengan jenis malaria yang lain. Masa inkubasi yang terjadi pada malaria jneis quartana ini juga lebih lama dibandingkan dengan jenis malaria yang lain.', 'Jika anda akan menggunakan cara medis berarti anda harus melakukan pengobatan oleh dokter, biasanya dalam pemberian obat dokter akan memberikan obat yang memiliki funsii untuk membunuh semua parasit yang ada kemudian akan memberikan obat yang bisa menyembuhka infeksi yang ada. Obat-bat yang biasanya dianjurkan oleh dokter untuk pengobatan malaria khususnya malaria quartana ialah seperti  vaksin, Primakuin dll.'),
(3, 'Malaria Tropika', 'penyebab utama dari malaria jenis tropika adalah parasit yang bernama Plasmodium falciparum di mana jenis malaria inilah yang paling sering terjadi komplikasi. Seluruh bentuk eritrosit juga diketahui diserang oleh malaria tropika berbeda dari jenis malaria tertiana yang hanya menyerang eritrosit muda.', 'Kina 3×2 tablet yang perlu dikonsumsi selama 7 hari.\r\nKombinasi sulfadoksin 1000 mg bersama dengan 25 mg akan pirimetamin per tablet dengan dosis tunggal yang perlu dikonsumsi sebanyak 2-3 tablet.\r\nKombinasi tetrasiklin dan kina.\r\nJenis obat antibiotik seperti tetrasiklin selama 7-10 hari dengan dosis 4 x 250 mg per hari, serta minosiklin dengan dosis 2 x 100 mg per hari yang juga dikonsumsi seminggu.'),
(4, 'Malaria Ovale', 'malaria ovale hampir memiliki kesamaan dengan malaria jenis vivax, perbedaanya ialah pada perubahan pada eritrosit yang dihinggapi parasit mirip dengan plasmodium vivax. D', 'Minum air yang cukup, Monitoring temperature,Pemberian obat anti malaria'),
(5, 'Malaria Tropika', 'penyebab utama dari malaria jenis tropika adalah parasit yang bernama Plasmodium falciparum di mana jenis malaria inilah yang paling sering terjadi komplikasi. Seluruh bentuk eritrosit juga diketahui diserang oleh malaria tropika berbeda dari jenis malaria tertiana yang hanya menyerang eritrosit muda.', 'Ada berbagai kemungkinan bahan-bahan atau tanaman alami herbal yang bisa membantu untuk mengobati malaria tropika maupun jenis malaria akibat parasit lainnya. seperti tanaman johar, sambiloto, daun pare, temulawak, meniran, brotowali dan anuma.'),
(6, 'Malaria Tropika', 'malaria tropika adalah 1 dari 4 jenis yang memang dianggap paling ganas dan mengerikan ketika bicara soal dampak, gejala dan komplikasinya. dikenal sebagai bentuk malaria paling berat sehingga memang cukup menakutkan. Apabila sedikit saja terlambat pengobatannya, penderita bakal mengalami risiko besar. Saat penderita penyakit malaria tropika ini tak mendapatkan pertolongan sesegera mungkin, maka akibatnya adalah kematian hanya dalam beberapa hari saja.', 'Penderita malaria tropika tak hanya bisa mengandalkan resep dokter atau obat-obatan kimia saja. Ada berbagai kemungkinan bahan-bahan atau tanaman alami herbal yang bisa membantu untuk mengobati malaria tropika maupun jenis malaria akibat parasit lainnya. Tanaman johar pasti sudah tak asing bagi sebagian dari kita dan memang karena telah melalui penelitian, jadi sudah terbukti bahwa tanaman ini dapat secara efektif dijadikan obat malaria.  Daun tanaman sambiloto adalah jenis daun yang banyak digunakan sebagai obat bagi berbagai masalah kesehatan dan hal ini juga termasuk dalam mengobati malaria tropika serta malaria jenis lainnya. Kita semua tahu bahwa temulawak adalah jenis rempah yang banyak dimanfaatkan sebagai obat bagi yang punya penyakit maag atau asam lambung. Selain itu, daun pare yang juga sudah sangat familiar bagi kita pun bisa menjadi bahan pengobatan tradisional akan penyakit malaria'),
(7, 'Malaria Tropika', 'malaria tropika adalah 1 dari 4 jenis yang memang dianggap paling ganas dan mengerikan ketika bicara soal dampak, gejala dan komplikasinya. dikenal sebagai bentuk malaria paling berat sehingga memang cukup menakutkan. Apabila sedikit saja terlambat pengobatannya, penderita bakal mengalami risiko besar. Saat penderita penyakit malaria tropika ini tak mendapatkan pertolongan sesegera mungkin, maka akibatnya adalah kematian hanya dalam beberapa hari saja.', 'Tanaman lainnya yang bisa Anda pakai adalah daun meniran di mana daun ini memang sudah sangat terkenal mampu mengobati beragam gangguan kesehatan. Tanaman herbal lainnya yang tak kalah efektif sebagai obat malaria adalah brotowali di mana batangnya memiliki penuh benjolan dan berwarna hijau ditambah pula banyak kandungan airnya. Tanaman Anuma lainnya yang layak dijadikan obat adalah anuma di mana daunnya berbentuk oval dengan panjang kira-kira 10 hingga 18 sentimeter. Pada tanaman ini diketahui mengandung banyak kandungan baik, seperti minyak atsiri, polifenol, flavonoida, dan juga saponin.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_gejala_1`
--
ALTER TABLE `tb_gejala_1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_gejala_1`
--
ALTER TABLE `tb_gejala_1`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_penyakit`
--
ALTER TABLE `tb_penyakit`
  ADD CONSTRAINT `tb_penyakit_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_gejala` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
