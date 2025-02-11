#import "../config.typ": *


#show: doc => template(doc, "Programación para Ciencia y Tecnología")

#let fl = "fl"

= Introducción 

La computación científica es la disciplina que combina la programación con las matemáticas, con el fin de obtener soluciones numéricas a problemas (físicos o no) que tienen difícil solución analítica. El objetivo es enlaborar (e implementar) métodos que hallan soluciones aproximadas de problemas matemáticos de una manera eficiente. Asimismo, queremos poder garantizar un nivel mínimo de precisión (dentro de la aproximacion). 

En la práctica, esto nos permite realizar simulaciones que pueden sustituir experimentos costosos, complicados y a veces imposibles de realizar.

== Qué es un método numérico?
Los métodos numéricos son técnicas que nos permiten formular problemas matemáticos de forma que puedan resolverse utilizando únicamente operaciones aritméticas básicas. Su eficiencia dependerá de la precisión requerida y de la rapidez con la que queramos obtener los resultados.

Entre ellos, existen 3 tipos principales:
- Los métodos iterativos
- Los métodos directos 
- Los métodos basados en la discretización del continuo

=== Métodos directos
Los métodos directos calculan una solución exacta (es decir, utilizan métodos de solución matemáticos como podría ser el de Gauss para las ecuaciones lineales), utilizando únicamente operaciones aritméticas elementales (suma, resta, división, producto). Su ventaja es que podemos garantizar que la solución es la correspondiente al problema exactamente (sin tener en cuenta los errores de redondeo que van a estar presentes), pero no existen para la mayoría de problemas. En la mayoría de casos, se requieren aproximaciones para poder trabajar con el problema de una forma numérica.

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

=== Relación con el error
Definimos el número de dígitos significativos de una aproximación $x^*$ como el número de digitos que comparte con el valor exacto $x$. 

Podemos entonces definir un criterio que los relaciona con el error: Si se cumple $|E_x|<10^(-k)$, entonces podemos garantizar que $x^*$ tiene al menos $k$ dígitos significativos con $x$

= Representación normalizada en coma flotante
En el ordenador, los números se suelen almacenar con una representación en coma flotante. Empleamos la notación de mantisa y exponente, y tiene unas ventajas importantes:
- Nos permite representar números de tamaño (casi) arbitrario
- La mantisa tiene un número $t$ determinado de dígitos
- Al hablar de la precisión de la maquina estamos refiriendonos a $t$

Utilizamos una serie de reglas para representar los números reales en un computador, que se conoce como representación normalizada. Hablamos de normalizar cuando los pasamos a esta representación. Como norma general, situamos la primera cifra significativa de la mantisa como el dígito entero, y el resto se quedan relegados a la parte decimal:
$ x = 0.0000375487 => x^* = 3.754 dot 10^(-6) quad (t=4) $

== Conjunto de números representables
Denominaremos $F$ al conjunto de todos los números representables mediante la notación normalizada. Se trata de un subconjunto de $RR$ definido mediante cuatro enteros (B,t,L,U) de la siguiente forma
$ F= {f in RR : f = plus.minus d_1"."d_2 ... d_t * B^e quad 0 <= d_i < B, d_1 != 0, L<=e<=U} $
Aquí, $B$ es la base de la exponenciación (conviene trabajar con $2$ en computadoras debido a su funcionamiento binario), $L$ es valor más pequeño que puede tomar el exponente $e$ y $U$ es el más grande 
Es importante notar que el $0$ no pertenece a este conjunto.


Podemos acotar todos los números representables entre dos otros $m$ y $M$ tal que $m<=|f| <= M$, donde:
$ m&=B^L \ M &= (1-B^(-t)) * B^(U+1) $

=== Epsilon: Redondeo unidad de precisión
El número $epsilon$ se define como la distancia entre el $1$ y el siguiente número representable, es decir, lo podemos calcular como $epsilon = B^(1-t)$. Es decir, el número más pequeño que podemos representar en punto flotante con un exponente fijado a 0.

== Espaciado
Al no variar el número de dígitos significativos, con un aumento del exponente se pierde granularidad. Es decir, aumenta el espaciado. No variamos la cantidad de números representables por exponente, pero necesariamente perderemos densidad. Por esto es importante cuadrar el rango de valores que vamos a representar a la hora de elegir los parámetros de una representación para estos. 


== Representación y redondeo

Definimos el conjunto de números con representación (sea exacta o no) en el ordenador es
$ G = {x in RR : m <= |x| <= M} union {0} $

Tenemos entonces la relación 
$ F subset G subset RR $
Entre los conjuntos anteriores

Utilizamos el operador float ($"fl"$) cuando nos referimos a la representación de un número de $G$ dentro del conjunto $F$
$ "fl": G->F $
Lo definimos como $ fl(x) = f in F " más cercano" $
Al ser un redondeo, estamos perdiendo información, no estamos representando el número en sí sino una aproximación.

Podemos definir el error relativo que cometemos al representar un número $x$ en coma flotante utilizando un redondeo es
$ |E_x| = (|x-fl(x)|)/(|x|) <= 1/2 epsilon $

== Operaciones en coma flotante
En un ordenador, una operación elemental cualquiera $\#$ tiene como pasos:
+ Normalizar los operandos para obtener $fl(x)$, $fl(y)$
+ Calcular $fl(x)\#fl(y)$
+ Normalizar el resultado: $fl(fl(x) \# fl(y))$ 

Es posible que el resultado de nuestra operación caiga fuera del intervalo de números representables. Se pueden producir dos casos

+ Overflow: El resultado (absoluto) es demasiado grande. Este error es manejado de diferentes formas en diferentes sistemas (puede causar una excepción o simplemente ser "infinito"). Se puede evitar en ciertos casos. A veces, si estamos componiendo operaciones, puede ocurrir que el resultado final sí sería representable pero que algún paso intermedio tiene overflow. En ciertos casos se puede evitar esto repensando nuestros algoritmos. Por ejemplo, si estamos intentando calcular $ sqrt(a^2 + b^2)$, puede ocurrir que $a^2 + b^2$ sea demasiado grande, pero que el resultado total no engendrase problemas. Podríamos evitar el overflow cambiando nuestra expresión un poco: $ a sqrt(1+b^2/a^2)$. Podemos evitar los overflows de esta forma.

+ Underflow: El resultado (absoluto) es demasiado pequeño. Muchas veces, se asigna 0 o se causa una excepción, aunque a veces toma valor de un número especial no normalizado ( se conoce como underflow gradual, donde parte de la mantisa va al exponente, perdiendo precisión pero permitiendo un número más pequeño).

== Minimización de errores
Hay varias cosas que debemos de tener en cuenta para minimizar los errores. Es importante, sobretodo, minimizar el número de operaciones, que siempre van a resultar en una pérdida de precisión. Es útil factorizar expresiones, por ejemplo la expresión
$ p(x) = 4x^3 + 2x^2 + 6x +1 $
Tiene 6 productos y 3 sumas. En cambio, si factorizamos
$ p(x) = [(4x + 2) x + 6] x+1 $
obtenemos esta expresión, que solo requiere 3 productos y 3 sumas.

También es muy importante evitar restas de números con valores muy próximos. Lo que ocurrirá entonces es que el resultado de la resta tenga demasiados pocos dígitos significativos (hablamos de cancelación) y obtengamos un error muy grande, sobretodo al utilizar este resultado en más operaciones. 

Finalmente, conviene realizar las sumas en un orden menor a mayor, ya que es posible que tengamos pérdidas de dígitos significativos por truncación al sumar un número grande (la suma de dos números grandes) con uno bastante más pequeño.

== Consecuencias de la transformación de $RR$ a $F$

Al transformar de $RR$ a $F$ pueden ocurrir cosas que no parecen intuitivas si uno no está acostumbrado a trabajar con números de coma flotante.

Primero, como hemos visto antes es posible que la suma no sea comutativa, ya que estamos truncando a cada paso y entonces podemos tener pérdidas significativas de información dependiendo del orden. También puede ocurrir que la suma de dos operandos no altere uno de ellos, si son de tamaño muy diferente, también debido a la truncación. Vistas estas propiedades pueden ocurrir situaciones extrañas, por ejemplo cuando operamos $x+y-y$, podemos no obtener $x$ de vuelta.

= Normas vectoriales y Matriciales

== Norma vectorial
En un espacio vectorial $RR^n$ la norma vectorial se define como una apliación $N: RR^n -> RR$ con las siguientes propiedades:
+ $N(x) >=0 forall x in RR^n$ y $ N(x) = 0 <=> x=0 in RR^n $
+ $N(x+y) <= N(x) + N(y) forall x,y in RR^n$
+ $N(alpha x) = |alpha| N(x) forall alpha in RR, forall x in RR^n $

=== p-normas vectoriales
Las p-normas son una familia de normas vertoriales. Se definen sobre un vector $x = [x_1,x_2, ..., x_n]$ como
$ ||x_p|| = root(p, |x_1|^p + |x_2|^p + ... + |x_n|^p) $
Las más comunes son
- La 1-norma: $||x||_1 = sum_(i=)^(n) |x_i| $
- La 2-norma (Euclídea): $||x||_2 = sqrt(x^T x) = sqrt(sum_(i=1)^(n) x_i^2) $
- La $oo$-norma: $||x||_oo = "max"_(i=1,...,n) (|x_i|) $

== Norma matricial
En el contexto del álgebra de las matrices cuadradas $RR^(n times n)$ definimos la norma matricial en $RR^(n times n)$ a la aplicación $N: RR^(n times n) -> RR$ que satisface los siguientes requisitos
+ $N(A)>=0 forall A in  R^(n times n) $ y $N(A)=0 <=> A= 0 in R^(n times n)$
+ $N(A+B) <= N(A) + N(B) forall A, B in RR^(n times n)$
+ $N(alpha A) = |alpha| N(A) forall alpha in RR, forall A in RR^(n times n)$
Por ejemplo, tenemos la norma de Frobenius (F-norma):
$ ||A||_F = sqrt(sum_(i=1)^(n)  sum_(j=1)^(n) a_(i j)^2), A in RR^(n times n) $

=== Normas matriciales inducidas por normas vectoriales
Con una matriz $A in RR^(n times n)$, definimos la norma matricial $||dot||_M$ inducida por la norma vectorial $||dot||_V$ a
$ ||A||_m = max_(||y||_v = 1) (||A y||_v) $

=== p-normas matriciales
Las p-normas matriciales son las inducidas por las p-normas vectoriales
$ ||A||_p = max_(||y||_p = 1) (||A y||_p) $

*Teorema*: Dadas dos matrices cualesquiera $A$ y $B in RR^(n times n)$, para todas las normas matriciales inducidas se verifica que 
$ ||A B|| <= ||A|| ||B|| $
Para las p-normas
$ ||A B||_p <= ||A||_p ||B||_p, forall A,B, in RR^(n times n) $

Llamamos a una norma matricial $||dot||_M$ compatible con una norma vectorial $||dot||_v$ cuando
$ ||A_x||_v <= ||A||_M ||x||_V, forall A in RR^(n times n) , x in RR^n $

=== Fórmulas de calculo
Dada una matriz $A in RR^(n times n)$,
la 1-norma se puede calcular como
$ ||A_1|| = max_(1<=j<=n) (sum_(i=1)^(n) ||a_(i j)||) $
Es decir, el máximo del vector resultante de sumar todos los elementos de cada columna.

La $oo$-norma se puede calcular como
$ ||A||_oo = max_(i<=j<=n) (sum_(j=1)^(n) |a_(i j)|) $
Es decir, el máximo del vector resultante de sumar todos los elementos de cada fila.

Por lo tanto, $||A||_1 = ||A^(T)||_oo$

No hay una fórmula simple para calcular la 2-norma en las matrices.

== Estabilidad y condicionamiento
=== Número de condición de una matriz
En una matriz $A in RR^(n times n)$ no singular, definimos el número de condición $K(A)$ relativo a una norma matricial $||dot||$ al número 
$ K(A) = ||A|| ||A^(-1)|| $
Todas las matrices $A$ no singulares tienen $K(A)>=1$, y las matrices singulares tienen $K(A)=oo$.

=== Condicionamiento
Definimos el condicionamiento de un problema como la sensibilidad de la solución ante cambios de las entradas. 

Un problema bien condicionado por lo tanto tendrá pequeñas variaciones de los datos de salida con pequeñas variaciones de los datos de entrada. Entonces, $f(x^*)$ será parecido a $f(x)$.

En cambio, un problema mal condicionado tendrá grandes variaciones de los datos de salida con pequeñas variaciones en los datos de entrada, por lo tanto $f(x^*)$ se alejará de $f(x)$.

=== Estabilidad
La estabilidad de un método está relacionada con los errores de redondeo producidos por el método al resolver un problema.

Un método estable entonces amplificará los pequeños errores de redondeo en la entrada de una forma mínima ($f^*(x^*)$ estará próximo de $f(x^*)$), mientras que uno inestable agrandará a estos ($f^* (x^*)$ se alejará de $f(x^*)$).

Estos dos conceptos están fuertemente relacionados. Si un problema está bien condicionado, cualquier método estable será valido para resolverlo con precisión. En cambio, si un problema está mal condicionado, hay que ser mucho más cuidadoso con los cálculos, incluso utilizando métodos estables. Por otro lado, si un método para un cierto problema es inestable, puede funcionar bien para entradas con errores pequeños, pero fallará al aumentar la magnitud de estos.

== Coste computacional

Un algoritmo es un conjunto de instrucciones que resuelven un problema en un número finito de pasos. Para evaluar el rendimiento, utilizamos dos parámetros, el tiempo y el espacio. La complejidad temporal determinará el tiempo que empleamos durante la ejecución, mientras que la complejidad espacial determinará los requisitos de memoria durante la ejecución.

=== Complejidad temporal
Hay dos formas de determinar la complejidad temporal. Podemos realizar un análisis "a priori", es decir, estimarla a partir del algoritmo para obtener una cota de su valor. Esto nos ayudará a decidir entre algoritmos posibles a implimenar, ya que es independiente de la máquina. En general, para hacer esto se cuantifica el número de operaciones aritméticas básicas en coma flotante. Esta unidad se conoce como "flops", es decir floating point operations. 

También se puede realizar un análisis "a posteriori", es decir implementar el algoritmo en una máquina específica y medir su tiempo de ejecución. Esto nos permitirá obtener un valor más preciso del tiempo necesario de ejecución. 

=== Notaciones asintóticas
Hay dos formas de denotar la complejidad temporal de un problema.
==== Notación "o grande"
 La notación $cal(O)$ ("big o", o en español "o grande"), corresponde al orden de crecimiento asintótico del tiempo dependiendo del tamaño de los datos de entrada. Esto nos permite acotar superiormente la forma en la que crece una función. 

Formalmente, decimos que una función $f$ (tal que $f(n)$ es el tiempo de ejecución con un tamaño de entrada dado) pertenece a la clase de complejidad de $g$ ($f in cal(O)(g)$) si existe una constante $C$ y un $n_0$ tal que $forall n>=n_0$ se tiene que $|f(n)|<=C|g(n)|$.

Por ejemplo, una función que crece de forma $3n^2 + 2n$ pertenece a la clase $cal(O) (n^2) $

==== Notación "o pequeña"
La notación $cal(o)$ ("small o" o en español "o pequeña")es similar a la notación o grande excepto que se tiene en cuenta el coeficiente de mayor orden del término de orden superior del coste. Es útil a la hora de comparar dos algoritmos que tienen el mismo orden $cal(O)$.

=== Cálculo del coste computacional
Podemos calcular el coste computacional de métodos basados en bucles for de una forma relativamente simple. Los representamos como sumatorios, que como sumando tienen el número de operaciones en una iteración dada. Entonces, obtendremos nuestra complejidad en función de las $n$ iteraciones que dependerán de nuestro tamaño de entrada. 

Por ejemplo, si tenemos un bucle con un número de operaciones constante:
$ sum_(i=1)^(n) k = k dot n in cal(o)(k n) in cal(O)(n) $
Es decir, el número de operaciones aumentará de forma lineal

Ahora, consideremos un algoritmo que realiza un número de operaciones igual al índice en cada iteración
$ sum_(i=1)^(n) i = 1+2+3+...+n = (1+n)/2 dot n = n/2 + n^2/2 in cal(o)(1/2 n^2 ) in cal(O) (n^2) $

Podemos imaginar esto para varias potencias del índice, en general
$ sum_(i=1)^(n) i^k in cal(o) ((n^(k+1))/(k+1)) in cal(o) (n^(k+1)) $

Puede ser poco intuitivo pensar en como las operaciones son proporcionales a una potencia del indice, pero es muy común, por ejemplo en el caso de bucles anidados, donde cada bucle anidado dentro del otro añade un exponente al número de operaciones.

Vamos a visualizar esto con un poco de pseudocódigo

```pseudo
para i=1 hasta n
    x = x + 2*y
    para j=1 hasta n:
        z = z+x
    fin_para
fin_para
```
Vemos que el número de operacines dentro del bucle interior es constante y dependiente del número total de entradas, es decir que tendremos $n$ operaciones. Entonces, añadiendo el número de operaciones (a parte de este bucle) en el bucle exterior, que son 2, tenemos un total de $2+n$ operaciones por cada iteración. Sumando $n$ veces, vemos que al final el algoritmo realiza $2n+n^2$ flops, es decir que su complejidad es del orden $cal(o) (n^2)$

= Sistemas de Ecuaciones Lineales
Pretendemos resolver sistemas de $n$ ecuaciones lineales con $n$ incógnitas, es decir las condiciones bajo las que el sistema tiene solución única. 
$ cases(a_(1 1) x_1 + a_(1 2) x_2 + ... + a_(1n) x_n = b_1, a_(2 1) x_1 + a_(2 2) x_2 + ... + a_(2 n) x_n = b_2, ...,...,..., a_(n 1) x_1 + a_(n 2) x_2 + ... + a_(n n) x_n = b_n ) $
