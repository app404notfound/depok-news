-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Nov 2023 pada 10.11
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_depok_news`
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
(2, 2, 'Sejarah kota depok', 'Saat ini orang lebih mengenal kota Depok sebagai kota pelajar, khususnya dengan adanya kampus Universitas Indonesia (UI) dan beberapa kampus lainnya. Kawasan Margonda adalah kawasan yang paling hidup dan hampir selalu macet, karena banyak mall berdiri disana. Kawasan ini oleh warga Depok sering disebut sebagai kawasan Depok Baru.\r\n<br><br>\r\n<b>Sejarah Kota Depok</b>\r\n<br><br>\r\nWarga Depok mengenal sebuah kawasan yang dikenal sebagai Depok Lama. Kawasan inilah yang merupakan asal muasal kota Depok. Menurut sejarahnya, asal kata Depok berasal dari kata padepokan, karena dulu disana banyak tempat bersemedi. Namun utak atik gatuk ada yang menyebutkan bahwa asal nama Depok berasal dari singkatan bahasa Belanda \"De Eerste Protestantse Organisatie van Kristenen\" yang artinya jemaat Kristen yang pertama.\r\n<br><br>\r\nKota Depok menurut sejarahnya berawal dari Cornelis Chastelein yang mendatangkan \"budak\" dari luar Jawa (Kalimantan, Sulawesi, Timor dan Maluku). Karena Cornelis Chastelein anti perbudakan, maka para penggarap tanah pertanian ini tidak disebut \"budak\" tetapi dianggap keluarga dan membentuk 12 marga.\r\n<br><br>\r\nKe 12 marga ini yang menjadi cikal bakal penduduk kota Depok, dan menjadi warga eksklusif karena dibedakan dengan pendudukan lokal. Hal ini karena mereka bisa berbahasa Belanda, hidup dengan gaya Eropa baik busana maupun budayanya, anak-anak mendapat pendidikan dan sekolah bersepatu, sementara anak-anak penduduk lokal bertelanjang kaki. Sekolah di Depok tempo dulu yang menjadi saksi sejarah adalah Europeesch Lagere School (kini SDN Pancoran Mas).\r\n<br><br>\r\nKesenjangan ini yang akhirnya memicu pengusiran oleh warga lokal di era kemedekaan, karena mereka dianggap antek penjajah, sehingga kini hanya tersisa sedikit sekali keturunan 12 marga tersebut.\r\n<br><br>\r\nTanggal wafat Cornelis 28 Juni 1714, kini tanggal 28 Juni ditetapkan sebagai Hari Depok.', 'https://www.kompasiana.com/sutiono/583cdeb8cd9273270ff15b11/jelajah-depok-mengenal-asal-usul-kota-depok', 'maxresdefault.jpg', '', '2020-03-19', 'aktif'),
(3, 3, 'Masjid Kubah Emas Depok', 'Seperti yang telah diketahui Masjid Dian Al Mahri ini termasuk dalam masjid megah. Bahkan Masjid Kubah Emas menjadi salah satu ikon Kota Depok, Jawa Barat. Masjid yang dibangun di atas lahan seluas 70 hektar ini memiliki luas bangunan sebesar 8.000 meter persegi.\r\n<br><br>\r\nMulai didirikan pada April 1999, masjid ini memang terkenal karena dihiasi oleh kubah berlapis emas. Tak tanggung-tanggung 5 kubah yang ada pada masjid ini dilapisi oleh emas 22 karat. Baik itu pada kubah utama dan juga pada kubah kecil di sisi-sisinya. Oleh karena itu, masjid ini pun menjadi salah satu daya tarik wisatawan yang berkunjung ke Kota Depok.\r\n<br><br>\r\nMasjid berdesain gaya Timur Tengah ini juga dibangun dengan bahan material terbaik. Selain itu, interior masjid ini pun cukup mewah dengan lampu gantung kristal sebagai hiasan serta lantai dan tiang kolom yang dilapisi oleh marmer dan juga granit asal Italia.\r\n<br><br>\r\nDilansir Liputan6.com dari berbagai sumber, Jumat (29/3/2019), megahnya Masjid Kubah Emas ini pun tak perlu diragukan lagi. Bukan hanya desain masjid dan juga interiornya saja yang menarik. Namun bagian luarnya atau lahan parkir pun cukup luas.\r\n<br><br>\r\nBerikut ini potret megahnya Masjid Kubah Emas yang bisa kamu kunjungi untuk berwisata religi yang sudah dikumpulkan Liputan6.com, Jumat (29/3/2019). ', 'https://hot.liputan6.com/read/3928762/5-potret-megahnya-masjid-kubah-emas-depok-yang-jadi-obyek-wisata', 'Tempat-Wisata-Religi-Masjid-kubah-emas-di-Depok-980x400.jpg', '', '2020-03-04', 'aktif'),
(4, 2, 'Sejarah Setu Sawangan', 'Di balik suasana yang tenang, adem, dan indah, setu \"Tujuh Muara-Sawangan\" ternyata menyimpan banyak kisah menarik. Termasuk ihwal konflik para pembesar untuk menguasai kawasan ini. Berikut penuturan salah satu warga lokal, diambil dari blog www.gangjambu.blogspot.com:\r\n<br><br>\r\n\"Itu tanah pak jendral, luas benner..ampe ujung setu (danau)! dalemnya ada peternakan kuda, kebonnya gede bener. Kalau malam pan saya kagak berani lewat situ.\r\n<br><br>\r\nGelap...ihhh serremmm\".\r\n<br><br>\r\n\"Belakang sono pan dulunya mau buat sutet, tapi ada tanah pak jendral tuh..., jadi\r\nkagak jadi\".\r\n<br><br>\r\n\"Kuda pak jendral udah pada kosong sekarang, dulu ratusan, harga se-ekornya jutaan. Kalau sakit atau pincang, ditembak dan dikubur gitu aja\".\r\n<br><br>\r\nBegitulah kira-kira mpok tukang sayur, bang mandor atau cerita penjaga kebun para tetangga kami saat mampir kerumah tentang misteri dibalik benteng tinggi hektaran tanah di gang jambu. Dulu semua serba misteri, tetapi melalui satelit kami bisa mengintip. Di sekitar gang jambu ada tanah maha luas (mungkin panjang 2 KM lebar 1 KM untuk satu spot) milik malaikat para \"jendral\", tidak tahu siapa jendral itu, konon sudah uzur tidak punya anak. entah jenderal beneran, atau sekedar birokrat yang nakut-nakutin warga dengan kata jendral yang bikin bergidik kalau mau ngapa-ngapain. Yang jelas tanah pak jendral menjadi pagar bibir danau sisi barat daya. Untungnya gang jambu bertahan punya jalan kampung untuk tetap bisa akses ke danau dari beberapa sisi.\r\n<br><br>\r\nDiseberang jalan gang jambu (baru tahu dari satelit), penuh dengan tanah-tanah luas, dan baru nngggehh bahwa tetangga sering bilang ada tanah menteri untuk jualan tanaman (bisnis nursery), atau tanah konglomerat buat bisnis plesiran. Yah...persis sebrang gang jambu adalah pemancingan permata buana, lengkap dengan kolam renang, cottage dan restoran. Tapi rumah kami masuk gang, bertetangga dengan komunitas nano-nano!.\r\n<br><br>\r\nKonglomerat memagar danau rakyat\r\n<br><br>\r\nMasih ingat awal kami beli tanah se-uplik di gang jambu th 93-an, kami sering dengar cerita konflik serius warga sekitar danau Bojongsari dekat rumah kami dengan pemilik Telaga Golf beberapa tahun lalu. Tahun 1995 saat kami pindah kesitu kelihatannya agak \"mereda\". Pemilik telaga Golf rajin undang artis dari Titi DJ, Koesploes, Saski-geofani, dll untuk meluluhkan hati warga dengan hiburan gratis. Telaga golf sekarang menjadi megah, indah dan pasti menyimpan marah korban yang susah punah. Pernah kunjungi Aquatic fantasy? disitulah tempatnya. Klik: http://www.telagagolf.com/. Lokasi ini diseberang danau sisi gang jambu dan 1,5 km dari rumah kami. Kebayang kalau kami sudah ada di situ pasti ikut seru.\r\n<br><br>\r\nIbaratnya danau adalah gambar orang/monster berdiri membelakang (biar lebih jelas, klik peta dari satelit diatas foto) maka telaga golf mengelilingi punggung hingga sisi luar kaki kanan danau ini. Lalu sisi selangkang, mengitari sisi luar kaki kiri hingga ketiak lebar dan sisi luar tangan kanan adalah milik Bakri group dengan Sawangan golf, yang juga menghamparkan bisnisnya, lengkap dengan cottage, area golf maha luas, 2 kolam renang untuk standard atlet nasional. Terbuka untuk umum...Berputar ke arah punggung tangan adalah milik diklat P&K. Selebihnya adalah milik para jendral-jendral yang tak bernama, atau milik orang Jepang, atau milik orang Jakarta. Oh ya, Oppie Andaresta artis penyanyi juga tinggal ditepi danau ujung jalan gang jambu.\r\n<br><br>\r\nKenapa telaga Bojongsari menjadi rebutan?? rupanya telaga ini paling luas se Depok (kalau diukur via satelit kira-kira sekitar 850X1100 m2). Suasananya masih hijau, rakyat/komunitas sekitar situ rata-rata masyarakat betawi, pendidikan rendah yang dipikir asik jadi sasaran empuk karena minim resistensi. Tetapi mungkin pemerintah malu setelah konflik dengan Telaga golf. Makanya dinas pariwisata memberikan secuil sisi ketiak kanan danau untuk arena hiburan rakyat dan sisi-sisi beberapa tepi pundak dan leher danau dibuat jogging track. Tiap minggu ada dangdutan, warung apung dan buat mojok pasangan-pasangan juga.\r\n<br><br>\r\nKami rajin jalan pagi sekitar danau, menikmati ikan asap uda, cari ranting atau kembang kering juga menikmati dangdut sambil pesan ikan bakar di saung. \"maju! maju gih, yuk nyanyi kepanggung\" begitu kata ayah ngajak atau ndorong ibu nyanyi di tengah hiburan kampung pinggir danau. Vikra Vinda langsung marah \"norak, norak, pulang nih kita\". he..he.. ya..beginilah kami para rakyat menikmati danau kami sebelum dipagar para konglomerat. Kita hidup bersama orang susah tapi dikelilingi fasilitas megah. Kata ayah, kita tinggal di kampung, tapi fasilitas real estate!.\r\n<br><br>\r\nBeginilah secuil cerita socio-demografis kami dan sekitar rumah kami.', 'http://tujuhmuara.blogspot.com/', 'maxresdefault (1).jpg', '', '2020-03-13', 'aktif'),
(5, 4, 'Bawa Sabu-Ganja Pakai Motor, Kurir Narkoba Dibekuk di Depok', 'Depok - Badan Narkotika Nasional (BNN) Jabar meringkus seorang kurir narkotika. Pria tersebut ditangkap saat sedang membawa barang bukti narkoba.\r\nPengungkapan itu dilakukan oleh tim gabungan BNN Jabar dan Direktorat Tindak Pidana Bareskrim Mabes Polri. Tersangka berinisial U (35) ditangkap di kawasan Pancoran Mas, Depok, Jabar pada Senin (16/3) lalu.\r\n<br><br>\r\n\"Tersangka ini bertindak sebagai kurir,\" ucap Kepala BNN Jabar Brigjen Sufyan Syarif dalam rilis yang diterima detikcom, Kamis (19/3/2020).\r\n<br><br>\r\nSufyan mengatakan U ditangkap saat tengah membawa narkoba. Menurut Sufyan, U mengedarkan barang haram tersebut dengan modus pengiriman paket.\r\n<br><br>\r\nSufyan mengatakan tersangka ditangkap saat tengah mengendarai sepeda motor. U menggunakan sepeda motor dengan membawa kardus berisi air mineral.\r\n<br><br>\r\nSaat ditangkap, petugas lantas memeriksa isi dari kardus air mineral yang di atasnya tertulis alamat tujuan pengiriman. Setelah dibuka, didapat kardus itu berisi satu kilogram sabu-sabu dan 10 kilogram ganja kering.\r\n<br><br>\r\n\"Dia mendapatkan upah dari tugasnya tersebut. Penerima peket dan alamat tujuan sedang kita kembangkan,\" katanya.\r\n<br><br>\r\nProses penyidikan kasus ini ditangani oleh Direktorat Tindak Pidana Bareskrim Polri. Tersangka dan juga barang bukti sudah dibawa ke Mabes Polri.\r\n<br><br>\r\n\"Penyidikan dilakukan oleh tim Mabes Polri. Kita (BNN) fokus pada pengembangan sindikat ini,\" tuturnya.', 'https://news.detik.com/berita-jawa-barat/d-4946291/bawa-sabu-ganja-pakai-motor-kurir-narkoba-dibekuk-di-depok?_ga=2.19719544.1186283589.1584627452-1379800028.1584627452', '1271923e-fc5e-42c0-8a0d-86dc72c8753f_169.jpg', '', '2020-03-18', 'tidak aktif'),
(6, 4, 'Kasus Corona Di Depok Bertambah', 'DepokNewsâ€“Pembatasan Sosial Berskala Besar (PSBB) resmi diperpanjang oleh pemerintah Kota Depok mulai tanggal 13-26 Mei 2020.\r\n\r\nJuru bicara (Jubir) Gugus Tugas Percepatan Penanganan Covid-19 Kota Depok, Dadang Wihana mengatakan Perpanjang PSBB tersebut setelah melakukan rapat dengan Forkompimda dan Gugus Tugas.\r\n\r\nâ€œHari ini Walikota Depok, FORKOPIMDA dan Gugus Tugas Percepatan Penanganan COVID-\r\n19 telah melakukan rapat evaluasi PSBB II, dan telah menyepakati untuk perpanjangan PSBB II,â€ kata Dadang. Senin (11/5/2020).\r\n\r\nTerkait perpanjangan PSBB tahap II, Walikota Depok telah melayangkan surat yang ditujukan kepada Gubernur Jawa Barat, Ridwan Kamil.\r\n\r\nâ€œSemoga dalam perpanjangan PSBB nanti, kita tetap konsisten dalam melaksanakan protokol pemerintah dan pengaturan PSBB, untuk kebaikan semua,â€ katanya.\r\n\r\nDitambahkan Dadang perpanjangan PSBB dilakukan karena masih adanya penambahan kasus dalam setiap harinya yang disebabkan oleh import case dan transmisi lokal, serta masih tingginya pergerakan orang.', 'Depok News', 'WhatsApp Image 2020-04-30 at 04.57.34.jpeg', 'Depok News', '2020-05-13', 'aktif'),
(7, 6, 'Apa Itu Teknologi Artificial Intelligence?', 'Teknologi AI (Artificial Intelligence) saat ini sudah dan akan terus memengaruhi berbagai kehidupan manusia di seluruh dunia.\r\n\r\nApalagi, teknologi AI sendiri telah menjadi pendorong utama hadirnya teknologi-teknologi baru seperti big data, chatbot, mobil swakemudi, robotika, dan Internet of Things (IoT).\r\n\r\nDi perusahaan atau organisasi, adopsi teknologi ini diprediksi akan terus meningkat lantaran ragam manfaat yang bisa diberikan ke mereka, contohnya meningkatkan kepuasan pelanggan atau mengurangi risiko investasi yang buruk.\r\n\r\nLaporan IDC memperkirakan bahwa pengeluaran perusahaan untuk teknologi AI akan meningkat menjadi $97,9 miliar pada tahun 2023.\r\n\r\nSedangkan survei terbaru PwC bertajuk “2021 AI Predictions Report” menemukan bahwa lebih dari 50% responden yang mengambil bagian di dalam survei tersebut mengatakan perusahaan mereka telah meningkatkan investasi di AI selama setahun terakhir.\r\n\r\nLantas, apa itu AI? AI yang merupakan akronim dari Artificial Intelligence, terdiri dari dua suku kata. Artificial dapat diartikan sebagai “buatan”, sedangkan Intelligence diartikan sebagai “kecerdasan”. Maka, AI memiliki arti kecerdasan buatan.\r\n\r\nAI adalah sistem komputer (mesin) yang memiliki kecerdasan layaknya manusia. Dalam hal ini, AI mampu melakukan pembelajaran (perolehan informasi dan aturan untuk menggunakan informasi), penalaran (menggunakan aturan untuk mencapai kesimpulan), dan mengoreksi diri secara mandiri.\r\n\r\nSecara sederhana, AI merupakan sebuah sistem komputer yang bisa meniru cara berpikir manusia dalam menyelesaikan sebuah pekerjaan.\r\n\r\nPada saat ini, contoh penerapan AI terbanyak yaitu pada produk atau layanan teknologi terbaru, penelitian, analisis perilaku konsumen bagi perusahaan, mendeteksi penipuan, proyeksi pasar atau perkiraan penjualan, memantau keamanan di internet dan IT, serta mengotomatisasi pekerjaan.\r\n\r\nKlasifikasi pada AI\r\n\r\n1. Klasifikasi Utama dari AI:\r\n\r\n- Strong AI (AI Kuat):\r\n\r\nSistem AI dengan kemampuan kognitif seperti manusia pada umumnya. Ketika diberikan tugas atau perintah yang belum dikenali, sistem AI ini memiliki cukup kecerdasan untuk menemukan solusi dari setiap tugas atau perintah yang dikerjakannya.\r\n\r\n- Weak AI (AI Lemah):\r\n\r\nSistem AI yang dirancang dan dilatih untuk tugas tertentu. Contoh: Apple Siri dan Google Assistant\r\n\r\n2. Klasifikasi AI Lainnya:\r\n\r\n- Reactive Machines (Mesin Reaktif)\r\n\r\nContoh dari AI ini adalah Deep Blue, yang memiliki kemampuan mengidentifikasi bagian-bagian di papan catur dan membuat prediksi langkah untuk bisa menang dalam permainan. Sayangnya, sistem AI ini tidak memiliki kemampuan untuk diterapkan di berbagai situasi.\r\n\r\n- Limited Memory (Memori Terbatas):\r\n\r\nAI yang mampu memberi keputusan di masa depan. Contohnya, kendaraan swakemudi yang dapat menggunakan pengalaman perjalanan di masa lalunya untuk mengambil keputusan di perjalanan masa depan (yang berikutnya).\r\n\r\n- Theory of Mind (Teori Pikiran):\r\n\r\nSistem AI yang memiliki keyakinan sendiri, keinginan sendiri, dan niat yang mempengaruhi keputusan yang dibuatnya. AI jenis ini belum ada.\r\n\r\n- Self-Awareness (Kesadaran Diri):\r\n\r\nMesin yang memiliki kesadaran diri untuk mengerti keadaannya dan dapat mengolah informasi untuk mengidentifikasi apa yang dirasakan oleh orang lain. AI jenis ini belumlah ada.\r\n\r\nContoh dari Hasil Teknologi AI\r\n\r\n- Robotic Process Automation (RPA)\r\n\r\n- Machine Vision\r\n\r\n- Machine Learning\r\n\r\n- Natural Language Processing (NLP)\r\n\r\n- Robotics\r\n\r\nStartup AI di Indonesia\r\n\r\n- Kata.ai\r\n\r\n- BJtech\r\n\r\n- Nodeflux\r\n\r\n- Snapcart\r\n\r\n- Bahasa.ai\r\n\r\n- Prosa.ai\r\n\r\n- Dattabot\r\n\r\n- AiSensum\r\n\r\n- EVA\r\n\r\n- Botika\r\n\r\nKolaborasi Universitas dengan Perusahaan Teknologi Hadirkan Laboratorium AI\r\n\r\n- Universitas Mutimedia Nusantara (UMN) – PT Renom Infrastruktur Indonesia (RII)\r\n\r\n- Universitas Indonesia (UI) – Tokopedia\r\n\r\n- Institut Teknologi Bandung (ITB) – Bukalapak\r\n\r\n- Binus University – NVIDIA', 'https://infokomputer.grid.id/read/122878703/apa-itu-teknologi-artificial-intelligence?page=all', '1580243466_972_cina-bude-vlad-20210907083136.jpg', 'Adhe', '2023-11-01', 'aktif'),
(9, 7, 'Pria Depok yang Viral Rebahan di Motor Ditilang Polisi, Motor Disita!\r\n', 'Depok - Pria di Depok yang viral mengemudikan motor sambil rebahan kerap terpantau di jalanan ditilang polisi. Motor pengemudi tersebut pun disita.\r\n\"Motor kami amankan,\" kata Kasat Lantas Polres Metro Depok Kompol Multazam saat dihubungi detikcom, Jumat (3/11/2023).\r\n<p>\r\nDalam rekaman video viral, pria viral itu nampak diberhentikan oleh polisi. Disebutkan pria viral itu disetop saat melintas di Jalan Margonda, Depok, Kamis (2/11).\r\n\r\n', 'https://news.detik.com/berita/d-7017309/pria-depok-yang-viral-rebahan-di-motor-ditilang-polisi-motor-disita', 'pemotor.jpeg', 'Adhe', '2023-11-01', 'aktif');

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
(7, 'Populer', 'aktif');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
