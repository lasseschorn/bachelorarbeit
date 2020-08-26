library(tidyverse)
library(plyr)
library(magrittr)
library(mosaic)


# Daten laden -------------------------------------------------------------


save_data <- str_c('~/../bachelorarbeit/R Skripte/daten/' )
setwd(save_data)

load("result_kontinuirlich.Rda")

# Methoden ----------------------------------------------------------------

methode_1 <- "means"
methode_2 <- "modus"
methode_3 <- "median"
methode_4 <- "correlation_1"
methode_5 <- "rondom_forest_classification"
methode_6 <- "rondom_forest_regression"

# Variablen ---------------------------------------------------------------

column_1 <- "AMT_INCOME_TOTAL"

# Variable Missing --------------------------------------------------------

missing_1 <- '0'
missing_2 <- '10'
missing_3 <- '25'
missing_4 <- '50'
missing_5 <- '80'


# means -------------------------------------------------------------------

method <- methode_1
data <- filter(result_satistic,methode == method , column == column_1  )

#Diskreptive Analyse
favstats(data$werte ~ data$missing)

#Boxplot
ggplot(data=data) +
  geom_boxplot(mapping =  aes( x=werte, fill=missing))+
  scale_x_log10(labels = scales::label_number_si())+
  
  facet_grid(. ~ missing)+
  ggtitle( str_c('Boxplot Diagramm: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_boxplot_ergebnisse_AMT_INCOME_TOTAL.png"), width = 25, height = 10)

#Dichteschätzung
ggplot(data=data,aes(x = werte)) +
  geom_vline(aes(xintercept=median(werte),
                 color="Median"), linetype="dashed",
             size=1) +
  geom_vline(aes(xintercept=mean(werte),
                 color="Mean"), linetype="dotted",
             size=1) +
  geom_density(alpha = .2, fill="#FF6655") +
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle(str_c('Dichteschätzung: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")


save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_dichte_ergebnisse_AMT_INCOME_TOTAL.png"), width = 25, height = 10)



# modus--------------------------------------------------------------------

method <- methode_2
data <- filter(result_satistic,methode == method , column == column_1  )

#Diskreptive Analyse
favstats(data$werte ~ data$missing)

#Boxplot
ggplot(data=data) +
  geom_boxplot(mapping =  aes( x=werte, fill=missing))+
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle( str_c('Boxplot Diagramm: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_boxplot_ergebnisse_AMT_INCOME_TOTAL.png"), width = 25, height = 10)

#Dichteschätzung
ggplot(data=data,aes(x = werte)) +
  geom_vline(aes(xintercept=median(werte),
                 color="Median"), linetype="dashed",
             size=1) +
  geom_vline(aes(xintercept=mean(werte),
                 color="Mean"), linetype="dotted",
             size=1) +
  geom_density(alpha = .2, fill="#FF6655") +
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle(str_c('Dichteschätzung: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")


save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_dichte_ergebnisse_AMT_INCOME_TOTAL.png"), width = 25, height = 10)


# median -------------------------------------------------------------------


method <- methode_3
data <- filter(result_satistic,methode == method , column == column_1  )

#Diskreptive Analyse
favstats(data$werte ~ data$missing)

#Boxplot
ggplot(data=data) +
  geom_boxplot(mapping =  aes( x=werte, fill=missing))+
  
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle( str_c('Boxplot Diagramm: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_boxplot_ergebnisse_AMT_INCOME_TOTAL.png"), width = 25, height = 10)

#Dichteschätzung
ggplot(data=data,aes(x = werte)) +
  geom_vline(aes(xintercept=median(werte),
                 color="Median"), linetype="dashed",
             size=1) +
  geom_vline(aes(xintercept=mean(werte),
                 color="Mean"), linetype="dotted",
             size=1) +
  geom_density(alpha = .2, fill="#FF6655") +
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle(str_c('Dichteschätzung: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")


save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_dichte_ergebnisse_AMT_INCOME_TOTAL.png"), width = 25, height = 10)
# correlation_1 -----------------------------------------------------------


method <- methode_4
data <- filter(result_satistic,methode == method , column == column_1  )

#Diskreptive Analyse
favstats(data$werte ~ data$missing)

#Boxplot
ggplot(data=data) +
  geom_boxplot(mapping =  aes( x=werte, fill=missing))+
  
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle( str_c('Boxplot Diagramm: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_boxplot_ergebnisse_AMT_INCOME_TOTAL.png"), width = 25, height = 10)

#Boxplot 2
ggplot(data=filter(data, missing!="AMT_INCOME_TOTAL")) +
  geom_boxplot(mapping =  aes( x=werte, fill=missing))+
  
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle( str_c('Boxplot Diagramm 2: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_boxplot2_ergebnisse_AMT_INCOME_TOTAL.png"), width = 25, height = 10)


#Dichteschätzung
ggplot(data=data,aes(x = werte)) +
  geom_vline(aes(xintercept=median(werte),
                 color="Median"), linetype="dashed",
             size=1) +
  geom_vline(aes(xintercept=mean(werte),
                 color="Mean"), linetype="dotted",
             size=1) +
  geom_density(alpha = .2, fill="#FF6655") +
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle(str_c('Dichteschätzung: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")


save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_dichte_ergebnisse_AMT_INCOME_TOTAL.png"), width = 25, height = 10)

#Dichteschätzung 2
ggplot(data=filter(data, missing!="AMT_INCOME_TOTAL"),aes(x = werte)) +
  geom_vline(aes(xintercept=median(werte),
                 color="Median"), linetype="dashed",
             size=1) +
  geom_vline(aes(xintercept=mean(werte),
                 color="Mean"), linetype="dotted",
             size=1) +
  geom_density(alpha = .2, fill="#FF6655") +
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle(str_c('Dichteschätzung 2: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")


save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_dichte_ergebnisse_2_AMT_INCOME_TOTAL.png"), width = 25, height = 10)

# rondom_forest_classification --------------------------------------------

method <- methode_5
data <- filter(result_satistic,methode == method , column == column_1  )

#Diskreptive Analyse
favstats(data$werte ~ data$missing)

#Boxplot
ggplot(data=data) +
  geom_boxplot(mapping =  aes( x=werte, fill=missing))+
  
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle( str_c('Boxplot Diagramm: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_boxplot_ergebnisse_AMT_INCOME_TOTAL.png"), width = 25, height = 10)

#Boxplot 2
ggplot(data=filter(data, missing!="AMT_INCOME_TOTAL")) +
  geom_boxplot(mapping =  aes( x=werte, fill=missing))+
  
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle( str_c('Boxplot Diagramm 2: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_boxplot2_ergebnisse_AMT_INCOME_TOTAL.png"), width = 25, height = 10)


#Dichteschätzung
ggplot(data=data,aes(x = werte)) +
  geom_vline(aes(xintercept=median(werte),
                 color="Median"), linetype="dashed",
             size=1) +
  geom_vline(aes(xintercept=mean(werte),
                 color="Mean"), linetype="dotted",
             size=1) +
  geom_density(alpha = .2, fill="#FF6655") +
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle(str_c('Dichteschätzung 1: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")


save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_dichte_ergebnisse_AMT_INCOME_TOTAL.png"), width = 25, height = 10)

#Dichteschätzung 2
ggplot(data=filter(data, missing!="AMT_INCOME_TOTAL"),aes(x = werte)) +
  geom_vline(aes(xintercept=median(werte),
                 color="Median"), linetype="dashed",
             size=1) +
  geom_vline(aes(xintercept=mean(werte),
                 color="Mean"), linetype="dotted",
             size=1) +
  geom_density(alpha = .2, fill="#FF6655") +
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle(str_c('Dichteschätzung 2: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")


save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_dichte_ergebnisse2_AMT_INCOME_TOTAL.png"), width = 25, height = 10)



# rondom_forest_regression ------------------------------------------------

method <- methode_6
data <- filter(result_satistic,methode == method , column == column_1  )

#Diskreptive Analyse
favstats(data$werte ~ data$missing)

#Boxplot
ggplot(data=data) +
  geom_boxplot(mapping =  aes( x=werte, fill=missing))+
  
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle( str_c('Boxplot Diagramm: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_boxplot_ergebnisse_AMT_INCOME_TOTAL.png"), width = 25, height = 10)
#Boxplot 2
ggplot(data=filter(data, missing!="AMT_INCOME_TOTAL")) +
  geom_boxplot(mapping =  aes( x=werte, fill=missing))+
  
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle( str_c('Boxplot Diagramm 2: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_boxplot2_ergebnisse_AMT_INCOME_TOTAL.png"), width = 25, height = 10)

#Dichteschätzung
ggplot(data=data,aes(x = werte)) +
  geom_vline(aes(xintercept=median(werte),
                 color="Median"), linetype="dashed",
             size=1) +
  geom_vline(aes(xintercept=mean(werte),
                 color="Mean"), linetype="dotted",
             size=1) +
  geom_density(alpha = .2, fill="#FF6655") +
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle(str_c('Dichteschätzung: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")


save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_dichte_ergebnisse_AMT_INCOME_TOTAL.png"), width = 25, height = 10)

#Dichteschätzung 2
ggplot(data=filter(data, missing!="AMT_INCOME_TOTAL"),aes(x = werte)) +
  geom_vline(aes(xintercept=median(werte),
                 color="Median"), linetype="dashed",
             size=1) +
  geom_vline(aes(xintercept=mean(werte),
                 color="Mean"), linetype="dotted",
             size=1) +
  geom_density(alpha = .2, fill="#FF6655") +
  scale_x_log10(labels = scales::label_number_si())+
  facet_grid(. ~ missing)+
  ggtitle(str_c('Dichteschätzung 2: Ergbnisse ',method, ' Imputaion')) +
  xlab("Wert in Tsd.:")+
  ylab("Norm")+
  theme(legend.position="bottom")+
  labs(fill = "Missing")


save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/', method)
setwd(save_data)
ggsave(str_c(method, "_dichte_ergebnisse2_AMT_INCOME_TOTAL.png"), width = 25, height = 10)

