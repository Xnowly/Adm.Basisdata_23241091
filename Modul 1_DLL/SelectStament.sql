-- Nama		: Putra Ramadhan
-- NIM		: 23241091
-- Kelas	: C
-- Modul	: Modul 1 SELECT Statement

-- menggunakan database
USE pti_mart2;

-- SELECT statement
-- Praktek 1
-- Ambil kolom nama produk dari tabel produk
select nama_produk from ms_produk_dqlab;

-- Praktek 2
-- Ambil kolom nama produk dan harga dari tabel produk
select nama_produk, harga from ms_produk_dqlab;

-- Praktek 3
-- Ambil semua kolom dari tabel produk
select * from ms_produk_dqlab;

-- Latihan
select kode_produk, nama_produk from ms_produk_dqlab;
select * from tr_penjualan_dqlab;

-- Prefix dan Alias
-- PREFIX (Mempermudah menemukan file yang diinginkan walau filenya sama)
-- Praktek 4
-- Ambil nama produk dari tabel produk dan gunakan tabel sebagai prefix
select ms_produk_dqlab.nama_produk from ms_produk_dqlab;

-- Praktek 5
-- Ambil nama produk dari tabel produk, gunakan tabel dan database sebagai prefix
select pti_mart2.ms_produk_dqlab.nama_produk from ms_produk_dqlab;

-- ALIAS (Nama sementara/samaran)
-- Praktek 6
select nama_produk as pd from ms_produk_dqlab;
-- Tanpa 'as'
select nama_produk pd from ms_produk_dqlab;

-- Praktek 7
-- Ambil nama produk dari tabel produk kemudian alias kan tabel produk dengan pd
select nama_produk from ms_produk_dqlab as pd;

-- Praktek 8
-- Menggunakan Prefix dan Alias secara bersamaan
-- Ambil nama produk dari tabel produk, alias kan tabel produk dengan pd, dan jadi prefix untuk kolom
select pd.nama_produk from ms_produk_dqlab as pd;

-- Case1
select nama_pelanggan, alamat from ms_pelanggan_dqlab;

-- Case2
select nama_produk, harga from ms_produk_dqlab;