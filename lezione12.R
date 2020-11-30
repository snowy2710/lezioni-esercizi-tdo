#operatori logici(o booleani)

p<-filter(flights, year=="2013",origin=="JFK",dest=="MIA", month==3)
head(p)
#studio di insiemi: insieme A: voli partit jfk, insieme B: voli arrivati a mia
#intersezione A&B voli partiti da jfk e arrivati a mia
#quelli fuori dall'intersezioni siginificano che sono SOLO partiti da jfk ma non arrivati a mia e sono SOLO arrivati a mia senza partire da jfk

#operatori logico(o booleano): AND(&)
#operatore logico(o booleano): OR (|)
#operatore logico(o booleano): XOR(eXclusive OR) cioè OR meno AND(intersezione)
#operatore logico "negazione"; !
#x & !y si legge x e NOT y

#esempio: origine=="MIlano cent." & (finale=="Torino P.N" | finale=="Roma Termini")

#esempio: origine=="MIlano cent." & (finale!="Lodi" & finale!="Pavia")
#oppure: origine=="MIlano cent." & !(finale=="Lodi" | finale=="Pavia") scrittura diversa esito uguale

#relazione logica importante: (!x & !y &!z) = !(x OR y OR z)


