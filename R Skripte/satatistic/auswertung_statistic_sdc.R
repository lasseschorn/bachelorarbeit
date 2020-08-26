library(tidyverse)
satistic <- read.csv('~/../bachelorarbeit/versuchsreihe/statistics/statistics.csv',header = TRUE, sep = ";")

satistic$Missing <- as.factor(satistic$Missing)


ggplot(data = filter(satistic,Methode=='modus',Metric == 'DSC', Wert!='0,000'  )) +
  geom_line(mapping = aes(x =Missing, y = Wert, group=Variablenname, color=Variablenname),size=5)+
  geom_point(mapping = aes(x =Missing, y = Wert))+
  theme(plot.title=element_text(size = 20, face="bold"))+
  theme(axis.title.x = element_text(size =14))+
  theme(axis.title.y = element_text(size = 16, angle = 90))+
  theme(axis.text.x = element_text(size = 18, angle=0, hjust=1))+
  theme(axis.text.y = element_text(size = 18))+
  theme(legend.title = element_text(size = 16, face="bold"))+
  theme(legend.text = element_text(size = 14))+
  # 
  labs(title ="Sørensen-Dice Coefficien ",x = "Missing in %", y = "Wert")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/','modus','/' )
setwd(save_data)
ggsave(str_c("modus","_sdc.png"), width = 25, height = 10)


ggplot(data = filter(satistic,Methode=='correlation_2' | Methode=='correlation_3',Metric == 'DSC', Wert!='0,000'  )) +
  geom_line(mapping = aes(x =Missing, y = Wert, group=Variablenname, color=Variablenname),size=5)+
  geom_point(mapping = aes(x =Missing, y = Wert))+
  theme(plot.title=element_text(size = 20, face="bold"))+
  theme(axis.title.x = element_text(size =14))+
  theme(axis.title.y = element_text(size = 16, angle = 90))+
  theme(axis.text.x = element_text(size = 18, angle=0, hjust=1))+
  theme(axis.text.y = element_text(size = 18))+
  theme(legend.title = element_text(size = 16, face="bold"))+
  theme(legend.text = element_text(size = 14))+
  # 
  labs(title ="Sørensen-Dice Coefficien ",x = "Missing in %", y = "Wert")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/','correlation_2','/' )
setwd(save_data)
ggsave(str_c("correlation","_sdc.png"), width = 25, height = 10)


ggplot(data = filter(satistic,Methode=='rondom_forest_classification',Metric == 'DSC', Wert!='0,000'  )) +
  geom_line(mapping = aes(x =Missing, y = Wert, group=Variablenname, color=Variablenname),size=5)+
  geom_point(mapping = aes(x =Missing, y = Wert))+
  theme(plot.title=element_text(size = 20, face="bold"))+
  theme(axis.title.x = element_text(size =14))+
  theme(axis.title.y = element_text(size = 16, angle = 90))+
  theme(axis.text.x = element_text(size = 18, angle=0, hjust=1))+
  theme(axis.text.y = element_text(size = 18))+
  theme(legend.title = element_text(size = 16, face="bold"))+
  theme(legend.text = element_text(size = 14))+
  # 
  labs(title ="Sørensen-Dice Coefficien ",x = "Missing in %", y = "Wert")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/','rondom_forest_classification','/' )
setwd(save_data)
ggsave(str_c("rondom_forest_classification","_sdc.png"), width = 25, height = 10)

ggplot(data = filter(satistic,Methode=='neuronal_network_1',Metric == 'DSC', Wert!='0,000'  )) +
  geom_line(mapping = aes(x =Missing, y = Wert, group=Variablenname, color=Variablenname),size=5)+
  geom_point(mapping = aes(x =Missing, y = Wert))+
  theme(plot.title=element_text(size = 20, face="bold"))+
  theme(axis.title.x = element_text(size =14))+
  theme(axis.title.y = element_text(size = 16, angle = 90))+
  theme(axis.text.x = element_text(size = 18, angle=0, hjust=1))+
  theme(axis.text.y = element_text(size = 18))+
  theme(legend.title = element_text(size = 16, face="bold"))+
  theme(legend.text = element_text(size = 14))+
  # 
  labs(title ="Sørensen-Dice Coefficien ",x = "Missing in %", y = "Wert")

save_data <- str_c('~/../bachelorarbeit/versuchsreihe/statistics/','neuronal_network','/' )
setwd(save_data)
ggsave(str_c("neuronal_network_1","_sdc.png"), width = 25, height = 10)


