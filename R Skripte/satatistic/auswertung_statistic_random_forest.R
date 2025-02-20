library(tidyverse)
satistic <- read.csv('~/../bachelorarbeit/versuchsreihe/statistics/statistics.csv',header = TRUE, sep = ";")

satistic$Missing <- as.factor(satistic$Missing) 
met1 <- 'correlation_1'
met2 <- 'correlation_2'
met3 <- 'correlation_3'
save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/',met1,'/' )
setwd(save_data)

ggplot(data = filter(satistic,Methode==met1 | Methode==met2 |Methode==met3,Metric == 'RMSE' , Wert!=0  )) +
  geom_line(mapping = aes(x =Missing, y = Wert, group=Variablenname, color=Variablenname),size=5)+
  geom_point(mapping = aes(x =Missing, y = Wert))+
  scale_y_log10(labels = scales::label_number_si())+
  theme(plot.title=element_text(size = 20, face="bold"))+
 theme(axis.title.x = element_text(size =14))+
 theme(axis.title.y = element_text(size = 16, angle = 90))+
  theme(axis.text.x = element_text(size = 18, angle=0, hjust=1))+
  theme(axis.text.y = element_text(size = 18))+
  theme(legend.title = element_text(size = 16, face="bold"))+
  theme(legend.text = element_text(size = 14))+
  labs(title ="Root Mean Squared Error", x = "Missing in %", y = "Wert")+
  ylim(110000, 125000)

#  facet_wrap(~ metric)

  ggsave(str_c(met,"_rmse.png"), width = 25, height = 10)

  
  ggplot(data = filter(satistic,Methode==met1 | Methode==met2 |Methode==met3,Metric == 'MAE', Wert!=0  )) +
    geom_line(mapping = aes(x =Missing, y = Wert, group=Variablenname, color=Variablenname),size=5)+
    geom_point(mapping = aes(x =Missing, y = Wert))+
    scale_y_log10(labels = scales::label_number_si())+
    theme(plot.title=element_text(size = 20, face="bold"))+
    theme(axis.title.x = element_text(size =14))+
    theme(axis.title.y = element_text(size = 16, angle = 90))+
    theme(axis.text.x = element_text(size = 18, angle=0, hjust=1))+
    theme(axis.text.y = element_text(size = 18))+
    theme(legend.title = element_text(size = 16, face="bold"))+
    theme(legend.text = element_text(size = 14))+
    # 
    labs(title ="Mean Absolute Error ",x = "Missing in %", y = "Wert")+
    ylim(64000, 72000)
  ggsave(str_c(met,"_mae.png"), width = 25, height = 10)
  
  
  ggplot(data = filter(satistic,Methode==met1 | Methode==met2 |Methode==met3,Metric == 'DSC', Wert!=0  )) +
    geom_line(mapping = aes(x =Missing, y = Wert, group=Variablenname, color=Variablenname),size=5)+
    geom_point(mapping = aes(x =Missing, y = Wert))+
    scale_y_log10(labels = scales::label_number_si())+
    theme(plot.title=element_text(size = 20, face="bold"))+
    theme(axis.title.x = element_text(size =14))+
    theme(axis.title.y = element_text(size = 16, angle = 90))+
    theme(axis.text.x = element_text(size = 18, angle=0, hjust=1))+
    theme(axis.text.y = element_text(size = 18))+
    theme(legend.title = element_text(size = 16, face="bold"))+
    theme(legend.text = element_text(size = 14))+
    # 
    labs(title ="S�rensen-Dice Coefficien ",x = "Missing in %", y = "Wert")
    ylim(70000, 75000)
  ggsave(str_c(met,"_sdc.png"), width = 25, height = 10)
