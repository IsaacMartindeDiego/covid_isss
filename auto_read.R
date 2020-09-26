# Leemos los datos 

library(readxl)
library(dplyr)
ISS_SEMANAL <- read_excel("ISS_SEMANAL.xlsx", 
                          col_types = c("date", "text", "numeric", 
                                        "numeric"))
ISS_SEMANAL = as.data.frame(ISS_SEMANAL)


# ejemplo, Madrid

Madrid = ISS_SEMANAL %>% filter(CCAA=="Madrid") %>% arrange(Semana) %>% mutate(Rec=Casos-Fallecidos,CasosAcumulados=cumsum(Casos)) 
Madrid = cbind(Madrid, Recuperados)
Madrid = Madrid %>% select(-Rec)
Madrid = Madrid %>% mutate(ISSSD=(Fallecidos+Recuperados)/Casos,RecuperadosAcumulados=cumsum(Recuperados),ISSSA=100*RecuperadosAcumulados/CasosAcumulados)
Madrid = Madrid[-c(1:3),]

ts.plot(Madrid$ISSSD)

# ejemplo, Castilla y León

CyL = ISS_SEMANAL %>% filter(CCAA=="Castilla y León") %>% arrange(Semana) %>% mutate(Rec=Casos-Fallecidos,CasosAcumulados=cumsum(Casos))
Recuperados=c(0,0,0,CyL$Rec[1:(dim(CyL)[1]-3)])
CyL = cbind(CyL, Recuperados)
CyL = CyL %>% select(-Rec)
CyL = CyL %>% mutate(ISSSD=(Fallecidos+Recuperados)/Casos,RecuperadosAcumulados=cumsum(Recuperados),ISSSA=100*RecuperadosAcumulados/CasosAcumulados)
CyL = CyL[-c(1:3),]

ts.plot(CyL$ISSSA)


# ejemplo, Aragón

Aragon = ISS_SEMANAL %>% filter(CCAA=="Aragón") %>% arrange(Semana) %>% mutate(Rec=Casos-Fallecidos,CasosAcumulados=cumsum(Casos))
Recuperados=c(0,0,0,Aragon$Rec[1:(dim(Aragon)[1]-3)])
Aragon = cbind(Aragon, Recuperados)
Aragon = Aragon %>% select(-Rec)
Aragon = Aragon %>% mutate(ISSSD=(Fallecidos+Recuperados)/Casos,RecuperadosAcumulados=cumsum(Recuperados),ISSSA=100*RecuperadosAcumulados/CasosAcumulados)
Aragon = Aragon[-c(1:3),]

ts.plot(Aragon$ISSSA)


# ejemplo, Cataluña

Cat = ISS_SEMANAL %>% filter(CCAA=="Cataluña") %>% arrange(Semana) %>% mutate(Rec=Casos-Fallecidos,CasosAcumulados=cumsum(Casos))
Recuperados=c(0,0,0,Cat$Rec[1:(dim(Cat)[1]-3)])
Cat = cbind(Cat, Recuperados)
Cat = Cat %>% select(-Rec)
Cat = Cat %>% mutate(ISSSD=(Fallecidos+Recuperados)/Casos,RecuperadosAcumulados=cumsum(Recuperados),ISSSA=100*RecuperadosAcumulados/CasosAcumulados)
Cat = Cat[-c(1:3),]

ts.plot(Cat$ISSSD)

# ejemplo, Extremadura

Ext = ISS_SEMANAL %>% filter(CCAA=="Extremadura") %>% arrange(Semana) %>% mutate(Rec=Casos-Fallecidos,CasosAcumulados=cumsum(Casos))
Recuperados=c(0,0,0,Ext$Rec[1:(dim(Ext)[1]-3)])
Ext = cbind(Ext, Recuperados)
Ext = Ext %>% select(-Rec)
Ext = Ext %>% mutate(ISSSD=(Fallecidos+Recuperados)/Casos,RecuperadosAcumulados=cumsum(Recuperados),ISSSA=100*RecuperadosAcumulados/CasosAcumulados)
Ext = Ext[-c(1:3),]

ts.plot(Ext$ISSSA)

#
Spain = ISS_SEMANAL %>% 
          group_by(CCAA) %>% 
          arrange(Semana) %>% 
          mutate(Rec=Casos-Fallecidos,CasosAcumulados=cumsum(Casos)) %>%
          mutate(Recuperados=lag(Rec,4))



