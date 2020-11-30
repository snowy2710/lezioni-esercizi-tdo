library(dplyr)
library(nycflights13)
view(flights)

names(flights)
filter(flights, year==2013, month==3, origin=="JFK", dest=="MIA")# seleziona osservazioni(righe) secondo i valori di alcune variabili(nelle colonne)

arrange(flights, year==2013, month=3, origin=="UA")#riordina le righe

select(flights, day, origin)#selezionare alcune varabili (in colonne) di un dataset

#esercizio

risp1<- filter(flights, year==2013, month==2, dep_delay> 10)
#risp1= 5713

risp2<-filter(flights, carrier=="DL", month==5, day==3, origin=="LGA", sched_dep_time==700)
#risp2= 3

filter(flights, dep_time>= 800, dep_time <=805, origin!="JFK")
#risp3= 1618


