DROP TABLE IF EXISTS pemesanan, produksi_produk, produksi, produk, kategori, pelanggan;


CREATE TABLE pelanggan (
    id_pelanggan INT PRIMARY KEY NOT NULL,
    nama_pelanggan VARCHAR(50),
    alamat VARCHAR(100),
    kota VARCHAR(20),
    no_tlp VARCHAR(15)
);

CREATE TABLE produk (
    id_produk INT PRIMARY KEY NOT NULL,
    nama_produk VARCHAR(50),
    kategori VARCHAR(20),
    harga INT,
    stok INT
);

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
