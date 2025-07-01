-- Nama		: Putra Ramadhan
-- NIM		: 23241091
-- Kelas	: C
-- Modul	: Modul 4 JOIN, UNION, LIMIT

-- Menggunakan database
USE pti_mart;

-- join
-- menggabungkan dua buah tabel yang saling berrelasi
-- tujuan nya untuk mendapatkan informasi yang lebih komplex

-- praktek 1
--ambil nama pelanggan yang pernah bertransaksi berserta qty
-- artinya kita join tabel penjualan dan tabel pelanggan
-- ambil kode pelanggan , nama pelanggan dan qty
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan as tp join ms_pelanggan as mp
on tp.kode_pelanggan = mp.kode_pelanggan;

-- praktek 2 - cross join
-- megggabungkan dua buah tabel tanpa ekspresi filter
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
from tr_penjualan as tp join ms_pelanggan as mp
on true;


-- praktek 3 - inner join
-- ambil pelanggan yang pernah bertransaksi berserta nama produk dan qty
-- artinya join tabel penjulan dan tabel pelanggan
-- ambil kodepelanggan , nama pelanggan ,nama produk , dan qty
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty
FROM tr_penjualan AS tp INNER JOIN ms_pelanggan AS mp
ON mp.kode_pelanggan = tp.kode_pelanggan;

-- praktek 4 -left join
--ambil semua nama pelangggan yang ber transaksi
SELECT tp.kode_pelanggan, nama_pelanggan, tp.qty
FROM tr_penjualan AS tp LEFT JOIN ms_pelanggan AS mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- praktek 5 - RIGHT JOIN
-- ambil semua nama pelanggan yang tidak pernah bertransaksi
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan AS tp
RIGHT JOIN ms_pelanggan AS mp ON tp.kode_pelanggan = mp.kode_pelanggan
WHERE tp.qty IS NULL;
