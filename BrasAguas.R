#iniciando analise dos dados do Brasil das aguas
#sera utilizado como exercicio para meu avanco no uso do R e do GitHub

library(nlme)
library(ggplot2)
library(dplyr)
library(magrittr)
library(tidyr)

brasil<-read.table("C:/Users//Farjala/Documents/R/Brasil-das-Aguas/BrasAgua.txt", header=TRUE, stringsAsFactors = FALSE)
str(brasil)
as.numeric(as.character(brasil$Temp))
as.numeric(as.character(brasil$OD))
as.numeric(as.character(brasil$pH))

# olhada geral na distribuicao dos dados ----------------------------------

hist (brasil$Bacteria)
hist (log(brasil$Bacteria))
qqnorm (log(brasil$Bacteria))
ks.test (log(brasil$Bacteria), pnorm)
shapiro.test (log(brasil$Bacteria))

# ambos, Shapiro e K-S, indicaram que mesmo os dados logaritmzados não são normais


