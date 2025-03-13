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

Para poder estudiar los fluidos tenemos que definir el entorno en el que vamos a estar trabajando. Definimos un fluido como un medio continuo (vamos a estudiar sus criterios ahora), que tiene fuerzas de atracción intermolecular débiles, y que no tiene fuerzas restitutivas. Con eso, podemos decir que las ecuaciones más "generales" de la física de fluidos son aplicables. ¿Pero cuando podemos decir que un fluido es análogo a un medio continuo? Debemos primero elegir la escala en la que vamos a considerar que un "elemento de un fludo" es completamente uniforme. Es decir, que sus variables termodinámicas son uniformes en el elemento. Si el volumen de este elemento es demasiado pequeño (a partir del orden de $10^(-5) "mm"^3$) aparecen fluctuaciones en las magnitudes termodinámicas debido a fluctuaciones microscópicas. Tampoco podemos tener un volumen demasiado grande, porque entonces las variables termodinámicas no se pueden considerar uniformes en la totalidad del elemento. El tamaño adecuado de este elemento nos permite considerar variables termodinámicas locales (trabajaremos con densidades), donde cada elemento está en equilibrio local (podemos aplicar la termodinámica convencional).

Para poder caracterizar sistemas donde podemos considerar equilibrio local, se imponen dos condiicones. Primero, el recorrido libre medio (es decir, cuanto se puede desplazar una partícula sin interactuar) tiene que ser menor al tamaño de una celda, y segundo, el tamaño de las celdas debe de ser menor a la escala $L$ de los cambios macroscópicos. Por lo tanto, utilizando un adimensional llamado el número de Knudsen, podemos definir la condición como
$ "Kn" equiv l_(l m)/L << 1 $

Por lo tanto nuestro modelo no funciona en todas partes, incluso en la tierra. Por ejemplo, en la ionosfera el recorrido libre medio es del orden de 10 metros, por lo que el número de Knudsen es obviamente mayor a 1 y no se puede considerar un "fluido" por nuestra definición.

== Magnitudes estudiadas
Como hemos dicho antes, vamos a estudiar las densidades de las magnitudes que estudiemos. Conviene entonces primero definir la densidad $rho$, que corresponde a la masa por unidad de volumen:
$ rho = dv(m,v) $
En aplicaciones se utiliza a veces la densidad relativa $ "DR" = rho/rho_(H_2 O) $
Definimos también el volumen específico (el volumen por unidad de masa) como $ v = 1/rho $

Para describir un fluido, a parte de su velodcidad en un punto (en el espacio, del fluido en general, no de una partícula) necesitaremos proveer dos variables termodinámicas (se suelen usar la presión $p$ y la densidad $rho$).

