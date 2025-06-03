-- Nama : Putra Ramadhan
-- NIM : 23241091
-- Kelas : C
-- Modul : Modul 1 Data Definition Leanguage (TUGAS 1)

-- Membuat Database
CREATE DATABASE bimbel;

-- Menggunakan Database
USE bimbel;

-- ===================================================
-- Tabel: Siswa
-- ===================================================
CREATE TABLE Siswa (
    id_siswa INT PRIMARY KEY NOT NULL,
    nama_siswa VARCHAR(50),
    alamat VARCHAR(100),
    no_telp VARCHAR(15)
);

-- ===================================================
-- Tabel: Guru
-- ===================================================
CREATE TABLE Guru (
    id_guru INT PRIMARY KEY NOT NULL,
    nama_guru VARCHAR(50),
    bidang_studi VARCHAR(50),
    no_telp VARCHAR(15)
);

-- ===================================================
-- Tabel: Kelas
-- ===================================================
CREATE TABLE Kelas (
    id_kelas INT PRIMARY KEY NOT NULL,
    nama_kelas VARCHAR(50),
    jadwal VARCHAR(50),
    id_guru INT,
    FOREIGN KEY (id_guru) REFERENCES Guru(id_guru)
);

-- ===================================================
-- Tabel: Pendaftaran
-- ===================================================
CREATE TABLE Pendaftaran (
    id_pendaftaran INT PRIMARY KEY NOT NULL,
    id_siswa INT,
    id_kelas INT,
    tanggal_daftar DATE,
    FOREIGN KEY (id_siswa) REFERENCES Siswa(id_siswa),
    FOREIGN KEY (id_kelas) REFERENCES Kelas(id_kelas)
);

-- ===================================================
-- Data: Siswa
-- ===================================================
INSERT INTO Siswa (id_siswa, nama_siswa, alamat, no_telp) VALUES
(1, 'Putra', 'Mataram', '081'),
(2, 'Rama', 'Sikur', '087'),
(3, 'Naufal', 'Narmada', '083'),
(4, 'Haqi', 'Ampenan', '084'),
(5, 'Azhari', 'Labu Api', '085');

-- ===================================================
-- Data: Guru
-- ===================================================
INSERT INTO Guru (id_guru, nama_guru, bidang_studi, no_telp) VALUES
(1, 'Pak Budi', 'Matematika', '0811'),
(2, 'Bu Sari', 'Bahasa Inggris', '0812'),
(3, 'Pak Amir', 'Fisika', '0813');

-- ===================================================
-- Data: Kelas
-- ===================================================
INSERT INTO Kelas (id_kelas, nama_kelas, jadwal, id_guru) VALUES
(101, 'Kelas Matematika Dasar', 'Senin & Rabu 14:00', 1),
(102, 'Kelas Bahasa Inggris', 'Selasa & Kamis 10:00', 2),
(103, 'Kelas Fisika SMA', 'Jumat 09:00', 3);

-- ===================================================
-- Masukkan Data ke Tabel yang Memiliki Foreign Key
-- (Tabel: Pendaftaran)
-- ===================================================
INSERT INTO Pendaftaran (
    id_pendaftaran,
    id_siswa,
    id_kelas,
    tanggal_daftar
) VALUES
(1001, (SELECT id_siswa FROM Siswa WHERE id_siswa = 1), (SELECT id_kelas FROM Kelas WHERE id_kelas = 101), '2025-01-01'),
(1002, (SELECT id_siswa FROM Siswa WHERE id_siswa = 2), (SELECT id_kelas FROM Kelas WHERE id_kelas = 102), '2025-01-02'),
(1003, (SELECT id_siswa FROM Siswa WHERE id_siswa = 3), (SELECT id_kelas FROM Kelas WHERE id_kelas = 103), '2025-01-03'),
(1004, (SELECT id_siswa FROM Siswa WHERE id_siswa = 4), (SELECT id_kelas FROM Kelas WHERE id_kelas = 101), '2025-01-04');

-- ===================================================
-- Cek Data
-- ===================================================
SELECT * FROM Siswa;
SELECT * FROM Guru;
SELECT * FROM Kelas;
SELECT * FROM Pendaftaran;
