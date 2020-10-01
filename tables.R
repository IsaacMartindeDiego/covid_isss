
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

## Cambiamos nombre de las columnas a la tabla
names(tabla_ccaa_informe)=c("Comunidad Autónoma", "ISS acumulado (%)", "ISS semanal")
tabla_ccaa_informe$`ISS acumulado (%)`[tabla_ccaa_informe$`ISS acumulado (%)`>95]="> 95"
