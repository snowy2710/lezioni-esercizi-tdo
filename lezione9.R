library(tidyverse)

prova_employed_gender<-read_csv("employed_gender.csv")

prova_employed_gender

#fare gather

g<-gather(prova_employed_gender,part_time, value, 4:7)

#prova_employed_gender da il dato precedente

 # per tornare indietro spread(g, FULL_PART_TIME, VALUE)
spread(g,part_time,value)
#separare in time e sex
g2<-separate(g,part_time,c("time","sex"),sep = "_time_")
g2
spread(g2,sex,value)#per vedere dati di maschi e femmine in colonne

spread(g2,time, value)#spread per dividereil time tra full e part

tail(g2)
