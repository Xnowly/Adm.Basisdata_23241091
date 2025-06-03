# Modul 3 : Nilai Literal, Operator-Operator, Fungsi, Date, dan Klausul WHERE

Modul 3 ini secara khusus akan membahas tentang **Nilai Literal**, **Operator-Operator SQL** , **Fungsi**, **Date** dan **Klausul WHERE**.  

Agar mahasiswa mampu : 
1. Mengenal **nilai literal** pada SQL
2. Mengenal **nilai literal khusus**, yaitu NULL
3. Menggunakan **operator matematika** pada SQL
4. Menggunakan **operator perbandingan** pada SQL 
5. Menggunakan **fungsi matematika** dan **tanggal** dengan SQL
6. Mengenal **klausul WHERE** untuk **filtering** atau menyaring data
7. Menggunakan **operator LIKE** pada SQL
8. Menggunakan **operator logika** pada SQL

Ikuti semua praktek pada modul ini menggunakan lembar kerja pada [link ini](https://github.com/adamMaulachela/Kuliah_Adm_Basisdata/blob/main/Modul-3/Praktek-modul-3.sql) 

## 1. Nilai Literal Pada SQL
Pada database nilai literal adalah nilai konstan yang merupakan isi atau data dengan tipe data tertentu. Jenis-jenis nilai literal adalah : 
| Kategori (Tipe Data) | Contoh Nilai Literal Pada SQL |
| -------------------- | ----------------------------- |
| String Literal       | `'Jakarta'`, `'A123'`         |
| Numerik Literal      | `100`, `3.14`, `-25`          |
| Boolean literal      | `True`, `false`               |
| Date Literal         | `'2024-01-01'`                |

berikut bentuk umum nilai literal pada SQL : 

![nilai literal](https://github.com/adamMaulachela/Kuliah_Adm_Basisdata/blob/main/img/nilai_literal.png)

contoh pada sql pada statemen dibawah ini : 
```SQL
SELECT 'Belajar SQL' AS judul, 2025 AS tahun;
```

`'Belajar SQL'` merupakan nilai literal string atau teks. Sekarang mari kita coba praktek 1 : 

### Praktek 1
Menggunakan statemen `SELECT` untuk menampilkan nilai literal, berikut ini perintahnya :
```SQL
SELECT 77;
SELECT 77 as angka;
```
outputnya : 
| 77  |
| --- |
| 77  |

| angka |
| ----- |
| 77    |

Hasil yang didapatkan adalah seperti tampak pada output diatas dimana terdapat satu data dalam satu baris dan kolom. Sedangkan pada statemen yang kedua kolomnya menjadi `angka` dan nilainya adalah `77`. 

### Praktek 2
Menggunakan `SELECT` Statement untuk menampilkan beberapa nilai literal dengan tipe data yang berbeda. Berikut adalah perintannya : 
```SQL
SELECT 77 AS angka, true AS nilai_logika, 'PTI' AS teks;
```

outputnya : 
| angka | nilai_logika | teks |
| ----- | ------------ | ---- |
| 77    | 1            | PTI  |

Hasil yang diperoleh seperti tampak pada output diatas dimana terdapat data satu row/baris dan tiga kolom dengan nilai `77`, `1` yang bermakna `true`, dan `'PTI'`, dengan masing-masing alias yang ditentukan

## 2. Nilai Literal Khusus, NULL
`NULL` pada literal khusus artinya kosong atau tidak memiliki nilai. 
### Praktek 3
Menggunakan `SELECT` statemen untuk menampilkan `NULL`. berikut perintahnya : 
```SQL
SELECT NULL AS kosong;
```
outputnya : 
| kosong |
| ------ |
| [NULL] |

Hasil yang didapatkan adalah seperti pada output diatas dimana terdapat satu baris dan satu kolom dengan isi NULL. Sementara headernya berisi alias kosong. 

Nilai NULL yang ditampilkan akan diapit oleh kurung siku `[]` atau kurung biasa `()`. 

## 3. Operator Matematika 
Operator matematika atau aritmatika adalah simbol yang digunakan untuk melalukan proses atau operasi satu atau lebih angka untuk menghasilkan angka baru. 


Berikut ini adalah contoh ekspresi matematika : 
![Ekspresi Matematika](https://github.com/adamMaulachela/Kuliah_Adm_Basisdata/blob/main/img/ekpresi_mat.png)

Ekspresi matematika adalah konstruksi penggunaan operator secara lengkap dengan jumlah nilai literal angka yang diperlukan. 

Berikut ini adalah beberapa Operator matematika yang digunakan dalam MySQL : 
| Operator   | Deskripsi                              | Jumlah Angka | Contoh                      |
| ---------- | -------------------------------------- | ------------ | --------------------------- |
| `%`, `MOD` | Operator modulo (sisa bagi)            | 2            | 5 % 2 akan menghasilkan 1   |
| `*`        | Operator Perkalian (multiplication)    | 2            | 5 * 2 akan menghasilkan 10  |
| `+`        | Operator Penjumlahan (addition)        | 2            | 5 + 2 akan menghasilkan 7   |
| `-`        | Operator Pengurangan (minus)           | 2            | 5 - 2 akan menghasilkan 3   |
| `-`        | Penanda nilai negatif                  | 1            | -5 adalah angka minus 5     |
| `/`        | Operator Pembagian (devision)          | 2            | 5/2 akan menghasilkan 2.5   |
| `DIV`      | Operator Pembagain (devision) Interger | 2            | 5 DIV 2 akan menghasilkan 2 |

### Praktek 4 
Menggunakan `SELECT` Statement untuk melakukan kalkulasi dengan ekspresi matematika.
```sql
SELECT 5%2 AS sisa_bagi, 5/2 AS hasil_bagi_1,
5 DIV 2 AS hasil_bagi_2;
```
Hasil yang didapatkan adalah terdapat satu row atau baris dan tiga kolom dengan nilai `1`, `2.5`, dan `2`. dengan nama kolom dengan alias masing-masing. 

### Latihan Mandiri 1
Cobalah lakukan beberapa perhitungan matematika sebagai berikut dengan `SELECT`:
* 1.4*2 (4 dikali 2)
* (4*8)%7
* (4*8) MOD 7

Cobalah dengan beberapa variasi dari ekspresi matematika ini sampai Anda sangat terbiasa. Walaupun kelihatan remeh temeh, tapi hal fundamental ini bisa jadi batu sandungan Anda sebagai data analyst ketika berhadapan dengan kasus yang semakin kompleks. 

# Praktek 5
Menggunakan `SELECT` Statement untuk melakukan kalkulasi *field* *table* dengan ekspresi matematika.

> gunakan database pti_mart dengan 3 tabel (ms_produk, ms_pelanggan, dan tr_penjualan)

```sql
SELECT qty*harga AS total_beli FROM tr_penjualan;
```

Hasilnya menunjukkan kolom total_beli yang didapatkan dari hasil perkalian dari nilai kolom qty dan nilai kolom harga pada tabel `tr_penjualan`. 

## 4. Operator Perbandingan
Operator perbandingan adalah simbol yang digunakan untuk melakukan perbandingan terhadap beberapa nilai baik dari nilai literal maupun nilai hasil ekspresi matematika. 

Terdapat cukup banyak operator perbandingan, namun untuk kepentingan pembelajaran berikut adalah beberapa operator perbandingan yang sering digunakan. Setiap ekspresi dengan operator perbandingan ini akan menghasilkan nilai true atau false (1 atau 0). 

| Operator       | Deskripsi                                                | Contoh                        |
| -------------- | -------------------------------------------------------- | ----------------------------- |
| `=`            | Operator sama dengan (equal)                             | 3 = 3 akan menghasilkan true  |
| `<>` atau `!=` | Operator tidak sama dengan (not equal)                   | 4 != 3 akan menghasilkan true |
| `>`            | Operator lebih besar (greater than)                      | 5 > 3 akan menghasilkan true  |
| `<`            | Operator lebih kecil (less than)                         | 5 < 3 akan menghasilkan false |
| `>=`           | Operator lebih besar sama dengan (greater than or equal) | 5 >= 3 akan menghasilkan true |
| `<=`           | Operator lebih kecil sama dengan (less than or equal)    | 3 <= 5 akan menghasilkan true |

### Praktek 6
Menggunakan `SELECT` Statement untuk melakukan operasi perbandingan.
```sql 
SELECT 5=5, 5<>5, 5<>4, 5!=5,5!=4, 5>4;
```

Dari hasil yang didapatkan terdapat baris atau row dengan hasil perbandingan, dimana nilai 1 menunjukkan statemen `true` dan nilai 0 akan mewakili statemen `false`. 

### Latihan Mandiri 2
Cobalah lakukan beberapa operasi perbandingan matematika berikut dengan SELECT
* 1 = true
* 1 = false
* 5 >= 5
* 5.2 = 5.20000
* NULL = 1
* NULL = NULL


### Praktek 7
Melakukan operasi perbandingan pada field table tr_penjualan

> gunakan database pti_mart dengan 3 tabel (ms_produk, ms_pelanggan, dan tr_penjualan)

```sql
SELECT nama_produk, qty > 3 FROM tr_penjualan;
``` 

dari hasil perbandingan terdapat row atau baris dengan hasil perbandingan field `qty` yang lebih dari 3 pada tabel tr_penjualan. 

## 5. Fungsi dan DATE
**Fungsi** atau *function* pada SQL adalah suatu proses yang memiliki nama, jadi bukan simbol seperti operator. Function bisa menerima input sebebas mungkin.

> *Function* adalah fitur yang sangat penting bagi data analyst sehingga dapat dipastikan penguasaan cara mencari referensi function dan menggunakannya dengan baik akan menjadi kunci sukses bagi data analyst.

Terdapat sangat banyak fungsi di MySQL. Berikut adalah daftar fungsi yang akan kita praktekkan sehingga Anda dapat gambaran mengenai fungsi.

### Fungsi `POW(X, D)`
Fungsi **pangkat dengan dua argumen**, yaitu `X` untuk nilai **basis** dan `D` untuk nilai **pangkatnya**. 

Contoh penggunaannya : 
```sql
POW(3,2)
```
fungsi diatas akan menghasilkan nilai 9 yang didapatkan dari 3 pangkat 2

### Fungsi `ROUND(X)`
Fungsi ini digunakan untuk **membulatkan** angka pecahan `X`. 

contoh penggunaannya : 
```sql
ROUND(3.14) -- hasilnya 3
ROUND(3.54) -- hasilnya 4
```
Terlihat pada contoh jika angka dibelakng koma **kurang dari 5** maka akan **dibulatkan ke bawah**, sementara jika **lebih dari sama dengan 5** maka **dibulatkan ke atas**.

### Fungsi `ROUND(X,D)`
Fungsi untuk membulatkan angka pecahan `X` sebanyak `D` desimal

contoh penggunaannya : 
```sql
ROUND(3.155, 1) -- hasilnya 3.2
ROUND(3.155, 2) -- hasilnya 3.16
```
Terlihat pada contoh jika nilai `D` adalah 1 maka akan **dibulatkan menjadi 1 angka dibelakang koma**, sementara jika nilai `D` diisi dengan 2 makan akan **dibulatkan menjadi 2 angka dibelakang koma**.

### Fungsi `FLOOR(X)`
Fungsi untuk membulatkan angka pecahan ke bawah

contoh penggunaannya : 
```sql
FLOOR(4.28) -- hasilnya 4
FLOOR(4.75) -- hasilnya 4
```
Pada contoh terlihat berapapun nilai angka dibelangkan koma akan selalu dibulatkan kebawah jika kita menggunakan fungsi `FLOOR`. 

### Fungsi `CEILING(X)`
Fungsi untuk membulatkan angka pecahan ke atas

contoh penggunaannya : 
```sql
CEILING(4.39) -- hasilnya 5
CEILING(4.99) -- hasilnya 5
```
Bebeda dengan fungsi sebelumnya fungsi ini akan membulatkan ke atas berapapun angka dibelakang koma, baik itu kurang dari 0.5 ataupun diatas 0.5. 

### Fungsi `NOW()`
Fungsi ini digunakan untuk menghasilkan jam dan tanggal saat ini

contoh penggunaanya : 
```sql
NOW() -- hasilnya '2025-05-05 06:55:00`
```
data tanggal dan jam yang ditampilkan pada fungsi ini dengan format `YYYY-MM-DD HH:MM:SS`, `YYYY` menampilkan tanggal penuh, `MM` menampilkan bulan dalam angka, `DD` menampilkan data hari. Sementara `HH` menampilkan jam, `MM` menit, dan `SS` adalah detik. 

### Fungsi `YEAR(X)`
Fungsi untuk mengambil elemen tahun dari tanggal `X`

contoh penggunaannya 
```sql
YEAR('2025-05-05') -- hasilnya '2025'
```
Fungsi ini hanya akan mengambil bagian tahun dari sebuah date. Tahun yang diambil dalam format lengkap yaitu `YYYY`. 

### Fungsi `MONTH(X)`
Fungsi untuk mengambil elemen bulan dari tanggal `X`

contoh penggunaannya 
```sql
MONTH('2025-05-05') -- hasilnya '05'
```
Fungsi ini akan mengambil bagian bulan dari sebuah date. Bulan yang diambil dalam format `MM` sehingga hasilnya berupa bulan dalam angka 

### Fungsi `DAY(X)`
Fungsi ini untuk mengambil elemen tanggal atau hari dari sebuah tanggal `X`

contoh penggunaannya
```sql
DAY('2025-05-05') -- hasilnya '05'
```
Fungsi ini akan mengambil elemen hari dari sebuah date. Hari yang diambil dalam format `DD` sehingga harinya hanya berupa angka tanpa menyebutkan hari apa. 

### Fungsi `DATEDIFF(X1, X2)`
Fungsi untuk menghitung selisih hari dari tanggal `X1` dan `X2`
contoh penggunaannya :
```sql
DATEDIFF('2022-05-03', '2022-07-22') -- hasilnya '-80'
DATEDIFF('2022-07-22','2022-05-03') -- hasilnya 80
```
Perhatikan pada percobaan pertama selisih `X1` dengan `X2` hasilnya adalah `-80` karena date `X2` lebih kecil dari `X1`. Sementara pada percobaan kedua selisihnya adalah `80` karena `X1` lebih besar dari pada `X2`. 

Jika ingin referensi lebih lanjut ikuti [link ini](https://dev.mysql.com/doc/refman/8.0/en/functions.html)


### Praktek 8
Ketikkan perintah SQL berikut ini 
```sql
SELECT POW(3,2), ROUND(3.14), ROUND(3.54), 
	ROUND(3.155, 1), ROUND(3.155, 2),
	FLOOR(4.28), FLOOR(4.78), 
	CEILING(4.39), CEILING(4.55);
```
perhatikan hasilnya, dimana terdapat satu row atau baris, yang menampilkan 9 kolom dengan hasil sesuai dengan penggunaan fungsinya masing-masing. 

### Praktek 9
Ketikkan perintah SQL berikut ini
```sql
SELECT NOW(), YEAR('2022-05-03'), DATEDIFF('2022-07-22', '2022-05-03'), DAY('2022-05-03');
```
Perhatikan hasilnya, fungsi `NOW()` akan menampilkan tanggal yang berbeda-beda karena menampilkan tanggal pada saat perintah SQL dieksekusi. Sementara fungsi `DATEDIFF()` menampilkan selisih hari antara tanggal `'2022-07-22'` dengan `'2022-05-03'` hasilnya 80 hari. Berikutnya fungsi `DAY()` akan menampilkan tanggal dari date `'2022-05-03'` yaitu tanggal 3. 

### Latihan Mandiri 3
Latih dengan mencoba berbagai fungsi berikut dengan SELECT
* Hitung selisih tanggal '2022-07-23' dengan tanggal saat ini
* Ekstrak elemen tahun dari tanggal ini '2022-07-23'
* Ekstrak eleman bulan dari tanggal ini '2022-07-23'
* Ekstrak elemen hari dari date ini '2022-07-23'
* Ekstrak elemen tahun dari tanggal saat ini


### Praktek 10
Berapa selisih hari antara semua tanggal transaksi pada tabel tr_penjualan dengan tanggal hari ini. 
```sql
SELECT DATEDIFF(NOW(), tgl_transaksi) AS jarak_transaksi FROM tr_penjualan;
```
Hasilnya akan menampilkan seluruh selisih tanggal transaksi terakhir dengan tanggal hari ini untuk setiap tanggal transaksi yang ada pada tabel tr_penjualan. 

## 6. Filtering dengan Klausul `WHERE`
**Penyaringan atau *filtering*** pada SQL adalah suatu proses untuk **membatasi output data** yang dihasilkan berdasarkan **kondisi atau kriteria tertentu**. Kondisi atau kriteria ini adalah merupakan e**kspresi perbandingan**. Penerapan *filtering* pada SQL adalah menggunakan `WHERE`

![Filterinf WHERE](https://github.com/adamMaulachela/Kuliah_Adm_Basisdata/blob/main/img/filtering.png)

### Praktek 11
Mengambil data nama_produk, dan qty dari tabel penjualan yang qty lebih dari 3
```SQL
SELECT nama_produk, qty 
FROM tr_penjualan WHERE qty>3;
```
Hasilnya akan menampilkan semua nama produk dari tabel `tr_penjualan` yang `qty` nya lebih dari 3 

### Praktek 12
Mengambil dara nama produk dan qty yang terjual dari tabel penjualan yang qty lebih dari 3 dan transaksinya terjadi pada bulan Juni
```SQL
SELECT nama_produk, qty, tgl_transaksi
FROM tr_penjualan_dqlab 
WHERE qty>3 AND month(tgl_transaksi)=6;
```
Hasil ekskusi dari perintah diatas adalah tiga kolom yaitu `nama_produk`, `qty`, dan `tgl_transaksi` yang `qty` lebih dari 3 dan transaksinay terjadi pada bulan Juni.

### Praktek 13
Mengambil nama produk, qty, dan tanggal transaksi untuk produk dengan nama 'Flaskdisk 32 GB' dari tabel penjualan
```SQL
SELECT nama_produk, qty, tgl_transaksi
FROM tr_penjualan_dqlab 
WHERE nama_produk = 'Flaskdisk 32 GB';
```
Hasilnya akan menampilkan data nama produk, qty dan tanggal transaksi dari produk 'Flaskdisk 32 GB' di tabel penjualan. 

## 7. Operator Perbandingan `LIKE`
`LIKE` pada SQL adalah suatu operator pada SQL untuk **filter literal** atau field teks **dengan pola tertentu**. `LIKE` adalah operator yang menggunakan simbol berikut untuk menemukan pola karakter `%` (persen) untuk mewakili nol atau lebih karakter apapun `_` (garis bawah) untuk mewakili persis satu karakter.

![like](https://github.com/adamMaulachela/Kuliah_Adm_Basisdata/blob/main/img/like.png)

Beberapa pola teks yang dipakai pada `LIKE`
| Pola Teks | Keterangan                                                                                         |
| --------- | -------------------------------------------------------------------------------------------------- |
| `F%`      | Suatu teks yang diawali karakter F, dan bisa atau tidak diikuti oleh karakter apapun setelah F ini |
| `F_`      | Seluruh teks terdiri dari dua karakter, diawali karakter F dan diikuti satu karakter apapun        |
| `%f%`     | Suatu teks yang bisa diawali dan diakhiri karakter apapun, dengan minimal mengandung satu huruf f  |
| `_Q%`     | Suatu teks yang karakter keduanya adalah Q                                                         |


### Praktek 14
Mengambil nama produk dari tabel penjualan yang nama produknya memiliki huruf 'f' sebagai awal kata
```SQL
SELECT nama_produk FROM tr_penjualan_dqlab WHERE nama_produk LIKE 'f%';
```

### Latihan Mandiri 4
Latih dengan mencoba berbagai filtering dengan LIKE untuk pola teks berikut :
* nama_produk yang memiliki karakter kedua ‘a’ pada table tr_penjualan
* kategori_produk yang mengandung huruf ‘t’ pada table ms_produk
* kategori_produk yang mengandung karakter ‘un’ pada table ms_produk


## 8. Operator Logika
**Operator Logika** pada SQL adalah suatu operator untuk **menggabungkan dua ekspresi perbandingan** atau literal boolean. Hasil dari operator ini adalah **nilai boolean**.

Berikut adalah jenis-jenis operator Logika dalam SQL
| Operator        | Keterangan                           |
| --------------- | ------------------------------------ |
| `AND` atau `&&` | Operator logika untuk kondisi DAN    |
| `OR`            | Operator logika untuk kondisi ATAU   |
| `NOT` atau `!`  | Operator logika untuk kondisi negasi |
| `XOR`           | Operator logika Exclusive OR         |

contoh tabel operasi logika
| X1    | X2    | AND   | OR    | XOR   |
| ----- | ----- | ----- | ----- | ----- |
| True  | True  | True  | True  | False |
| True  | False | False | True  | True  |
| False | True  | False | True  | True  |
| False | False | False | False | False |

### Praktek 15
Mengambil nama produk dari table tr_penjualan yang memiliki pola teks berawalan huruf F dan qty penjualan di atas 2
```SQL
SELECT nama_produk 
FROM tr_penjualan
WHERE nama_produk LIKE 'f%' AND qty > 2;
```







