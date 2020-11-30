#DATA TRANSFORMATION

#arrange() ordinare dati di una colonna, se non si dice l'ordinamento sarà crescente
arrange(flights, dep_delay, arr_delay)# in questio caso ordine in modo crescente dep_delay, è  A PARITA' DI VALORE, in modo crescente arr_delay
p1<-arrange(flights, desc(dep_delay))# bisogna inserire desc() per ordinare in maniera decrescente

#mutate() aggiungere una nuova colonna, usando i calcoli derivati da altre colonne
g<- mutate(flights, guadagno= dep_delay - arr_delay, velocita = (distance/air_time)*60)#abbiamo aggiunto due colonne 
#attenzione: per aggiungere una colonna con valore calcolato, non è necessaria la funzione
flights$guadagno=flights$dep_delay - flights$arr_delay# in questo modo

#transmute() è uguale a mutate() ma cancella le colonne originali

Voli_oremin <- select(flights, dep_time, arr_time)
#operatore %/% e %% esegue la divisione e restituisce la parte intera del risultato e la parte decimale
mutate(Voli_oremin,dep_ore=dep_time%/%100, dep_min= dep_time %% 100, arr_ore= arr_time%/%100, arr_min=arr_time%%100)#ecco l'esempio
#può risultare importante

#calcolo medie: 
mean(g$dep_delay)# COSì da NA
mean(g$dep_delay, na.rm = TRUE)# ORA VA BENE

#con summarize()
summarize(g, max(dep_delay)) così non va
summarize(g, max(dep_delay, na.rm = TRUE)) # così va bene
#na.rm significa rimuovi valori mancanti, (remove NA) e specificare TRUE o FALSE. se non si mette niente lascia FALSE, ossia considerando NA

summarize(g, mean(dep_delay, na.rm = TRUE))# darà lo stesso risultato di mean, perchè dovbremo utilizzarlo?
#si può usare insieme a group_by() che permette di eseguire operazioni su un dataset considerando i valori raggruppati rispetto ai valori di alcune colonne
#utile con summarize(), per calcolare valori per i singoli gruppi, invece che per l'intero dataset.
#esempi, di ritardi medi nell'arco di un anno o mese. La distanza media, massima e minima per compagnia aerea per anno/mese.
g1<- group_by(flights, month)# non modifica il dataset ma imposta un indice, l'indice è importante per calcolare i valori di summarize inerenti all'indice

summarize(g1, media_dep_delay=mean(dep_delay, na.rm = TRUE), media_arr_delay=mean(arr_delay, na.rm = TRUE))#IMPORTANTE SAPERLO FARE
#abbiamo calcolato la media dei ritardi mese per mese degli arrivi e partenze

g2<- group_by(flights, month, day)# aggiunto come indice anche il giorno, IMPORTANTE TENER CONTO DELL'ORDINE
summarize(g2, media_dep_delay=mean(dep_delay, na.rm = TRUE), media_arr_delay=mean(arr_delay, na.rm = TRUE))#IMPORTANTE SAPERLO FARE
#così facendo ho calcolato le medie dei ritardi(partenze e arrivi) di ogni giorno di ogni mese
#importante anche l'ordine degli indici 


#rank() ossia metti in ordine i valori rispetto alla colonna anche questo torna utile con group_by()
filter(flights, rank(dep_delay)<=5)

g1<-group_by(flights, month)#impostiamo indice su mesi
filter(g1, rank(desc(dep_delay))<=5)#questi sono i cinque con maggiore ritardo per ogni mese
filter(g1, rank(dep_delay)<=5)#questi sono i cinque con minore ritardo per ogni mese
#questo risponde alla domanda: trova i cinque voli con anticipo/ritardo maggiore per mese

voli_data<-group_by(flights, month,day)
ungroup(voli_data)
voli_data<-group_by(voli_data, month, carrier)#mettiamo come indici mesi e compagnia, e troviamo il ritardo medio per mese di ogni compagnia
voli_data1<-summarise(voli_data,ritardomedia=mean(arr_delay, na.rm = TRUE))#ecco la soluz.

filter(voli_data1, rank(desc(ritardomedia)) <=1)# ora abbiamo trovato la peggior compagnia per ogni mese
filter(voli_data1, rank(ritardomedia) <=1)# ora abbiamo trovato la migliore compagnia per mese


