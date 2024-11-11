ddt <- read.csv("EPAGAS.CSV")
mpg <- ddt$MPG
z = (mpg - mean(mpg)) / sd(mpg)
mpg[abs(z)>=2 & abs(z)<=3]
mpg[abs(z)>3]

length(mpg[abs(z) < 3]) / length(mpg)

library(ggplot2)
ggplot(ddt, aes(x = z)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black") +
  labs(x = "z score", y = "Frequency")

pbinom(q = 1, size = 15, prob=0.4)
1 - ppois(q = 3, lambda = 2)


birthday <- function(k){
  1 - exp(lchoose(365,k) + lfactorial(k) - k +1)
            }
birthday(k = 20)
