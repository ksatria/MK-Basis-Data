/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 10.1.9-MariaDB : Database - onlineshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlineshop` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `onlineshop`;

/*Table structure for table `daftar_status_transaksi` */

DROP TABLE IF EXISTS `daftar_status_transaksi`;

CREATE TABLE `daftar_status_transaksi` (
  `kode_status` char(3) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `daftar_status_transaksi` */

insert  into `daftar_status_transaksi`(`kode_status`,`status`) values ('S01','Check out'),('S02','Pembayaran dikonfirmasi'),('S03','Pembayaran valid'),('S04','Pesanan diproses'),('S05','Pesanan ditolak'),('S06','Pesanan dikirim'),('S07','Pesanan tiba ditujuan'),('S08','Pesanan dikomplain'),('S09','Transaksi selesai');

/*Table structure for table `kategori_produk` */

DROP TABLE IF EXISTS `kategori_produk`;

CREATE TABLE `kategori_produk` (
  `kode_kategori` char(3) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kategori_produk` */

insert  into `kategori_produk`(`kode_kategori`,`kategori`) values ('K01','Fashion'),('K02','Kesehatan'),('K03','Rumah Tangga'),('K04','Handphone & Tablet'),('K05','Komputer'),('K06','ELektronik'),('K07','Kamera'),('K08','Otomotif'),('K09','Olahraga'),('K10','Office & Stationery'),('K11','Mainan & Hobi'),('K12','Makanan & Minuman'),('K13','Buku & Majalah');

/*Table structure for table `pembeli` */

DROP TABLE IF EXISTS `pembeli`;

CREATE TABLE `pembeli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telp` char(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `pembeli` */

insert  into `pembeli`(`id`,`nama`,`alamat`,`telp`,`email`) values (1,'Bulan Cahaya Ratu','Lumajang','089992733513','bulan.ratu@gmail.com'),(2,'Cahya Melati Eka','Jember','089927253571','ekacahya@yahoo.com'),(3,'Savitri Rani Poornima','Palembang','085242738332','poornima@yahoo.com'),(4,'Vijaya Nirmala Mukta','Palembang','087726324123','vinim@gmail.com'),(5,'Akram Guda','Jakarta','089926752725','guda@yahoo.com'),(6,'Shamsuddin Amjad','Surabaya','087726351433','amjad.sham@yahoo.com'),(7,'Yaser Baki Ali','Jombang','086625341887','aliyaser@yahoo.com');

/*Table structure for table `penjual` */

DROP TABLE IF EXISTS `penjual`;

CREATE TABLE `penjual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telp` char(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `penjual` */

insert  into `penjual`(`id`,`nama`,`alamat`,`telp`,`email`) values (1,'Hamilton Marcel Marvyn Pryor','Bandung','081132456802','hamilton@ymail.com'),(2,'Leland Irving Piers Carpenter','Jakarta','087367529981','leland@yahoo.com'),(3,'Absolon Augustine Armistead','Bandung','086422937461',NULL),(4,'Stew Dyson Paris','Bandung','087352836781','sdyson@yahoo.com'),(5,'Martin Josse Jackson','Jakarta','089173649956','josse.m@gmail.com'),(6,'Ezekiel Fletcher Vipond','Surabaya','086241273825',NULL),(7,'Hyun-Jung Yong Park','Samarinda','087254390012','park.hjy@yahoo.com'),(8,'Seo-Joon Ji-Hoon Han','Pontianak','089762332840','han.seo@gmail.com'),(9,'Suharto Guntur','Malang','086624361828','sguntur@gmail.com'),(10,'Harta Budi Setiawan Susila','Surabaya','089662538164','harta.susila@gmail.com'),(11,'Buana Wahyu Budi','Surabaya','086625341829','budi.buana@ymail.com'),(12,'Harta Dwi Putra','Semarang','089615428361','putra.harta@gmail.com'),(13,'Raja Eka Cahaya','Medan','089625428113','rajacahaya@yahoo.com'),(14,'Cahya Melati Dian','Semarang','087625344326','dian.melati@yahoo.com'),(15,'Batari Wangi Wulan','Solo','087652393720','wangi.batari@gmail.com');

/*Table structure for table `produk` */

DROP TABLE IF EXISTS `produk`;

CREATE TABLE `produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(70) NOT NULL,
  `kode_kategori` char(3) NOT NULL,
  `deskripsi` text,
  `harga` int(11) DEFAULT '1000',
  `berat` int(11) DEFAULT '100',
  `kondisi` enum('baru','bekas') DEFAULT 'baru',
  `id_penjual` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `produk` */

insert  into `produk`(`id`,`nama`,`kode_kategori`,`deskripsi`,`harga`,`berat`,`kondisi`,`id_penjual`) values (1,'iPhone 5s','K04','iPhone 5s 32GB\r\n\r\nColor : Gold, Silver\r\nGaransi Distributor 1 Tahun\r\n100% Produk Apple Original Bukan Replika\r\n\r\nKondisi :\r\n-Imei dus dan mesin cocok / tembus\r\n-FU (Bisa Pakei Semua Kartu GSM Indonesia dan Mancanegara)\r\n-Wrap Plastik dan Segel Original 100% dari Distributor\r\n-Alamat SERVICE CENTER tertera jelas di KARTU GARANSI ( Claim bisa Kami Bantu )\r\n-Icloud Aman GENERAL :\r\n2G Network GSM G Network HSDPA G Network LTE\r\nSIM Nano-SIM\r\nBODY :\r\nDimensions ()\r\nWeight 112 g (3.95 oz)\r\n- 500 dpi pixel density fingerprint sensor (Touch ID)\r\nDisplay\r\nType LED-backlit IPS LCD, capacitive touchscreen, 16M colors\r\nSize pixels, 4.0 inches (~326 ppi pixel density)\r\nMultitouch Yes\r\nProtection Corning Gorilla Glass, oleophobic coating\r\nSOUND :\r\nAlert types Vibration, proprietary ringtones\r\nLoudspeaker Yes\r\n3.5mm jack Yes\r\nMEMORY :\r\nCard slot No\r\nInternal 32 GB storage, 1 GB RAM DDR3\r\nDATA :\r\nGPRS Yes\r\nEDGE Yes\r\nSpeed DC-HSDPA, 42 Mbps; HSDPA, 21 Mbps; HSUPA, 5.76 Mbps, LTE, 100 Mbps; EV-DO Rev. A, up to 3.1 Mbps\r\nWLAN Wi-Fi 802.11 a/b/g/n, dual-band, Wi-Fi hotspot\r\nBluetooth Yes, v4.0 with A2DP\r\nUSB Yes, v2.0\r\nCAMERA :\r\nPrimary 8 MP, pixels, autofocus, dual-LED (True Tone) flash\r\nFeatures 1/3\'\' sensor size, 1.5 m pixel size, simultaneous HD video and image recording, touch focus, geo-tagging, face detection, HDR panorama, HDR photo\r\nVideo Yes, 1080p@30fps, 720p@120fps, video stabilization\r\nSecondary Yes, 1.2 MP, 720p@30fps, face detection, FaceTime over Wi-Fi or Cellular\r\nFEATURES :\r\nOS iOS 7, upgradable to iOS 7.1\r\nChipset Apple A7\r\nCPU Dual-core 1.3 GHz Cyclone (ARM v8-based)\r\nGPU PowerVR G6430 (quad-core graphics)\r\nSensors Accelerometer, gyro, proximity, compass\r\nMessaging iMessage, SMS (threaded view), MMS, Email, Push Email\r\nBrowser HTML (Safari)\r\nRadio No\r\nGPS Yes, with A-GPS support and GLONASS\r\nJava No',3499000,500,'baru',5),(2,'Case Hp Iphone 4 4s 5 5s 6 Case Bermotif Kayu','K04','UPDATE STOCK: (yang lagi habis, akan restock soon):\r\nIPHONE 5/5S: MERAH\r\n===========================================\r\n\r\n--------------------------\r\n\r\nBAHAN pinggiran dan bagian dalam case dilapisi material Doff\r\nbagian wood (kayu) halus dan empuk doff, sangat nyaman dipakai.\r\nKualitas terpercaya \r\nRECOMMENDED \r\n\r\nWarna tersedia:\r\nCoklat tua . Biru navy . Abu-abu\r\nMerah . Hijau\r\nCoklat muda \r\n\r\nAvailable for:\r\nIphone 4, 4s\r\nIphone 5, 5s\r\nIphone 6, 6s\r\n\r\n(model utk iphone 6 berbeda ya, yang list pinggirnya hitam)\r\n\r\n***Warna case & Tipe Hp kalian\r\nMohon ditulis di kolom keterangan pada saat order yaa.. Biar order siap langsung aku bisa proses ^^\r\n\r\nFAST RESPONSE GUYS!!',35000,25,'baru',5),(3,'Steel Elegant Casing Iphone 4, 5, 6','K04','UPDATE STOCK: (yang lagi sold out - akan restock soon):\r\nIphone 4, 4s: MERAH, GOLD PINK\r\nIphone 5, 5s: SILVER\r\n-----------------------------\r\nBAHAN Hardcase dengan pinggiran doff, pinggiran tidak keras sehingga tidak merusak Hp\r\nMencover bagian pinggiran Hp, bagian atas bawah tdk\r\nBagian dalam case juga dilapisi material doff\r\nFull Metal case, Steel elegant.\r\nPremium Quality.. RECOMMENDED \r\n\r\nWARNA:\r\nHitam . Merah . Pink . Biru . Gold . Silver\r\n\r\nAvailable for:\r\nIphone 4, 4s\r\nIphone 5, 5s\r\nIphone 6, 6s\r\n\r\n***Warna case & Tipe Hp kalian\r\nMohon ditulis di kolom keterangan pada saat order yaa.. Biar order siap langsung aku bisa proses ^^\r\n\r\nFAST RESPONSE GUYS!!',40000,25,'baru',5),(4,'Sepatu Casual Pria Kickers Slop','K01','Nama:kickers slop coffe\r\nsize:39-43',189000,1000,'baru',12),(5,'Sepatu Boot Kulit Pria 426-427','K01','Original Kulit\r\nSize : 38-43\r\nBlack & Brown\r\nSol Sudah dijait, Kuat.',280000,1000,'baru',12),(6,'Sarung Celana','K01','BAHAN KATUN,ADEM KALAU DI PAKE BARANG SAMA DENGAN YANG DI FOTO',125000,300,'baru',12),(7,'Gamis Amarilis Plus Hijab','K01','Amarilis Hijab Dress warna abu-abu',150000,950,'baru',12),(8,'Mobil Rc Lamborghini Aventador Lp-700','K11','super LP700 1:12\r\n\r\nMainan dikendalikan oleh remote control. Panjang mobil 40 cm. Ada suara mobil dan nyala lampu.\r\nPintu bisa terbuka ke atas dengan menekan tombol On/Off pada remote control. Ada charger untuk baterai pada mobil. Remote control menggunakan baterai AA 2 pcs. Sudah include baterai pada mobil dan remote.\r\nBaterai mobil menggunakan baterai -CDAA 700mAh 7,2V\r\n\r\nDimensi Barang : \r\nP : 40 cm.\r\nL : 14 cm.\r\nT : 9 cm.\r\nDimensi Kemasan :\r\nP : 55 cm.\r\nL : 25 cm.\r\nT : 21 cm.',310500,1000,'baru',2),(9,'Helicopter Rc Sf F816 3,5ch 2,4ghz','K11','Helicopter RC SF F816 3,5ch panjang 64cm\r\ndengan sinyal 2,4Ghz menjadikan sinyal lebih baik dan stabil \r\n\r\ndisarankan untuk dimainkan di luar ruangan, apabila anak kecil yang bermain.. harap ada orang dewasa yang mendampingi\r\n\r\nselamat bermainn',512000,6000,'bekas',2),(10,'Racing Car Rc','K11','Scale 1:14\r\nFull function R/C series\r\n-Light\r\n-L/R Trimmer\r\n-Included with car batteries and AC charger\r\n-One-click Remote control door',390000,200,'bekas',2),(11,'Wl Toys Rc Quadcopter Xk X250 B Wifi/Rc Drone Alien Xk X250','K11','2.4ghz 6 axis gyro\r\nOne key to roll\r\nColorful LED\r\nHeadless mode-one key to return\r\nPanjang diagonal 24 x 24 cm\r\nBatere lipo 3.7V 780 mAH JST plug warna merah\r\nWaktu terbang 10 menit waktu charge 50 menit\r\nResolusi camera 0.3MP VGA 640*480\r\nKelengkapan\r\n1x unit\r\n1x remote\r\n1x batere\r\n1 set cadangan baling2 + obeng\r\n1 set holder android/HP',1200000,2000,'baru',7),(12,'Quadcopter Drone Syma X5c-1 Upgraded Version With Hd Camera','K11','Quadcopter Drone Syma X5C-1 Upgraded Version with HD Camera\r\n\r\nMain Features:\r\n2.4GHz control system, 6 axis gyro\r\n2.0MP 720P HD camera equipment\r\n360 degrees 3D eversion and throwing flight function\r\nHigh stability during flight\r\nWith light, suitable for flying in the dark at night\r\nBuilt-in a 3.7V 500mAh li-poly battery\r\nSuitable for both indoor and outdoor flying',800000,2200,'bekas',7),(13,'Ipod Nano 2nd Gen 2gb','K06','ipod nano 2nd gen 2gb.\r\n\r\nsync aman.\r\nclick wheel & tombol2 normal.\r\nbatre dipake 5 jam (gk diotak atik), masih nyisa 70% (tested).\r\n\r\nminus: di layar ada 1 goresan (liat foto). tapi dijamin gak ngaruh ke perfoma. \r\n\r\nkelengkapan: \r\n-ipod, \r\n-headset samsung (headset apple cuma pemanis),\r\n-kabel data non ori (kayaknya cuma bisa buat ngecas, gak support transfer data).',430000,1000,'bekas',5),(14,'Uc30 Hdmi Mini Hd Led Projector Cinema Theater Av Vga Usb Sd 150 Lm','K06','Features:\r\n- Completely sealed designed, high efciency ventilation design, largely upgraded the stability and life time;\r\n- LED lamp, works for over 20000 hours, with vivid color and abundant details;\r\n- Electronics zoom function, easy picture size change;\r\n- Professional trouble diagnose and protection;\r\n- Picture switch form 16:9 and 4:3\r\n- 30 W low power cost, eco-oriented\r\n- Multi-function inputAV/VGA/USB/SD/HDMI/Micro USB;\r\n- Keystone correction supported\r\n- Power bank charge function by USB port to connect.\r\n\r\nParameters:\r\n- Imaging: TFT LCD\r\n- Keystone correction: +/-15degree manual correction\r\n- Contrast: 500:1\r\n- Power: 12V-2.5A/5V-2A\r\n- Native resolution: 153600RGB\r\n- Power: 30W/10W\r\n- Supported resolution: 1920*1080\r\n- Input: USB/SD/VGA/HDMI/AV/Micro USB\r\n- Lamp: LED\r\n- Output: 3.5mm earphone\r\n- Lamp life: 20K hours\r\n- Speaker: 2*(82W)\r\n- Lens: F=125\r\n- System: Multi-media\r\n- Operation mode: Manual\r\n- Language supported: Chinese, English, etc\r\n- Projection size: 30-100\'\'\r\n- Projection distance: 1.07-3.5m\r\n- Product size: 170*136*70mm\r\n- N.W.: 800G\r\n- Aspect ration: 4:3/16:9\r\n- Other function: Full functions keys/remote control/Micro USB\r\n\r\nFiles format supported:\r\n- Audio: MP3/WMA/ASF/OGG/AAC/FLAC/APE/WAV\r\n- Photo: JPEG/BMP/PNG\r\n- Video: AVI/MOV/ASF/3GP/MKV/RMVB/MP4/DIVX/FLV/WMV\r\n- Txt: TXT\r\n- HDMI: 576P, 48*768, 128, 1440\r\n- VGA: 644, 1289280*1050\r\n- IP/AV: NTSC PAL\r\n- TV: NTSC PAL',625000,1000,'baru',7),(15,'Hp 14 G1002au','K05','DIREKOMENDASI untuk para Siswa belajar Design graphics,\r\ndengan harga yang sangat bersaing. \r\ndan dukungan processor AMD A4 5000 APU( grafis AMD RADEON 8330G integrated).\r\n\r\ndengan tambahan fitur baru dari PROCESSOR AMD A4 5000,\r\ntelah siap menggunakan GESTURE CONTROL />detail specs:\r\nGrafis \r\nTipe Grafis AMD RADEON HD 8330G \r\nUkuran Layar 14 \r\nResolusi Layar 1366 x 768 \r\nTipe Layar WLED backlit \r\nSoftware \r\nSistem Operasi DOS \r\nCPU \r\nProsessor AMD QuadCore A4 5000 ( 1.5Ghz ) \r\nRAM 2GB DDR3 \r\nDrive Optik DVD RW \r\nSpeaker Dual speakers terintegrasi \r\nWeb Kamera HP TrueVision HD Webcam \r\nLayar Sentuh Tidak \r\nHarddisk 500GB \r\nKoneksi Bluetooth 4.0, Wireless 802.11b/g/n, Ethernet \r\nPorts 1x USB 3.0, 2x USB 2.0, HDMI, VGA, LAN, 1x mic/headphone \r\nSlot SD Card Reader \r\nBaterai 4 Cell Lithium-Ion \r\nBerat 1.8Kg ',3149000,4260,'baru',9),(16,'Lenovo G470 Dualcore','K05','LAPTOP BEKAS\r\n.lenovo g470\r\n.dual core\r\n.ram 2gb\r\n.hdd 320 gb\r\n.vga intel hd\r\n.dvd webcam \r\n. fullset\r\nCasing mulus lcet pmakaian biasa.',2200000,5000,'bekas',9),(17,'Lenovo G470 Pentium B940','K05','Laptop bekas Lenovo G470\r\nReview Spesifikasi:\r\nProcessor Intel Pentium B940 @2.00Ghz\r\nMemori Ram 2GB, HDD 500GB\r\nLayar LCD 14,0 Led\r\nDVDRW, Lan, USB, WIfi, Keyboard, camera all normal\r\nBattery 2 jam\r\n\r\nKelengkapan: Laptop + Charger',1900000,5000,'bekas',9),(18,'Sony Hdr-Pj410','K07','EFFECTIVE PIXELS : Video : Approx. 2.29MP (16:9) Image : Approx. 1.71MP (4:3, Approx. 2.29MP (16:9)\r\nSENSOR SIZE : 1/5.8 type (3.1mm) back-illuminated Exmor\r\nSENSOR TYPE : CMOS\r\nDIGITAL ZOOM : 350x\r\nOPTICAL ZOOM : 30x\r\nWI-FI : Yes (built-in)\r\nLENS MOUNT : ZEISS Vario-Tessar\r\n',3800000,1000,'baru',9),(19,'Canon 100d Kit 18-55 Is Stm','K07','Canon 100D kit 18-55 IS STM, Komplit, mulusss, normal, Rekber / COD\r\n\r\nKondisi :\r\nFisik 98%, Karet2 rapet, Body Ngedoff, tulisan jelas terbaca, LCD no dead pixel,\r\nFungsi 100% LCD Normal, Flash internal nyala, tombol2 berfungsi normal\r\nLensa masih mulusss, ada beberapa spot bakal jamur tipissss banget (ga ngaruh ke hasil), fungsi 100% normal\r\n\r\nKelengkapan :\r\nBody Canon 100D\r\nLensa Canon 18-55IS STM\r\nBox\r\nManual\r\nCD Driver\r\nStrap\r\nCharger\r\nKabel Data\r\nBaterai\r\nBody cap\r\nLens Cap\r\n\r\nMinus :\r\nLensa ada beberapa spot bakal jamur tipissss banget (ga ngaruh ke hasil)',5500000,2000,'bekas',9),(20,'Mirrorles Epl7 Kit 14-42','K07','for sale mirrorless\r\nolympus epl7 kit 14-42\r\ncolour black\r\nkondisi baru import from japan\r\nada bhs inggris\r\nbkn grs OCCI',6500000,4000,'baru',9);

/*Table structure for table `progres_transaksi` */

DROP TABLE IF EXISTS `progres_transaksi`;

CREATE TABLE `progres_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_status` char(3) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `progres_transaksi` */

insert  into `progres_transaksi`(`id_transaksi`,`kode_status`,`waktu`) values (1,'S01','2016-02-03 08:51:09'),(1,'S02','2016-02-03 09:12:07'),(1,'S03','2016-02-03 09:34:21'),(1,'S04','2016-03-04 09:15:34'),(1,'S06','2016-04-18 11:01:19'),(1,'S07','2016-03-07 11:01:44'),(1,'S09','2016-03-07 11:13:57'),(2,'S01','2016-02-17 11:02:32'),(2,'S02','2016-02-17 12:02:45'),(2,'S03','2016-02-17 12:03:20'),(2,'S04','2016-02-19 09:03:40'),(2,'S06','2016-02-19 11:04:02'),(2,'S07','2016-02-25 16:04:24'),(2,'S08','2016-02-25 16:05:21'),(3,'S01','2016-02-09 15:05:57'),(3,'S02','2016-02-09 18:06:22'),(3,'S03','2016-02-09 18:08:36'),(3,'S05','2016-02-11 11:07:18'),(4,'S01','2016-04-18 11:09:32'),(4,'S02','2016-03-02 11:43:06'),(4,'S03','2016-03-02 11:26:30'),(4,'S04','2016-03-03 11:26:47'),(4,'S06','2016-03-03 13:17:59'),(5,'S01','2016-03-17 11:28:03'),(6,'S01','2016-03-15 08:28:15'),(7,'S01','2016-03-30 14:14:18'),(8,'S01','2016-03-19 09:12:37'),(9,'S01','2016-03-28 11:29:57'),(10,'S01','2016-03-05 11:30:06'),(5,'S02','2016-03-17 12:12:12'),(5,'S03','2016-03-17 12:15:39');

/*Table structure for table `transaksi` */

DROP TABLE IF EXISTS `transaksi`;

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembeli` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(3) DEFAULT '1',
  `total_bayar` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `transaksi` */

insert  into `transaksi`(`id`,`id_pembeli`,`id_produk`,`jumlah`,`total_bayar`) values (1,3,14,1,647000),(2,3,16,1,2225000),(3,7,6,6,800000),(4,7,7,6,950000),(5,1,12,1,814000),(6,6,20,1,6525000),(7,6,1,1,4020000),(8,6,2,1,35000),(9,7,4,1,200000),(10,3,13,1,451000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
