library(tidyverse)
library(grid)
library(ggplot2)
install.packages("pastecs")
library(pastecs)
library(ggplot2)
library(dplyr)
library(tidyr)
library(ggVennDiagram)
library(summarytools)

var1 <- 'AMT_INCOME_TOTAL'
var2 <- 'CODE_GENDER'
var3 <- 'NAME_INCOME_TYPE'
save_data <- '~/../bachelorarbeit/versuchsreihe/statistics/' 
setwd(save_data)

Spalte1 <- read.csv('~/../bachelorarbeit/versuchsreihe/datasets/original/application_record.csv',header = TRUE,dec=".", sep = ",",stringsAsFactors=FALSE)
Spalte1_test <- read.csv('~/../bachelorarbeit/versuchsreihe/datasets/prepaired/CODE_GENDER/y_test.csv',header = TRUE,dec=",", sep = ";",stringsAsFactors=FALSE)
Spalte1_reain <- read.csv('~/../bachelorarbeit/versuchsreihe/datasets/prepaired/CODE_GENDER/y_test.csv',header = TRUE,dec=",", sep = ";",stringsAsFactors=FALSE)


freq(Spalte1$CODE_GENDER, report.nas = FALSE, headings = FALSE)
freq(Spalte1_train$CODE_GENDER, report.nas = FALSE, headings = FALSE)
freq(Spalte1_test$CODE_GENDER, report.nas = FALSE, headings = FALSE)


  ggplot(data=Spalte1 ) +
    geom_bar(mapping =aes(x = CODE_GENDER,fill = CODE_GENDER  ))+
    coord_flip()+
    
    labs(title = "Balkendiagramm: Trainingsdaten")
 
  ggsave("verteilung_daten_CODE_GENDER.png", width = 25, height = 10)
  
  
  ggplot(data=Spalte1_train ) +
    geom_bar(mapping =aes(x = CODE_GENDER,fill = CODE_GENDER  ))+
    labs(title = "Balkendiagramm: Testdaten")+
    coord_flip()
ggsave("verteilung_testdaten_CODE_GENDER.png", width = 25, height = 10)

ggplot(data=Spalte1_test ) +
  geom_bar(mapping =aes(x = CODE_GENDER,fill = CODE_GENDER  ))+
  labs(title = "Balkendiagramm: Testdaten")+
  coord_flip()
ggsave("verteilung_testdaten_CODE_GENDER.png", width = 25, height = 10)
