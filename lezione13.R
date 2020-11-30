library(tidyverse)
library(nycflights13)
head(flights)

#utilizziamo condizioni logiche
g1<-filter(flights, dep_delay>0 | arr_delay>0, day=="1", month=="1") # abbiamo usato OR 
  
g2<- filter(flights, dep_delay>0 & arr_delay>0, day=="1", month=="1") #abbiamo usato AND

g3<- filter(flights,xor(dep_delay>0, arr_delay>0),day=="1", month=="1")#abbiamo usato xor


#spesso nei dataset mancano dei valori
#quando troviamo una variabile (colonna) con tutti valora NA,cosa possiamo fare?
#possiamo cancellare la colonna, ma con cautela, bisogna ragionare bene se è necessario o meno
# se invece abbiamo un po' di valori e un po' NA? dobbiamo cercare di mantenerle

is.na(flights$dep_delay)#significa esiste un dato mancante nella colonna dep_delay?
filter(flights, is.na(dep_delay))#esiste un dato mancante nella colonna dep_delay? filtrato

filter(flights, is.na(dep_delay),day==1, month==1)# sono quattro righe dove presenta NA nella colonna dep_delay



filter(flights, is.na(arr_delay),day==1, month==1)#qua vediamo più righe con NA in arr_delay



# funzione select() per selezionare le variabili(COLONNE) su cui lavorare, da salvare in un nuovo dataframe
#per selezionale tutte le colonne "da" ad "a" si fa select(dataset, x:y)
#per selezione tutte le colonne TRANNE "da" ad "a" si fa select(dataset, -(x:y))
#seelct(num_range() selezionare colonna
Voli_ritardi<- select(flights, "day", "month", "dep_delay", "arr_delay")
head(Voli_ritardi)

#ora ci chiediamo quali di questi voli del primo gennaio hanno NA come ritardo nell'arrivo?
g4<- filter(Voli_ritardi, is.na(arr_delay), day==1, month==1)# selezionare le righe di giorno e mese

filter(Voli_ritardi, is.na(arr_delay) | is.na(dep_delay))


#utilizziamo i dati dei tre esercizi prima
g1<-filter(flights, dep_delay>0 | arr_delay>0, day=="1", month=="1") # abbiamo usato OR, ci sono alcuni valori del dataframe Voli_ritardi

g2<- filter(flights, dep_delay>0 & arr_delay>0, day=="1", month=="1") #abbiamo usato AND, non ci sono valori del dataframe Voli_ritardi

g3<- filter(flights,xor(dep_delay>0, arr_delay>0),day=="1", month=="1")#abbiamo usato xor, non seleziona dep e arr NA, quindi non va bene
#la soluzione dell'eservizio è indicare che OR seleziona 5 valori, quindi più vicino al dato voluto. il problema è xor
#QUESTO CI INSEGNA A VALUTARE BENE QUANDO TROVIAMO DATI NA (MANCANTI)


#rename()
#rinominare nomi delle colonne es: rename(flights, anno=year, mese=month, giorno=day) per convenzione mettere a sinstra il nuovo nomeù














