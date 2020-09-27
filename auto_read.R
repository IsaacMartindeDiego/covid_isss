# Leemos los datos 

library(readxl)
library(dplyr)
ISS_SEMANAL <- read_excel("ccaa_semanal.xlsx",col_types = c("text", "text", "numeric","numeric","numeric"))
ISS_SEMANAL = as.data.frame(ISS_SEMANAL)
ISS_SEMANAL$Semana=as.Date(ISS_SEMANAL$Semana, "%Y-%m-%d")

# Cálculo de Activos
Spain = ISS_SEMANAL %>% 
  group_by(CCAA) %>% 
  arrange(Semana) %>% 
  mutate(ActivosSemanales=Casos-Fallecidos-Recuperados,Activos=cumsum(ActivosSemanales))

Spain=as.data.frame(Spain)


