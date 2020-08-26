library(tidyverse)
library(plyr)
library(mosaic)

# Methoden ----------------------------------------------------------------


methode_1 <- "means"
methode_2 <- "modus"
methode_3 <- "median"
methode_4 <- "correlation_1"
methode_5 <- "rondom_forest_classification"
methode_6 <- "rondom_forest_regression"

# Variablen ---------------------------------------------------------------


column_1 <- "AMT_INCOME_TOTAL"


result_kontinuirlich <- data.frame()


# AMT_INCOME_TOTAL means --------------------------------------------------

datei <- str_c('~/../bachelorarbeit/versuchsreihe/results/',methode_1, '/',column_1,'.csv' )
obj <- read.csv( datei,header = TRUE, sep = ";",dec = ",", stringsAsFactors=FALSE)
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X0,missing  =  "0",methode =methode_1,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X10,missing = "10",methode =methode_1,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X25,missing = "25",methode =methode_1,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X50,missing = "50",methode =methode_1,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X80,missing = "80",methode =methode_1,column = column_1))

result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$AMT_INCOME_TOTAL ,missing = "AMT_INCOME_TOTAL",methode =methode_1,column = column_1))

# AMT_INCOME_TOTAL modus --------------------------------------------------

datei <- str_c('~/../bachelorarbeit/versuchsreihe/results/',methode_2, '/',column_1,'.csv' )
obj <- read.csv( datei,header = TRUE, sep = ";",dec = ",", stringsAsFactors=FALSE)
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X0,missing  =  "0",methode =methode_2,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X10,missing = "10",methode =methode_2,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X25,missing = "25",methode =methode_2,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X50,missing = "50",methode =methode_2,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X80,missing = "80",methode =methode_2,column = column_1))

result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$AMT_INCOME_TOTAL ,missing = "AMT_INCOME_TOTAL",methode =methode_2,column = column_1))

# AMT_INCOME_TOTAL median -------------------------------------------------

datei <- str_c('~/../bachelorarbeit/versuchsreihe/results/',methode_3, '/',column_1,'.csv' )
obj <- read.csv( datei,header = TRUE, sep = ";",dec = ",", stringsAsFactors=FALSE)
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X0,missing  =  "0",methode =methode_3,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X10,missing = "10",methode =methode_3,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X25,missing = "25",methode =methode_3,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X50,missing = "50",methode =methode_3,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X80,missing = "80",methode =methode_3,column = column_1))

result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$AMT_INCOME_TOTAL ,missing = "AMT_INCOME_TOTAL",methode =methode_3,column = column_1))

# AMT_INCOME_TOTAL correlation_1 ------------------------------------------

datei <- str_c('~/../bachelorarbeit/versuchsreihe/results/',methode_4, '/',column_1,'.csv' )
obj <- read.csv( datei,header = TRUE, sep = ";",dec = ",", stringsAsFactors=FALSE)
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X0,missing  =  "0",methode =methode_4,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X10,missing = "10",methode =methode_4,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X25,missing = "25",methode =methode_4,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X50,missing = "50",methode =methode_4,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X80,missing = "80",methode =methode_4,column = column_1))

result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$AMT_INCOME_TOTAL ,missing = "AMT_INCOME_TOTAL",methode =methode_4,column = column_1))

# AMT_INCOME_TOTAL rondom_forest_classification ---------------------------

datei <- str_c('~/../bachelorarbeit/versuchsreihe/results/',methode_5, '/',column_1,'.csv' )
obj <- read.csv( datei,header = TRUE, sep = ";",dec = ",", stringsAsFactors=FALSE)
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X0,missing  =  "0",methode =methode_5,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X10,missing = "10",methode =methode_5,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X25,missing = "25",methode =methode_5,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X50,missing = "50",methode =methode_5,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X80,missing = "80",methode =methode_5,column = column_1))

result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$AMT_INCOME_TOTAL ,missing = "AMT_INCOME_TOTAL",methode =methode_5,column = column_1))

# AMT_INCOME_TOTAL rondom_forest_regression -------------------------------

datei <- str_c('~/../bachelorarbeit/versuchsreihe/results/',methode_6, '/',column_1,'.csv' )
obj <- read.csv( datei,header = TRUE, sep = ";",dec = ",", stringsAsFactors=FALSE)
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X0,missing  =  "0",methode =methode_6,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X10,missing = "10",methode =methode_6,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X25,missing = "25",methode =methode_6,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X50,missing = "50",methode =methode_6,column = column_1))
result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$X80,missing = "80",methode =methode_6,column = column_1))

result_kontinuirlich <- rbind(result_kontinuirlich, data.frame(werte = obj$AMT_INCOME_TOTAL ,missing = "AMT_INCOME_TOTAL",methode =methode_6,column = column_1))


# Test mit Means ----------------------------------------------------------

data <-filter(result_kontinuirlich,methode == methode_1, column == column_1 )
favstats(data$werte ~ data$missing)

# Save Data Frame ---------------------------------------------------------

save_data <- str_c('~/../bachelorarbeit/R Skripte/daten/' )
setwd(save_data)
save(result_kontinuirlich,file="result_kontinuirlich.Rda")

