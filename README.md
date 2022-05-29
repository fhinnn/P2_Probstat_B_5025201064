# P2_Probstat_B_5025201064
Repository untuk Pengerjaan praktikum 2 Probstat 2022


| Nama | NRP |
| ------ | ------ |
| DHAFIN ALMAS NUSANTARA | 5025201064 |

# Soal 1

- Poin A

 Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
 ```r
 x <- c(78,75,67,77,70,72,78,74,77)
y <- c(100,95,70,90,90,90,89,90,100)
sd (x-y)
 ```
 - Keterangan
 
 Memasukkan data data tabel lalu Mengunakan syantax `sd` untuk mencari standart deviasi dari selisih data tabel yang ada
 dihasilkan nilai sebesar `6.359595`
 
 - Dokumentasi
 
 ![1 a.jpg](https://drive.google.com/uc?export=view&id=1Wph39pJ2NwMW-_pumQUkRlcL52SWWCO5)
 
 - Poin B
 
 carilah nilai t (p-value)
 ```r
 t.test (y , x , paired=TRUE)
 ```
 - Keterangan
 
 Mencari nilai Uji T (p-value) dengan menggunakan syntax `t.test` dihasilkan nilai p-value `6.003e-05`
 
 - Dokumentasi
 
 ![1 b.jpg](https://drive.google.com/uc?export=view&id=1v3tHWFPpFRsN4lp5ipfH40psZrjMH5ug)
 
 - Poin C

tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

- Keterangan

Karena nilai probabilitas tersebut lebih kecil dari 𝛼 = 0,05, 
maka hipotesis nol ditolak dan hipotesis alternatif diterima. Hal ini berarti terdapat pengaruh 
yang signifikan secara statistika dalam hal jumlah denyut jantung, sebelum dan sesudah 
mengkonsumsi obat 𝐴 pada tingkat signifikansi 5%.

# Soal 2

- Poin A

Apakah Anda setuju dengan klaim tersebut?

- Katerangan

- Poin B

Jelaskan maksud dari output yang dihasilkan!
```r
zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100,  
alternative = "greater", mu = 20000,
conf.level = 0.95)
```

- Keterangan

Dari output yang dihasilkan niali `z = 8.9744`,` p-value < 2.2e-16` dan dapat disimpulkan bahwa hipotesis alternatif yang diteria

- Dokumentasi

 ![2.jpg](https://drive.google.com/uc?export=view&id=1zDDyiRpQOT-Twztj6QRiNX5B9lpcAEZI)
 
- Poin C

Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

- Keterangan




 
 
