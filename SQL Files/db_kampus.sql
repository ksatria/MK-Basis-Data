CREATE DATABASE kampus;

USE kampus;

CREATE TABLE mahasiswa(
	nim CHAR(3) PRIMARY KEY,
	nama_mahasiswa VARCHAR(30) NOT NULL,
	angkatan YEAR NOT NULL,
	kode_prodi CHAR(2) NOT NULL
);

INSERT INTO mahasiswa
VALUES
('101', 'Wibawa Putra', '2012', 'TI'),
('102', 'Eka Citra', '2012', 'TI'),
('103', 'Setiawan Buana', '2013', 'TI'),
('104', 'Citra Cahya', '2013', 'TI'),
('105', 'Purnama Krisna', '2013', 'TI'),
('106', 'Darma Yuda', '2014', 'TI'),
('107', 'Cahya Susilo', '2014', 'TI'),
('108', 'Budi Cahaya', '2015', 'TI'),
('109', 'Indah Dwi', '2015', 'TI'),
('110', 'Bulan Melati', '2015', 'TI'),
('301', 'Yuda Tri', '2013', 'MI'),
('302', 'Wangi Mega', '2013', 'MI'),
('303', 'Iskandar Dwi', '2013', 'MI'),
('304', 'Susila Eka', '2013', 'MI'),
('305', 'Tirta Adi', '2014', 'MI'),
('306', 'Cinta Putri', '2014', 'MI'),
('307', 'Harta Bima', '2014', 'MI'),
('308', 'Raharjo Tirto', '2015', 'MI'),
('309', 'Cahaya Cinta', '2015', 'MI'),
('310', 'Cahya Iman', '2015', 'MI');

CREATE TABLE dosen(
	id_dosen CHAR(3) PRIMARY KEY,
	nama_dosen VARCHAR(30) NOT NULL
);

INSERT INTO dosen
VALUES
('D01', 'Eko Dian'),
('D02', 'Eka Tri'),
('D03', 'Dian Dwi Cahya'),
('D04', 'Dwi Iman Tri'),
('D05', 'Nasim Hosni Duha');

CREATE TABLE matakuliah(
	kode_mk CHAR(3) PRIMARY KEY,
	nama_mk VARCHAR(20) NOT NULL,
	sks INT(1) DEFAULT 1
);

INSERT INTO matakuliah
VALUES
('K01', 'Basis Data', 4),
('K02', 'Software Modeling', 2),
('K03', 'Algoritma', 4),
('K04', 'Arsitektur Komputer', 3),
('K05', 'Struktur Data', 4),
('K06', 'Tugas Akhir', 6),
('K07', 'Skripsi', 6);

CREATE TABLE prodi(
	kode_prodi CHAR(2) PRIMARY KEY,
	nama_prodi VARCHAR(25) UNIQUE
);

INSERT INTO prodi
VALUES
('MI', 'D3 Manajemen Informatika'),
('TI', 'S1 Teknik Informatika');

CREATE TABLE ambil_mk(
	nim CHAR(3) NOT NULL,
	kode_mk CHAR(3) NOT NULL
);

INSERT INTO ambil_mk
VALUES
('101', 'K07'),
('102', 'K07'),
('102', 'K05'),
('103', 'K05'),
('104', 'K05'),
('105', 'K05'),
('103', 'K03'),
('106', 'K04'),
('108', 'K01'),
('108', 'K03'),
('109', 'K01'),
('109', 'K03'),
('301', 'K06'),
('302', 'K06'),
('301', 'K01'),
('306', 'K04'),
('307', 'K04'),
('305', 'K04'),
('310', 'K03'),
('305', 'K03'),
('306', 'K03');

CREATE TABLE ampu_mk(
	id_dosen CHAR(3) NOT NULL,
	kode_mk CHAR(3) NOT NULL
);

INSERT INTO ampu_mk
VALUES
('D03', 'K01'),
('D03', 'K04'),
('D04', 'K06'),
('D04', 'K07'),
('D01', 'K05'),
('D02', 'K03');