library(ggplot2)
library(readr)
library(stats)

DaysOnMarket <- read_csv(file = "/home/ryanl/Desktop/CodingProjects/SellingGramsHouse/MEDDAYONMARUS.csv")
distribution <- DaysOnMarket$MEDDAYONMARUS[1:57]
stem(DaysOnMarket$MEDDAYONMARUS[1:57])