library(tidyverse)

# Daten laden -------------------------------------------------------------
satistic <- read.csv('~/../bachelorarbeit/versuchsreihe/statistics/statistics.csv',header = TRUE, sep = ";", dec = ",")
data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/' )
setwd(data)


# Methoden ----------------------------------------------------------------

methode_1 <- "means"
methode_2 <- "modus"
methode_3 <- "median"
methode_4 <- "correlation_1"
methode_5 <- "rondom_forest_classification"
methode_6 <- "rondom_forest_regression"
methode_7 <- "neuronal_network_1"
methode_8 <- "correlation_2"
methode_9 <- "correlation_3"

# Variablen ---------------------------------------------------------------

column_1 <- "AMT_INCOME_TOTAL"

# Variable Missing --------------------------------------------------------

missing_1 <- '0'
missing_2 <- '10'
missing_3 <- '25'
missing_4 <- '50'
missing_5 <- '80'


# Metrik ------------------------------------------------------------------

metrik_1 <- 'DSC'
metrik_2 <- 'RMSE'
metrik_3 <- 'MAE'
metrik_4 <- 'MSE'


metrik_name_1 <- 'Sørensen-Dice Coefficient'
metrik_name_2 <- 'Root Mean Squared Error'
metrik_name_3 <- 'Mean Absolute Error'
metrik_name_4 <- 'Mean Squared Error'

# Ordner ------------------------------------------------------------------


ablage_ordner <-'metrik_mse'
# Übersicht Metrik---------------------------------------------------------

data <- filter(satistic,Wert != 0, Metric != metrik_1, Methode !=methode_8, Methode !=methode_9  )

ggplot(data = data,aes(y= Wert , x =Missing )) +
  geom_line(size=2, aes(color = Metric))+
  geom_point(size=2)+
  theme(axis.title.x = element_text(size =14))+
  theme(axis.title.y = element_text(l= "Wert in Tsd.",size = 16, angle = 90))+
  theme(axis.text.x = element_text(size = 18, angle=0, hjust=1))+
  theme(axis.text.y = element_text(size = 18))+
  theme(legend.title = element_text(size = 16, face="bold"))+
  theme(legend.text = element_text(size = 14))+
  labs(title ="Übersicht Metriken  ",x = "Missing in %", y = "Wert")+
  facet_grid(.~ Methode)

  save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/',ablage_ordner,'/' )
  setwd(save_data)
  ggsave(str_c("übersicht_metriken.png"), width = 25, height = 10)

# Metrik MSE --------------------------------------------------------------


ggplot(data = filter(data,Metric == metrik_4),aes(y= Wert , x =Missing )) +
  geom_line(size=2, aes(color = Metric))+
  geom_point(size=2)+
  theme(axis.title.x = element_text(size =14))+
  theme(axis.title.y = element_text(l= "Wert in Tsd.",size = 16, angle = 90))+
  theme(axis.text.x = element_text(size = 18, angle=0, hjust=1))+
  theme(axis.text.y = element_text(size = 18))+
  theme(legend.title = element_text(size = 16, face="bold"))+
  theme(legend.text = element_text(size = 14))+
  labs(title ="Übersicht MSE  ",x = "Missing in %", y = "Wert")+
  facet_grid(.~ Methode)
  
save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/',ablage_ordner,'/' )
setwd(save_data)
ggsave(str_c("übersicht_mse.png"), width = 25, height = 10)


# Metrik MSE Vergleich ----------------------------------------------------

ggplot(data = filter(data,Metric == metrik_4),aes(y= Wert , x =Missing )) +
  geom_line(size=2, aes(color =  Methode))+
  geom_point(size=2)+
  theme(axis.title.x = element_text(size =14))+
  theme(axis.title.y = element_text(l= "Wert in Tsd.",size = 16, angle = 90))+
  theme(axis.text.x = element_text(size = 18, angle=0, hjust=1))+
  theme(axis.text.y = element_text(size = 18))+
  theme(legend.title = element_text(size = 16, face="bold"))+
  theme(legend.text = element_text(size = 14))+
  labs(title ="Vergleich MSE  ",x = "Missing in %", y = "Wert")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/',ablage_ordner,'/' )
setwd(save_data)
ggsave(str_c("vergleich_mse.png"), width = 25, height = 10)


# Metrik MSE Schätzer -----------------------------------------------------

ggplot(data = filter(data,Metric == metrik_4, Methode == methode_1 | Methode == methode_2 |Methode == methode_3),aes(y= Wert , x =Missing )) +
  geom_line(size=2, aes(color =  Methode))+
  geom_point(size=2)+
  theme(axis.title.x = element_text(size =14))+
  theme(axis.title.y = element_text(l= "Wert in Tsd.",size = 16, angle = 90))+
  theme(axis.text.x = element_text(size = 18, angle=0, hjust=1))+
  theme(axis.text.y = element_text(size = 18))+
  theme(legend.title = element_text(size = 16, face="bold"))+
  theme(legend.text = element_text(size = 14))+
  labs(title ="Vergleich MSE Verhältnisschätzer ",x = "Missing in %", y = "Wert")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/',ablage_ordner,'/' )
setwd(save_data)
ggsave(str_c("vergleich_mse_verhältnisschätzer.png"), width = 25, height = 10)

# Vergleich Random Forest und neuronales Netz -----------------------------

ggplot(data = filter(data,Metric == metrik_4, Methode == methode_5 | Methode == methode_6 |Methode == methode_7),aes(y= Wert , x =Missing )) +
  geom_line(size=2, aes(color =  Methode))+
  geom_point(size=2)+
  theme(axis.title.x = element_text(size =14))+
  theme(axis.title.y = element_text(l= "Wert in Tsd.",size = 16, angle = 90))+
  theme(axis.text.x = element_text(size = 18, angle=0, hjust=1))+
  theme(axis.text.y = element_text(size = 18))+
  theme(legend.title = element_text(size = 16, face="bold"))+
  theme(legend.text = element_text(size = 14))+
  labs(title ="Vergleich MSE Neuronales Netz & Random Forest ",x = "Missing in %", y = "Wert")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/',ablage_ordner,'/' )
setwd(save_data)
ggsave(str_c("vergleich_mse_neuronales_etz_random_forest.png"), width = 25, height = 10)


# Vergleich Random Forest -------------------------------------------------

ggplot(data = filter(data,Metric == metrik_4, Methode == methode_5 | Methode == methode_6 ),aes(y= Wert , x =Missing )) +
  geom_line(size=2, aes(color =  Methode))+
  geom_point(size=2)+
  theme(axis.title.x = element_text(size =14))+
  theme(axis.title.y = element_text(l= "Wert in Tsd.",size = 16, angle = 90))+
  theme(axis.text.x = element_text(size = 18, angle=0, hjust=1))+
  theme(axis.text.y = element_text(size = 18))+
  theme(legend.title = element_text(size = 16, face="bold"))+
  theme(legend.text = element_text(size = 14))+
  labs(title ="Vergleich MSE Random Forest ",x = "Missing in %", y = "Wert")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/',ablage_ordner,'/' )
setwd(save_data)
ggsave(str_c("vergleich_mse_random_forest.png"), width = 25, height = 10)

