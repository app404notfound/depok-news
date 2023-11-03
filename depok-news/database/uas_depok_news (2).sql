-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Bulan Mei 2020 pada 15.41
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
-- Database: `uas_depok_news`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama_lengkap`, `email`, `password`) VALUES
(1, 'Administrator', 'adam@upj.ac.id', 'adam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `sumber` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `pengirim` varchar(128) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `id_kategori`, `judul`, `isi`, `sumber`, `gambar`, `pengirim`, `tanggal`, `status`) VALUES
(2, 2, 'Sejarah kota depok', 'Saat ini orang lebih mengenal kota Depok sebagai kota pelajar, khususnya dengan adanya kampus Universitas Indonesia (UI) dan beberapa kampus lainnya. Kawasan Margonda adalah kawasan yang paling hidup dan hampir selalu macet, karena banyak mall berdiri disana. Kawasan ini oleh warga Depok sering disebut sebagai kawasan Depok Baru.\r\n<br><br>\r\n<b>Sejarah Kota Depok</b>\r\n<br><br>\r\nWarga Depok mengenal sebuah kawasan yang dikenal sebagai Depok Lama. Kawasan inilah yang merupakan asal muasal kota Depok. Menurut sejarahnya, asal kata Depok berasal dari kata padepokan, karena dulu disana banyak tempat bersemedi. Namun utak atik gatuk ada yang menyebutkan bahwa asal nama Depok berasal dari singkatan bahasa Belanda \"De Eerste Protestantse Organisatie van Kristenen\" yang artinya jemaat Kristen yang pertama.\r\n<br><br>\r\nKota Depok menurut sejarahnya berawal dari Cornelis Chastelein yang mendatangkan \"budak\" dari luar Jawa (Kalimantan, Sulawesi, Timor dan Maluku). Karena Cornelis Chastelein anti perbudakan, maka para penggarap tanah pertanian ini tidak disebut \"budak\" tetapi dianggap keluarga dan membentuk 12 marga.\r\n<br><br>\r\nKe 12 marga ini yang menjadi cikal bakal penduduk kota Depok, dan menjadi warga eksklusif karena dibedakan dengan pendudukan lokal. Hal ini karena mereka bisa berbahasa Belanda, hidup dengan gaya Eropa baik busana maupun budayanya, anak-anak mendapat pendidikan dan sekolah bersepatu, sementara anak-anak penduduk lokal bertelanjang kaki. Sekolah di Depok tempo dulu yang menjadi saksi sejarah adalah Europeesch Lagere School (kini SDN Pancoran Mas).\r\n<br><br>\r\nKesenjangan ini yang akhirnya memicu pengusiran oleh warga lokal di era kemedekaan, karena mereka dianggap antek penjajah, sehingga kini hanya tersisa sedikit sekali keturunan 12 marga tersebut.\r\n<br><br>\r\nTanggal wafat Cornelis 28 Juni 1714, kini tanggal 28 Juni ditetapkan sebagai Hari Depok.', 'https://www.kompasiana.com/sutiono/583cdeb8cd9273270ff15b11/jelajah-depok-mengenal-asal-usul-kota-depok', 'maxresdefault.jpg', 'Depok News', '2020-03-19', 'aktif'),
(3, 3, 'Masjid Kubah Emas Depok', '                                                                                                                                                                                                                                                                                                Seperti yang telah diketahui Masjid Dian Al Mahri ini termasuk dalam masjid megah. Bahkan Masjid Kubah Emas menjadi salah satu ikon Kota Depok, Jawa Barat. Masjid yang dibangun di atas lahan seluas 70 hektar ini memiliki luas bangunan sebesar 8.000 meter persegi.\r\n<br><br>\r\nMulai didirikan pada April 1999, masjid ini memang terkenal karena dihiasi oleh kubah berlapis emas. Tak tanggung-tanggung 5 kubah yang ada pada masjid ini dilapisi oleh emas 22 karat. Baik itu pada kubah utama dan juga pada kubah kecil di sisi-sisinya. Oleh karena itu, masjid ini pun menjadi salah satu daya tarik wisatawan yang berkunjung ke Kota Depok.\r\n<br><br>\r\nMasjid berdesain gaya Timur Tengah ini juga dibangun dengan bahan material terbaik. Selain itu, interior masjid ini pun cukup mewah dengan lampu gantung kristal sebagai hiasan serta lantai dan tiang kolom yang dilapisi oleh marmer dan juga granit asal Italia.\r\n<br><br>\r\nDilansir Liputan6.com dari berbagai sumber, Jumat (29/3/2019), megahnya Masjid Kubah Emas ini pun tak perlu diragukan lagi. Bukan hanya desain masjid dan juga interiornya saja yang menarik. Namun bagian luarnya atau lahan parkir pun cukup luas.\r\n<br><br>\r\nBerikut ini potret megahnya Masjid Kubah Emas yang bisa kamu kunjungi untuk berwisata religi yang sudah dikumpulkan Liputan6.com, Jumat (29/3/2019).                                                                                                                                                                                                                                                 ', 'https://hot.liputan6.com/read/3928762/5-potret-megahnya-masjid-kubah-emas-depok-yang-jadi-obyek-wisata', 'masjid kubah mas.jpg', 'Depok News', '2020-03-04', 'aktif'),
(4, 2, 'Sejarah Setu Sawangan', 'Di balik suasana yang tenang, adem, dan indah, setu \"Tujuh Muara-Sawangan\" ternyata menyimpan banyak kisah menarik. Termasuk ihwal konflik para pembesar untuk menguasai kawasan ini. Berikut penuturan salah satu warga lokal, diambil dari blog www.gangjambu.blogspot.com:\r\n<br><br>\r\n\"Itu tanah pak jendral, luas benner..ampe ujung setu (danau)! dalemnya ada peternakan kuda, kebonnya gede bener. Kalau malam pan saya kagak berani lewat situ.\r\n<br><br>\r\nGelap...ihhh serremmm\".\r\n<br><br>\r\n\"Belakang sono pan dulunya mau buat sutet, tapi ada tanah pak jendral tuh..., jadi\r\nkagak jadi\".\r\n<br><br>\r\n\"Kuda pak jendral udah pada kosong sekarang, dulu ratusan, harga se-ekornya jutaan. Kalau sakit atau pincang, ditembak dan dikubur gitu aja\".\r\n<br><br>\r\nBegitulah kira-kira mpok tukang sayur, bang mandor atau cerita penjaga kebun para tetangga kami saat mampir kerumah tentang misteri dibalik benteng tinggi hektaran tanah di gang jambu. Dulu semua serba misteri, tetapi melalui satelit kami bisa mengintip. Di sekitar gang jambu ada tanah maha luas (mungkin panjang 2 KM lebar 1 KM untuk satu spot) milik malaikat para \"jendral\", tidak tahu siapa jendral itu, konon sudah uzur tidak punya anak. entah jenderal beneran, atau sekedar birokrat yang nakut-nakutin warga dengan kata jendral yang bikin bergidik kalau mau ngapa-ngapain. Yang jelas tanah pak jendral menjadi pagar bibir danau sisi barat daya. Untungnya gang jambu bertahan punya jalan kampung untuk tetap bisa akses ke danau dari beberapa sisi.\r\n<br><br>\r\nDiseberang jalan gang jambu (baru tahu dari satelit), penuh dengan tanah-tanah luas, dan baru nngggehh bahwa tetangga sering bilang ada tanah menteri untuk jualan tanaman (bisnis nursery), atau tanah konglomerat buat bisnis plesiran. Yah...persis sebrang gang jambu adalah pemancingan permata buana, lengkap dengan kolam renang, cottage dan restoran. Tapi rumah kami masuk gang, bertetangga dengan komunitas nano-nano!.\r\n<br><br>\r\nKonglomerat memagar danau rakyat\r\n<br><br>\r\nMasih ingat awal kami beli tanah se-uplik di gang jambu th 93-an, kami sering dengar cerita konflik serius warga sekitar danau Bojongsari dekat rumah kami dengan pemilik Telaga Golf beberapa tahun lalu. Tahun 1995 saat kami pindah kesitu kelihatannya agak \"mereda\". Pemilik telaga Golf rajin undang artis dari Titi DJ, Koesploes, Saski-geofani, dll untuk meluluhkan hati warga dengan hiburan gratis. Telaga golf sekarang menjadi megah, indah dan pasti menyimpan marah korban yang susah punah. Pernah kunjungi Aquatic fantasy? disitulah tempatnya. Klik: http://www.telagagolf.com/. Lokasi ini diseberang danau sisi gang jambu dan 1,5 km dari rumah kami. Kebayang kalau kami sudah ada di situ pasti ikut seru.\r\n<br><br>\r\nIbaratnya danau adalah gambar orang/monster berdiri membelakang (biar lebih jelas, klik peta dari satelit diatas foto) maka telaga golf mengelilingi punggung hingga sisi luar kaki kanan danau ini. Lalu sisi selangkang, mengitari sisi luar kaki kiri hingga ketiak lebar dan sisi luar tangan kanan adalah milik Bakri group dengan Sawangan golf, yang juga menghamparkan bisnisnya, lengkap dengan cottage, area golf maha luas, 2 kolam renang untuk standard atlet nasional. Terbuka untuk umum...Berputar ke arah punggung tangan adalah milik diklat P&K. Selebihnya adalah milik para jendral-jendral yang tak bernama, atau milik orang Jepang, atau milik orang Jakarta. Oh ya, Oppie Andaresta artis penyanyi juga tinggal ditepi danau ujung jalan gang jambu.\r\n<br><br>\r\nKenapa telaga Bojongsari menjadi rebutan?? rupanya telaga ini paling luas se Depok (kalau diukur via satelit kira-kira sekitar 850X1100 m2). Suasananya masih hijau, rakyat/komunitas sekitar situ rata-rata masyarakat betawi, pendidikan rendah yang dipikir asik jadi sasaran empuk karena minim resistensi. Tetapi mungkin pemerintah malu setelah konflik dengan Telaga golf. Makanya dinas pariwisata memberikan secuil sisi ketiak kanan danau untuk arena hiburan rakyat dan sisi-sisi beberapa tepi pundak dan leher danau dibuat jogging track. Tiap minggu ada dangdutan, warung apung dan buat mojok pasangan-pasangan juga.\r\n<br><br>\r\nKami rajin jalan pagi sekitar danau, menikmati ikan asap uda, cari ranting atau kembang kering juga menikmati dangdut sambil pesan ikan bakar di saung. \"maju! maju gih, yuk nyanyi kepanggung\" begitu kata ayah ngajak atau ndorong ibu nyanyi di tengah hiburan kampung pinggir danau. Vikra Vinda langsung marah \"norak, norak, pulang nih kita\". he..he.. ya..beginilah kami para rakyat menikmati danau kami sebelum dipagar para konglomerat. Kita hidup bersama orang susah tapi dikelilingi fasilitas megah. Kata ayah, kita tinggal di kampung, tapi fasilitas real estate!.\r\n<br><br>\r\nBeginilah secuil cerita socio-demografis kami dan sekitar rumah kami.', 'http://tujuhmuara.blogspot.com/', 'maxresdefault (1).jpg', 'Depok News', '2020-03-13', 'aktif'),
(5, 4, 'Bawa Sabu-Ganja Pakai Motor, Kurir Narkoba Dibekuk di Depok', 'Depok - Badan Narkotika Nasional (BNN) Jabar meringkus seorang kurir narkotika. Pria tersebut ditangkap saat sedang membawa barang bukti narkoba.\r\nPengungkapan itu dilakukan oleh tim gabungan BNN Jabar dan Direktorat Tindak Pidana Bareskrim Mabes Polri. Tersangka berinisial U (35) ditangkap di kawasan Pancoran Mas, Depok, Jabar pada Senin (16/3) lalu.\r\n<br><br>\r\n\"Tersangka ini bertindak sebagai kurir,\" ucap Kepala BNN Jabar Brigjen Sufyan Syarif dalam rilis yang diterima detikcom, Kamis (19/3/2020).\r\n<br><br>\r\nSufyan mengatakan U ditangkap saat tengah membawa narkoba. Menurut Sufyan, U mengedarkan barang haram tersebut dengan modus pengiriman paket.\r\n<br><br>\r\nSufyan mengatakan tersangka ditangkap saat tengah mengendarai sepeda motor. U menggunakan sepeda motor dengan membawa kardus berisi air mineral.\r\n<br><br>\r\nSaat ditangkap, petugas lantas memeriksa isi dari kardus air mineral yang di atasnya tertulis alamat tujuan pengiriman. Setelah dibuka, didapat kardus itu berisi satu kilogram sabu-sabu dan 10 kilogram ganja kering.\r\n<br><br>\r\n\"Dia mendapatkan upah dari tugasnya tersebut. Penerima peket dan alamat tujuan sedang kita kembangkan,\" katanya.\r\n<br><br>\r\nProses penyidikan kasus ini ditangani oleh Direktorat Tindak Pidana Bareskrim Polri. Tersangka dan juga barang bukti sudah dibawa ke Mabes Polri.\r\n<br><br>\r\n\"Penyidikan dilakukan oleh tim Mabes Polri. Kita (BNN) fokus pada pengembangan sindikat ini,\" tuturnya.', 'https://news.detik.com/berita-jawa-barat/d-4946291/bawa-sabu-ganja-pakai-motor-kurir-narkoba-dibekuk-di-depok?_ga=2.19719544.1186283589.1584627452-1379800028.1584627452', '1271923e-fc5e-42c0-8a0d-86dc72c8753f_169.jpg', 'Depok News', '2020-03-18', 'tidak aktif'),
(6, 4, 'Kasus Corona Di Depok Bertambah', 'DepokNewsâ€“Pembatasan Sosial Berskala Besar (PSBB) resmi diperpanjang oleh pemerintah Kota Depok mulai tanggal 13-26 Mei 2020.\r\n\r\nJuru bicara (Jubir) Gugus Tugas Percepatan Penanganan Covid-19 Kota Depok, Dadang Wihana mengatakan Perpanjang PSBB tersebut setelah melakukan rapat dengan Forkompimda dan Gugus Tugas.\r\n\r\nâ€œHari ini Walikota Depok, FORKOPIMDA dan Gugus Tugas Percepatan Penanganan COVID-\r\n19 telah melakukan rapat evaluasi PSBB II, dan telah menyepakati untuk perpanjangan PSBB II,â€ kata Dadang. Senin (11/5/2020).\r\n\r\nTerkait perpanjangan PSBB tahap II, Walikota Depok telah melayangkan surat yang ditujukan kepada Gubernur Jawa Barat, Ridwan Kamil.\r\n\r\nâ€œSemoga dalam perpanjangan PSBB nanti, kita tetap konsisten dalam melaksanakan protokol pemerintah dan pengaturan PSBB, untuk kebaikan semua,â€ katanya.\r\n\r\nDitambahkan Dadang perpanjangan PSBB dilakukan karena masih adanya penambahan kasus dalam setiap harinya yang disebabkan oleh import case dan transmisi lokal, serta masih tingginya pergerakan orang.', 'Depok News', 'WhatsApp Image 2020-04-30 at 04.57.34.jpeg', 'Depok News', '2020-05-13', 'tidak aktif'),
(8, 7, 'Lagi Mancing Warga Beji Depok Ini Temukan Mayat', 'DepokNewsâ€“Warga bantaran Kali Ciliwung di Jalan Karet RT.03/19, Kelurahan Kemirimuka, Kecamatan Beji, Kota Depok, Rabu (13/5) siang, digemparkan dengan temuan sesosok mayat laki-laki mengambang di aliran Kali Ciliwung.\r\n\r\nBerdasarkan informasi berhasil dihimpun pertama kali mayat laki-laki sudah membusuk ditemukan oleh seorang warga yang tengah mancing mencium bau tidak sedap di sekitar pinggiran kali.\r\n\r\nSetelah ditelusuri ditemukan jasad korban dalam keadaan posisi badan terlentang.\r\n\r\nâ€œBetul ada temuan mayat berjenis kelamin laki-laki. Petugas masih mencoba melakukan evakuasi karena berada di bibir pinggir kali tebing yang curam,â€ujar anggota Bhabinkamtibmas Kelurahan Kemiri Muka, Aiptu Rojuddin.\r\n\r\nMenurut Aiptu Rojuddin, ciri-ciri korban mengenakan kaos lengan panjang corak warna biru dan celana pendek hitam.\r\n\r\nâ€œBelum diketahui penyebab kematian, diperkirakan keadaan jasad mengambang sudah lebih dari 3 hari lantaran wajah sudah rusak dan badan membengkak mengeluarkan bau tidak sedap.', 'Depok News', 'mayat.jpg', 'Depok News', '2020-05-15', 'tidak aktif'),
(9, 8, 'Lagi Mancing Warga Beji Depok Ini Temukan Mayat', 'DepokNewsâ€“Warga bantaran Kali Ciliwung di Jalan Karet RT.03/19, Kelurahan Kemirimuka, Kecamatan Beji, Kota Depok, Rabu (13/5) siang, digemparkan dengan temuan sesosok mayat laki-laki mengambang di aliran Kali Ciliwung.\r\n\r\nBerdasarkan informasi berhasil dihimpun pertama kali mayat laki-laki sudah membusuk ditemukan oleh seorang warga yang tengah mancing mencium bau tidak sedap di sekitar pinggiran kali.\r\n\r\nSetelah ditelusuri ditemukan jasad korban dalam keadaan posisi badan terlentang.\r\n\r\nâ€œBetul ada temuan mayat berjenis kelamin laki-laki. Petugas masih mencoba melakukan evakuasi karena berada di bibir pinggir kali tebing yang curam,â€ujar anggota Bhabinkamtibmas Kelurahan Kemiri Muka, Aiptu Rojuddin.\r\n\r\nMenurut Aiptu Rojuddin, ciri-ciri korban mengenakan kaos lengan panjang corak warna biru dan celana pendek hitam.\r\n\r\nâ€œBelum diketahui penyebab kematian, diperkirakan keadaan jasad mengambang sudah lebih dari 3 hari lantaran wajah sudah rusak dan badan membengkak mengeluarkan bau tidak sedap.', 'Depok News', 'mayat.jpg', 'Depok News', '2020-05-15', 'tidak aktif'),
(10, 6, 'Lagi Mancing Warga Beji Depok Ini Temukan Mayat', 'asdasd', 'Depok News', 'sawangan1.jpg', 'Depok News', '2020-05-16', 'tidak aktif'),
(11, 6, 'Bocoran Terbaru Spesifikasi iPhone 12', 'Depok, Depok News -- Penggemar Apple atau fanboy menantikan peluncuran iPhone 12 di akhir 2020. Peluncuran iPhone 12 ini menorehkan sejarah pertama kalinya Apple meluncurkan dua ponsel dalam satu tahun setelah meluncurkan iPhone SE pada pertengahan April lalu.\r\n\r\nCNNIndonesia.com akan merangkum bocoran-bocoran fitur, spesifikasi, hingga harga iPhone 12. Bocoran pertama adalah iPhone 12 akan memiliki empat varian, yaitu dua varian iPhone 12 dan dua varian iPhone 12 Pro.\r\n\r\niPhone 12\r\niPhone 12 dibekali dengan layar Super Retina LED 5,4 inci dengan RAM 4GB dengan kombinasi pilihan ROM 128GB dan  256GB.\r\nBerdasarkan bocoran, iPhone 12 dengan penyimpanan internal 128 GB akan dibanderol dengan harga US$649 atau sekitar Rp9,7 juta. Sementara iPhone 12 dengan penyimpanan internal 256 GB akan dibanderol dengan harga US$749 atau sekitar Rp11,2 juta.\r\nDilansir dari Live Mint, ponsel akan dilapisi dengan aluminium, cipset Bionic A14, 5G dan dual kamera. \r\n\r\niPhone 12 Max\r\nVarian kedua, yakni iPhone 12 Max memiliki spesifikasi yang identik dengan iPhone 12. Perbedaan terletak pada ukuran layar, iPhone 12 Max memiliki layar 6,1 inci.\r\nOpsi penyimpanan iPhone 12 Max juga sama dengan iPhone 12. ROM 128GB dibanderol dengan harga US$749 atau sekitar Rp11,2 juta dan ROM 256GB dibanderol US$849 atau sekitar Rp12,7 juta.\r\n\r\nPhone 12 Pro\r\n\r\niPhone 12 Pro akan dibekali dengan layar Super Retina XDR 6,1 inci dengan ProMotion. Layar akan menampilkan kedalaman warna 10 bit.\r\niPhone 12 Pro memilki RAM 6GB yang lebih besar dari iPhone 12. Apple menawarkan tiga pilihan ROM untuk iPhone 12.\r\n\r\nROM 128GB dibanderol dengan harga US$999 atau sekitar Rp14,9 juta. ROM 256GB dengan harga US$1.099 atau sekitar Rp16,4 juta, terakhir adalah ROM 512GB yang dibanderol US$1.299 atau sekitar Rp19,4 juta.\r\nBodi iPhone 12 Pro akan dilapisi dengan bahan stainless steel. Cipsetnya juga menggunakan Bionic A14, mendukung jaringan 5G dan dibekali dengan tiga', 'Depok News', 'iphone.jpg', 'Depok News', '2020-05-16', 'aktif'),
(12, 7, 'Kondisi Ekonomi RI di Mata Pengusaha: Sangat Berat!', 'Jakarta - Ketua Umum Kamar Dagang dan Industri (Kadin) Indonesia Rosan Roeslani menilai ekonomi Indonesia saat saat masuk dalam kondisi sangat berat. Kondisi yang sangat berat ini diperkuat dengan jumlah pekerja yang dirumahkan maupun kena PHK mencapai jutaan orang.\r\n\r\n\"Kalau dari Kemenkeu apabila yang dirumahkan sudah lebih dari 5,2 juta orang, ekonomi kita sudah sangat berat. Menurut Kemenkeu juga pertumbuhan ekonomi kita minus 0,,4%,\" kata Rosan dalam diskusi virtual, Sabtu (16/5/2020).\r\n\r\nSelain itu, Rosan mengatakan, pada kuartal I 2020 pertumbuhan ekonomi Indonesia tercatat 2,97%. Sebuah angka yang membuat kaget banyak orang.\r\n\r\nPasalnya, beberapa hari sebelumnya pemerintah sempat merilis angka proyeksi ekonomi yakni di level 4,5%-4,7% namun jauh berbeda dengan angka realisasi.\r\nBaca juga: Pesan Pengusaha: Jangan Sampai Hungry Man Jadi Angry Man!\r\n\r\nRosan menyebut pada kuartal II 2020 Kadin memproyeksi ekonomi nasional akan lebih berat dibanding kuartal I 2020. Ekonomi Indonesia akan mengalami kontraksi 3-5%.\r\n\r\n\"Angka dari kami kuartal II ini minus 3-5%, karena pertumbuhan ekonomi kita didominasi oleh konsumsi domestik sekitar 57%, investasi 32%, belanja pemerintah 7-8% dan sisanya ekspor impor. Sekarang yang terganggu itu konsumsi domestiknya,\" ujar dia.\r\n\r\nMenurut Rosan, padahal terganggunya konsumsi terjadi pada Maret di 2 minggu terakhir. Namun ini berdampak dahsyat pada konsumsi masyarakat dan menyebabkan perekonomian turun.\r\n\r\n\"Kita saat ini memang masih dalam periode ketidakpastian dan kita belum tahu kapan secara pasti ini akan berakhir. Menurut WHO kita masih harus berdampingan dengan virus sampai vaksin ditemukan,\" ujarnya.\r\n', 'https://finance.detik.com/berita-ekonomi-bisnis/d-5017632/kondisi-ekonomi-ri-di-mata-pengusaha-sangat-berat?_ga=2.116367302.1578758228.1589636129-1183932583.1589010700', 'Corona.jpeg', 'Depok News', '2020-05-16', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `tema`, `status`) VALUES
(2, 'Sejarah', 'aktif'),
(3, 'Wisata', 'aktif'),
(4, 'Campur', 'tidak aktif'),
(5, 'Mistis', 'tidak aktif'),
(6, 'Teknologi', 'aktif'),
(7, 'Populer', 'aktif'),
(8, 'HOME', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
