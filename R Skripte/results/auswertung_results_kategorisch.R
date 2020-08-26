library(tidyverse)
library(plyr)

# Daten laden -------------------------------------------------------------


save_data <- str_c('~/../bachelorarbeit/R Skripte/daten/' )
setwd(save_data)

load("result_kategorisch.Rda")

# Methoden Variablen ------------------------------------------------------


methode_1 <- "modus"
methode_2 <- "correlation_2"
methode_3 <- "rondom_forest_classification"

# Spalten Variablen -------------------------------------------------------


column_1 <- "CODE_GENDER"
column_2 <-'NAME_INCOME_TYPE'

# Missing Variablen -------------------------------------------------------


missing_1 <- '0'
missing_2 <- '10'
missing_3 <- '25'
missing_4 <- '50'
missing_5 <- '80'


# Layer -------------------------------------------------------------------

text_size <- 40
achs_size <- 40
legen_size <- 40
title_size <- 60
# Modus CODE GENDER-------------------------------------------------------------------


mod <- filter(result_kategorisch,methode == methode_1  ,column == column_1  )
#ctable(x = mod$werte, y = mod$missing, prop = 'n',totals = TRUE, headings = FALSE)

ggplot(data=mod) +
  geom_bar(mapping =  aes( x=werte, group=werte, fill=werte))+
  facet_grid(.~ missing)+
  labs(x = "Merkmal", fill = "Merkmal",title = str_c('Histogramm: Ergbnis ',methode_1, ' Imputaion ',column_1 ))+
  theme(legend.position="bottom")+
  theme(plot.title = element_text(size =  title_size))+
  theme(axis.title.x = element_blank())+#element_text(size =achs_size))+
  theme(axis.title.y = element_text(l= "Wert in Tsd.",size = achs_size, angle = 90))+
  theme(axis.text.x = element_blank())+#element_text( size = text_size, angle=45, hjust=1))+
  theme(axis.text.y = element_text(size = text_size))+
  theme(legend.title = element_blank())+#element_text(size = legen_size, face="bold"))+
  theme(legend.text = element_text(size = legen_size))

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', methode_1)
setwd(save_data)
ggsave(str_c(methode_1, "histgramm_ergebnis_",column_1, ".png"), width = 25, height = 10)


# Modus NAME_INCOME_TYPE  -------------------------------------------------------

mod <- filter(result_kategorisch,methode == methode_1  ,column == column_2  )
#ctable(x = mod$werte, y = mod$missing, prop = 'n',totals = TRUE, headings = FALSE)

ggplot(data=mod) +
  geom_bar(mapping =  aes( x=werte, group=werte, fill=werte))+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  facet_grid(.~ missing)+
  labs(x = "Merkmal", fill = "Merkmal",title = str_c('Histogramm: Ergbnis ',methode_1, ' Imputaion ', column_2 ))+
  theme(legend.position="bottom")+
  theme(plot.title = element_text(size =  title_size))+
  theme(axis.title.x = element_blank())+#element_text(size =achs_size))+
  theme(axis.title.y = element_text(l= "Wert in Tsd.",size = achs_size, angle = 90))+
  theme(axis.text.x = element_blank())+#element_text( size = text_size, angle=45, hjust=1))+
  theme(axis.text.y = element_text(size = text_size))+
  theme(legend.title = element_blank())+#element_text(size = legen_size, face="bold"))+
  theme(legend.text = element_text(size = legen_size))

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', methode_1)
setwd(save_data)
ggsave(str_c(methode_1, "histgramm_ergebnis_",column_2, ".png"), width = 25, height = 10)


# correlation_2 CODE GENDER -----------------------------------------------


mod <- filter(result_kategorisch,methode == methode_2  ,column == column_1  )
#ctable(x = mod$werte, y = mod$missing, prop = 'n',totals = TRUE, headings = FALSE)

ggplot(data=mod) +
  geom_bar(mapping =  aes( x=werte, group=werte, fill=werte))+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  facet_grid(.~ missing)+
  labs(x = "Merkmal", fill = "Merkmal",title = str_c('Histogramm: Ergbnis ',methode_2, ' Imputaion ',column_1 ))+
  theme(legend.position="bottom")+
  theme(plot.title = element_text(size =  title_size))+
  theme(axis.title.x = element_blank())+#element_text(size =achs_size))+
  theme(axis.title.y = element_text(l= "Wert in Tsd.",size = achs_size, angle = 90))+
  theme(axis.text.x = element_blank())+#element_text( size = text_size, angle=45, hjust=1))+
  theme(axis.text.y = element_text(size = text_size))+
  theme(legend.title = element_blank())+#element_text(size = legen_size, face="bold"))+
  theme(legend.text = element_text(size = legen_size))


save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', methode_2)
setwd(save_data)
ggsave(str_c(methode_2, "histgramm_ergebnis_",column_1, ".png"), width = 25, height = 10)


# correlation_2 NAME_INCOME_TYPE-------------------------------------------


mod <- filter(result_kategorisch,methode == methode_2  ,column == column_2  )
#ctable(x = mod$werte, y = mod$missing, prop = 'n',totals = TRUE, headings = FALSE)

ggplot(data=mod) +
  geom_bar(mapping =  aes( x=werte, group=werte, fill=werte))+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  facet_grid(.~ missing)+
  labs(x = "Merkmal", fill = "Merkmal",title = str_c('Histogramm: Ergbnis ',methode_2, ' Imputaion ', column_2 ))+
  theme(legend.position="bottom")+
  theme(plot.title = element_text(size =  title_size))+
  theme(axis.title.x = element_blank())+#element_text(size =achs_size))+
  theme(axis.title.y = element_text(l= "Wert in Tsd.",size = achs_size, angle = 90))+
  theme(axis.text.x = element_blank())+#element_text( size = text_size, angle=45, hjust=1))+
  theme(axis.text.y = element_text(size = text_size))+
  theme(legend.title = element_blank())+#element_text(size = legen_size, face="bold"))+
  theme(legend.text = element_text(size = legen_size))


save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', methode_2)
setwd(save_data)
ggsave(str_c(methode_2, "histgramm_ergebnis_",column_2, ".png"), width = 25, height = 10)


# rondom_forest_classification CODE GENDER --------------------------------


mod <- filter(result_kategorisch,methode == methode_3  ,column == column_1  )
#ctable(x = mod$werte, y = mod$missing, prop = 'n',totals = TRUE, headings = FALSE)

ggplot(data=mod) +
  geom_bar(mapping =  aes( x=werte, group=werte, fill=werte))+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  facet_grid(.~ missing)+
  labs(x = "Merkmal", fill = "Merkmal",title = str_c('Histogramm: Ergbnis ',methode_3, ' Imputaion ',column_1 ))+
  theme(legend.position="bottom")+
  theme(plot.title = element_text(size =  title_size))+
  theme(axis.title.x = element_blank())+#element_text(size =achs_size))+
  theme(axis.title.y = element_text(l= "Wert in Tsd.",size = achs_size, angle = 90))+
  theme(axis.text.x = element_blank())+#element_text( size = text_size, angle=45, hjust=1))+
  theme(axis.text.y = element_text(size = text_size))+
  theme(legend.title = element_blank())+#element_text(size = legen_size, face="bold"))+
  theme(legend.text = element_text(size = legen_size))


save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', methode_3)
setwd(save_data)
ggsave(str_c(methode_3, "histgramm_ergebnis_",column_1, ".png"), width = 25, height = 10)


# rondom_forest_classification NAME_INCOME_TYPE ---------------------------



mod <- filter(result_kategorisch,methode == methode_3  ,column == column_2  )
#ctable(x = mod$werte, y = mod$missing, prop = 'n',totals = TRUE, headings = FALSE)

ggplot(data=mod) +
  geom_bar(mapping =  aes( x=werte, group=werte, fill=werte))+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))+
  facet_grid(.~ missing)+
  labs(x = "Merkmal", fill = "Merkmal",title = str_c('Histogramm: Ergbnis ',methode_3, ' Imputaion ', column_2 ))+
  theme(legend.position="bottom")+
  theme(plot.title = element_text(size =  title_size))+
  theme(axis.title.x = element_blank())+#element_text(size =achs_size))+
  theme(axis.title.y = element_text(l= "Wert in Tsd.",size = achs_size, angle = 90))+
  theme(axis.text.x = element_blank())+#element_text( size = text_size, angle=45, hjust=1))+
  theme(axis.text.y = element_text(size = text_size))+
  theme(legend.title = element_blank())+#element_text(size = legen_size, face="bold"))+
  theme(legend.text = element_text(size = legen_size))


save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', methode_3)
setwd(save_data)
ggsave(str_c(methode_3, "histgramm_ergebnis_",column_2, ".png"), width = 25, height = 10)

