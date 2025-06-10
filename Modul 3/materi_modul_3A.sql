-- Nama		: Putra Ramadhan
-- NIM		: 23241091
-- Kelas	: C
-- Modul	: Modul 3A ORDER BY, Fungsi Agregasi, GROUP BY, HAVING

-- Menggunakan database
use pti_mart;

-- ORDER BY
-- Mengurutkan data dari sebuah field (kolom) atua hasill olah kolom
-- Praktek 1
-- ambil nama produk dan qty dari table penjualan urutkan berdasarkan qty
select nama_produk,qty from tr_penjualan_dqlab order by qty; -- urut dari kecil ke besar

-- Praktek 2
-- Ambil nama produk dan qty dari table penjualan urutkan berdasarkan qty dan nama produk
select nama_produk, qty from tr_penjualan_dqlab order by qty, nama_produk;


-- latihan mandiri 1
-- a. tampilkan semua kolom dari table tr penjualan dengan mengurutkan berdasarkan qty dan tgl_transaksi
select * from tr_penjualan_dqlab order by qty, tgl_transaksi;

-- b. tampilkan semua kolom dari table ms pelanggan dengan mengurutkan berdasarkan nama_pelanggan
select * from ms_pelanggan_dqlab order by nama_pelanggan;

-- c. tampilkan semua kolom dari table ms pelanggan dengan mengurutkan berdasarkan alamat
select * from ms_pelanggan_dqlab order by alamat;


-- ASC (DEFAULT/TIDAK WAJIB)(mengurutkan kecil ke besar), DESC (WAJIB DITULIS)(mengurutkan dari besar ke kecil)
-- Praktek 3
select nama_produk,qty from tr_penjualan_dqlab order by qty desc;

-- Praktek 4
-- Ambil nama produk, qty dari tr penjualan urut dengan desc dan asc
select nama_produk,qty from tr_penjualan_dqlab order by qty desc, nama_produk asc;

-- Latihan mandiri 2
-- a. tampilkan semua kolom dari table tr penjualan dengan mengurutkan berdasarkan tgl transaksi secara DESC dan qty secara ASC
select * from tr_penjualan_dqlab order by tgl_transaksi desc, qty asc;

-- b. tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan nama pelanggan secara DESC
select * from ms_pelanggan_dqlab order by nama_pelanggan desc;

-- c. tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan alamat secara DESC
select * from ms_pelanggan_dqlab order by alamat desc;

-- Praktik 5
-- Menggunakan order by dari hasil perhitungan kolom
-- Ambil nama produk, qty, harga dan perkalian qty*harga, urut berdasarkan qty*harga/total
select nama_produk, qty, harga, qty*harga as total from tr_penjualan_dqlab order by total desc;

-- Latihan mandiri
-- Pengurutan dengan ekspresi total harga menggunakan rumusan jumlah barang dikali harga barang dikurangi diskon
select nama_produk, qty, harga, diskon_persen, (qty * harga - diskon_persen) as total_harga from tr_penjualan_dqlab order by total_harga desc;

-- praktek 6
-- WHERE dengan ORDER BY
-- Mengurutkan hasil filterring dari sebuah web/quary
-- ambil nama produk dan qty untuk yang berawalan huruf F urutkan qty dari terkecil terbesar 
SELECT nama_produk, qty 
FROM tr_penjualan
WHERE nama_produk LIKE "F%"
ORDER BY qty desc;

-- PRAKTEK 7
-- FUNGSI AGREGASI adalah fungsi untuk mengolah baris data/satu nilai baris baru
-- DI GUNAKAN UNTUK MENGOLAH BEBERAPA BERIS DALAM KOLOM DATA
-- meghitung jumlah(SUM), qty terjual PADDA TABEL PENJUALAN 
SELECT qty FROM tr_penjualan;
SELECT SUM(qty) FROM ms_pelanggan tr_penjualan -- ada 42 produk yang terjual

-- latihan mandiri
-- tampilkan semua kolom dari transaksi penjualan yang memilikki diskon dan urutkan dari harga yang tertinggi
SELECT *
FROM tr_penjualan
WHERE diskon_persen
ORDER BY harga DESC;

-- tampilkan kolom nama produk, kuantitas pembelian dan harga dari transaksi penjualan yang memiliki harga minimal seratus ribu rupiah dan diurutkan berdasarkan harga tertinggi

-- tampilkan kolom nama produk, kuantitas pembelian dan harga dari transaksi penjualan yang memiliki harga minimal seratus ribu rupiah atau nama produk berawalan karakter 'T dan diurutkan berdasarkan diskon tertinggi.

-- praktek 8
--- Hitung semua transaksi yang terjadi pada tb penjualan
SELECT COUNT(*) FROM tr_penjualan

-- Praktek 9
-- hitung qry terjual dan hitung transakssi yang terjadi
SELECT SUM(qty), COUNT(*) FROM tr_penjualan;

-- praktek 10
-- hitung rata-rata qty terjual Per transksi AVG()
-- hitung qty terbanyak terjual per transaksi MAX()
-- hitung qty paling sedikit terjual per transaki MIN()

SELECT AVG(qty), MAX(qty) FROM tr_penjualan

-- COUNT (DISTINGCT)
-- di gunakpan untuk hitung nilai unik yang terdapat pada sebuah kolom 
-- praktik 11 
SELECT COUNT (nama_produk) FROM tr_penjualan; -- ada 15 produk

SELECT COUNT (DISTINCT nama_produk) FROM tr_penjualan; -- ad 10 produk

-- PRAKTEK 12 
SELECT COUNT (nama_produk), COUNT(DISTINCT nama_Produk)
FROM tr_penjualan

-- Praktek 13
-- ambil nama produk , dan hitung nilai terbanyak dari qty
SELECT nama_produk, MAX (qty) FROM  tr_penjualan

-- GROUP BY
-- di gunakan untuk mengelompokan isi data dari satu atau banyak 
SELECT nama_produk FROM tr_penjualan GROUP BY nama_produk;

-- PRAKTEK 14 
-- menampilkan nama produk dari hasil pengelompokan base nama produk 
SELECT nama_produk FROM tr_penjualan GROUP BY nama_produk;

-- praktek 15 
-- menampilkan nama produk dan qty dari hasil kelompok nama produk dan 
SELECT nama_produk, qty
FROM tr_penjualan , qty;

-- praktek 16
-- tampilkan semua produk dan total qty terjual
SELECT nama_produk, SUM(qty)
FROM tr_penjualan
group by nama_produk;

-- praktek 17
-- tampilkan semua produk dan total qty terjual urut qty terbanyak

SELECT nama_produk, SUM(qty)
FROM tr_penjualan
GROUP BY nama_produk
ORDER BY SUM(qty) DESC

-- dari hasil fungsi agregasi dan GROUP BY
-- praktek 18
-- ambil nama produk yang total qty terjual di atas 2
SELECT nama_produk, SUM(qty)
FROM tr_penjualan
GROUP BY nama_produk
HAVING SUM(qty) > 2
ORDER BY SUM(qty) DESC;