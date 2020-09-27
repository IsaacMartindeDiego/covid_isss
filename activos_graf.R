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

# Activos por CCAA
gg1=ggplot(Spain)+geom_line(aes(x=Semana,y=Activos,color=CCAA),lwd=1.25)
figura_activos_ccaa=gg1+facet_wrap(~CCAA,ncol=3,scales="free")+theme_minimal()+theme(legend.position = "none")+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),axis.title.y=element_blank())

# Activos España
activos_españa=Spain%>%group_by(Semana)%>%arrange(Semana)%>%summarise(activos=sum(Activos))
gg1=ggplot(activos_españa)+geom_line(aes(x=Semana,y=activos,color='red'),lwd=1.25)
figura_activos_españa=gg1+theme_minimal()+theme(legend.position = "none")+ 
  theme(axis.title.x=element_blank(),axis.title.y=element_blank(),plot.title = element_text(hjust = 0.5))+
  ggtitle("España")+scale_x_date(date_breaks = "months" , date_labels = "%b")

#ISSSD por CCAA
gg1=ggplot(Spain)+geom_line(aes(x=Semana,y=ISSSD,color=CCAA),lwd=1.25)+scale_y_continuous(trans='log10')
figura_ISSSD_ccaa=gg1+facet_wrap(~CCAA,ncol=3,scales="free")+theme_minimal()+theme(legend.position = "none")+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),axis.title.y=element_blank())+geom_hline(yintercept=1)

# ISSSA CCAA
gg1=ggplot(Spain)+geom_line(aes(x=Semana,y=ISSSA,color=CCAA),lwd=1.25)
figura_ISSSA_ccaa=gg1+facet_wrap(~CCAA,ncol=3,scales="free")+theme_minimal()+theme(legend.position = "none")+
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank(),axis.title.y=element_blank())

# ISSSA España


ISSSA_españa=Spain%>%group_by(Semana)%>%arrange(Semana)%>%summarise(Rec=sum(Recuperados),Cas=sum(Casos))
ISSSA_españa=ISSSA_españa%>%mutate(RecuperadosA=cumsum(Rec),CasosA=cumsum(Cas),ISSSD=Rec/Cas,ISSSA=100*RecuperadosA/CasosA)

gg1=ggplot(ISSSA_españa)+geom_line(aes(x=Semana,y=ISSSA,color='red'),lwd=1.25)
figura_ISSSA_españa=gg1+theme_minimal()+theme(legend.position = "none")+ 
  theme(axis.title.x=element_blank(),axis.title.y=element_blank(),plot.title = element_text(hjust = 0.5))+
  ggtitle("España")+scale_x_date(date_breaks = "months" , date_labels = "%b")

#ISSSD España
gg1=ggplot(ISSSA_españa)+geom_line(aes(x=Semana,y=ISSSD,color='red'),lwd=1.25)+scale_y_continuous(trans='log10')
figura_ISSSD_españa=gg1+theme_minimal()+theme(legend.position = "none")+ 
  theme(axis.title.x=element_blank(),axis.title.y=element_blank(),plot.title = element_text(hjust = 0.5))+
  ggtitle("España")+scale_x_date(date_breaks = "months" , date_labels = "%b")+geom_hline(yintercept=1)
