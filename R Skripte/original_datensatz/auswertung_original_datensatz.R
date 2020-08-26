install.packages("corrplot")
install.packages("summarytools")
source("http://www.sthda.com/upload/rquery_cormat.r")
library(tidyverse)
library(corrplot)
library(summarytools)

# Laden CSV-Datei ---------------------------------------------------------


application_record  <- read.csv('~/../bachelorarbeit/data/application_record.csv',header = TRUE)

# Auswertung application_record kontinuirlich -----------------------------

kont <- select(application_record,AMT_INCOME_TOTAL,DAYS_BIRTH ,DAYS_EMPLOYED)

view(dfSummary(kont))
# Auswertung application_record kategorisch -------------------------------

cat_1 <- select(application_record,CODE_GENDER, FLAG_OWN_CAR, FLAG_OWN_REALTY) 
cat_2 <- select(application_record,NAME_INCOME_TYPE, NAME_EDUCATION_TYPE,NAME_FAMILY_STATUS,NAME_HOUSING_TYPE)

view(dfSummary(cat_1))
view(dfSummary(cat_2))


# Anderer Datensatz BitcoinHeistData---------------------------------------

BitcoinHeistData  <- read.csv('~/../bachelorarbeit/data/BitcoinHeistData.csv',header = TRUE)
view(dfSummary(BitcoinHeistData))


# Anderer Datensatz e-shop ------------------------------------------------


e-shop  <- read.csv('~/../bachelorarbeit/data/e-shop clothing 2008.csv',header = TRUE)
view(dfSummary(e-shop))
