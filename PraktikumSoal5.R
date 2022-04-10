# Diketahui bilangan acak (random variable) berdistribusi exponential (?? = 3). Tentukan
# a. Fungsi Probabilitas dari Distribusi Exponensial
set.seed(1)
lambda <- 3
simulation <- rexp(n, rate=lambda)
simulation

# b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
library(ggplot2) 
theme_set(theme_bw(12))
ggplot(data.frame(values=simulation), aes(values)) + geom_density() + 
  labs(
    title = 'Density plot of the values in our simulation',
    caption = 'Fig 1: This density plot indicates the distribution of values in our simulated exponential distribution'
  ) + theme(
    plot.title = element_text(hjust = 0.5),
    plot.caption = element_text(hjust = 0),
  )

# c. Nilai Rataan (??) dan Varian (??²) dari Distribusi Exponensial untuk n = 100 dan ?? = 3
simulation1 <- rexp(100, rate=lambda)
mean(simulation1)
var(simulation1)
