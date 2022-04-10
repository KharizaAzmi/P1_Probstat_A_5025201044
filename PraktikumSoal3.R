# Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
# 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
# a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
# Using exact probability
result1 <- dpois(x = 6, lambda = 4.5)
result1

# b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
# setahun (n = 365)
library(ggplot2)
library(dplyr)
options(scipen = 999, digits = 2) # sig digits

events <- 0:365
density <- dpois(x = events, lambda = 4.5)
prob <- ppois(q = events, lambda = 4.5, lower.tail = TRUE)
df <- data.frame(events, density, prob)
ggplot(df, aes(x = factor(events), y = density)) +
  geom_col() +
  geom_text(
    aes(label = round(density,2), y = density + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "PMF and CDF of Poisson Distribution",
       subtitle = "P(4.5).",
       x = "Events (x)",
       y = "Density") +
  geom_line(data = df, aes(x = events, y = prob))

# c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
# Nilai keduanya berdekatan

# d. Nilai Rataan (??) dan Varian (??²) dari Distribusi Poisson.
# mean n variance 
365 * result1

