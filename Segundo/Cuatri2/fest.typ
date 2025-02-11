#import "../config.typ": *


#show: doc => template(doc, "Física Estadística")

= Fundamentos Racionales de la Termodinámica
== Determinismo y Predictibilidad
Primero, hablemos de determinismo y la predictibilidad, que suelen ser dos conceptos confundidos. 

Si un sistema es determinista, podemos conocer el estado del sistema en cualquier instante si conocemos las leyes que gobiernan un fenómeno y las condiciones iniciales. En cambio, la predictibilidad posita la capacidad de relatar fenómenos con anterioridad y precisión. 

=== Caos clásico

En un sistema clásico, es imposible determinar las $2n$ coordenadas generalizadas con precision para un instante temporal, debido a la no linealidad de ciertas ecuaciones, o a interacciones que no se tienen en cuenta. Es decir, aunque un sistema sea completamente determinista, no tiene por qué ser predecible.

=== Caos cuántico
Por postulados, en la Mecánica Cuántica se sustituyen los valores de las magnitudes físicas por distribuciones de probabilidad. Por ejemplo, no tratamos con la posición de un objecto, pero la probabilidad de lo encontremos en una posición dada. En el sentido clásico, las leyes de la cuántica son indeterministas. Por lo tanto, el determinismo no existe, y si existe no implica predictividad.

== La colectividad en la mecánica clásica 
Supongamos un sistema físico compuesto por muchas partículas. Es imposible estudiar los momentos de cada partícula, pero podemos estudiar las probabilidades del comportamiento de un número suficientemente grande de copias del mismo sistema. 

Podemos representar un sistema por un punto en el espacio de fases $2n$-dimensional, caractereizado por los $n$ pares de $(q,p)$ podemos llamar a este punto $(q,p) in Gamma$. Llamamos la *Colectividad* al conjunto de posibles posiciones en el espacio de fases de las copias virtuales de dicho sistema con peso estadístico. La denotaremos $rho (q, p; t)$ a la densidad de probabilidad de encontrar las coordenadas generalizadas del sistema con un cierto valor en el instante $t$.

=== Evolución de la colectividad
El teorema de Liouville dice que la densidad de sistemas en la vencindad de un sistema dado en el espacio de fases peramnece constante en el tiempo. Utilizando los corchetes de Poisson:
$ dv(rho,t) = dvp(rho,t) + {rho, cal(H)} $
Como $rho$ es constante en el tiempo, $dv(rho,t) = 0$
$ dvp(rho,t) = - {rho, cal(H)} = {cal(H), rho} $
Esta ecuación se conoce como la ecuación de Liouville, y es fundamental en la mecánica estadística, sobretodo en la de no-equilibrio.
Podemos definir el operador de Liouville para una cantidad A como $L A = {H,A}$, por lo que la ecuación se convierte en $ dvp(rho,t) = L rho $

Ahora, definimos la colectividad de equilibrio como la que no depende del tiempo explícitamente. Es decir
$ dvp(rho_0,t) = 0 $
Por lo tanto
$ L rho_0 (q,p) = 0 $

=== Magnitudes micro y macroscópicas
Las magnitudes macroscópicas describen el comportamiento global del sistema. Podemos clasificarlas en dos tipos: las magnitudes extensivas, que doblan su valor si el sistema duplica su tamaño (entropía, energía, volumen, número de partículas, etc.) e intensivas, que no dependen del tamaño del sistema (temperatura, presión).

Además pueden ser parámetros externos, que rigen el conjunto de posibles estados que puede adoptar un sistema, o variables aleatorias, cuyos valores no se pueden controlar y fluctuan con el tiempo. 

Para cada parámetro externo, existe una fuerza conjugada que induce un cambio en el sistema asociado al parámetro.

Las magnitudes microscópicas son las que describen el comportamiento de los constituyentes del sistema, y son variables aleatorias. Microscópicamente, las partículas que componen un sistema siempre cambian (fluctuan) pero cuando lo hacen de manera estacionaria, alcanzamos el estado de equilibrio macroscópico. 

