-- Nama : Putra Ramadhan
-- Nim : 23241091
-- Kelas : C
-- Modul : Modul 1 Data Definition Language

-- Membuat Database
CREATE DATABASE pti_mart;

-- Menggunakan DATABASE 
USE pti_mart;

-- Membuat Tabel pelanggan
CREATE TABLE pelanggan (
    id_pelanggan INT PRIMARY KEY NOT NULL,
    nama_pelanggan VARCHAR(50),
    alamat VARCHAR(100),
    kota VARCHAR(20),
    no_tlp VARCHAR(15)
);

-- Membuat Tabel produk
CREATE TABLE produk (
    id_produk INT PRIMARY KEY NOT NULL,
    nama_produk VARCHAR(50),
    kategori VARCHAR(20),
    harga INT,
    stok INT
);

-- Membuat Tabel transaksi dengan foreign key
CREATE TABLE transaksi (
    id_transaksi INT PRIMARY KEY NOT NULL,
    tgl DATE,
    id_produk INT,
    id_pelanggan INT,
    qty INT,
    total_harga INT,
    FOREIGN KEY (id_produk) REFERENCES produk(id_produk),
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan)
);

-- Mengisi data ke tabel pelanggan
INSERT INTO pelanggan (id_pelanggan, nama_pelanggan, alamat, kota, no_tlp) 
VALUES
(123, "Yanto", "JL Pemuda No 777", "Mataram", "083189978967"),
(111, "Budi", "Jl. Pemuda No.666", "Mataram", "083142662057"),
(222, "Siti", "Jl. Kakek No.890", "Mataram", "083142662058"),
(333, "Doni", "Jl. Nenek No.896", "Mataram", "083142662059"),
(444, "Ayu", "Jl. Bayi No.645", "Mataram", "083142662060"),
(555, "Rina", "Jl. Janda No.796", "Mataram", "083142662061");

-- Mengisi data ke tabel produk
INSERT INTO produk (id_produk, nama_produk, kategori, harga, stok) 
VALUES
(57, "Es Teh", "Minuman", 15000, 10),
(111, "Mie Ayam", "Makanan", 20000, 20),
(222, "Babi Bakar", "Makanan", 30000, 10),
(333, "Sate Babi", "Makanan", 25000, 15),
(444, "Ikan Bakar", "Makanan", 35000, 7),
(555, "Sushi", "Makanan", 40000, 5);

-- Cek apakah data pelanggan sudah terinput
SELECT * FROM pelanggan;

-- Cek apakah data produk sudah terinput
SELECT * FROM produk;

-- Mengisi data pada tabel transaksi (menggunakan foreign key)
INSERT INTO transaksi (id_transaksi, tgl, id_produk, id_pelanggan, qty, total_harga)
VALUES 
(1, '2025-02-22', 
(SELECT id_produk FROM produk WHERE id_produk = 111), 
(SELECT id_pelanggan FROM pelanggan WHERE id_pelanggan = 123), 
1, 
(SELECT harga FROM produk WHERE id_produk = 111) * 1);

-- Cek isi data transaksi
SELECT * FROM transaksi;
