/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 10.1.9-MariaDB : Database - tokobukukangmas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tokobukukangmas` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tokobukukangmas`;

/*Table structure for table `buku` */

DROP TABLE IF EXISTS `buku`;

CREATE TABLE `buku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(50) DEFAULT NULL,
  `deskripsi` text,
  `tanggal_publish` date DEFAULT NULL,
  `bahasa` varchar(20) DEFAULT NULL,
  `berat` float DEFAULT NULL,
  `panjang` float DEFAULT NULL,
  `lebar` float DEFAULT NULL,
  `jumlah_halaman` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `id_penerbit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `buku` */

LOCK TABLES `buku` WRITE;

insert  into `buku`(`id`,`judul`,`deskripsi`,`tanggal_publish`,`bahasa`,`berat`,`panjang`,`lebar`,`jumlah_halaman`,`harga`,`id_penerbit`) values (1,'Kisah Sang Penandai','Duhai, apakah kau akan memilih mati ketika cinta-sejatimu tidak terwujudkan? Ataukah hanya bisa memeluk lutut, menangis tersedu, bersembunyi di balik pintu seperti anak kecil tidak kebagian sebutir permen?\r\n\r\nAdalah Jim, pemuda yatim-piatu dipilih oleh Sang Penandai (penjaga dongeng-dongeng), untuk mengukir kisah melupakan sang pujaan hati, Nayla. Adalah Jim, pemuda yang jangankan memegang pedang, membaca pun dia tidak bisa, terpilih untuk menggurat cerita tentang berdamai dengan masa-lalu. Dia harus menyelesaikan pahit-getir perjalanannya—apapun harganya! Karena kita sungguh membutuhkan dongeng ini.','2011-07-01','Indonesia',0.5,23,13.4,295,46750,5),(2,'Cinema 4D','Bosan dengan software 3D yang kayaknya semakin canggih tapi semakin memerlukan spesifikasi  komputer yang canggih juga? Mau coba yang canggih tapi spesifikasi  komputer yang rumahan?  Ada ngga ya? Cinema 4D menjawab pertanyaan anda. Dengan Cinema 4D anda bisa berkreasi  layaknya seorang animator ulung dengan fasilitas yang super mudah dan super lengkap. Ngga  percaya? silahkan rasakan langsung kekuatan dari Cinema 4D.','2011-09-01','Indonesia',0.27,21,14.5,260,48000,4),(3,'Rindu','Apalah arti memiliki, ketika diri kami sendiri bukanlah milik kami?','2014-09-19','Indonesia',0.3,20.5,13.5,544,69000,2),(5,'Mahir Manipulasi Fungsi String PHP 5','Bahasa pemrograman PHP semakin berkembang dari waktu ke waktu. Perubahan ini memberikan manfaat yang semakin besar untuk para penggunanya. Di balik semuanya itu, tetap ada fungsi mendasar yang sangat penting dalam pengembangan aplikasi yang dibangun. Salah satunya adalah fungsi string. Fungsi string dalam PHP sangat beraneka ragam. Dengan memberikan sedikit modifikasi maka hasilnya pun akan sangat berbeda.\r\n\r\nBuku ini mengupas secara tuntas semua fungsi string yang ada dalam PHP 5.','2010-09-30','Indonesia',0.3,21,14,263,35000,6),(6,'Tidak Ada New York Hari Ini','Hari-hari membakar habis diriku.\r\nSetiap kali aku ingin mengumpulkan\r\ntumpukan abuku sendiri, jari-jariku\r\nberubah jadi badai angin.\r\nDan aku mengerti mengapa cinta diciptakan','2016-04-25','Indonesia',0.12,20,13.5,120,44200,1),(7,'Rembulan Tenggelam Di Wajahmu','Tutup mata kita. Tutup pikiran kita dari carut- marut kehidupan. Mari berpikir takjim sejenak. Bayangkan saat ini ada satu malaikat bersayap indah datang kepada kita, lantas lembut berkata: Aku memberikan kau kesempatan hebat. Lima kesempatan untuk bertanya tentang rahasia kehidupan, dan aku akan menjawabnya langsung sekarang. Lima Pertanyaan. Lima jawaban. Apakah pertanyaan pertamamu?\r\nMaka apakah kita akan bertanya: Apakah cinta itu? Apakah hidup ini adil? Apakah kaya adalah segalanya? Apakah kita memilki pilihan dalam hidup? Apakah makna kehilangan?\r\nRay (tokoh utama dalam kisah ini), ternyata memiliki kecamuk pertanyaan sendiri. Lima pertanyaan sebelum akhirnya dia mengerti makna hidup dan kehidupannya.\r\nSiapkan energi Anda untuk memasuki dunia Fantasi Tere-Liye tentang perjalanan hidup. Di sini hanya ada satu rumus: semua urusan adalah sederhana. Maka mulailah membaca dengan menghela nafas lega','2009-01-01','Indonesia',0.25,20,13,350,51000,2),(8,'Hujan','Tentang Persahabatan.\r\n\r\nTentang Cinta.\r\n\r\nTentang Perpisahan.\r\n\r\nTentang Melupakan.\r\n\r\nTentang Hujan.','2016-01-25','Indonesia',0.4,20,13.5,320,57800,1),(9,'Oxford Learners Pocket Dictionary 4 New Edition','37.000 words. phrases. and meanings.\r\n\r\nEssential information on basic English vocabulary in a popular. slim. pocket-sized book that is easy bagai to carry. Now updated with new words that have entered the language.','2009-05-01','Inggris',0.16,7.5,15,100,88400,7),(10,'Demokrasi Muka Dua','DEMOKRATISASI di Indonesia pasca-Reformasi 1998 telah memperoleh pengakuan dan pujian dari dunia internasional. Indonesia pun disanjung-sanjung sebagai negara demokratis terbesar ketiga di dunia. Kendati demikian, kehidupan demokrasi saat ini masih diwarnai berbagai masalah akut seperti korupsi, politik dinasti, atau politik kartel. Semua ini merebak luas bersamaan dengan desentralisasi dan otonomi daerah.\r\n\r\nMelalui analisis mendalam atas seluk-beluk pemilihan kepala daerah langsung (Pilkada) yang telah berlangsung sejak 2005, buku ini memaparkan dua perspektif—neo-institusionalis yang optimistik dan relasi kuasa yang kurang optimistik—dalam memahami persoalan tersebut. Penulis juga memberi sudut pandang yang lebih komprehensif untuk menjembatani kedua perspektif tersebut. Buku ini merupakan literatur yang baik bagi pembaca yang ingin memahami demokrasi Indonesia.','2016-05-09','Indonesia',0.15,20,13.5,185,46750,1),(11,'UML 2 Certification Guide','-','2006-03-29','Inggris',0.7,18,16,294,86700,8),(12,'Pudarnya Pesona Cleopatra','Tak terasa air mataku mengalir, dadaku sesak oleh rasa haru yang luar biasa. Tangisku meledak. Dalam isak tangisku semua kebaikan Raihana selama ini terbayang. Wajahnya yang teduh dan babay face, pengorbanan dan pengabdiannya yang tiada putusnya, suaranya yang lembut, tangisnya mengalirkan perasaan haru dan cinta. Ya cinta itu datang dalam keharuanku. Dalam keharuan terasa ada hawa sejuk turun dari langit dan merasuk dalam jiwaku. Seketika itu, pesona kecantikan Cleopatra memudar...\r\n...Segera kukejar waktu membagi cintaku pada Raihana. Membagi rinduku yang tiba-tiba memenuhi rongga dada. Air mataku berderai-derai. Kukebut kendaraannku. Kupacu kencang diiringi derai air mata yang tiada henti menetes di jalanan. Aku tak peduli. Aku ingin segera sampai dan melupakan semua rasa cinta ini padanya. Padanya yang berhati mulia\r\nBegitu sampai di halaman rumah mertua, nyaris tangisku meledak. Kutahan dengan mengambil napas panjang dan mengusap air mata. Melihat kedatanganku, ibu mertua serta merta memelukku dan menangis tersedu-sedu. Aku jadi heran dan ikut menangis.','2012-01-01','Indonesia',0.1,20.5,13.5,120,24000,2);

UNLOCK TABLES;

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `tanggal_gabung` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `member` */

LOCK TABLES `member` WRITE;

insert  into `member`(`id`,`nama`,`tanggal_gabung`) values (1,'Tri Iman','2011-10-04'),(2,'Tirto Eko','2012-01-28'),(3,'Bima Wahyu','2013-06-06'),(4,'Dian Ratu','2010-12-22'),(5,'Ratu Lestari','2015-02-18'),(6,'Batari Utari','2014-08-07'),(7,'Sinta Cinta','2013-05-02'),(8,'Batari Eka','2014-08-07'),(9,'Indah Cinta','2015-04-16'),(10,'Intan Kasih','2011-04-13'),(11,'Jaxon Everard Haward','2016-05-05'),(12,'Tracey Joseph Haight','2013-03-19'),(13,'Miles Selby Abbey','2012-03-14'),(14,'Micky Lowell Hopson','2013-04-24'),(15,'Perce Carl Kitchens','2015-07-14'),(16,'Bo Jun Wu','2010-08-12'),(17,'Ah Li Yu','2013-03-20'),(18,'Shufen Xiulan Wang','2015-10-08'),(19,'Huan Nuan Jiang','2014-07-22'),(20,'Xiuying Shui Song','2011-01-13'),(21,'Alex Abbad','2016-05-21'),(22,'Charles Darwin','2016-05-01');

UNLOCK TABLES;

/*Table structure for table `mengarang` */

DROP TABLE IF EXISTS `mengarang`;

CREATE TABLE `mengarang` (
  `id_buku` int(11) DEFAULT NULL,
  `id_pengarang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mengarang` */

LOCK TABLES `mengarang` WRITE;

insert  into `mengarang`(`id_buku`,`id_pengarang`) values (5,4),(6,5),(3,1),(1,1),(7,1),(8,1),(10,7),(11,9),(11,8),(12,10),(2,3),(2,2),(9,6);

UNLOCK TABLES;

/*Table structure for table `pembelian` */

DROP TABLE IF EXISTS `pembelian`;

CREATE TABLE `pembelian` (
  `id_member` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `jumlah_beli` int(11) DEFAULT NULL,
  `tanggal_beli` date DEFAULT NULL,
  `diskon` float DEFAULT NULL,
  `jumlah_bayar` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pembelian` */

LOCK TABLES `pembelian` WRITE;

insert  into `pembelian`(`id_member`,`id_buku`,`jumlah_beli`,`tanggal_beli`,`diskon`,`jumlah_bayar`,`rating`) values (17,2,1,'2016-05-21',0,48000,4),(21,2,1,'2016-05-21',0,48000,1),(5,8,1,'2016-05-21',15,49130,5),(5,12,1,'2016-04-04',10,21600,4),(2,9,10,'2016-04-04',25,663000,5),(15,2,2,'2015-12-08',10,86400,3),(14,5,1,'2014-04-10',20,28000,4),(1,2,3,'2013-08-15',5,136800,3),(1,5,1,'2012-09-11',0,35000,3),(2,5,2,'2012-09-11',0,70000,4),(10,12,1,'2013-08-15',5,22800,4),(6,6,1,'2016-05-22',10,39780,5),(8,7,1,'2016-05-22',10,45900,4),(3,1,1,'2016-05-22',10,42075,3),(4,12,1,'2015-12-25',20,19200,4),(14,5,3,'2015-04-14',10,94500,3),(4,7,1,'2016-01-04',5,48450,4),(21,1,1,'2016-05-22',25,35063,5);

UNLOCK TABLES;

/*Table structure for table `penerbit` */

DROP TABLE IF EXISTS `penerbit`;

CREATE TABLE `penerbit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) DEFAULT NULL,
  `kota` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `penerbit` */

LOCK TABLES `penerbit` WRITE;

insert  into `penerbit`(`id`,`nama`,`kota`) values (1,'Gramedia','Jakarta'),(2,'Republika','Jakarta'),(4,'Informatika','Bandung'),(5,'Mahaka','Jakarta'),(6,'PT Elex Media Komputindo','Jakarta'),(7,'Unknown','Unknown'),(8,'Morgan Kaufmann','San Fransisco');

UNLOCK TABLES;

/*Table structure for table `pengarang` */

DROP TABLE IF EXISTS `pengarang`;

CREATE TABLE `pengarang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `pengarang` */

LOCK TABLES `pengarang` WRITE;

insert  into `pengarang`(`id`,`nama`) values (1,'Tere Liye'),(2,'Zaharuddin G. Djalle'),(3,'Fauzi Martha Gurnia'),(4,'Ahmad Rusli'),(5,'M. Aan Mansyur'),(6,'Anonim'),(7,'Muhammad Aqil Irham'),(8,'Tim Weilkiens'),(9,'Bernd Oestereich'),(10,'Habiburrahman El Shirazy');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
