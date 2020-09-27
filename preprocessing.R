# ISAAC: Por CCAA, de momento no veo cómo hacerlo de una sola vez

# Andalucia
Andalucia = Spain %>% filter(CCAA=="Andalucia") %>% arrange(Semana) 
for(i in 19:dim(Andalucia)[1]){
  Andalucia$Recuperados[i]=Andalucia$Activos[i-2]-Andalucia$Fallecidos[i-1]
  Andalucia$ActivosSemanales[i]=Andalucia$Casos[i]-Andalucia$Fallecidos[i]-Andalucia$Recuperados[i]
  Andalucia$Activos[i]=max(Andalucia$Activos[i-1]+Andalucia$ActivosSemanales[i],0)
}

# ejemplo, Aragón
Aragon = Spain %>% filter(CCAA=="Aragón") %>% arrange(Semana)
for(i in 19:dim(Aragon)[1]){
  Aragon$Recuperados[i]=Aragon$Activos[i-2]-Aragon$Fallecidos[i-1]
  Aragon$ActivosSemanales[i]=Aragon$Casos[i]-Aragon$Fallecidos[i]-Aragon$Recuperados[i]
  Aragon$Activos[i]=max(Aragon$Activos[i-1]+Aragon$ActivosSemanales[i],0)
}


# Asturias
Asturias = Spain %>% filter(CCAA=="Asturias") %>% arrange(Semana)
for(i in 19:dim(Asturias)[1]){
  Asturias$Recuperados[i]=Asturias$Activos[i-2]-Asturias$Fallecidos[i-1]
  Asturias$ActivosSemanales[i]=Asturias$Casos[i]-Asturias$Fallecidos[i]-Asturias$Recuperados[i]
  Asturias$Activos[i]=max(Asturias$Activos[i-1]+Asturias$ActivosSemanales[i],0)
}

# Baleares
Baleares = Spain %>% filter(CCAA=="Baleares") %>% arrange(Semana)
for(i in 19:dim(Baleares)[1]){
  Baleares$Recuperados[i]=Baleares$Activos[i-2]-Baleares$Fallecidos[i-1]
  Baleares$ActivosSemanales[i]=Baleares$Casos[i]-Baleares$Fallecidos[i]-Baleares$Recuperados[i]
  Baleares$Activos[i]=max(Baleares$Activos[i-1]+Baleares$ActivosSemanales[i],0)
}

# C. Valenciana
CValenciana = Spain %>% filter(CCAA=="C. Valenciana") %>% arrange(Semana)
for(i in 19:dim(Baleares)[1]){
  CValenciana$Recuperados[i]=CValenciana$Activos[i-2]-CValenciana$Fallecidos[i-1]
  CValenciana$ActivosSemanales[i]=CValenciana$Casos[i]-CValenciana$Fallecidos[i]-CValenciana$Recuperados[i]
  CValenciana$Activos[i]=max(CValenciana$Activos[i-1]+CValenciana$ActivosSemanales[i],0)
}

# Canarias
Canarias = Spain %>% filter(CCAA=="Canarias") %>% arrange(Semana)
for(i in 19:dim(Canarias)[1]){
  Canarias$Recuperados[i]=Canarias$Activos[i-2]-Canarias$Fallecidos[i-1]
  Canarias$ActivosSemanales[i]=Canarias$Casos[i]-Canarias$Fallecidos[i]-Canarias$Recuperados[i]
  Canarias$Activos[i]=max(Canarias$Activos[i-1]+Canarias$ActivosSemanales[i],0)
}

# Cantabria
Cantabria = Spain %>% filter(CCAA=="Cantabria") %>% arrange(Semana)
for(i in 19:dim(Cantabria)[1]){
  Cantabria$Recuperados[i]=Cantabria$Activos[i-2]-Cantabria$Fallecidos[i-1]
  Cantabria$ActivosSemanales[i]=Cantabria$Casos[i]-Cantabria$Fallecidos[i]-Cantabria$Recuperados[i]
  Cantabria$Activos[i]=max(Cantabria$Activos[i-1]+Cantabria$ActivosSemanales[i],0)
}

# CLM
CLM = Spain %>% filter(CCAA=="Castilla La Mancha") %>% arrange(Semana)
for(i in 19:dim(CLM)[1]){
  CLM$Recuperados[i]=CLM$Activos[i-2]-CLM$Fallecidos[i-1]
  CLM$ActivosSemanales[i]=CLM$Casos[i]-CLM$Fallecidos[i]-CLM$Recuperados[i]
  CLM$Activos[i]=max(CLM$Activos[i-1]+CLM$ActivosSemanales[i],0)
}

# CyL
CyL = Spain %>% filter(CCAA=="Castilla y León") %>% arrange(Semana)
for(i in 19:dim(CyL)[1]){
  CyL$Recuperados[i]=CyL$Activos[i-2]-CyL$Fallecidos[i-1]
  CyL$ActivosSemanales[i]=CyL$Casos[i]-CyL$Fallecidos[i]-CyL$Recuperados[i]
  CyL$Activos[i]=max(CyL$Activos[i-1]+CyL$ActivosSemanales[i],0)
}


# Cataluna
Cataluña = Spain %>% filter(CCAA=="Cataluña") %>% arrange(Semana)
for(i in 19:dim(Cataluña)[1]){
  Cataluña$Recuperados[i]=Cataluña$Activos[i-2]-Cataluña$Fallecidos[i-1]
  Cataluña$ActivosSemanales[i]=Cataluña$Casos[i]-Cataluña$Fallecidos[i]-Cataluña$Recuperados[i]
  Cataluña$Activos[i]=max(Cataluña$Activos[i-1]+Cataluña$ActivosSemanales[i],0)
}

# Ceuta
Ceuta = Spain %>% filter(CCAA=="Ceuta") %>% arrange(Semana)
for(i in 19:dim(Cataluña)[1]){
  Ceuta$Recuperados[i]=Ceuta$Activos[i-2]-Ceuta$Fallecidos[i-1]
  Ceuta$ActivosSemanales[i]=Ceuta$Casos[i]-Ceuta$Fallecidos[i]-Ceuta$Recuperados[i]
  Ceuta$Activos[i]=max(Ceuta$Activos[i-1]+Ceuta$ActivosSemanales[i],0)
}


# Extremadura
Extremadura = Spain %>% filter(CCAA=="Extremadura") %>% arrange(Semana)
for(i in 19:dim(Cataluña)[1]){
  Extremadura$Recuperados[i]=Extremadura$Activos[i-2]-Extremadura$Fallecidos[i-1]
  Extremadura$ActivosSemanales[i]=Extremadura$Casos[i]-Extremadura$Fallecidos[i]-Extremadura$Recuperados[i]
  Extremadura$Activos[i]=max(Extremadura$Activos[i-1]+Extremadura$ActivosSemanales[i],0)
}

# Galicia
Galicia = Spain %>% filter(CCAA=="Galicia") %>% arrange(Semana)
for(i in 19:dim(Cataluña)[1]){
  Galicia$Recuperados[i]=Galicia$Activos[i-2]-Galicia$Fallecidos[i-1]
  Galicia$ActivosSemanales[i]=Galicia$Casos[i]-Galicia$Fallecidos[i]-Galicia$Recuperados[i]
  Galicia$Activos[i]=max(Galicia$Activos[i-1]+Galicia$ActivosSemanales[i],0)
}


# La Rioja
LR = Spain %>% filter(CCAA=="La Rioja") %>% arrange(Semana)
for(i in 19:dim(Cataluña)[1]){
  LR$Recuperados[i]=LR$Activos[i-2]-LR$Fallecidos[i-1]
  LR$ActivosSemanales[i]=LR$Casos[i]-LR$Fallecidos[i]-LR$Recuperados[i]
  LR$Activos[i]=max(LR$Activos[i-1]+LR$ActivosSemanales[i],0)
}

# Madrid
Madrid = Spain %>% filter(CCAA=="Madrid") %>% arrange(Semana)
for(i in 19:dim(Cataluña)[1]){
  Madrid$Recuperados[i]=Madrid$Activos[i-2]-Madrid$Fallecidos[i-1]
  Madrid$ActivosSemanales[i]=Madrid$Casos[i]-Madrid$Fallecidos[i]-Madrid$Recuperados[i]
  Madrid$Activos[i]=max(Madrid$Activos[i-1]+Madrid$ActivosSemanales[i],0)
}

# Melilla
Melilla = Spain %>% filter(CCAA=="Melilla") %>% arrange(Semana)
for(i in 19:dim(Melilla)[1]){
  Melilla$Recuperados[i]=Melilla$Activos[i-2]-Melilla$Fallecidos[i-1]
  Melilla$ActivosSemanales[i]=Melilla$Casos[i]-Melilla$Fallecidos[i]-Melilla$Recuperados[i]
  Melilla$Activos[i]=max(Melilla$Activos[i-1]+Melilla$ActivosSemanales[i],0)
}

# Murcia
Murcia = Spain %>% filter(CCAA=="Murcia") %>% arrange(Semana)
for(i in 19:dim(Melilla)[1]){
  Murcia$Recuperados[i]=Murcia$Activos[i-2]-Murcia$Fallecidos[i-1]
  Murcia$ActivosSemanales[i]=Murcia$Casos[i]-Murcia$Fallecidos[i]-Murcia$Recuperados[i]
  Murcia$Activos[i]=max(Murcia$Activos[i-1]+Murcia$ActivosSemanales[i],0)
}


# Navarra
Navarra = Spain %>% filter(CCAA=="Navarra") %>% arrange(Semana)
for(i in 19:dim(Melilla)[1]){
  Navarra$Recuperados[i]=Navarra$Activos[i-2]-Navarra$Fallecidos[i-1]
  Navarra$ActivosSemanales[i]=Navarra$Casos[i]-Navarra$Fallecidos[i]-Navarra$Recuperados[i]
  Navarra$Activos[i]=max(Navarra$Activos[i-1]+Navarra$ActivosSemanales[i],0)
}

# País Vasco
PV = Spain %>% filter(CCAA=="País Vasco") %>% arrange(Semana)
for(i in 19:dim(PV)[1]){
  PV$Recuperados[i]=PV$Activos[i-2]-PV$Fallecidos[i-1]
  PV$ActivosSemanales[i]=PV$Casos[i]-PV$Fallecidos[i]-PV$Recuperados[i]
  PV$Activos[i]=max(PV$Activos[i-1]+PV$ActivosSemanales[i],0)
}


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
