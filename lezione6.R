#ESERCIZIO
tibble(cityTempes)
hist(as.integer(cityTempes$sun) /cityTempes$mon)
hist(cityTempes$sun / cityTempes$mon)
tibble(cityTempes)
tibble(cityTempes_chr)
tibble(cityTempes)
tibble(cityTempes_chr)
tibble(cityTempes_chr)
as.integer(cityTempes_chr$sun)

(tibble(cityTempes$sun, cityTempes$mon, cityTempes$tue, cityTempes$wed, cityTempes$thr, cityTempes$fri, cityTempes$sat) - 32) / 1.8)  
#abbiamo trasformato il dataset cityTempes (in gradi F) ini gradi C ora dobbiamo rinominare il dataset qui sotto in gradi C
#ho inserito i dati trovati su excel e creato file csv cityTemples_C

tibble(cityTempes_C)
tibble(as.numeric(cityTempes_C$city))
tibble(cityTempes_C)

library(tidyverse)
tibble(table1)
read.csv("a,b\n1,2,3\n4,5,6")
read.tsv(cityTempes_C)

#altro esercizio

#ho modificato e esportato il file greenhouse_gas_emm
library(tidyverse)
tibble(final_greenhouse.gas_emissions2018)
#usare as.integer, as.numeric

read.csv("tdo.Rproj"