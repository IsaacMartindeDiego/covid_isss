# Leemos los datos 

library(readxl)
library(dplyr)
ISS_SEMANAL <- read_excel("ccaa_semanal.xlsx",col_types = c("text", "text", "numeric","numeric","numeric"))
ISS_SEMANAL = as.data.frame(ISS_SEMANAL)
ISS_SEMANAL$Semana=as.Date(ISS_SEMANAL$Semana, "%Y-%m-%d")

#ISAAC: De momento, no veo la manera de hacerlo más "eficiente".


# ejemplo, Madrid

Madrid = ISS_SEMANAL %>% filter(CCAA=="Madrid") %>% arrange(Semana) %>% mutate(ActivosSemanales=Casos-Fallecidos-Recuperados,Activos=cumsum(ActivosSemanales),Rec=Casos-Fallecidos,CasosAcumulados=cumsum(Casos),FR=Fallecidos+Recuperados,FRA=cumsum(FR)) 
RecuperadosB=c(Madrid$Recuperados[1:18],Madrid$Rec[1:(dim(Madrid)[1]-18)])
for(i in 19:28){
 Madrid$Recuperados[i]=Madrid$Activos[i-2]-Madrid$Fallecidos[i-1]
 Madrid$ActivosSemanales[i]=Madrid$Casos[i]-Madrid$Fallecidos[i]-Madrid$Recuperados[i]
 Madrid$Activos[i]=Madrid$Activos[i-1]+Madrid$ActivosSemanales[i]
}
plot(Madrid$Activos,type="b",pch=19,lwd=2,col=2)

Madrid = cbind(Madrid, RecuperadosB)
Madrid = Madrid %>% select(-Rec)
Madrid = Madrid %>% mutate(ISSSD=(Fallecidos+Recuperados)/Casos,RecuperadosAcumulados=cumsum(Recuperados),ISSSA=100*RecuperadosAcumulados/CasosAcumulados)
Madrid = Madrid[-c(1:3),]

ts.plot(Madrid$ISSSD)

# ejemplo, Castilla y León
CyL = ISS_SEMANAL %>% filter(CCAA=="Castilla y León") %>% arrange(Semana) %>% mutate(ActivosSemanales=Casos-Fallecidos-Recuperados,Activos=cumsum(ActivosSemanales),Rec=Casos-Fallecidos,CasosAcumulados=cumsum(Casos),FR=Fallecidos+Recuperados,FRA=cumsum(FR)) 
RecuperadosB=c(CyL$Recuperados[1:18],CyL$Rec[1:(dim(CyL)[1]-18)])
for(i in 19:28){
  CyL$Recuperados[i]=CyL$Activos[i-2]-CyL$Fallecidos[i-1]
  CyL$ActivosSemanales[i]=CyL$Casos[i]-CyL$Fallecidos[i]-CyL$Recuperados[i]
  CyL$Activos[i]=CyL$Activos[i-1]+CyL$ActivosSemanales[i]
}
plot(CyL$Activos,type="b",pch=19,lwd=2,col=6)


CyL = ISS_SEMANAL %>% filter(CCAA=="Castilla y León") %>% arrange(Semana) %>% mutate(Rec=Casos-Fallecidos,CasosAcumulados=cumsum(Casos))
Recuperados=c(0,0,0,CyL$Rec[1:(dim(CyL)[1]-3)])
CyL = cbind(CyL, Recuperados)
CyL = CyL %>% select(-Rec)
CyL = CyL %>% mutate(ISSSD=(Fallecidos+Recuperados)/Casos,RecuperadosAcumulados=cumsum(Recuperados),ISSSA=100*RecuperadosAcumulados/CasosAcumulados)
CyL = CyL[-c(1:3),]

ts.plot(CyL$ISSSA)

#Pasi Vasco
PV = ISS_SEMANAL %>% filter(CCAA=="País Vasco") %>% arrange(Semana) %>% mutate(ActivosSemanales=Casos-Fallecidos-Recuperados,Activos=cumsum(ActivosSemanales),Rec=Casos-Fallecidos,CasosAcumulados=cumsum(Casos),FR=Fallecidos+Recuperados,FRA=cumsum(FR)) 
for(i in 19:28){
  PV$Recuperados[i]=PV$Activos[i-2]-PV$Fallecidos[i-1]
  PV$ActivosSemanales[i]=PV$Casos[i]-PV$Fallecidos[i]-PV$Recuperados[i]
  PV$Activos[i]=max(PV$Activos[i-1]+PV$ActivosSemanales[i],0)
}
plot(PV$Activos,type="b",pch=19,lwd=2,col=3)

# ejemplo, Cantabria
Cantabria = ISS_SEMANAL %>% filter(CCAA=="Cantabria") %>% arrange(Semana) %>% mutate(ActivosSemanales=Casos-Fallecidos-Recuperados,Activos=cumsum(ActivosSemanales),Rec=Casos-Fallecidos,CasosAcumulados=cumsum(Casos),FR=Fallecidos+Recuperados,FRA=cumsum(FR)) 
RecuperadosB=c(Cantabria$Recuperados[1:18],Cantabria$Rec[1:(dim(Cantabria)[1]-18)])
for(i in 19:28){
  Cantabria$Recuperados[i]=Cantabria$Activos[i-2]-Cantabria$Fallecidos[i-1]
  Cantabria$ActivosSemanales[i]=Cantabria$Casos[i]-Cantabria$Fallecidos[i]-Cantabria$Recuperados[i]
  Cantabria$Activos[i]=max(Cantabria$Activos[i-1]+Cantabria$ActivosSemanales[i],0)
}
plot(Cantabria$Activos,type="b",pch=19,lwd=2,col=9)

# ejemplo, asturias
Asturias = ISS_SEMANAL %>% filter(CCAA=="Asturias") %>% arrange(Semana) %>% mutate(ActivosSemanales=Casos-Fallecidos-Recuperados,Activos=cumsum(ActivosSemanales),Rec=Casos-Fallecidos,CasosAcumulados=cumsum(Casos),FR=Fallecidos+Recuperados,FRA=cumsum(FR)) 
RecuperadosB=c(Asturias$Recuperados[1:18],Asturias$Rec[1:(dim(Asturias)[1]-18)])
for(i in 19:28){
  Asturias$Recuperados[i]=Asturias$Activos[i-2]-Asturias$Fallecidos[i-1]
  Asturias$ActivosSemanales[i]=Asturias$Casos[i]-Asturias$Fallecidos[i]-Asturias$Recuperados[i]
  Asturias$Activos[i]=max(Asturias$Activos[i-1]+Asturias$ActivosSemanales[i],0)
}
plot(Asturias$Activos,type="b",pch=19,lwd=2,col=4)

# C. Valenciana
CVal = ISS_SEMANAL %>% filter(CCAA=="C. Valenciana") %>% arrange(Semana) %>% mutate(ActivosSemanales=Casos-Fallecidos-Recuperados,Activos=cumsum(ActivosSemanales),Rec=Casos-Fallecidos,CasosAcumulados=cumsum(Casos),FR=Fallecidos+Recuperados,FRA=cumsum(FR)) 
RecuperadosB=c(CVal$Recuperados[1:18],CVal$Rec[1:(dim(CVal)[1]-18)])
for(i in 19:28){
  CVal$Recuperados[i]=CVal$Activos[i-2]-CVal$Fallecidos[i-1]
  CVal$ActivosSemanales[i]=CVal$Casos[i]-CVal$Fallecidos[i]-CVal$Recuperados[i]
  CVal$Activos[i]=max(CVal$Activos[i-1]+CVal$ActivosSemanales[i],0)
}
plot(CVal$Activos,type="b",pch=19,lwd=2,col=3)

# ejemplo, Aragón
Aragon = ISS_SEMANAL %>% filter(CCAA=="Aragón") %>% arrange(Semana) %>% mutate(ActivosSemanales=Casos-Fallecidos-Recuperados,Activos=cumsum(ActivosSemanales),Rec=Casos-Fallecidos,CasosAcumulados=cumsum(Casos),FR=Fallecidos+Recuperados,FRA=cumsum(FR)) 
RecuperadosB=c(Aragon$Recuperados[1:18],Aragon$Rec[1:(dim(Aragon)[1]-18)])
for(i in 19:28){
  Aragon$Recuperados[i]=Aragon$Activos[i-2]-Aragon$Fallecidos[i-1]
  Aragon$ActivosSemanales[i]=Aragon$Casos[i]-Aragon$Fallecidos[i]-Aragon$Recuperados[i]
  Aragon$Activos[i]=max(Aragon$Activos[i-1]+Aragon$ActivosSemanales[i],0)
}
plot(Aragon$Activos,type="b",pch=19,lwd=2,col=2)



Aragon = ISS_SEMANAL %>% filter(CCAA=="Aragón") %>% arrange(Semana) %>% mutate(Rec=Casos-Fallecidos,CasosAcumulados=cumsum(Casos))
Recuperados=c(0,0,0,Aragon$Rec[1:(dim(Aragon)[1]-3)])
Aragon = cbind(Aragon, Recuperados)
Aragon = Aragon %>% select(-Rec)
Aragon = Aragon %>% mutate(ISSSD=(Fallecidos+Recuperados)/Casos,RecuperadosAcumulados=cumsum(Recuperados),ISSSA=100*RecuperadosAcumulados/CasosAcumulados)
Aragon = Aragon[-c(1:3),]

ts.plot(Aragon$ISSSA)


# ejemplo, Cataluña


Cat = ISS_SEMANAL %>% filter(CCAA=="Cataluña") %>% arrange(Semana) %>% mutate(ActivosSemanales=Casos-Fallecidos-Recuperados,Activos=cumsum(ActivosSemanales),Rec=Casos-Fallecidos,CasosAcumulados=cumsum(Casos),FR=Fallecidos+Recuperados,FRA=cumsum(FR)) 

for(i in 19:dim(Cat)[1]){
  Cat$Recuperados[i]=Cat$Activos[i-2]-Cat$Fallecidos[i-1]
  Cat$ActivosSemanales[i]=Cat$Casos[i]-Cat$Fallecidos[i]-Cat$Recuperados[i]
  Cat$Activos[i]=Cat$Activos[i-1]+Cat$ActivosSemanales[i]
}
plot(Cat$Activos,type="b",pch=19,lwd=2,col=4)



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


#Discutir qué es Recuperados!?!?!
