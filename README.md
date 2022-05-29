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

Setuju, karena sesuai dengan apa yang ada pada perhitungan yang saya lakukan.

- Poin B

Jelaskan maksud dari output yang dihasilkan!
```r
zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100,  
alternative = "greater", mu = 20000,
conf.level = 0.95)
```

- Keterangan

Dari output yang dihasilkan niali `z = 8.9744`,` p-value < 2.2e-16` dan dapat disimpulkan bahwa hipotesis alternatif yang diterima

- Dokumentasi

 ![2.jpg](https://drive.google.com/uc?export=view&id=1zDDyiRpQOT-Twztj6QRiNX5B9lpcAEZI)
 
- Poin C

Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

- Keterangan
- 
nilai probabilitas tersebut lebih kecil dibandingkan tingkat signifikansi 𝛼 = 0.05, maka hipotesis nol ditolak dan hipotesis alternatif diterima. Sehingga, kesimpulan yang didapatkan yaitu bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.

# Soal 3

- Poin A

H0 dan H1

- Keterangan
H0 ← μ1 = μ2 (rata-rata saham di Bandung sama dengan di Bali)
H1 ← μ1 ≠ μ2 (rata-rata saham di Bandung tidak sama dengan di Bali)

- Poin B

Hitung Sampel Statistik
- Keterangan
```
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)
```
menggunakan fungsi tsum.test() dengan parameter sesuai dengan data pada tabel
- Dokumentasi


![3 b.jpg](https://drive.google.com/uc?export=view&id=1Xo-lLU_gI1REibUGjmd_zEHx9xHmdere)

- Poin C

Lakukan Uji Statistik (df =2)

- Keterangan

```
plotDist(dist = 't', df = 2, col = "blue")
```
fungsi plotDist() untuk mendapatkan gambaran atau visualisasi dari statistik dengan derajat bebas sebesar 2.

- Dokumentasi


![3 c.jpg](https://drive.google.com/uc?export=view&id=1INWB3nzMGysRG2PehvEUXx0V8oUKYZeN)

- Poin D

Nilai Kritikal
- Keterangan

fungsi qchisq() dengan nilai df sesuai dengan yang telah terlampir untuk mendapatkan nilai kritikal.
```
qchisq(p = 0.05, df = 2, lower.tail = FALSE)
```
- Dokumnetasi

![3 d.jpg](https://drive.google.com/uc?export=view&id=10POzAPn5sbQKi4nFjju7EN3a6JAoZUY_)

- Poin E

Keputusan

- Keterangan

Teori keputusan adalah teori formal pengambilan keputusan di bawah ketidakpastian.
(tergantung pada keadaan dan tindakan).
Maka keputusan dapat diperoleh dengan fungsi `t.test`

- Poin F

Kesimpulan

- Keterangan

Kesimpulan yang didapatkan yaitu perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik.
Namun, akan ada (meski tidak signifikan) jika dipengaruhi oleh nilai kritikal.


# Soal 4
- Poin A

Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1, grup 2, dan grup 3). Lalu gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.

- Keterangan

Pertama, memasukkan data dari dataset yang disediakan.

Kedua, melakukan grouping sesuai dengan label yang telah ditentukan sekaligus melakukan pengecekan value dalam grup yang dihasilkan.

Ketiga, membagi tiap valuer menjadi 3 bagian sesuai dengan label grup yang telah dibuat.
```
dataoneway$Group <- as.factor(dataoneway$Group)
dataoneway$Group = factor(dataoneway$Group, labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))

class(dataoneway$Group)
```
Keempat, menggambar plot kuantil normal untuk setiap grup untuk melihat distribusi data dan outlier
```
qqnorm(Group1$Length)
qqline(Group1$Length)
```
- Dokumentasi 

![4 a 1.jpg](https://drive.google.com/uc?export=view&id=1kCjyvOYiYMAN68Pb9iUUV9PCSXHFheH3)

![4 a 2.jpg](https://drive.google.com/uc?export=view&id=1c_ON1ddBYn3jdA3RpkqkXBLIzOJg44Kx)

![4 a 3.jpg](https://drive.google.com/uc?export=view&id=1jw5R1TyR9EJbnsrFw_7FxJ3aMCmbSy17)

- Poin B

Carilah atau periksalah homogeneity of variances-nya. Berapa nilai p yang didapatkan? Apa hipotesis dan kesimpulan yang dapat diambil?

- Keterangan

```
bartlett.test(Length ~ Group, data = dataoneway)
```

Dari hasil uji fungsi bartlett.test() didapatkan p-value sebesar 0.8054 yang lebih dari nilai 𝛼 = 0.05 sehingga asumsi kesamaan varians terpenuhi.

- Dokumentasi

![4 b.jpg](https://drive.google.com/uc?export=view&id=1HoVTHEyFA3QfuwIvWtF21rNtELHM63UP)

- Poin C

Untuk uji ANOVA (satu arah), buatlah model linier dengan panjang versus grup dan beri nama model tersebut model 1.

- Keterangan

Untuk membuat uji anova dan model liniernya, digunakan fungsi yaitu fungsi `lm()` dan `anova()` dengan parameter dari data yang telah dimasukkan sebelumnya.

```r
model1 = lm(Length ~ Group, data = dataoneway)
anova(model1)
```
- Dokumentasi

![4 c.jpg](https://drive.google.com/uc?export=view&id=1XHQYXucrlxCBT6POqzfjcB9hrS2lA_yy)

- Poin D

Dari hasil poin C, berapakah nilai p? Apa yang dapat Anda simpulkan dari H0?

- Keterangan

Berdasarkan hasil yang didapatkan pada poin sebelumnya, pada taraf uji 5% didapatkan nilai p-value sebesar 0.0013. Maka, terdapat perbedaan panjang kucing yang signifikan berdasarkan grupnya.

- Poin E

Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.

- Keterangan

Untuk verifikasi jawaban model 1 sebelumnya, digunakan sebuah fungsi yaitu fungsi `ukeyHSD()` dengan parameter model 1 dari AOV sebelumnya.

- Dokumentasi

![4 d.jpg](https://drive.google.com/uc?export=view&id=1AVrcpzqaf4aAo0bS7JIWE4nAcOi-mTVK)

- Poin F

Visualisasikan data dengan ggplot2

- Keterangan

```
install.packages("ggplot2")
library("ggplot2")

ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") + ylab("Length (cm)")
```
fungsi ggplot() untuk melakukan visualisasi data.

- Dokumentasi 

![4 e.jpg](https://drive.google.com/uc?export=view&id=1VUPdUFNb0rpxmK6JZhHPznDCed8N10aW)

# Soal 5
- Poin A

Buatlah plot sederhana untuk visualisasi data

- Keterangan

Pertama, digunakan beberapa library sebagai berikut.
Kedua, memasukkan dan membaca dataset yang telah disediakan.
Ketiga, melakukan observasi pada dataset.
Keempat, melakukan viasualisasi dengan menggunakan simple plot dengan fungsi `qplot()`
sebagai berikut.
```
qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)
```
- Dokumentasi

![5 a.jpg](https://drive.google.com/uc?export=view&id=16P8M1rLpE0TDlQBSQONkAIsoDAMagyss)



















 
 
