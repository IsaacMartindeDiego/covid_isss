
source('auto_read.R')
source('preprocessing.R')
source('figures.R')
source("tables.R")

a = strsplit(as.character(Sys.Date()-1), "-")
fecha_informe = paste0(a[[1]][1],a[[1]][2],a[[1]][3],sep="")
nombre_informe = "_COVID19_DSLAB_informe_ejecutivo"
nombre_total = paste0(fecha_informe,nombre_informe,sep="")

rmarkdown::render('resumen/resumen.Rmd',output_file = paste(nombre_total,'.pdf', sep='')) 

