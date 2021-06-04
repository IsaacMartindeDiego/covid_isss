
## Fecha de la tabla
max_fecha_ccaa=max(Spain2$Semana)

## Seleccionamos datos de las CCAA de esa fecha
tabla_ccaa_informe=Spain2%>%filter(Semana==max_fecha_ccaa)%>%select(CCAA,ISSSA,ISSSD)%>%arrange(CCAA)
tabla_ccaa_informe=as.data.frame(tabla_ccaa_informe)


## Seleccionamos datos de España de esa fecha
ult_datos_Spain=cbind(CCAA="España",ISSSA_españa2%>%filter(Semana==max_fecha_ccaa)%>%select(ISSSA,ISSSD))

## Añadimos el dato de españa a la tabla de las CCAA
tabla_ccaa_informe=rbind(tabla_ccaa_informe,ult_datos_Spain)
tabla_ccaa_informe$ISSSD=round(tabla_ccaa_informe$ISSSD,2)
tabla_ccaa_informe$ISSSA=round(tabla_ccaa_informe$ISSSA,2)

# pandemia
## Seleccionamos datos de las CCAA de esa fecha
tabla_ccaa_informeP=Spain%>%filter(Semana==max_fecha_ccaa)%>%select(CCAA,ISSSA,ISSSD)%>%arrange(CCAA)
tabla_ccaa_informeP=as.data.frame(tabla_ccaa_informeP)

## Seleccionamos datos de España de esa fecha
ult_datos_Spain=cbind(CCAA="España",ISSSA_españa%>%filter(Semana==max_fecha_ccaa)%>%select(ISSSA,ISSSD))

## Añadimos el dato de españa a la tabla de las CCAA
tabla_ccaa_informeP=rbind(tabla_ccaa_informeP,ult_datos_Spain)
tabla_ccaa_informeP$ISSSD=round(tabla_ccaa_informeP$ISSSD,2)
tabla_ccaa_informeP$ISSSA=round(tabla_ccaa_informeP$ISSSA,2)

tabla_ccaa_informe=cbind(tabla_ccaa_informe,tabla_ccaa_informeP[,-1])
## Cambiamos nombre de las columnas a la tabla
names(tabla_ccaa_informe)=c("Comunidad Autónoma", "ISSa (%) desde julio 2020", "ISSs desde julio 2020", "ISSa (%) pandemia", "ISSs pandemia")
#tabla_ccaa_informe$`ISSa (%) desde julio 2020`[tabla_ccaa_informe$`ISSa (%) desde julio 2020`>95]="> 95"
#tabla_ccaa_informe$`ISSa (%) pandemia`[tabla_ccaa_informe$`ISSa (%) pandemia`>95]="> 95"

tabla_ccaa_informe_issa=tabla_ccaa_informe[,c(1,2,4)]
tabla_ccaa_informe_isss=tabla_ccaa_informe[,c(1,3,5)]
