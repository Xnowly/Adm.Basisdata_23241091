-- nama : Putra Ramadhan
-- NIM : 23241091
-- Kelas : C
-- Modul : Modul-3 ORDER BY, Fungsi Agregasi , GROUP BY , HAVING

-- Menggunakan database
USE pti_mart;

-- ORDER BY
-- menggunakan data dari sebuah field/kolom atau hasil oleh kolom

-- Praktek 1
-- ambil nama produk dan qty dari tabel penjualan, urutkan qty
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty; -- urutkan dari kecil ke besar

-- Praktek 2
-- ambil nama produk, qty dari tabel penjualan, urutkan qty dan nama produk
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty, nama_produk;

-- Latihan Mandiri
SELECT * FROM tr_penjualan ORDER BY qty, tgl_transaksi;

SELECT * FROM ms_pelanggan ORDER BY nama_pelanggan;

SELECT * FROM ms_pelanggan ORDER BY alamat;

-- Praktek 3
-- ambil nama produk, qty dari tabel penjualan, urut qty besar ke kecil
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC;

-- Praktek 4
-- ambil nama produk, qty dari tabel penjualan, urut qty desc, nama_produk asc
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC, nama_produk ASC;

SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC, nama_produk DESC;

-- Latihan Mandiri
SELECT * FROM tr_penjualan ORDER BY tgl_transaksi DESC, qty ASC;

SELECT * FROM ms_pelanggan ORDER BY nama_pelanggan DESC;

SELECT * FROM ms_pelanggan ORDER BY alamat DESC;

-- Praktek 5
-- menggunakan ORDER BY dari hasil perhitungan kolom
-- Ambil nama produk, qty, harga dan perkalian qty*harga, urut qty*harga
SELECT nama_produk, qty, harga, qty * harga AS total FROM tr_penjualan ORDER BY total DESC;

-- Latihan Mandiri
SELECT kode_transaksi, nama_produk, qty, harga, discon_persen,
       (qty * harga - (qty * harga * diskon_persen / 100)) AS total_harga
FROM tr_penjualan
ORDER BY total_harga DESC;


