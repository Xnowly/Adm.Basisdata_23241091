-- nama : Putra Ramadhan
-- NIM : 23241091
-- Kelas : C 
-- Modul : Modul-2 SELECT statement

CREATE database PTIc_MART;
-- menggunakanan DATABASE

USE PTIc_MART;

-- SELECT  statement
-- Praktek 1
-- ambil colom nama produk dari tabel produk

SELECT nama_produk FROM ms_produk;

-- praktek 2
-- ambil nama produk dan harga dari tabel produk

SELECT nama_produk, harga FROM ms_produk;

-- praktek 3
-- ambil semua colom dari tabel produk

SELECT * FROM ms_produk;

-- praktek 

SELECT kode_produk, nama_produk FROM ms_produk;
SELECT * FROM tr_penjualan;

-- praktek 4
-- prefix dan alias
-- prefix
-- ambil nama produk dari tabel produk dan gunakan tabel sebagai prefix

SELECT ms_produk.nama_produk FROM ms_produk;

-- praktek 5
-- ambil nama produk dari tabel produk gunakan tabel dan databse sebagai prefix

SELECT ptic_mart.ms_produk.nama_produk FROM ms_produk;

-- ALIAS
-- praktek 6
-- ambil nama produk dari tabel produk alias kan nama produk dengan np

SELECT nama_produk as np FROM ms_produk;

-- praktek 7
-- ambil nama produk dari tabel produk alias kan tabel produk dengan nsp

SELECT nama_produk FROM ms_produk as nsp;

-- praktek 8
-- menggunakan alias dan prefix secara bersamaan
-- ambil nama produk dari tabel produk alias kan tabel produk dengan nsp dan jadi prefix untuk kolom

SELECT nsp.nama_produk FROM ms_produk as nsp;

-- case 1

SELECT nama_pelanggan, alamat FROM ms_pelanggan;

-- case 2

SELECT nama_produk , harga FROM ms_produk;