# Diketahui nilai x = 2 dan v = 10. Tentukan:
#  a. Fungsi Probabilitas dari Distribusi Chi-Square.
x_pchisq <- seq (0, 2,by  =  0.1)   
y_pchisq <- pchisq(x_pchisq, df = 10)
y_pchisq
#  b. Histogram dari Distribusi Chi-Square dengan 100 data random.
N <- 100
y_rchisq <- rchisq(N, df = 10)         
y_rchisq
hist(y_rchisq,                                          
     breaks = 100,
     main = "")
#  c. Nilai Rataan (??) dan Varian (??²) dari DistribusiChi-Square.
#   mean
    v = 10
#   variance
    2 * v
