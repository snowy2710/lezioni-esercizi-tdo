#operazione in serie, pipe()
#si usa %>% per concatenare comandi, ecco un esempio per arriva a trovare il ritardo medio e relativo
library(tidyverse)
library(nycflights13)
Voli_ritardi<- filter(flights,dep_delay>0) %>% group_by(carrier,month) %>%mutate(rit_medio=mean(dep_delay,na.rm = TRUE),rit_rel=dep_delay-rit_medio)%>%select(month:day,carrier, dep_time,rit_medio,rit_rel)
#con il comando di sopra noi abbiamo effettuato tutto ciò che dovevamo fare in un solo comando, ma è utile?
#a volte è utile creare  altri dataframe magari nel tidy ma anche nel trasform, per poter tornare indietro di uno step e non indietro fino al dataset iniziale


#DATA VISUALIZATION
#usiamo una libreria grafica avanzata, ggplot2, ed è inclusa in tidyverse.
#ci sono molti tipi di grafici su ggplot2, controllare r-graph-gallery.com
#studiare su libro e su datavizproject.com
#vedere e studiare su sito data-to-viz.com, studiare bene visto che spiega bene

