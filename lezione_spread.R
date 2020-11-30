#esercizi

devtools::install_github("garrettgman/DSR")
library(DSR)

DSR::table1
DSR::table2

table1
table2

table3
table4a
table4b

#lavoriamo su table2

table2

table2$value

case_rows <- c(1,3,5,7,9,11)
pop_rows <- c(2,4,6,8,10,12)

table2$value[case_rows] / table2$value[pop_rows] * 1000

table4a
table4b

casi <- (table4a$'1999' , table4a$'2000')

table2
spread(table2, key, value)
#per usare spread prima selezionare il dataset, poi una variabile e poi l'altra


table4a

gather(table4a, year,cases, 2:3)
table4a

table4a_es 

read_delim("table4a_esercizio.csv", ";")
library(tidyverse)

view(table4a_esercizio)
gather(table4a_esercizio, cuntry, continent, 1:3)

spread(table4a_esercizio,country, continent)
table4a_esercizio


separate(table5, rate, c("cases","pop"), sep="/")
table5

unite(table5, ANNO, century, year, sep="")

separate(table5, rate, c("cases","pop"), sep="/", convert=TRUE)
#convert=TRUE per avere i vaolri come numeri mentre false per averli come caratteri    

cityTempes_C
tempes<-read_delim("cityTempes_C.csv", delim = ";")


head(tempes)

n <-as.numeric( tempes$sun)

#usare sapply applica una funziona su più colonne o righe
tempes[2:8] <- sapply(tempes[2:8], as.character)
tempes

tempes[1,2:8]#selezione di valori per una riga

tempes[2:7]#selezioni di varie colonne e dei suoi valori

tempes[1:6, 2:8] # così si selezionano i valori dellele righe e delle colonne 

temp1<-tempes[1:3, 1:3]
temp1

temp1[2:3] <- sapply(temp1[2:3], as.numeric)
temp1

head(temp2)
temp2 <- gather(tempes, chiave, valori, 2:8)#scegliere dataset, poi parola chiave e parola valore e poi, quantità da comprimere delle colonne

temp2
temp3<-spread(temp2,chiave, valori)#usare spread inserendo prima i ldataset poi la parola chiave da "spreaddare" e poi il valore "da spreadare"
temp3
tempes

tempes[2:8] <-sapply(tempes[2:8], as.numeric)

#totale delle temperature nelle colonne (tempes)
for (i in 2:8) {
  print(sum(tempes[2:8]))
  

sum(tempes$sun, ncol(2))#somma di una singola colonna
  


