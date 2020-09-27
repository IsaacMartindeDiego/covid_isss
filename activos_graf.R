library(ggplot2)

# Colores CCAA

rgb2hex = function(r,g,b) sprintf('#%s',paste(as.hexmode(c(r,g,b)),collapse = ''))

color_Madrid=rgb2hex(255, 0, 0)
colo_Cataluña=rgb2hex(84, 156, 237)
color_PV=rgb2hex(34,139,34)
color_Navarra=rgb2hex(247, 156, 225)
color_LR=rgb2hex(230, 210, 45)
color_Andalucia=rgb2hex(161, 206, 94)
color_Aragon=rgb2hex(246,139,105)
color_Asturias=rgb2hex(101, 18, 153)
color_Baleares=rgb2hex(88,87,75)
color_Canarias=rgb2hex(255,226,147)
color_Cantabria= rgb2hex(250,198,204)
color_CLM= rgb2hex(150,75,0)
color_CYL= rgb2hex(193, 25, 124)
color_Ceuta= rgb2hex(200, 255, 243)
color_CValenciana= rgb2hex(29, 99, 154)
color_Extremadura= rgb2hex(144,238,144)
color_Galicia= rgb2hex(174,209,233)
color_Melilla= rgb2hex(187,177,165)
color_Murcia= rgb2hex(227,223,214)

Sp1=rbind(Madrid,Cataluña,Andalucia,Aragon,Asturias,PV,CValenciana,Murcia,Extremadura,Galicia,CyL,CLM,LR,Navarra,Cantabria,Ceuta,Melilla)
gg1=ggplot(Sp1)+geom_line(aes(x=Semana,y=Activos,color=CCAA))
figura_activos_ccaa=gg1+facet_wrap(~CCAA,ncol=3,scales="free")+theme(legend.position = "none")+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),axis.title.y=element_blank())
´

