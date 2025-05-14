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

Hemos dicho que estos formalismos son equivalentes, pero claramente la descripción Lagrangiana, que es más parecida a lo que se utilizaría para la descripción de la mecánica de un sólido, es más engorrosa a la hora de dar una natural del flujo. Sin embargo, es necesaria porque nos permite obtener las ecuaciones del fluido por analogía a las de un sólido. Por eso necesitamos una forma de pasar de la descripción Lagrangiana al la Euleriana. 

A primera vista, como tenemos el vector de posición de la partícula fluida en un instante $t$, podemos obtener el campo de velocidades en la posición de una partícula dada:
$ arrow(u) (arrow(X) (arrow(X)_0, t), t) $ que resulta ser equivalente a $ dvp(arrow(X),t) (arrow(X)_0, t) $ ya que ambos describen la velocidad para un instante para una masa de control particular (en el lado derecho, la derivada es parcial porque $arrow(X)$ depende únicamente del tiempo para una partícula fluida en particular).

Pero, y si queremos saber la aceleración de esta partícula? Partiendo de la equivalencia que hemos considerado anteriormente, podemos expresar la aceleración de una partícula como
$ dv(u_i (arrow(X) (arrow(X_0), t), t), t) $
Ahora, vamos a aplicar la regla de la cadena, es decir
$ dv(u_i (arrow(X),t),t),t) = dvp(u_i (arrow(X),t),t) cancel(dvp(t,t)) + dvp(u_i(arrow(X),t),X_k) dvp(X_k,t) $
Aquí utilizamos $X_i$ para referirnos a las componentes del vector de posición de la partícula, y debemos de añadir estos terminos para tener en cuenta la dependencia temporal de la velocidad a través de la variable Lagrangiana también. Ahora, recordando la relación anterior de la velocidad:
$ dv(u_i (arrow(X),t), t) = dvp(u_i(arrow(X), t),t) + dvp(u_i (arrow(X),t),X_k) u_k (arrow(X), t) $

Podemos generalizar a esta nueva forma de obtener derivadas de cantidades para partículas individuales desde la desripción Euleriana a cualquier cantidad dependiente de la posición y el tiempo $bold(lambda)$, tensorial de cualquier orden, aplicando la regla de la cadena:
$ dv(bold(lambda) (arrow(X),t),t) = dvp(bold(lambda)  (arrow(X),t),t) + dvp(bold(lambda) (arrow(X),t),X_k) dvp(X_k,t) = dvp(bold(lambda) (arrow(X),t),t) + dvp(bold(lambda) (arrow(X),t),X_k) u_k (arrow(X),t) $

Esta forma de tomar la derivada se conoce como derivada material, y la denotaremos $dvm("")$ para explicitar que se toma para una partícula de fluido y no para la cantidad en el punto únicamente.
$ dvm(bold(lambda)) = dvp(bold(lambda),t) + dvp(bold(lambda),x_k) u_k $
Aquí hemos intercambiado todas las variables Lagrangianas por las Eulerianas. Hemos podido hacer esto porque no aparecen de forma explícita en la expresión, solo como los argumentos de $arrow(u)$.

= Un primer acercamiento
== Conservación de la masa
Vamos a comenzar obteniendo la ecuación de conservación de la masa para un fluido #footnote([Utilizaremos el argumento de Landau @landau1987fluid]). Podemos obtener la masa de un fluido de densidad $rho$ contenida dentro de un volumen de control fijo $V_c$ como
$ integral_(V_c) rho dif V $
Por lo tanto, el incremento temporal de la masa dentro del volumen se puede expresar como
$ diff/(diff t) integral_(V_c) rho dif V $

Por otra parte podemos expresar el flujo de masa hacia el exterior del volumen por su superficie como
$ integral.cont_(S_c) rho arrow(u) dot hat(n) dif S $
donde $hat(n)$ es el vector normal exterior de la superficie. Podemos constatar que esto es equivalente al decrecimiento temporal de la masa contenida en el volumen. Por lo tanto, podemos establecer la relación
$ diff/(diff t) integral_(V_c) rho dif V = - integral.cont_(S_c) rho arrow(u) dot hat(n) dif S $
Utilizando el teorema de Gauss, tenemos
$ integral.cont_(S_c) rho arrow(u) dot hat(n) dif S = integral_(V_c) nabla dot (rho arrow(u)) dif V $
Por lo tanto, la expresión anterior se transforma en
$ diff/(diff t) integral_(V_c) rho dif V  = - integral_(V_c) nabla dot (rho arrow(u)) dif V $
Reordenando e intercambiando la diferenciación y la integral (el volumen de control es fijo en el espacio y constante, por lo que esta manipulación está permitida), obtenemos
$ integral_(V_c) [dvp(rho,t) + nabla dot (rho arrow(u))] = 0 $
Como esta integral se debe anular para cualquier volumen de control fijo, el integrando es el que se debe de anular, por lo que obtenemos
$ dvp(rho,t) + nabla dot (rho arrow(u)) = 0 $

Esta ecuación se conoce como ecuación de continuidad.

== La ecuación de Euler
Estamos en posición de obtener nuestra primera ecuación de movimiento. Vamos a realizar unas suposiciones. Primero, vamos a asumir una ausencia de viscosidad (o viscosidad despreciable), es decir que la única fuerza intrínseca en juego será la presión, que corresponde a la intensidad de las fuerzas del fluido por unidad de área. 


La fuerza neta que ejerce un volumen de control sobre el resto del fluido es dada por la integral
$ integral.cont_(S_c) p hat(n) dif S $
Por lo tanto, la fuerza que ejerce el fluido sobre el volumen es 
$ - integral.cont_(S_c) p hat(n) dif S $
Utilizando nuevamente el teorema de Gauss, sabiendo que el vector normal es constante
$ integral.cont_(S_c) p hat(n) dif S equiv hat(n) integral.cont_(S_c) p hat(n) dot hat(n) dif S = hat(n) integral.cont_(S_c) nabla dot (p hat(n)) dif V = cancel(hat(n) dot hat(n)) integral_(V_c) nabla p dif V $
Podemos escribir
$ - integral.cont_(S_c) p hat(n) dif S = - integral_(V_c) nabla p dif V $

Por lo que podemos deducir que el fluido alrededor de un volumen de control ejerce una fuerza $ - nabla p$ por unidad de volumen sobre este.

La segunda Ley de Newton postula que:
$ arrow(F) = m arrow(a) $
Esta expresión se aplica a una masa de control, por lo que para obtener las cantidades que buscamos, considerémosla para un volumen de control. Lo primero es convertir la acelearción en la derivada material de $arrow(u)$, lo que resulta ser
$ arrow(F) = m dvm(arrow(u)) $
Ahora, si derivamos por el volumen, sabiendo que $arrow(u)$ no depende del volumen
$ dv(arrow(F), V) = dv(m, V) dvm(arrow(u)) $
Sabiendo que la fuerza por unidad de volumen es $- nabla p$ y que la masa por unidad de volumen es $rho$, identificando:
$ - 1/rho nabla p = dvm(arrow(u)) $
O, desarrollando la expresión
$ dvp(arrow(u),t) + (arrow(u) dot nabla)arrow(u) = -1/rho nabla p $
Esta es la conocida Ecuación de Euler #footnote([Cabe destacar que esta expresión de la ecuación de Euler no es completa, no incluye las fuerzas másicas externas por la gravedad. Dichas fuerzas se deberían de añadir al lado derecho de la ecuación. Durante los siguientes desarrollos, emplearemos la expresión reducida.]), y es la utilizada para describir el flujo de un *Fluido Ideal* (o perfecto), es decir que no experimenta disipación de energía. Ya hemos comentado que la viscosidad es nula, pero esta condición también implica que no hay intercambio de calor entre partículas fluidas, es decir que el movimiento del fluido es adiabático. 

Podemos escribir esta condición como $ dvm(s) = 0 $. Es decir, para cada partícula fluida la entropía es constante.

Otra forma de escribir esto es 
$ dvp(s,t) + arrow(u) dot nabla s = 0 $

También, si multiplicamos esta ecuación por $rho$ y la ecuación de continuidad por $s$, y las sumamos, obtenemos
$ rho dvp(s,t) + s dvp(rho,t) + rho arrow(u) dot nabla s + s nabla dot (rho arrow(u)) = 0 $
Aplicando la regla del producto, tenemos una ecuación de continuidad del flujo de entropía
$ dvp(rho s ,t) + nabla dot (s rho arrow(u)) = 0 $

Esta ecuación se puede simplificar mucho con una sola suposición. Dado que la entropía se conserva, si en algún punto del tiempo esta es uniforme en el espacio, podemos considerar que será uniforme siempre, o en otras palabras $dif s = 0$. Esta condición isentrópica es mucho más permisible, y podemos reescribir la ecuación de movimiento gracias a ella. 

Partiendo de la relación de la entalpía
$ dif h = T dif s + v dif p $

Simplificando para el flujo isentrópico, y sabiendo que $v = 1\/rho$
$ dif h = (dif p)/rho $
Dividiendo por $dif x_i$ arbitrario
$ (dif h)/(dif x_i) = 1/rho (dif p)/(dif x_i) $
Como esta expresión se verifica para cualquier $x_i$, funciona para el gradiente:
$ nabla h = 1/rho nabla p $
Sustituyendo en la ecuación de Euler:
$ dvm(arrow(u)) = - nabla h $
Por lo tanto, en un flujo ideal isentrópico una partícula fluida acelera en la dirección del mínimo de la entalpía. 

== Ecuación de Bernouilli
Hasta ahora hemos considerado casos relativamente generales a todos los fluidos ideales. Ahora vamos a discutir una particularización de la ecuación para el caso del flujo estacionario isentrópico), es decir cuando $dvp(arrow(u),t)=0$ y $dif s = 0$.
 
Para ello, vamos a introducir el concepto de línea de corriente, que son las líneas cuyas tangentes tienen la misma dirección que la velocidad. Es decir, a lo largo de una línea de corriente $ arrow(u) = u hat(e)_t $ Donde $hat(e)_t$ es el vector unitario tangente a la línea de corriente considerada. podemos reescribir esto como un sistema de ecuaciones que exige que $dif arrow(r)$ y $arrow(u)$ sean paralelas: 
$ (dif x)/u_x = (dif y)/u_y = (dif z)/u_z $

Ahora, partiendo de la ecuación de Euler isentrópica
$ cancel(dvp(arrow(u),t)) + (arrow(u) dot nabla) arrow(u) = - nabla h $
A lo largo de una línea de corriente tendríamos
$ (u hat(e)_t dot nabla) (hat(e)_t u) = - nabla h $

Proyectando sobre la línea de corriente:
$ (u hat(e)_t dot nabla) (hat(e)_t u) dot hat(e)_t = - (hat(e)_t dot nabla) h $

recordando la condición anterior, tenemos $ dif arrow(r) = hat(e)_t abs(dif arrow(r)) equiv hat(e)_t dif l $
Por lo que, reordenando
$ hat(e)_t = dv(arrow(r),l) $
Podemos calcular 
$ hat(e)_t dot nabla = dv(arrow(r), l) dot nabla equiv dv(x_i, l) dot diff/(diff x_i) = 1/(dif l) dif x_i partial/(partial x_i) $
Podemos indentificar la suma $ dif x_i diff/(diff x_i)$ como un operador correspondiente a la diferencial exacta de una función dependiente de la posición, por ejemplo $dif lambda = dif x_i dvp(lambda,x_i ) $. Por lo tanto, podemos escribir 
$ hat(e)_t dot nabla equiv dif/(dif l) $

Sustituyendo este resultado:
$ u dif/(dif l ) (u hat(e)_t) dot hat(e)_t = - dv(h,l) $
Sabiendo que
$ dif/(dif l) (u^2 hat(e)_t^2) equiv dif/(dif l) (u^2 hat(e)_t dot hat(e)_t) $
Aplicando la regla del producto, vemos que:
$ dif/(dif l) (u^2 hat(e)_t dot hat(e)_t) =  u hat(e)_t dot dif/(dif l) (u hat(e)_t) + u hat(e)_t dot dif/(dif l)(u hat(e)_t) = 2u hat(e) dot dif/(dif l) (u hat(e)_t) $
Por lo que
$ dif/(dif l) (u^2 hat(e)_t^2) =  2 u hat(e)_t dif/(dif l) (u hat(e)_t) $
Y entonces
$ u hat(e)_t dif/(dif l) (u hat(e)_t) = dif/(dif l) (1/2 u^2 hat(e)_t^2) $
Como $hat(e)_t$ es unitario, $hat(e)_t^2 = 1$. Podemos sustituir en la ecuación para obtener
$ dif/(dif l) (1/2 u^2) = - dv(h,l) $
Finalmente, reordenando
$ dif/(dif l) (h + u^2/2) = 0 $
De esto es immediato que a lo largo de una línea de corriente del flujo estacionario isentrópico de un fluido perfecto $u^2/2 + h$ es constante. Si queremos añadir un campo gravitatorio uniforme basta con añadir $arrow(g)$ al lado derecho de la ecuación de Euler, que corresponde a añadir $-hat(e)_t dot arrow(g)$ al lado izquierdo de la ecuación, que corresponde a $-g cos alpha $ donde $alpha$ es el ángulo entre la dirección de $arrow(g)$ y la línea de corriente. Suponiendo un sistema de referencia donde $arrow(g)$ va en la dirección $-z$, podemos inventar un ángulo $beta = alpha-pi/2$  que corresponde al ángulo entre $hat(e)_t$ y el eje $x$. Sustituyendo en la ecuación, tenemos que $ -hat(e)_t dot arrow(g) = g sin beta $. Finalmente, este seno se puede calcular como $sin beta = dv(z,l)$ obteniendo finalmente la ecuación
$ dif/(dif l) (u^2/2 + h) + g dv(z,l) = 0 $
O, sabiendo que $g$ es una constante
$ dif/(dif l) (u^2/2 + h + g z) = 0 $
Es decir, en flujo estacionario isentrópico de un fluido ideal sometido a un campo gravitatorio uniforme y constante, $ u^2 +h + g z$ es constante a lo largo de una línea de corriente. 

Esto es la forma más común de la ecuación de Bernouilli, ya que en la mayoría de casos el fluido considerado está sometido a un campo gravitatorio. 



#bibliography("assets/ref_fluids.bib", title:"Referencias")