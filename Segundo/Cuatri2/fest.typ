#import "../config.typ": *


#show: doc => template(doc, "Física Estadística")

= Utilidad de la mecánica estadística

== Determinismo y predictibilidad
Primero, hablemos de determinismo y la predictibilidad, que suelen ser dos conceptos confundidos. 

Si un sistema es determinista, podemos conocer el estado del sistema en cualquier instante si conocemos las leyes que gobiernan un fenómeno y las condiciones iniciales. En cambio, la predictibilidad posita la capacidad de relatar fenómenos con anterioridad y precisión. 

=== Caos clásico

En un sistema clásico, es imposible determinar las $2n$ coordenadas generalizadas con precision para un instante temporal, debido a la no linealidad de ciertas ecuaciones, o a interacciones que no se tienen en cuenta. Es decir, aunque un sistema sea completamente determinista, no tiene por qué ser predecible. 

=== Caos cuántico
Por postulados, en la Mecánica Cuántica se sustituyen los valores de las magnitudes físicas por distribuciones de probabilidad. Por ejemplo, no tratamos con la posición de un objecto, pero la probabilidad de lo encontremos en una posición dada. En el sentido clásico, las leyes de la cuántica son indeterministas. Por lo tanto, el determinismo no existe, y si existe no implica predictividad.

=== Magnitudes micro y macroscópicas
Las magnitudes macroscópicas describen el comportamiento global del sistema. Podemos clasificarlas en dos tipos: las magnitudes extensivas, que doblan su valor si el sistema duplica su tamaño (entropía, energía, volumen, número de partículas, etc.) e intensivas, que no dependen del tamaño del sistema (temperatura, presión).

Además pueden ser parámetros externos, que rigen el conjunto de posibles estados que puede adoptar un sistema, o variables aleatorias, cuyos valores no se pueden controlar y fluctuan con el tiempo. 

Para cada parámetro externo, existe una fuerza conjugada que induce un cambio en el sistema asociado al parámetro.

Las magnitudes microscópicas son las que describen el comportamiento de los constituyentes del sistema, y son variables aleatorias. Microscópicamente, las partículas que componen un sistema siempre cambian (fluctuan) pero cuando lo hacen de manera estacionaria, alcanzamos el estado de equilibrio macroscópico. 


== La colectividad en la mecánica clásica 
Supongamos un sistema físico compuesto por muchas partículas. Es imposible estudiar los momentos de cada partícula, pero podemos estudiar las probabilidades del comportamiento de un número suficientemente grande de copias del mismo sistema. 

Podemos representar un sistema por un punto en el espacio de fases $2n$-dimensional, caractereizado por los $n$ pares de $(q,p)$ podemos llamar a este punto $(q,p) in Gamma$. Llamamos la *Colectividad* al conjunto de posibles posiciones en el espacio de fases de las copias virtuales de dicho sistema con peso estadístico. La denotaremos $rho (q, p; t)$ a la densidad de probabilidad de encontrar las coordenadas generalizadas del sistema con un cierto valor en el instante $t$. Utilizando esta densidad de probabilidad, podremos obtener valores y expresiones para las cantidades macroscópicas de interés.


= Fundamentos racionales de la termodinámica
El uso principal de la Mecánica Estadística es obtener las leyes de la termodinámica a partir de los primeros principios de la mecánica. Para empezar, vamos a introducir unos términos útiles que volverán aparecer a lo largo de este tema. 

Caracterizamos el estado de un sistema por medio de sus variables termodinámicas como el volumen $V$, el número de partículas $N$, y la energía interna $E$. Este estado, aunque macroscópicamente sea único, realmente puede ser alcanzado por medio de diferentes microestados, es decir, formas de distribuir las partículas del sistema y sus variables mecánicas individuales que alcanzan un estado idéntico si se considera el conjunto. Llamamos $omega(N,V,E)$ al número de microestados compatibles con el estado en particular caracterizado por las variables. 

A continuación, veremos como a partir de estas definiciones y unas suposiciones podemos recuperar la termodinamica convencional.

== Equilibrio de un sistema en contacto térmico
Vamos a empezar estudiando un sistema compuesto de dos sistemas que intercambian energia, pero que no cambian de tamaño o intercambian materia. Entonces, tendremos $omega_1 (N_1,V_1,E_1)$, $omega_2 (N_2,V_2,E_2)$ los números de microestados de cada sistema, con $E = E_1 + E_2$ la energía total que es constante. Ya podemos definir el número de microestados del sistema conjunto como el producto del número de microestados de cada sistema: $ omega(N,V,E_1,E_2) = omega_1 (N_1, V_1, E_1) omega_2 (N_2, V_2, E_2) equiv omega_1 (N_1, V_1, E_1) omega_2 (N_2, V_2, E-E_2) $

Ahora, realizaremos la hipótesis que el equilbrio entre dos sistemas se alcanza cuando el número de microestados para el sistema conjunto es máximo. Es decir, teniendo en cuenta que $N,V$ son constantes (ya que no hay intercambio de materia o variación de volumen) por lo que el número de microestados depende únicamente de la energía (en este caso del sistema 1, ya que $E$ es una constante):
$ dv(omega (E_1), E_1, eval:E_1^*) &= 0 $
donde $E_1^*$ es la energía del sistema 1 en el equilibrio. Aplicando la regla del producto:
$ omega_2 (E-E_1^*) dv(omega_1 (E_1), E_1, eval: E_1^*) + omega_1 (E_1^*) dv(omega_2 (E-E_1), E_1, eval: E_1^*) = 0 $
Ahora, aplicando la regla de la cadena, sabiendo que $ dv(E_2, E_1) = -1$ por lo que $ dv(omega_2 (E-E_1), E_1, eval: E_1^*) = dv(omega_2(E_2), E_2, eval:E-E_1^*) dv(E_2, E_1) = - dv(omega_2(E_2), E_2, eval:E-E_2^*) $ tenemos
$ omega_2 (E_2^*) dv(omega_1 (E_1), E_1, eval:E_1^*) - omega_1 (E_1^*) dv(omega_2 (E_2), E_2, eval:E_2^*) = 0$
Reordenando
$ 1/(omega_1 (E_1)) dv(omega_1 (E_1), E_1, eval:E_1^*) = 1/(omega_2 (E_2)) dv(omega_2 (E_2), E_2, eval:E_2^*) $
Utilizando nuevamente la regla de la cadena, dado que $ dv(ln f(x), x) = 1/(f(x)) dv(f(x),x)$, tenemos
$ dv(ln omega_1(E_1), E_1, eval:E_1^*) = dv(ln omega_1(E_2), E_2, eval:E_2^*) $

Obtenemos esta condición de equilibrio para un sistema con intercambio energético. Ahora, definimos el parámetro $beta$ tal que
$ beta = dvp(ln omega(E), E, eval: (N,V), evalsym:")") $
esta condición se reduce a 
$ beta_1 = beta_2 $.

Podemos elucidar el significado físico de este parámetro apoyándonos en definiciones de la termodinámica convencional. Definimos la temperatura T de un sistema como $ 1/T = dvp(S,E, eval:(N,V), evalsym:")") $

Por lo tanto, tomando el cociente de ambas expresiones, tenemos
$ [dvp(S,E, eval:(N,V), evalsym:")")/dvp(ln omega,E, eval:(N,V), evalsym:")")] = 1/(beta T) $

Por lo que podemos escribir que
$ dvp(S,ln omega, eval:(N,V,E^*), evalsym:")") = 1/(beta T) = "const."$

Llamando a esta constante 