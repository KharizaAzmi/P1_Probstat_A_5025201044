# Soal nomer 1
# Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
# sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
p = 0.20
n = 3
# exact
dgeom(x = n, prob = p)

# mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
# geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
# simulated
mean(rgeom(n = 10000, prob = p) <= n)

#Perbandingan a dengan b
#Probabilitas jika diitung dengan nilai eksak maka hasilnya menjadi lebih bulat jika dibandingkan menggunakan fungsi mean bawaan fungsi R
#Namun keduanya tetap mendekati, namun selisih agak cukup signifikan


# Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
install.packages("magrittr") # package installations are only needed the first time you use it
install.packages("dplyr")    # alternative installation of the %>%
install.packages("ggplot2")
library(magrittr) # needs to be run every time you start R and want to use %>%
library(dplyr)    # alternatively, this also loads %>%
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = p)) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 3 Failures Prior to First Success",
       subtitle = "Geometric(.2)",
       x = "Failures prior to first success (x)",
       y = "Probability") 

# mean
# exact
1 / p

# Variance
# exact
(1 - p) / p^2
