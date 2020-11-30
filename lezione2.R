#istallare un package da packages e selezionare il package.

library(ggplot2)
#per caricarlo usare "library()" in questo caso library(ggplot2)
#bisogna utilizzare "library()" ogni volta che si utilizza un ambiente di esecuzione

#package utile "tidyselect" che consente operazioni su nomi di variabili

names(iris)
#"names" per vedere tutti i nomi delle variabili

vars_select(names(iris), starts_with("Petal"))
# comando per cercare cio che inizia con la parola "Petal"                
