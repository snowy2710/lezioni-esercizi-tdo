#COS'è UN FILE FORMATO CSV(comma separate values)
#sono file in formato tabellare distinti da un carattere separatore(di solito virgola e punto&virgola) e anche con i TAB ed hanno estensione tsv.
#RIGHE: ogni riga rappresenta un "record" ed è separata da carattere di a capo
#sono un formato molto diffuso per dataset, facilmente condivisibili, il modo più semplice è usare Excel
# PRIMA RIGA: Nomi delle colonne(variabili)
#RIGHE SUCCESSIVE: valori
#salvare dopo facendo -> selezionare file format .csv

#per importare su Rstudio usare "import dataset" From text(base)
show(boxplot.prova)

boxplot.prova$uno[1]/ boxplot.prova$tre[1]
boxplot.prova$uno[3] / boxplot.prova$tre[1]
plot(boxplot.prova$uno, boxplot.prova$quat)
#fatto varie prove con boxplot prova, creato su excel

     