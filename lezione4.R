library(tidyverse)
#creato repository su github

#TIDYSET BEN ORGANIZZATO
#righe=osservazioni
#colonne=variabili
#valori=singoli dati

#esempio
show(table1)
table1$cases/table1$population * 1000
#calcolato l'incidenza dei casi sulla popolazione (x1000)

plot(table1) # table1 è un tidy dataset
plot(table1$population)
table1$cases/table1$population * 1000
mean(table1$population)


show(table2)
#ci sono vari problemi, il primo è la divisione tra la variabile "type" e i due valori cases e population relazioni a "count" si sarebbe potuto mettere semplicemente due variabili cases e population

table2$cases / table2$population * 1000
# esce errore poichè sono due righe e non due colonne seguite da dei valori

table2$count[1]/table2$count[2] * 1000
#per selezionare i singoli valori usare []

indice_casi <- c(1,3,5,7,9,11)
indice_pop <- c(2,4,6,8,10,12)
#indicare un gruppo di valori con nome a piacere e usare "<- c()
indice_casi
indice_pop

table2$count[indice_casi] / table2$count[indice_pop] * 1000
#in questo modo l'operazione totale si potrà fare, ma se ci sono tanti variabili sarà difficile.

mean(table2$count[indice_casi])
sum(table2$count[indice_pop]) / 6 
#abbiamo calcolato la media di dei casi e popolazione

show(table3)
#trovare incidenza casi/popolazione è difficile

show(table4a)
show(table4b)

table4a$'1999' / table4b$'1999'  * 10000
#usare ' per variabili numerici


