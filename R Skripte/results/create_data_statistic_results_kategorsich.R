library(tidyverse)
library(plyr)
library(mosaic)

methode_1 <- "modus"
methode_2 <- "correlation_2"
methode_3 <- "rondom_forest_classification"

column_1 <- "CODE_GENDER"
column_2 <-'NAME_INCOME_TYPE'

result_kategorisch <- data.frame()


# CODE_GENDER MODUS  ------------------------------------------------------


datei <- str_c('~/../bachelorarbeit/versuchsreihe/results/',methode_1, '/',column_1,'.csv' )
obj <- read.csv( datei,header = TRUE, sep = ";",dec = ",", stringsAsFactors=FALSE)
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X0,missing  =  "0",methode =methode_1,column = column_1))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X10,missing = "10",methode =methode_1,column = column_1))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X25,missing = "25",methode =methode_1,column = column_1))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X50,missing = "50",methode =methode_1,column = column_1))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X80,missing = "80",methode =methode_1,column = column_1))

result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$CODE_GENDER,missing = "CODE_GENDER",methode =methode_1,column = column_1))

# CODE_GENDER correlation_2 -----------------------------------------------



datei <- str_c('~/../bachelorarbeit/versuchsreihe/results/',methode_2, '/',column_1,'.csv' )
obj <- read.csv( datei,header = TRUE, sep = ";",dec = ",", stringsAsFactors=FALSE)
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X0,missing  =  "0",methode =methode_2,column = column_1))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X10,missing = "10",methode =methode_2,column = column_1))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X25,missing = "25",methode =methode_2,column = column_1))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X50,missing = "50",methode =methode_2,column = column_1))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X80,missing = "80",methode =methode_2,column = column_1))

result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$CODE_GENDER,missing = "CODE_GENDER",methode =methode_2,column = column_1))


# CODE_GENDER rondom_forest_classification --------------------------------


datei <- str_c('~/../bachelorarbeit/versuchsreihe/results/',methode_3, '/',column_1,'.csv' )
obj <- read.csv( datei,header = TRUE, sep = ";",dec = ",", stringsAsFactors=FALSE)
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X0,missing  =  "0",methode =methode_3,column = column_1))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X10,missing = "10",methode =methode_3,column = column_1))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X25,missing = "25",methode =methode_3,column = column_1))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X50,missing = "50",methode =methode_3,column = column_1))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X80,missing = "80",methode =methode_3,column = column_1))

result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$CODE_GENDER,missing = "CODE_GENDER",methode =methode_3,column = column_1))


# CODE_GENDER change FALSE in F -------------------------------------------


result_kategorisch[result_kategorisch$werte == "FALSE", ]$werte <- "F"


# NAME INCOME TYPE Modus --------------------------------------------------


datei <- str_c('~/../bachelorarbeit/versuchsreihe/results/',methode_1, '/',column_2,'.csv' )
obj <- read.csv( datei,header = TRUE, sep = ";",dec = ",", stringsAsFactors=FALSE)
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X0,missing  =  "0",methode =methode_1,column = column_2))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X10,missing = "10",methode =methode_1,column = column_2))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X25,missing = "25",methode =methode_1,column = column_2))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X50,missing = "50",methode =methode_1,column = column_2))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X80,missing = "80",methode =methode_1,column = column_2))

result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$NAME_INCOME_TYPE,missing = 'NAME_INCOME_TYPE',methode =methode_1,column = column_2))


# NAME INCOME TYPE correlation_2  -----------------------------------------


datei <- str_c('~/../bachelorarbeit/versuchsreihe/results/',methode_2, '/',column_2,'.csv' )
obj <- read.csv( datei,header = TRUE, sep = ";",dec = ",", stringsAsFactors=FALSE)
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X0,missing  =  "0",methode =methode_2,column = column_2))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X10,missing = "10",methode =methode_2,column = column_2))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X25,missing = "25",methode =methode_2,column = column_2))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X50,missing = "50",methode =methode_2,column = column_2))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X80,missing = "80",methode =methode_2,column = column_2))

result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$NAME_INCOME_TYPE,missing = 'NAME_INCOME_TYPE',methode =methode_2,column = column_2))


# NAME INCOME TYPE rondom_forest_classification  --------------------------


datei <- str_c('~/../bachelorarbeit/versuchsreihe/results/',methode_3, '/',column_2,'.csv' )
obj <- read.csv( datei,header = TRUE, sep = ";",dec = ",", stringsAsFactors=FALSE)
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X0,missing  =  "0",methode =methode_3,column = column_2))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X10,missing = "10",methode =methode_3,column = column_2))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X25,missing = "25",methode =methode_3,column = column_2))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X50,missing = "50",methode =methode_3,column = column_2))
result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$X80,missing = "80",methode =methode_3,column = column_2))

result_kategorisch <- rbind(result_kategorisch, data.frame(werte = obj$NAME_INCOME_TYPE,missing = 'NAME_INCOME_TYPE',methode =methode_3,column = column_2))


# Test CODE GENDER MISSING = 10 -------------------------------------------
miss <- "10"

data <- filter (result_kategorisch,column == column_1, methode == methode_1, missing == miss )


ctable(x = data$werte, y = data$methode, prop = 'n',totals = TRUE, headings = FALSE)


# Save Data Frame ---------------------------------------------------------


save_data <- str_c('~/../bachelorarbeit/R Skripte/daten/' )
setwd(save_data)
save(result_kategorisch,file="result_kategorisch.Rda")

