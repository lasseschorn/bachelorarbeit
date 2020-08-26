library(tidyverse)
satistic <- read.csv('~/../bachelorarbeit/versuchsreihe/statistics/statistics.csv',header = TRUE, sep = ";")
satistic$missing <- as.factor(satistic$missing) 

ggplot(data = satistic) +
  geom_point(mapping = aes(x =missing, y = wert)) +
  facet_wrap(~ metric)
ggsave("metric.png", width = 25, height = 10)
ggplot(data = filter(satistic,metric == 'root_mean_squared_error' | metric == 'mean_squared_error')) +
  geom_point(mapping = aes(x =missing, y = wert)) +
  facet_wrap(~ metric)
ggsave("root_mean_squared_error_vs_mean_squared_error.png", width = 25, height = 10)


ggplot(data = filter(satistic,metric != 'dice',wert <500000  )) +
  geom_point(mapping = aes(x = missing , y = wert)) +
  facet_grid(metric  ~ methode)+
  scale_y_continuous(name='root_mean_squared_error')
ggsave("metric_vs_methode.png", width = 25, height = 10)

ggplot(filter(satistic,metric == 'root_mean_squared_error', methode == 'neuronal_network' ), aes(x=missing, y=wert, group=column)) +
  geom_line(aes(color=column))+
  geom_point(aes(color=column))+
  scale_y_log10(labels = scales::label_number_si(),name='root_mean_squared_error')
ggsave("neuronal_network.png", width = 25, height = 10)

ggplot(filter(satistic,metric == 'root_mean_squared_error' ), aes(x=missing, y=wert, group=methode)) +
  geom_line(aes(color=methode))+
  geom_point(aes(color=methode))+
  scale_y_log10(labels = scales::label_number_si(),name='root_mean_squared_error')
ggsave("root_mean_squared_error_vs_methode.png", width = 25, height = 10)

ggplot(filter(satistic,metric == 'root_mean_squared_error',methode!='neuronal_network' ), aes(x=missing, y=wert, group=methode)) +
  geom_line(aes(color=methode))+
  geom_point(aes(color=methode))+
  scale_y_continuous(name='root_mean_squared_error')+
  #scale_y_log10(labels = scales::label_number_si())+
  facet_wrap(~ methode, nrow=9)
ggsave("split_methode_vs_root_mean_squared_error.png", width = 25, height = 10)

ggplot(filter(satistic,metric == 'root_mean_squared_error',methode=='means' | methode=='median'| methode=='modus'  ), aes(x=missing, y=wert, group=methode)) +
  geom_line(aes(color=methode))+
  geom_point(aes(color=methode))+
  scale_y_continuous(name='root_mean_squared_error')
ggsave("einfache_methoden.png", width = 25, height = 10)

ggplot(filter(satistic,metric == 'root_mean_squared_error',methode=='means' | methode=='median'| methode=='modus'  ), aes(x=missing, y=wert, group=methode)) +
  geom_line(aes(color=methode))+
  geom_point(aes(color=methode))+
  scale_y_continuous(name='root_mean_squared_error')+
  #scale_y_log10(labels = scales::label_number_si())+
  facet_wrap(~ methode, nrow=3)
ggsave("einfache_methoden_split.png", width = 25, height = 10)

ggplot(filter(satistic,metric == 'root_mean_squared_error',methode=='means' | methode=='median'| methode=='correlation_1'| methode=='correlation_2'| methode=='correlation_3' ), aes(x=missing, y=wert, group=methode)) +
  geom_line(aes(color=methode))+
  geom_point(aes(color=methode))+
  scale_y_continuous(name='root_mean_squared_error')
ggsave("einfache_methoden_vs_correlation.png", width = 25, height = 10)

ggplot(filter(satistic,metric == 'root_mean_squared_error',methode=='rondom_forest_classification' | methode=='rondom_forest_regression' ), aes(x=missing, y=wert, group=methode)) +
  geom_line(aes(color=methode))+
  geom_point(aes(color=methode))+
  scale_y_continuous(name='root_mean_squared_error')
ggsave("random_forest_regession_VS_clasification.png", width = 25, height = 10)


ggplot(filter(satistic,metric == 'root_mean_squared_error',methode=='rondom_forest_classification' | methode=='rondom_forest_regression' | methode=='neuronal_network' ), aes(x=missing, y=wert, group=methode)) +
  geom_line(aes(color=methode))+
  geom_point(aes(color=methode))+
  scale_y_continuous(name='root_mean_squared_error')
ggsave("random_forest_VS_neuronales_netz.png", width = 25, height = 10)
