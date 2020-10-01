library(ggplot2)



# Activos por CCAA
# Activos semanales por CCAA
gg1=ggplot(Spain)+geom_line(aes(x=Semana,y=Activos,color=CCAA),lwd=1.25)
figura_activos_ccaa=gg1+facet_wrap(~CCAA,ncol=3,scales="free")+theme_minimal()+theme(legend.position = "none")+
  theme(axis.title.x=element_blank(),axis.title.y=element_blank())+scale_x_date(date_breaks = "months" , date_labels = "%b")

# Activos España
# Activos semanales España
activos_españa=Spain%>%group_by(Semana)%>%arrange(Semana)%>%summarise(activos=sum(Activos))
gg1=ggplot(activos_españa)+geom_line(aes(x=Semana,y=activos,color='red'),lwd=1.25)
figura_activos_españa=gg1+theme_minimal()+theme(legend.position = "none")+ 
  theme(axis.title.x=element_blank(),axis.title.y=element_blank(),plot.title = element_text(hjust = 0.5))+
  ggtitle("España")+scale_x_date(date_breaks = "months" , date_labels = "%b")

#ISSSD por CCAA
# ISS semanal por CCAA
gg1=ggplot(Spain)+geom_line(aes(x=Semana,y=ISSSD,color=CCAA),lwd=1.25)+scale_y_continuous(trans='log10')
figura_ISSSD_ccaa=gg1+facet_wrap(~CCAA,ncol=3,scales="free")+theme_minimal()+theme(legend.position = "none")+
  theme(axis.title.x=element_blank(),axis.title.y=element_blank())+scale_x_date(date_breaks = "months" , date_labels = "%b")+geom_hline(yintercept=1)

# ISSSA CCAA
# ISS acumulado por CCAA
gg1=ggplot(Spain)+geom_line(aes(x=Semana,y=ISSSA,color=CCAA),lwd=1.25)
figura_ISSSA_ccaa=gg1+facet_wrap(~CCAA,ncol=3,scales="free")+theme_minimal()+theme(legend.position = "none")+
  theme(axis.title.x=element_blank(),axis.title.y=element_blank())+scale_x_date(date_breaks = "months" , date_labels = "%b")

# ISSSA España
# Figura correspondiente a ISS acumulado

ISSSA_españa=Spain%>%group_by(Semana)%>%arrange(Semana)%>%summarise(Rec=sum(Recuperados),Cas=sum(Casos))
ISSSA_españa=ISSSA_españa%>%mutate(RecuperadosA=cumsum(Rec),CasosA=cumsum(Cas),ISSSD=Rec/Cas,ISSSA=100*RecuperadosA/CasosA)

gg1=ggplot(ISSSA_españa)+geom_line(aes(x=Semana,y=ISSSA,color='red'),lwd=1.25)
figura_ISSSA_españa=gg1+theme_minimal()+theme(legend.position = "none")+  ylim(0,100)+
  theme(axis.title.x=element_blank(),axis.title.y=element_blank(),plot.title = element_text(hjust = 0.5))+
  ggtitle("ISS acumulado (pandemia)")+scale_x_date(date_breaks = "months" , date_labels = "%b")

#ISSSD España
# Figura correspondiente a ISS semanal 
gg1=ggplot(ISSSA_españa)+geom_line(aes(x=Semana,y=ISSSD,color='red'),lwd=1.25)+scale_y_continuous(trans='log10')
figura_ISSSD_españa=gg1+theme_minimal()+theme(legend.position = "none")+ 
  theme(axis.title.x=element_blank(),axis.title.y=element_blank(),plot.title = element_text(hjust = 0.5))+
  ggtitle("ISS semanal (pandemia)")+scale_x_date(date_breaks = "months" , date_labels = "%b")+geom_hline(yintercept=1)



# Segunda OLA

# Activos por CCAA
# Activos semanales por CCAA
gg1=ggplot(Spain2)+geom_line(aes(x=Semana,y=Activos,color=CCAA),lwd=1.25)
figura_activos_ccaa2=gg1+facet_wrap(~CCAA,ncol=3,scales="free")+theme_minimal()+theme(legend.position = "none")+
  theme(axis.title.x=element_blank(),axis.title.y=element_blank())+scale_x_date(date_breaks = "months" , date_labels = "%b")

# Activos España
# Activos semanales España
activos_españa=Spain2%>%group_by(Semana)%>%arrange(Semana)%>%summarise(activos=sum(Activos))
gg1=ggplot(activos_españa)+geom_line(aes(x=Semana,y=activos,color='red'),lwd=1.25)
figura_activos_españa2=gg1+theme_minimal()+theme(legend.position = "none")+ 
  theme(axis.title.x=element_blank(),axis.title.y=element_blank(),plot.title = element_text(hjust = 0.5))+
  ggtitle("España")+scale_x_date(date_breaks = "months" , date_labels = "%b")

#ISSSD por CCAA
# ISS semanal por CCAA
gg1=ggplot(Spain2)+geom_line(aes(x=Semana,y=ISSSD,color=CCAA),lwd=1.25)+scale_y_continuous(trans='log10')
figura_ISSSD_ccaa2=gg1+facet_wrap(~CCAA,ncol=3,scales="free")+theme_minimal()+theme(legend.position = "none")+
  theme(axis.title.x=element_blank(),axis.title.y=element_blank())+scale_x_date(date_breaks = "months" , date_labels = "%b")+geom_hline(yintercept=1)

# ISSSA CCAA
# ISS acumulado por CCAA
gg1=ggplot(Spain2)+geom_line(aes(x=Semana,y=ISSSA,color=CCAA),lwd=1.25)
figura_ISSSA_ccaa2=gg1+facet_wrap(~CCAA,ncol=3,scales="free")+theme_minimal()+theme(legend.position = "none")+
  theme(axis.title.x=element_blank(),axis.title.y=element_blank())+scale_x_date(date_breaks = "months" , date_labels = "%b")

# ISSSA España
# Figura correspondiente a ISS acumulado

ISSSA_españa2=Spain2%>%group_by(Semana)%>%arrange(Semana)%>%summarise(Rec=sum(Recuperados),Cas=sum(Casos))
ISSSA_españa2=ISSSA_españa2%>%mutate(RecuperadosA=cumsum(Rec),CasosA=cumsum(Cas),ISSSD=Rec/Cas,ISSSA=100*RecuperadosA/CasosA)

gg1=ggplot(ISSSA_españa2)+geom_line(aes(x=Semana,y=ISSSA,color='red'),lwd=1.25)
figura_ISSSA_españa2=gg1+theme_minimal()+theme(legend.position = "none")+ ylim(0,100)+
  theme(axis.title.x=element_blank(),axis.title.y=element_blank(),plot.title = element_text(hjust = 0.5))+
  ggtitle("ISS acumulado (segunda ola)")+scale_x_date(date_breaks = "months" , date_labels = "%b")

#ISSSD España
# Figura correspondiente a ISS semanal 
gg1=ggplot(ISSSA_españa2)+geom_line(aes(x=Semana,y=ISSSD,color='red'),lwd=1.25)+scale_y_continuous(trans='log10')
figura_ISSSD_españa2=gg1+theme_minimal()+theme(legend.position = "none")+ 
  theme(axis.title.x=element_blank(),axis.title.y=element_blank(),plot.title = element_text(hjust = 0.5))+
  ggtitle("ISS semanal (segunda ola)")+scale_x_date(date_breaks = "months" , date_labels = "%b")+geom_hline(yintercept=1)

