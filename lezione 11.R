library(tidyverse)

g<-read_csv("CU_DOMLAVQUAL_24112020093548273.csv")
head(g)
tail(g)
names(g)
view(g)
unique(g$'Tipo dato')
unique(g$TIPO_DATO_CU)#unique per vedere i nomi dei valori delle variabili
unique(g$CU_ATECO_2007_EXC)
unique(g$CU_ISO)#questo ha un valore unico, non ci serve, possiamo non selezionarlo
unique(g$Territorio)#anche questo ha valore unico, non serve
unique(g$TIPO_DATO_CU)
unique(g$CU_CLLVT)#anche questo ha valore unico, scopriamo cosa significa
unique(g$`Classe di addetti`)#anche questo ha un valore unico, controllare, verificato che ha unvalore unico
unique(g$`Flag Codes`)#anche questo ha valore unico
unique(g$Flags)#anche questo valore unico

g1<-select(g,"CU_TITOLO_STUDIO", "Titolo di studio","CU_ATECO_2007_EXC","Settore di attività","TIME","Value")
head(g1)
view(g1)
#analizziamo i settori di attività dei settori informatici
unique(g1$`Settore di attività`)# poi cerchiamo il codice ateco e facciamo filter() ==

g2<- filter(g1, CU_ATECO_2007_EXC=="TCODAHOWE")
view(g2)
head(g2)# ora possiamo analizzare dati in modo creativo per trovare dati utili
g3<-spread(g2, TIME, Value)#dati ordinati per valori di ogni anno

#prima considero i lauerati  in percentuale
max(g3[1,5:13])#massimi laureati % negli anni selez. 60.8
min(g3[1,5:13])#minimi laureati in % negli anni selez. 45.1
median(as.numeric(g3[1,5:13]))#media in percentuale dei laureati negli anni selez. 48.6

#ora i diplomati
max(g3[2,5:13])#51.9
min(g3[2,5:13])#36.5
median(as.numeric(g3[2,5:13]))# 42.8


#poi vedo le serie temporali
g3[1,5:13]#laureati
g3[2,5:13]#diplomati
g3[5,5:13]#totali
