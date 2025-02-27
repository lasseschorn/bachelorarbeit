library(tidyverse)
satistic <- read.csv('~/../bachelorarbeit/versuchsreihe/statistics/statistics.csv',header = TRUE, sep = ";")

satistic$Missing <- as.factor(satistic$Missing) 
met <- 'means'
#| metric == 'mean_absolute_error'
ggplot(data = filter(satistic,Methode==met,Metric == 'RMSE' , Wert!=0  )) +
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
  ylim(115000, 120000)

#  facet_wrap(~ metric)
  save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/',met,'/' )
  setwd(save_data)
  ggsave("Means_rmse.png", width = 25, height = 10)

  
  ggplot(data = filter(satistic,Methode==met,Metric == 'MAE', Wert!=0  )) +
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
    ylim(70000, 75000)
  ggsave("Means_mae.png", width = 25, height = 10)
  
  
  ggplot(data = filter(satistic,Methode==met,Metric == 'DSC', Wert!=0  )) +
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
  ggsave("Means_sdc.png", width = 25, height = 10)
