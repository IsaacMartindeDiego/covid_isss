# ISAAC: Por CCAA, de momento no veo cómo hacerlo de una sola vez

# Andalucia
Andalucia = Spain %>% filter(CCAA=="Andalucia") %>% arrange(Semana) 
for(i in 19:dim(Andalucia)[1]){
  Andalucia$Recuperados[i]=min(max(Andalucia$Activos[i-2]-Andalucia$Fallecidos[i-1],0),Andalucia$Activos[i-1])
  Andalucia$ActivosSemanales[i]=Andalucia$Casos[i]-Andalucia$Fallecidos[i]-Andalucia$Recuperados[i]
  Andalucia$Activos[i]=max(Andalucia$Activos[i-1]+Andalucia$ActivosSemanales[i],0)
}

# ejemplo, Aragón
Aragon = Spain %>% filter(CCAA=="Aragón") %>% arrange(Semana)
for(i in 19:dim(Aragon)[1]){
  Aragon$Recuperados[i]=min(max(Aragon$Activos[i-2]-Aragon$Fallecidos[i-1],0),Aragon$Activos[i-1])
  Aragon$ActivosSemanales[i]=Aragon$Casos[i]-Aragon$Fallecidos[i]-Aragon$Recuperados[i]
  Aragon$Activos[i]=max(Aragon$Activos[i-1]+Aragon$ActivosSemanales[i],0)
}


# Asturias
Asturias = Spain %>% filter(CCAA=="Asturias") %>% arrange(Semana)
for(i in 19:dim(Asturias)[1]){
  Asturias$Recuperados[i]=min(max(Asturias$Activos[i-2]-Asturias$Fallecidos[i-1],0),Asturias$Activos[i-1])
  Asturias$ActivosSemanales[i]=Asturias$Casos[i]-Asturias$Fallecidos[i]-Asturias$Recuperados[i]
  Asturias$Activos[i]=max(Asturias$Activos[i-1]+Asturias$ActivosSemanales[i],0)
}

# Baleares
Baleares = Spain %>% filter(CCAA=="Baleares") %>% arrange(Semana)
for(i in 19:dim(Baleares)[1]){
  Baleares$Recuperados[i]=min(max(Baleares$Activos[i-2]-Baleares$Fallecidos[i-1],0),Baleares$Activos[i-1])
  Baleares$ActivosSemanales[i]=Baleares$Casos[i]-Baleares$Fallecidos[i]-Baleares$Recuperados[i]
  Baleares$Activos[i]=max(Baleares$Activos[i-1]+Baleares$ActivosSemanales[i],0)
}

# C. Valenciana
CValenciana = Spain %>% filter(CCAA=="C. Valenciana") %>% arrange(Semana)
for(i in 19:dim(Baleares)[1]){
  CValenciana$Recuperados[i]=min(max(CValenciana$Activos[i-2]-CValenciana$Fallecidos[i-1],0),CValenciana$Activos[i-1])
  CValenciana$ActivosSemanales[i]=CValenciana$Casos[i]-CValenciana$Fallecidos[i]-CValenciana$Recuperados[i]
  CValenciana$Activos[i]=max(CValenciana$Activos[i-1]+CValenciana$ActivosSemanales[i],0)
}

# Canarias
Canarias = Spain %>% filter(CCAA=="Canarias") %>% arrange(Semana)
for(i in 19:dim(Canarias)[1]){
  Canarias$Recuperados[i]=min(max(Canarias$Activos[i-2]-Canarias$Fallecidos[i-1],0),Canarias$Activos[i-1])
  Canarias$ActivosSemanales[i]=Canarias$Casos[i]-Canarias$Fallecidos[i]-Canarias$Recuperados[i]
  Canarias$Activos[i]=max(Canarias$Activos[i-1]+Canarias$ActivosSemanales[i],0)
}

# Cantabria
Cantabria = Spain %>% filter(CCAA=="Cantabria") %>% arrange(Semana)
for(i in 19:dim(Cantabria)[1]){
  Cantabria$Recuperados[i]=min(max(Cantabria$Activos[i-2]-Cantabria$Fallecidos[i-1],0),Cantabria$Activos[i-1])
  Cantabria$ActivosSemanales[i]=Cantabria$Casos[i]-Cantabria$Fallecidos[i]-Cantabria$Recuperados[i]
  Cantabria$Activos[i]=max(Cantabria$Activos[i-1]+Cantabria$ActivosSemanales[i],0)
}

# CLM
CLM = Spain %>% filter(CCAA=="Castilla La Mancha") %>% arrange(Semana)
for(i in 19:dim(CLM)[1]){
  CLM$Recuperados[i]=min(max(CLM$Activos[i-2]-CLM$Fallecidos[i-1],0),CLM$Activos[i-1])
  CLM$ActivosSemanales[i]=CLM$Casos[i]-CLM$Fallecidos[i]-CLM$Recuperados[i]
  CLM$Activos[i]=max(CLM$Activos[i-1]+CLM$ActivosSemanales[i],0)
}

# CyL
CyL = Spain %>% filter(CCAA=="Castilla y León") %>% arrange(Semana)
for(i in 19:dim(CyL)[1]){
  CyL$Recuperados[i]=min(max(CyL$Activos[i-2]-CyL$Fallecidos[i-1],0),CyL$Activos[i-1])
  CyL$ActivosSemanales[i]=CyL$Casos[i]-CyL$Fallecidos[i]-CyL$Recuperados[i]
  CyL$Activos[i]=max(CyL$Activos[i-1]+CyL$ActivosSemanales[i],0)
}


# Cataluna
Cataluña = Spain %>% filter(CCAA=="Cataluña") %>% arrange(Semana)
for(i in 19:dim(Cataluña)[1]){
  Cataluña$Recuperados[i]=min(max(Cataluña$Activos[i-2]-Cataluña$Fallecidos[i-1],0),Cataluña$Activos[i-1])
  Cataluña$ActivosSemanales[i]=Cataluña$Casos[i]-Cataluña$Fallecidos[i]-Cataluña$Recuperados[i]
  Cataluña$Activos[i]=max(Cataluña$Activos[i-1]+Cataluña$ActivosSemanales[i],0)
}

# Ceuta
Ceuta = Spain %>% filter(CCAA=="Ceuta") %>% arrange(Semana)
for(i in 19:dim(Cataluña)[1]){
  Ceuta$Recuperados[i]=min(max(Ceuta$Activos[i-2]-Ceuta$Fallecidos[i-1],0),Ceuta$Activos[i-1])
  Ceuta$ActivosSemanales[i]=Ceuta$Casos[i]-Ceuta$Fallecidos[i]-Ceuta$Recuperados[i]
  Ceuta$Activos[i]=max(Ceuta$Activos[i-1]+Ceuta$ActivosSemanales[i],0)
}


# Extremadura
Extremadura = Spain %>% filter(CCAA=="Extremadura") %>% arrange(Semana)
for(i in 19:dim(Cataluña)[1]){
  Extremadura$Recuperados[i]=min(max(Extremadura$Activos[i-2]-Extremadura$Fallecidos[i-1],0),Extremadura$Activos[i-1])
  Extremadura$ActivosSemanales[i]=Extremadura$Casos[i]-Extremadura$Fallecidos[i]-Extremadura$Recuperados[i]
  Extremadura$Activos[i]=max(Extremadura$Activos[i-1]+Extremadura$ActivosSemanales[i],0)
}

# Galicia
Galicia = Spain %>% filter(CCAA=="Galicia") %>% arrange(Semana)
for(i in 19:dim(Cataluña)[1]){
  Galicia$Recuperados[i]=min(max(Galicia$Activos[i-2]-Galicia$Fallecidos[i-1],0),Galicia$Activos[i-1])
  Galicia$ActivosSemanales[i]=Galicia$Casos[i]-Galicia$Fallecidos[i]-Galicia$Recuperados[i]
  Galicia$Activos[i]=max(Galicia$Activos[i-1]+Galicia$ActivosSemanales[i],0)
}


# La Rioja
LR = Spain %>% filter(CCAA=="La Rioja") %>% arrange(Semana)
for(i in 19:dim(Cataluña)[1]){
  LR$Recuperados[i]=min(max(LR$Activos[i-2]-LR$Fallecidos[i-1],0),LR$Activos[i-1])
  LR$ActivosSemanales[i]=LR$Casos[i]-LR$Fallecidos[i]-LR$Recuperados[i]
  LR$Activos[i]=max(LR$Activos[i-1]+LR$ActivosSemanales[i],0)
}

# Madrid
Madrid = Spain %>% filter(CCAA=="Madrid") %>% arrange(Semana)
for(i in 19:dim(Cataluña)[1]){
  Madrid$Recuperados[i]=min(max(Madrid$Activos[i-2]-Madrid$Fallecidos[i-1],0),Madrid$Activos[i-1])
  Madrid$ActivosSemanales[i]=Madrid$Casos[i]-Madrid$Fallecidos[i]-Madrid$Recuperados[i]
  Madrid$Activos[i]=max(Madrid$Activos[i-1]+Madrid$ActivosSemanales[i],0)
}

# Melilla
Melilla = Spain %>% filter(CCAA=="Melilla") %>% arrange(Semana)
for(i in 19:dim(Melilla)[1]){
  Melilla$Recuperados[i]=min(max(Melilla$Activos[i-2]-Melilla$Fallecidos[i-1],0),Melilla$Activos[i-1])
  Melilla$ActivosSemanales[i]=Melilla$Casos[i]-Melilla$Fallecidos[i]-Melilla$Recuperados[i]
  Melilla$Activos[i]=max(Melilla$Activos[i-1]+Melilla$ActivosSemanales[i],0)
}

# Murcia
Murcia = Spain %>% filter(CCAA=="Murcia") %>% arrange(Semana)
for(i in 19:dim(Melilla)[1]){
  Murcia$Recuperados[i]=min(max(Murcia$Activos[i-2]-Murcia$Fallecidos[i-1],0),Murcia$Activos[i-1])
  Murcia$ActivosSemanales[i]=Murcia$Casos[i]-Murcia$Fallecidos[i]-Murcia$Recuperados[i]
  Murcia$Activos[i]=max(Murcia$Activos[i-1]+Murcia$ActivosSemanales[i],0)
}


# Navarra
Navarra = Spain %>% filter(CCAA=="Navarra") %>% arrange(Semana)
for(i in 19:dim(Melilla)[1]){
  Navarra$Recuperados[i]=min(max(Navarra$Activos[i-2]-Navarra$Fallecidos[i-1],0),Navarra$Activos[i-1])
  Navarra$ActivosSemanales[i]=Navarra$Casos[i]-Navarra$Fallecidos[i]-Navarra$Recuperados[i]
  Navarra$Activos[i]=max(Navarra$Activos[i-1]+Navarra$ActivosSemanales[i],0)
}

# País Vasco
PV = Spain %>% filter(CCAA=="País Vasco") %>% arrange(Semana)
for(i in 19:dim(PV)[1]){
  PV$Recuperados[i]=min(max(PV$Activos[i-2]-PV$Fallecidos[i-1],0),PV$Activos[i-1])
  PV$ActivosSemanales[i]=PV$Casos[i]-PV$Fallecidos[i]-PV$Recuperados[i]
  PV$Activos[i]=max(PV$Activos[i-1]+PV$ActivosSemanales[i],0)
}




#Calculo de ISSSD e ISSSA
Spain=rbind(Madrid,Cataluña,Canarias, Baleares, Andalucia,Aragon,Asturias,PV,CValenciana,Murcia,Extremadura,Galicia,CyL,CLM,LR,Navarra,Cantabria,Ceuta,Melilla)


Spain=Spain%>%mutate(ISSSD=(Fallecidos+Recuperados)/Casos)

# If Casos >0 & Fallecidos + Recuperados =0 ISSSD=1/(Casos+1)
# If Casos =0 & Fallecidos + Recuperados >0 ISSSD=(Fallecidos+Recuperados+1)
# If 0/0 ISSSD=1

Spain[Spain$Casos==0 & Spain$Fallecidos==0 & Spain$Recuperados==0,]$ISSSD=1
Spain[Spain$Casos>0 & Spain$Fallecidos==0 & Spain$Recuperados==0,]$ISSSD=1/(Spain[Spain$Casos>0 & Spain$Fallecidos==0 & Spain$Recuperados==0,]$Casos+1)
Spain[Spain$Casos==0 & (Spain$Fallecidos+Spain$Recuperados)>0,]$ISSSD=Spain[Spain$Casos==0 & (Spain$Fallecidos+Spain$Recuperados)>0,]$Fallecidos+Spain[Spain$Casos==0 & (Spain$Fallecidos+Spain$Recuperados)>0,]$Recuperados+1




Spain=Spain%>%group_by(CCAA)%>%arrange(Semana)%>%mutate(ResueltosAcumulados=cumsum(Recuperados)+cumsum(Fallecidos),CasosAcumulados=cumsum(Casos),ISSSA=100*ResueltosAcumulados/CasosAcumulados)

Spain=Spain%>%mutate(ISSSA=ifelse(ISSSA<100,ISSSA,100))


# Segunda OLA


# Andalucia
Andalucia = Spain2 %>% filter(CCAA=="Andalucia") %>% arrange(Semana) 
for(i in 3:dim(Andalucia)[1]){
  Andalucia$Recuperados[i]=min(max(Andalucia$Activos[i-2]-Andalucia$Fallecidos[i-1],0),Andalucia$Activos[i-1])
  Andalucia$ActivosSemanales[i]=Andalucia$Casos[i]-Andalucia$Fallecidos[i]-Andalucia$Recuperados[i]
  Andalucia$Activos[i]=max(Andalucia$Activos[i-1]+Andalucia$ActivosSemanales[i],0)
}

# ejemplo, Aragón
Aragon = Spain2 %>% filter(CCAA=="Aragón") %>% arrange(Semana)
for(i in 3:dim(Aragon)[1]){
  Aragon$Recuperados[i]=min(max(Aragon$Activos[i-2]-Aragon$Fallecidos[i-1],0),Aragon$Activos[i-1])
  Aragon$ActivosSemanales[i]=Aragon$Casos[i]-Aragon$Fallecidos[i]-Aragon$Recuperados[i]
  Aragon$Activos[i]=max(Aragon$Activos[i-1]+Aragon$ActivosSemanales[i],0)
}


# Asturias
Asturias = Spain2 %>% filter(CCAA=="Asturias") %>% arrange(Semana)
for(i in 3:dim(Asturias)[1]){
  Asturias$Recuperados[i]=min(max(Asturias$Activos[i-2]-Asturias$Fallecidos[i-1],0),Asturias$Activos[i-1])
  Asturias$ActivosSemanales[i]=Asturias$Casos[i]-Asturias$Fallecidos[i]-Asturias$Recuperados[i]
  Asturias$Activos[i]=max(Asturias$Activos[i-1]+Asturias$ActivosSemanales[i],0)
}

# Baleares
Baleares = Spain2 %>% filter(CCAA=="Baleares") %>% arrange(Semana)
for(i in 3:dim(Baleares)[1]){
  Baleares$Recuperados[i]=min(max(Baleares$Activos[i-2]-Baleares$Fallecidos[i-1],0),Baleares$Activos[i-1])
  Baleares$ActivosSemanales[i]=Baleares$Casos[i]-Baleares$Fallecidos[i]-Baleares$Recuperados[i]
  Baleares$Activos[i]=max(Baleares$Activos[i-1]+Baleares$ActivosSemanales[i],0)
}

# C. Valenciana
CValenciana = Spain2 %>% filter(CCAA=="C. Valenciana") %>% arrange(Semana)
for(i in 3:dim(Baleares)[1]){
  CValenciana$Recuperados[i]=min(max(CValenciana$Activos[i-2]-CValenciana$Fallecidos[i-1],0),CValenciana$Activos[i-1])
  CValenciana$ActivosSemanales[i]=CValenciana$Casos[i]-CValenciana$Fallecidos[i]-CValenciana$Recuperados[i]
  CValenciana$Activos[i]=max(CValenciana$Activos[i-1]+CValenciana$ActivosSemanales[i],0)
}

# Canarias
Canarias = Spain2 %>% filter(CCAA=="Canarias") %>% arrange(Semana)
for(i in 3:dim(Canarias)[1]){
  Canarias$Recuperados[i]=min(max(Canarias$Activos[i-2]-Canarias$Fallecidos[i-1],0),Canarias$Activos[i-1])
  Canarias$ActivosSemanales[i]=Canarias$Casos[i]-Canarias$Fallecidos[i]-Canarias$Recuperados[i]
  Canarias$Activos[i]=max(Canarias$Activos[i-1]+Canarias$ActivosSemanales[i],0)
}

# Cantabria
Cantabria = Spain2 %>% filter(CCAA=="Cantabria") %>% arrange(Semana)
for(i in 3:dim(Cantabria)[1]){
  Cantabria$Recuperados[i]=min(max(Cantabria$Activos[i-2]-Cantabria$Fallecidos[i-1],0),Cantabria$Activos[i-1])
  Cantabria$ActivosSemanales[i]=Cantabria$Casos[i]-Cantabria$Fallecidos[i]-Cantabria$Recuperados[i]
  Cantabria$Activos[i]=max(Cantabria$Activos[i-1]+Cantabria$ActivosSemanales[i],0)
}

# CLM
CLM = Spain2 %>% filter(CCAA=="Castilla La Mancha") %>% arrange(Semana)
for(i in 3:dim(CLM)[1]){
  CLM$Recuperados[i]=min(max(CLM$Activos[i-2]-CLM$Fallecidos[i-1],0),CLM$Activos[i-1])
  CLM$ActivosSemanales[i]=CLM$Casos[i]-CLM$Fallecidos[i]-CLM$Recuperados[i]
  CLM$Activos[i]=max(CLM$Activos[i-1]+CLM$ActivosSemanales[i],0)
}

# CyL
CyL = Spain2 %>% filter(CCAA=="Castilla y León") %>% arrange(Semana)
for(i in 3:dim(CyL)[1]){
  CyL$Recuperados[i]=min(max(CyL$Activos[i-2]-CyL$Fallecidos[i-1],0),CyL$Activos[i-1])
  CyL$ActivosSemanales[i]=CyL$Casos[i]-CyL$Fallecidos[i]-CyL$Recuperados[i]
  CyL$Activos[i]=max(CyL$Activos[i-1]+CyL$ActivosSemanales[i],0)
}


# Cataluna
Cataluña = Spain2 %>% filter(CCAA=="Cataluña") %>% arrange(Semana)
for(i in 3:dim(Cataluña)[1]){
  Cataluña$Recuperados[i]=min(max(Cataluña$Activos[i-2]-Cataluña$Fallecidos[i-1],0),Cataluña$Activos[i-1])
  Cataluña$ActivosSemanales[i]=Cataluña$Casos[i]-Cataluña$Fallecidos[i]-Cataluña$Recuperados[i]
  Cataluña$Activos[i]=max(Cataluña$Activos[i-1]+Cataluña$ActivosSemanales[i],0)
}

# Ceuta
Ceuta = Spain2 %>% filter(CCAA=="Ceuta") %>% arrange(Semana)
for(i in 3:dim(Cataluña)[1]){
  Ceuta$Recuperados[i]=min(max(Ceuta$Activos[i-2]-Ceuta$Fallecidos[i-1],0),Ceuta$Activos[i-1])
  Ceuta$ActivosSemanales[i]=Ceuta$Casos[i]-Ceuta$Fallecidos[i]-Ceuta$Recuperados[i]
  Ceuta$Activos[i]=max(Ceuta$Activos[i-1]+Ceuta$ActivosSemanales[i],0)
}


# Extremadura
Extremadura = Spain2 %>% filter(CCAA=="Extremadura") %>% arrange(Semana)
for(i in 3:dim(Cataluña)[1]){
  Extremadura$Recuperados[i]=min(max(Extremadura$Activos[i-2]-Extremadura$Fallecidos[i-1],0),Extremadura$Activos[i-1])
  Extremadura$ActivosSemanales[i]=Extremadura$Casos[i]-Extremadura$Fallecidos[i]-Extremadura$Recuperados[i]
  Extremadura$Activos[i]=max(Extremadura$Activos[i-1]+Extremadura$ActivosSemanales[i],0)
}

# Galicia
Galicia = Spain2 %>% filter(CCAA=="Galicia") %>% arrange(Semana)
for(i in 3:dim(Cataluña)[1]){
  Galicia$Recuperados[i]=min(max(Galicia$Activos[i-2]-Galicia$Fallecidos[i-1],0),Galicia$Activos[i-1])
  Galicia$ActivosSemanales[i]=Galicia$Casos[i]-Galicia$Fallecidos[i]-Galicia$Recuperados[i]
  Galicia$Activos[i]=max(Galicia$Activos[i-1]+Galicia$ActivosSemanales[i],0)
}


# La Rioja
LR = Spain2 %>% filter(CCAA=="La Rioja") %>% arrange(Semana)
for(i in 3:dim(Cataluña)[1]){
  LR$Recuperados[i]=min(max(LR$Activos[i-2]-LR$Fallecidos[i-1],0),LR$Activos[i-1])
  LR$ActivosSemanales[i]=LR$Casos[i]-LR$Fallecidos[i]-LR$Recuperados[i]
  LR$Activos[i]=max(LR$Activos[i-1]+LR$ActivosSemanales[i],0)
}

# Madrid
Madrid = Spain2 %>% filter(CCAA=="Madrid") %>% arrange(Semana)
for(i in 3:dim(Madrid)[1]){
  Madrid$Recuperados[i]=min(max(Madrid$Activos[i-2]-Madrid$Fallecidos[i-1],0),Madrid$Activos[i-1])
  Madrid$ActivosSemanales[i]=Madrid$Casos[i]-Madrid$Fallecidos[i]-Madrid$Recuperados[i]
  Madrid$Activos[i]=max(Madrid$Activos[i-1]+Madrid$ActivosSemanales[i],0)
}

# Melilla
Melilla = Spain2 %>% filter(CCAA=="Melilla") %>% arrange(Semana)
for(i in 3:dim(Melilla)[1]){
  Melilla$Recuperados[i]=min(max(Melilla$Activos[i-2]-Melilla$Fallecidos[i-1],0),Melilla$Activos[i-1])
  Melilla$ActivosSemanales[i]=Melilla$Casos[i]-Melilla$Fallecidos[i]-Melilla$Recuperados[i]
  Melilla$Activos[i]=max(Melilla$Activos[i-1]+Melilla$ActivosSemanales[i],0)
}

# Murcia
Murcia = Spain2 %>% filter(CCAA=="Murcia") %>% arrange(Semana)
for(i in 3:dim(Melilla)[1]){
  Murcia$Recuperados[i]=min(max(Murcia$Activos[i-2]-Murcia$Fallecidos[i-1],0),Murcia$Activos[i-1])
  Murcia$ActivosSemanales[i]=Murcia$Casos[i]-Murcia$Fallecidos[i]-Murcia$Recuperados[i]
  Murcia$Activos[i]=max(Murcia$Activos[i-1]+Murcia$ActivosSemanales[i],0)
}


# Navarra
Navarra = Spain2 %>% filter(CCAA=="Navarra") %>% arrange(Semana)
for(i in 3:dim(Melilla)[1]){
  Navarra$Recuperados[i]=min(max(Navarra$Activos[i-2]-Navarra$Fallecidos[i-1],0),Navarra$Activos[i-1])
  Navarra$ActivosSemanales[i]=Navarra$Casos[i]-Navarra$Fallecidos[i]-Navarra$Recuperados[i]
  Navarra$Activos[i]=max(Navarra$Activos[i-1]+Navarra$ActivosSemanales[i],0)
}

# País Vasco
PV = Spain2 %>% filter(CCAA=="País Vasco") %>% arrange(Semana)
for(i in 3:dim(PV)[1]){
  PV$Recuperados[i]=min(max(PV$Activos[i-2]-PV$Fallecidos[i-1],0),PV$Activos[i-1])
  PV$ActivosSemanales[i]=PV$Casos[i]-PV$Fallecidos[i]-PV$Recuperados[i]
  PV$Activos[i]=max(PV$Activos[i-1]+PV$ActivosSemanales[i],0)
}




#Calculo de ISSSD e ISSSA
Spain2=rbind(Madrid,Cataluña,Canarias, Baleares, Andalucia,Aragon,Asturias,PV,CValenciana,Murcia,Extremadura,Galicia,CyL,CLM,LR,Navarra,Cantabria,Ceuta,Melilla)


Spain2=Spain2%>%mutate(ISSSD=(Fallecidos+Recuperados)/Casos)

# If Casos >0 & Fallecidos + Recuperados =0 ISSSD=1/(Casos+1)
# If Casos =0 & Fallecidos + Recuperados >0 ISSSD=(Fallecidos+Recuperados+1)
# If 0/0 ISSSD=1

Spain2[Spain2$Casos==0 & Spain2$Fallecidos==0 & Spain2$Recuperados==0,]$ISSSD=1
Spain2[Spain2$Casos>0 & Spain2$Fallecidos==0 & Spain2$Recuperados==0,]$ISSSD=1/(Spain2[Spain2$Casos>0 & Spain2$Fallecidos==0 & Spain2$Recuperados==0,]$Casos+1)
Spain2[Spain2$Casos==0 & (Spain2$Fallecidos+Spain2$Recuperados)>0,]$ISSSD=Spain2[Spain2$Casos==0 & (Spain2$Fallecidos+Spain2$Recuperados)>0,]$Fallecidos+Spain2[Spain2$Casos==0 & (Spain2$Fallecidos+Spain2$Recuperados)>0,]$Recuperados+1




Spain2=Spain2%>%group_by(CCAA)%>%arrange(Semana)%>%mutate(ResueltosAcumulados=cumsum(Recuperados)+cumsum(Fallecidos),CasosAcumulados=cumsum(Casos),ISSSA=100*ResueltosAcumulados/CasosAcumulados)

Spain2=Spain2%>%mutate(ISSSA=ifelse(ISSSA<100,ISSSA,100))
