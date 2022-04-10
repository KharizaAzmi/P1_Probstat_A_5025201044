# Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan
# a. Fungsi Probabilitas dari Distribusi Normal P(X1 ??? x ??? X2), hitung Z-Score Nya dan plot
#  data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
#  Keterangan :
#  X1 = Dibawah rata-rata
#  X2 = Diatas rata-rata
#  Contoh data :
# 11
# 1,2,4,2,6,3,10,11,5,3,6,8
# rata-rata = 5.083333
# X1 = 5
# X2 = 6

x <- seq(from=0, to=100)
x

y <- rnorm(n=100, mean=50, sd=8)
y

dens <- dnorm(x, mean=50, sd=8)
plot(x, dens, type = "l", main = "Normal dist for X: Mean=50, s=8)", xlab = "x", ylab = "Probability density",las=1) + abline(v=50)

# b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
#  NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
# Contoh :
#  312312312_Rola_Probstat_A_DNhistogram
png(file="5025201044_Khariza Azmi Alfajira Hisyam_Probstat_A_DNhistogram.png")

hist(y, breaks=50)

dev.off()

# c. Nilai Varian (??²) dari hasil generate random nilai Distribusi Normal.
var(rnorm(y))
