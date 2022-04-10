#Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
#a. Peluang terdapat 4 pasien yang sembuh.
# exact
dbinom(x = 4, size = 20, prob = 0.2)

#b. Gambarkan grafik histogram berdasarkan kasus tersebut.
library(dplyr)
library(ggplot2)
#library(scales)

data.frame(heads = 0:10, prob = dbinom(x = 0:10, size = 20, prob = 0.2)) %>%
  mutate(Heads = ifelse(heads == 4, "4", "other")) %>%
  ggplot(aes(x = factor(heads), y = prob, fill = Heads)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,4), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 4 successes.",
       subtitle = "b(20, .3)",
       x = "Successes (x)",
       y = "probability") 


#c. Nilai Rataan (??) dan Varian (??²) dari DistribusiBinomial.
#mean
20 * 0.2

#varian
20 * 0.2 * (1 - 0.2)
