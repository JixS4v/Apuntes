#import "../config.typ": *


#show: doc => template(doc, "Física de Fluidos")

#let dvm(func) = $(upright(D)func)/(upright(D)t)$

= Introducción
== Qué es un fluido?
En oposición a un sólido, un fluido no tiene fuerzas de restitución ante un esfuerzo tangencial. Es decir, si intentamos deformar un sólido (por ejemplo un edificio) en la dirección tangencial (por ejemplo de izquierda a derecha aplicando un esfuerzo desde arriba), este debería de recuperar su forma original después de que se acabe la aplicación de este esfuerzo (para esfuerzos grandes, muchos sólidos no se comportarán como un sólido perfecto).
== Esfuerzos en un fluido
Dentro de un elemento de superficie $Delta S$ en un fluido vamos a considerar una fuerza $Delta arrow(F)$ correspondiente a la fuerza ejercida en ese elemento de superficie. Esta tendrá dos partes: la parte *normal* al fluido y la parte *tangencial* (o cortante) al fluido. Podemos definir su parte en la dirección normal $Delta F_n$ como $Delta F_n = Delta |Delta arrow(F) | cos phi$ y su parte en la dirección tangencial $F_t$ como $Delta F_t = |Delta arrow(F)| sin phi$, donde $phi$ es el ángulo entre el vector $Delta arrow(F)$ y el vector normal $arrow(n)$.

Llamamos al esfuerzo la cantidad de fuerza por unidad de área en una dirección dada. El *esfuerzo normal* entonces se define como la fuerza normal dividido por la superficie en una superficie infinitesimal, o en otras palabras, la derivada de la fuerza normal con respecto a la superficie: 
$ sigma = dv(F_n, S) $
Análogamente, definimos el *esfuerzo tangencial* (o cortante) como la derivada de la fuerza tangencial con respecto a la superficie:\
$ tau = dv(F_t, S) $

En un fluido, obligatoriamente $sigma$ va a tener una naturaleza compresiva, y se define la presión $p$ como $p = -sigma$. 

== Fluido. Criterio de medio continuo.

Para poder estudiar los fluidos tenemos que definir el entorno en el que vamos a estar trabajando. Definimos un fluido como un medio continuo (vamos a estudiar sus criterios ahora), que tiene fuerzas de atracción intermolecular débiles, y que no tiene fuerzas restitutivas. Con eso, podemos decir que las ecuaciones más "generales" de la física de fluidos son aplicables. ¿Pero cuando podemos decir que un fluido es análogo a un medio continuo? Debemos primero elegir la escala en la que vamos a considerar que un "elemento de un fludo" es completamente uniforme. Es decir, que sus variables termodinámicas son uniformes en el elemento. Si el volumen de este elemento es demasiado pequeño (a partir del orden de $10^(-5) "mm"^3$) aparecen fluctuaciones en las magnitudes termodinámicas debido a fluctuaciones microscópicas. Tampoco podemos tener un volumen demasiado grande, porque entonces las variables termodinámicas no se pueden considerar uniformes en la totalidad del elemento. El tamaño adecuado de este elemento nos permite considerar variables termodinámicas locales (trabajaremos con densidades), donde cada elemento está en equilibrio local (podemos aplicar la termodinámica convencional).

Para poder caracterizar sistemas donde podemos considerar equilibrio local, se imponen dos condiicones. Primero, el recorrido libre medio (es decir, cuanto se puede desplazar una partícula sin interactuar) tiene que ser menor al tamaño de una celda, y segundo, el tamaño de las celdas debe de ser menor a la escala $L$ de los cambios macroscópicos. Por lo tanto, utilizando un adimensional llamado el número de Knudsen, podemos definir la condición como
$ "Kn" equiv l_(l m)/L << 1 $

Por lo tanto nuestro modelo no funciona en todas partes, incluso en la tierra. Por ejemplo, en la ionosfera el recorrido libre medio es del orden de 10 metros, por lo que el número de Knudsen es obviamente mayor a 1 y no se puede considerar un "fluido" por nuestra definición.

== Magnitudes estudiadas
Como hemos dicho antes, vamos a estudiar las densidades de las magnitudes que estudiemos. Conviene entonces primero definir la densidad $rho$, que corresponde a la masa por unidad de volumen:
$ rho = dv(m,v) $

Definimos también el volumen específico (el volumen por unidad de masa) como $ v = 1/rho $

Adicionalmente, vamos a definir el campo de velocidades $arrow(u) (x,y,z,t)$, una magnitud vectorial que cuantifica la velocidad de flujo en una posición $arrow(r)$

== Descripción del flujo
Para determinar la naturaleza del flujo en un punto $(x,y,z,t)$, necesitaremos 5 variables. Se utilizan las tres componentes del campo de velocidades y dos variables termodinámicas, normalmente la presión $p$ y la densidad $rho$.

O esto pensaríamos de forma natural, realmente hay dos formas equivalentes de describir el flujo, y se denominan Euleriana y Lagrangiana. La descripción Euleriana es la que hemos estado asumiendo hasta ahora, donde se considera un volumen de control (que es constante, pero no tiene por qué estar fijo en el espacio), donde las variables termodinámicas se pueden considerar razonablemente uniformes, y se estudia el flujo a través de este, utilizando un campo de velocidades general. La descripción Lagrangiana sigue a una masa de control constante (que no tiene por que mantener su forma) que se desplaza a lo largo del fluido. En vez de utilizar el campo de velocidades, se identifica cada masa de control por su posición inicial $arrow(X)_0$ en un tiempo arbitrario pero igual para todas las partículas $t_0$, y se describe su velocidad en un instante $t$: $ arrow(X) (arrow(X)_0, t) $

Hemos dicho que estos formalismos son equivalentes, pero claramente la descripción Lagrangiana, que es más parecida a lo que se utilizaría para la descripción de la mecánica de un sólido, es más engorrosa a la hora de dar una descripción del flujo natural. Sin embargo, es necesaria porque nos permite obtener la mecánica del fluido por analogía a la de un sólido. Por eso necesitamos una forma de pasar de la descripción Lagrangiana al la Euleriana. 

A primera vista, como tenemos el vector de posición de la partícula fluida en un instante $t$, podemos obtener el campo de velocidades en la posición de una partícula dada:
$ arrow(u) (arrow(X) (arrow(X)_0, t), t) $ que resulta ser equivalente a $ dvp(arrow(X),t) (arrow(X)_0, t) $ ya que ambos describen la velocidad para un instante para una masa de control particular (en el lado derecho, la derivada es parcial porque $arrow(X)$ depende únicamente del tiempo para una partícula fluida en particular).

Pero, y si queremos saber la aceleración de esta partícula? Partiendo de la equivalencia que hemos considerado anteriormente, podemos expresar la aceleración de una partícula como
$ dv(u_i (arrow(X) (arrow(X_0), t), t), t) $
Ahora, vamos a aplicar la regla de la cadena, es decir
$ dv(u_i (arrow(X),t),t),t) = dvp(u_i (arrow(X),t),t) cancel(dvp(t,t)) + dvp(u_i(arrow(X),t),X_k) dvp(X_k,t) $
Aquí utilizamos $X_i$ para referirnos a las componentes del vector de posición de la partícula, y debemos de añadir estos terminos para tener en cuenta la dependencia temporal de la velocidad a través de la variable Lagrangiana también. Ahora, recordando la relación anterior de la velocidad:
$ dv(u_i (arrow(X),t), t) = dvp(u_i(arrow(X), t),t) + dvp(u_i (arrow(X),t),X_k) u_k (arrow(X), t) $

Podemos generalizar a esta nueva forma de obtener derivadas de cantidades para partículas individuales a desde la desripción Euleriana a cualquier cantidad dependiente de la posición y el tiempo $bold(lambda)$, tensorial de cualquier orden, aplicando la regla de la cadena:
$ dv(bold(lambda) (arrow(X),t),t) = dvp(bold(lambda)  (arrow(X),t),t) + dvp(bold(lambda) (arrow(X),t),X_k) dvp(X_k,t) = dvp(bold(lambda) (arrow(X),t),t) + dvp(bold(lambda) (arrow(X),t),X_k) u_k (arrow(X),t) $

Esta forma de tomar la derivada se conoce como derivada material, y la denotaremos $dvm("")$ para explicitar que se toma para una partícula de fluido y no para la cantidad en el punto únicamente.
$ dvm(bold(lambda)) = dvp(bold(lambda),t) + dvp(bold(lambda),x_k) u_k $
Aquí hemos intercambiado todas las variables Lagrangianas por las Eulerianas. Hemos podido hacer esto porque no aparecen de forma explícita en la expresión, solo como los argumentos de $arrow(u)$.

= Fluidos ideales
== Ecuaciones de movimiento del fluido ideal
