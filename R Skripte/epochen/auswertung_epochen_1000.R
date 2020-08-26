library(tidyverse)
library(grid)
library(ggplot2)
# Layer -------------------------------------------------------------------

text_size <- 20
achs_size <- 20
legen_size <- 20
title_size <- 60

# Daten laden -------------------------------------------------------------


save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/','neuronal_network','/' )
setwd(save_data)
Epocheen_2 <- read.csv('~/../bachelorarbeit/versuchsreihe/statistics/epochen_1000_2.csv',header = TRUE,dec=",", sep = ";")

# Daten formatieren -------------------------------------------------------


Epocheen_2$Missing <- as.factor(Epocheen_2$Missing) 
Epocheen_2$Wert <- as.numeric(Epocheen_2$Wert)
Epocheen_2$Epoche <- as.integer(Epocheen_2$Epoche)

# 100 Epochen ---------------------------------------------------------------

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/','neuronal_network','/','1000/' )
setwd(save_data)


# Daten filter ------------------------------------------------------------------
data <- filter(Epocheen_2,Type != "root_mean_squared_error")

ggplot(data =  data, aes(x=Epoche, y=Wert, group=Type)) +
  geom_smooth()+
  geom_line(aes(color=Type))+
  geom_point(aes(color=Type))+
  scale_y_log10(labels = scales::label_number_si())+
  facet_grid(.~Missing)+
  theme(legend.position="bottom")+
  theme(plot.title = element_text(size =  title_size))+
  theme(axis.title.x = element_text(size =achs_size))+##element_blank())+#
  theme(axis.title.y = element_text(size = achs_size, angle = 90))+
  theme(axis.text.x = element_text( size = text_size, angle=0, hjust=1))+#element_blank())+#
  theme(axis.text.y = element_text(size = text_size))+
  theme(legend.title = element_blank())+#element_text(size = legen_size, face="bold"))+
  theme(legend.text = element_text(size = legen_size))
ggsave("Epocheen_1000_gesamt_loss.png", width = 25, height = 10)

data <- filter(Epocheen_2,Type == "root_mean_squared_error")
ggplot(data =data , aes(x=Epoche, y=Wert, group=Type)) +
  geom_line(aes(color=Type))+
  geom_point(aes(color=Type))+
  scale_y_log10(labels = scales::label_number_si())+
  geom_smooth()+
  facet_grid(.~Missing)+
  theme(legend.position="bottom")+
  theme(plot.title = element_text(size =  title_size))+
  theme(axis.title.x = element_text(size =achs_size))+##element_blank())+#
  theme(axis.title.y = element_text(size = achs_size, angle = 90))+
  theme(axis.text.x = element_text( size = text_size, angle=0, hjust=1))+#element_blank())+#
  theme(axis.text.y = element_text(size = text_size))+
  theme(legend.title = element_blank())+#element_text(size = legen_size, face="bold"))+
  theme(legend.text = element_text(size = legen_size))
ggsave("Epocheen_1000_gesamt_rmse.png", width = 25, height = 10)



data <- filter(Epocheen_2,Type == "root_mean_squared_error")
ggplot(data =data , aes(x=Epoche, y=Wert, group=Type)) +
  geom_line(aes(color=Type))+
  geom_point(aes(color=Type))+
  scale_y_log10(labels = scales::label_number_si())+
  geom_smooth()+
  theme(legend.position="bottom")+
  theme(plot.title = element_text(size =  title_size))+
  theme(axis.title.x = element_text(size =achs_size))+##element_blank())+#
  theme(axis.title.y = element_text(size = achs_size, angle = 90))+
  theme(axis.text.x = element_text( size = text_size, angle=0, hjust=1))+#element_blank())+#
  theme(axis.text.y = element_text(size = text_size))+
  theme(legend.title = element_blank())+#element_text(size = legen_size, face="bold"))+
  theme(legend.text = element_text(size = legen_size))
ggsave("Epocheen_1000_gesamt.png", width = 25, height = 10)

