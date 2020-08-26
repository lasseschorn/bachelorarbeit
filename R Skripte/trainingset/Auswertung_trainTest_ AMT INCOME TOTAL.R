library(tidyverse)
library(grid)
library(ggplot2)
install.packages("pastecs")
library(pastecs)
library(ggplot2)
library(dplyr)
library(tidyr)
library(ggVennDiagram)
library(mosaic)
var1 <- 'AMT_INCOME_TOTAL'
var2 <- 'CODE_GENDER'
var3 <- 'NAME_INCOME_TYPE'
save_data <- '~/../bachelorarbeit/versuchsreihe/statistics/' 
setwd(save_data)
Spalte1 <- read.csv('~/../bachelorarbeit/versuchsreihe/datasets/original/application_record.csv',header = TRUE,dec=".", sep = ",",stringsAsFactors=FALSE)
Spalte1_train <- read.csv('~/../bachelorarbeit/versuchsreihe/datasets/prepaired/AMT_INCOME_TOTAL/y_train.csv',header = TRUE,dec=",", sep = ";",stringsAsFactors=FALSE)
Spalte1_test <- read.csv('~/../bachelorarbeit/versuchsreihe/datasets/prepaired/AMT_INCOME_TOTAL/y_test.csv',header = TRUE,dec=",", sep = ";",stringsAsFactors=FALSE)

favstats(Spalte1$AMT_INCOME_TOTAL)
favstats(Spalte1_train$AMT_INCOME_TOTAL)
favstats(Spalte1_test$AMT_INCOME_TOTAL)

  ggplot(data=Spalte1, aes( x=AMT_INCOME_TOTAL)) +
  geom_boxplot()+
    scale_x_log10(labels = scales::label_number_si())+
    labs(title = "Boxplot Diagramm: Daten")
  ggsave("boxplot_AMT_INCOME_TOTAL.png", width = 25, height = 10)
  
  ggplot(data=Spalte1_train, aes( x=AMT_INCOME_TOTAL)) +
    geom_boxplot()+
    scale_x_log10(labels = scales::label_number_si())+
    labs(title = "Boxplot Diagramm: Trainingsdaten")
  ggsave("boxplot_training_AMT_INCOME_TOTAL.png", width = 25, height = 10)
  
  ggplot(data=Spalte1_test, aes( x=AMT_INCOME_TOTAL)) +
    geom_boxplot()+
    scale_x_log10(labels = scales::label_number_si())+
    labs(title = "Boxplot Diagramm: Testdaten")
  ggsave("boxplot_test_AMT_INCOME_TOTAL.png", width = 25, height = 10)
  
  
  
  
  ggplot(data=Spalte1, aes(x = AMT_INCOME_TOTAL)) +
    geom_vline(aes(xintercept=median(AMT_INCOME_TOTAL),
                   color="Median"), linetype="dashed",
               size=1) +
    geom_vline(aes(xintercept=mean(AMT_INCOME_TOTAL),
                   color="Mean"), linetype="dotted",
               size=1) +
    geom_density(alpha = .2, fill="#FF6655") +
    scale_x_log10(labels = scales::label_number_si(),name='AMT_INCOME_TOTAL')+
    
    labs(title = "Daten")
    
  
  ggsave("AMT_INCOME_TOTAL_verteilung_daten.png", width = 25, height = 10)
  
  ggplot(data=Spalte1_train, aes(x = AMT_INCOME_TOTAL)) +
    geom_vline(aes(xintercept=median(AMT_INCOME_TOTAL),
                   color="Median"), linetype="dashed",
               size=1) +
    geom_vline(aes(xintercept=mean(AMT_INCOME_TOTAL),
                   color="Mean"), linetype="dotted",
               size=1) +
    geom_density(alpha = .2, fill="#FF6655") +
    scale_x_log10(labels = scales::label_number_si(),name='AMT_INCOME_TOTAL')+
    labs(title = "Trainingdaten")
  ggsave("AMT_INCOME_TOTAL_verteilung_trainingdaten.png", width = 25, height = 10)
  
  
 
  
  ggplot(data=Spalte1_test, aes(x = AMT_INCOME_TOTAL)) +
    geom_vline(aes(xintercept=median(AMT_INCOME_TOTAL),
                   color="Median"), linetype="dashed",
               size=1) +
    geom_vline(aes(xintercept=mean(AMT_INCOME_TOTAL),
                   color="Mean"), linetype="dotted",
               size=1) +
    geom_density(alpha = .2, fill="#FF6655") +
    scale_x_log10(labels = scales::label_number_si(),name='AMT_INCOME_TOTAL')+
    labs(title = "Testdaten")
ggsave("AMT_INCOME_TOTAL_testdaten.png", width = 25, height = 10)






ggplot(data=Spalte1, aes(x = AMT_INCOME_TOTAL),y =AMT_INCOME_TOTAL) +
  geom_histogram(aes(y = ..density..), # the histogram will display "density" on its y-axis
                 binwidth = .5, colour = "blue", fill = "white") +
  geom_density(alpha = .2, fill="#FF6655") +
  scale_x_log10(labels = scales::label_number_si(),name='AMT_INCOME_TOTAL')+
  labs(title = "Trainingsdaten")+
  geom_vline(aes(xintercept = mean(`AMT_INCOME_TOTAL`)),
             colour = "red", 
             linetype ="longdash", 
             size = .8)+
  geom_vline(aes(xintercept =  median(`AMT_INCOME_TOTAL`)), 
             colour = "red",
             linetype = "dotted", 
             size=1)
ggsave("con_AMT_INCOME_TOTAL_verteilung_trainingdaten.png", width = 25, height = 10)

ggplot(data=Spalte1_train, aes(x = AMT_INCOME_TOTAL),y =AMT_INCOME_TOTAL) +
  geom_histogram(aes(y = ..density..), # the histogram will display "density" on its y-axis
                 binwidth = .5, colour = "blue", fill = "white") +
  geom_density(alpha = .2, fill="#FF6655") +
  scale_x_log10(labels = scales::label_number_si(),name='AMT_INCOME_TOTAL')+
  labs(title = "Daten")+
  geom_vline(aes(xintercept = mean(`AMT_INCOME_TOTAL`)),
             colour = "red", 
             linetype ="longdash", 
             size = .8)+
  geom_vline(aes(xintercept =  median(`AMT_INCOME_TOTAL`)), 
             colour = "red",
             linetype = "dotted", 
             size=1)
ggsave("con_AMT_INCOME_TOTALverteilung_trainingdaten.png", width = 25, height = 10)




ggplot(data=Spalte1_test, aes(x = AMT_INCOME_TOTAL),y =AMT_INCOME_TOTAL) +
  geom_histogram(aes(y = ..density..), # the histogram will display "density" on its y-axis
                 binwidth = .5, colour = "blue", fill = "white") +
  geom_density(alpha = .2, fill="#FF6655") +
  scale_x_log10(labels = scales::label_number_si(),name='AMT_INCOME_TOTAL')+
  labs(title = "Testdaten")+
  geom_vline(aes(xintercept = mean(`AMT_INCOME_TOTAL`)),
             colour = "red", 
             linetype ="longdash", 
             size = .8)+
  geom_vline(aes(xintercept =  median(`AMT_INCOME_TOTAL`)), 
             colour = "red",
             linetype = "dotted", 
             size=1)
ggsave("con_AMT_INCOME_TOTAL_verteilung_testdaten.png", width = 25, height = 10)

