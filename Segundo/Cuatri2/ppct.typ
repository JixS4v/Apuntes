#import "../config.typ": *


#show: doc => template(doc, "Programación para Ciencia y Tecnología")

== Introducción 

La computación científica es la disciplina que combina la programación con las matemáticas, con el fin de obtener soluciones numéricas a problemas (físicos o no) que tienen difícil solución analítica. El objetivo es enlaborar (e implementar) métodos que hallan soluciones aproximadas de problemas matemáticos de una manera eficiente. Asimismo, queremos poder garantizar un nivel mínimo de precisión (dentro de la aproximacion). 

En la práctica, esto nos permite realizar simulaciones que pueden sustituir experimentos costosos, complicados y a veces imposibles de realizar.

=== Qué es un método numérico?
Los métodos numéricos son técnicas que nos permiten formular problemas matemáticos de forma que puedan resolverse utilizando únicamente operaciones aritméticas básicas. Su eficiencia dependerá de la precisión requerida y de la rapidez con la que queramos obtener los resultados.

Entre ellos, existen 3 tipos principales:
- Los métodos iterativos
- Los métodos directos 
- Los métodos basados en la discretización del continuo

=== Métodos directos
Los métodos directos calculan una solución exacta (es decir, utilizan métodos de solución matemáticos como podría ser el de Gauss para las ecuaciones lineales), utilizando únicamente operaciones aritméticas elementales (suma, resta, división, producto). Su ventaja es que podemos garantizar que la solución es la correspondiente al problema exactamente, pero no existen para la mayoría de problemas. En la mayoría de casos, se requieren aproximaciones para poder trabajar con el problema de una forma numérica.

=== Métodos iterativos
Los métodos iterativos generan una sucesión de aproximaciones a la solución ($x^((0)), x^((1)), ..., x^((k))$), que a cada paso se aproximan más a la solución que buscamos. Tienen la ventaja de que son aplicables a un número mucho más amplio de problemas (además, podemos utilizarlos para llegar a un grado de precisión arbitrariamente grande), pero presentan unas dificultades que reducen su aplicabilidad. Primero, es imposible conocer el número de iteraciones a calcular para poder llegar a la solución buscada. Adicionalmente, estos métodos no garantizan convergencia para cualquier problema, por lo que su aplicabilidad es específica a ciertos conjuntos de estos.

=== Métodos basados en la discretización del continuo
Los métodos basados en la discretización aproximan un problema continuo mediante un equivalente discreto, por ejemplo como es el caso de la integración por trapecios o por sumas de riemann, o tambíen la simulación por elementos finitos, donde un objeto rígido complejo se descompone en finitos elementos geométricamente simples para facilitar la simulación. Estos suelen ser los más complejos y usan a veces software especializado debido a la complejidad de las implementaciones.

== Errores
Los errores son una consecuencia inevitable a la hora de resolver cualquier problema numéricamente. Podemos nombrar 3 tipos importantes.

=== Errores inherentes
Los errores inherentes provienen de los datos de entrada, normalmente de una pobre precisión de medida (instrumentos experimentales), o también de la necesidad de representar valores irracionales o periodicos por medio de un ordenador, que degrada la información al no poder utilizar una representación que captura el número entero (número finito de cifras significativas con los puntos flotantes)

=== Errores por truncamiento

En muchas ocasiones trabajamos con series infinitas (desarrollos en serie, metodos iterativos), que es necesario truncar para poder obtener una solución numerica. Por tanto, perdemos precisión, que se puede minimizar utilizando métodos con una convergencia más rápida. 

=== Errores por redondeo
Al tener que representar los números finitamente, al hacer operaciones con un ordenador necesariamente perderemos precisión. Es importante prestar atención a estos porque pueden degradar nuestro resultado si aplicamos demasiadas operaciones. 


== Cuantificación del error
Buscamos a cuantificar el error presente en nuestras aproximaciones, y hay dos formas obvias de hacer esto
=== Error absoluto
Definimos el error absoluto como la diferencia entre el valor verdadero $x$ y el valor aproximado $x^*$:
$ e_x = x-x^* " (solemos desconocer x)" \ | e_x | < c_x " (cota superior)" $

=== Error relatvo
El error relativo es el cociente entre el error absoluto por el valor esperado $x$:
$ E_x = e_x/x = (x-x^*)/x \ |E_x| approx (|e_x|)/(|x^*|) < c_x/(|x^*|) = C_x " (Cota superior)" $

Dentro de estos, el error relativo es preferible porque podemos obtener un valor "universal" que nos permite cuantificar de una forma estandarizada el *grado* de error, en vez de cuantificar el error en sí que nos es de poca utilidad al no decirnos nada sobre la importancia de este mismo.

== Dígitos significativos
A menudo es complicado (o imposible) conocer nuestro valor expresado. En cambio, si que es posible conocer la imprecisión de nuestros instrumentos y error de nuestros algoritmos. Para poder estimar el grado de fiabilidad podemos irnos a los dígitos significativos.

Definimos el número de dígitos significativos d un número $x$ como el número de cifras que son fiables (y válidas) en términos de precisión para almacenar una cantidad. Decimos que un número $x$ tiene $n$ dígitos significativos si se puede expresar como $ x = d_1"."d_2 ... d_n 10^e ", donde " d_1 !=0 , space e "un exponente entero" $
Es decir que el número se puede expresar con $n-1$ dígitos después de la coma (con un solo digito precediendola no nulo) $d_i$ multiplicados por una potencia de 10 entera.

A la hora de trabajar con un ordenador, el número de digitos significativos de base será el más grande con el que pueda trabajar nuestro ordenador. Si nuestros datos de entrada exceden este número de dígitos $n$, hemos de redondearlos, es decir, obtener el número más próximo a nuestro dato de entrada $x$ que tenga $n$ dígitos significativos. 

Podemos utilizar la siguiente fórmula para redondear (aunque sea intuitiva):
$ cases("Si " d_(n+1) >= 5 => d_1 "." d_2 ... (d_n+1) dot 10^e , "Si " d_(n+1)<= 5 => d_1"." d_2 ... d_n dot 10^e) $

Definimos el número de dígitos significativos de una aproximación $x^*$ como el número de digitos que comparte con el valor exacto $x$. 

Podemos entonces definir un criterio que los relaciona con el error: Si se cumple $|E_x|<10^(-k)$, entonces podemos garantizar que $x^*$ tiene al menos $k$ dígitos significativos con $x$

== Representación normalizada en coma flotante
En el ordenador, los números se suelen almacenar con una representación en coma flotante. Empleamos la notación de mantisa y exponente, y tiene unas ventajas importantes:
- Nos permite representar números de tamaño (casi) arbitrario
- La mantisa tiene un número $t$ determinado de dígitos
- Al hablar de la precisión de la maquina estamos refiriendonos a $t$

Utilizamos una serie de reglas para representar los números reales en un computador, que se conoce como representación normalizada. Hablamos de normalizar cuando los pasamos a esta representación. Como norma general, situamos la primera cifra significativa de la mantisa como el dígito entero, y el resto se quedan relegados a la parte decimal:
$ x = 0.0000375487 => x^* = 3.754 dot 10^(-6) quad (t=4) $
 