setwd("C:/Users/Zanel/Desktop/FALL 24 STATS/FALL224753lesl0009/Lab/Lab1")
ddt <- read.csv("DDT-1.csv")

library(dplyr)

##ddt %>% filter(SPECIES == "SMBUFFALO") %>% summarize(mean_WEIGHT = mean(WEIGHT))

with(ddt, mean(ddt[SPECIES == "SMBUFFALO",]$WEIGHT))

with(ddt, mean(ddt[SPECIES == "CCATFISH" & DDT > 33,]$LENGTH))

with(ddt, sd(ddt[SPECIES == "LMBASS" | SPECIES == "SMBUFFALO",]$DDT))

table(with(ddt, ddt$LENGTH > 40 & ddt$WEIGHT > 1000))

