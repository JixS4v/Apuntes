#import "../config.typ": *


#show: doc => template(doc, "Física de Fluidos")

= Introducción
== Qué es un fluido?
En oposición a un sólido, un fluido no tiene fuerzas de restitución ante un esfuerzo tangencial. 
== Esfuerzos en un fluido
Dentro de un elemento de superficie $Delta S$ en un fluido vamos a considerar una fuerza $Delta arrow(F)$ correspondiente a la fuerza ejercida en ese elemento de superficie. Esta tendrá dos partes: la parte *normal* al fluido y la parte *tangencial* (o cortante) al fluido. Podemos definir su parte en la dirección normal $Delta F_n$ como $Delta F_n = Delta |Delta arrow(F) | cos phi$ y su parte en la dirección tangencial $F_t$ como $Delta F_t = |Delta arrow(F)| sin phi$, donde $phi$ es el ángulo entre el vector $Delta arrow(F)$ y el vector normal $arrow(n)$.

Llamamos al esfuerzo la cantidad de fuerza por unidad de área en una dirección dada. El *esfuerzo normal* entonces se define como la fuerza normal dividido por la superficie en una superficie infinitesimal, o en otras palabras, la derivada de la fuerza normal con respecto a la superficie: 
$ sigma = dv(F_n, S) $
Análogamente, definimos el *esfuerzo tangencial* (o cortante) como la derivada de la fuerza tangencial con respecto a la superficie:\
$ tau = dv(F_t, S) $

En un fluido, obligatoriamente $sigma$ va a tener una naturaleza compresiva, y se define la presión como $-sigma$. 

== Fluido. Criterio de medio continuo.


