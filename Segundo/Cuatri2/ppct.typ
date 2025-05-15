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

#rect(
```pseudo
para i=1 hasta n
    x = x + 2*y
    para j=1 hasta n:
        z = z+x
    fin_para
fin_para
```
)

Vemos que el número de operacines dentro del bucle interior es constante y dependiente del número total de entradas, es decir que tendremos $n$ operaciones. Entonces, añadiendo el número de operaciones (a parte de este bucle) en el bucle exterior, que son 2, tenemos un total de $2+n$ operaciones por cada iteración. Sumando $n$ veces, vemos que al final el algoritmo realiza $2n+n^2$ flops, es decir que su complejidad es del orden $cal(o) (n^2)$

= Sistemas de Ecuaciones Lineales
Pretendemos resolver sistemas de $n$ ecuaciones lineales con $n$ incógnitas, es decir las condiciones bajo las que el sistema tiene solución única. 
$ cases(a_(1 1) x_1 + a_(1 2) x_2 + ... + a_(1n) x_n = b_1, a_(2 1) x_1 + a_(2 2) x_2 + ... + a_(2 n) x_n = b_2, ...,...,..., a_(n 1) x_1 + a_(n 2) x_2 + ... + a_(n n) x_n = b_n ) $

A la hora de seleccionar a uno de los diferentes métodos hay unos aspector que debemos considerar:
- La rapidez: El número de operaciones.
- El coste espacial: La memoria necesaria, conviene minimizarlo para poder utilizar conjuntos de datos máß grandes.
- La facilidad de programación: es mejor si el método es más simple, pero siempre se perderá en las otras areas. Hay que encontrar un equilibrio.
- La sensibilidad del algoritmo respecto a los errores de redondeo
- La aplicabilidad: Los métodos generales suelen ser más lentos que los métodos donde podemos realizar restricciones a los tipos de sistemas.

== Sistemas triangulares
Las matrices triangulares son aquellas que solo tienen componentes no nulas en su diagonal y en una de las dos mitades. 

Una matriz triangular superior $A$ se define como la matriz $A in RR^(n times n)$ tal que $a_(i j) = 0 forall i>j$. Es decir:
$ A = mat(a_(1 1), a_(1 2), dots.h.c a_(1 n);0,a_(2 2), dots.h.c, a_(2 n); dots.v, dots.v, dots.down, dots.v; 0,0, dots.h.c, a_(n n)) $

Una matriz triangular inferior se define entonces como la matriz $A in RR^(n times n)$ tal que $a_(i j) = 0 forall j>i$, es decir
$ A = mat(a_(1 1), 0, dots.h.c, 0; a_(2 1), a_(2 2), dots.h.c, 0; dots.v, dots.v, dots.down, dots.v; a_(n 1), a_(n 2), dots.h.c, a_(n n)) $

=== Sistemas triangulares superiores
Para resolver sistemas triangulares superiores podemos emplear el método de sustitución inversa (o regresiva). Es decir, empezamos por la última ecuación, y vamos sustituyendo el valor de las variables a medida que las conocemos.

Por ejemplo, con un sistema triangular superior de 3 ecuaciones con 3 incógnitas:
$ cases(reverse:#true, a_(1 1) x_1 + a_(1 2) x_2 + a_(1 3) x_3 = b_1, a_(2 2) x_2 + a_(2 3) x_3 = b_2, a_(3 3) x_3 = b_3) $
$ 
&1. quad a_(3 3) x_3 = b_3 xarrow(a_(3 3)!=0) x_3 = b_3/a_(3 3) \
&2. quad a_(2 2) x_2 + a_(2 3) x_3 = b_2 xarrow(a_(2 2) !=0) x_2 = (b_2 - a_23 x_3)/(a_2 2) \
&3. quad a_(1 1) x_1 + a_(1 2) x_2 + a_(1 3) x_3 = b_1 xarrow(a_(1 1) !=0) x_1 = (b_1 - a_(1 2) x_2 - a_(1 3) x_3)
$

Más generalmente, en con un sistema triangular superior con $n$ ecuaciones y $n$ incógnitas en la ecuación $i$-ésima
$ a_(i i) x_i + sum_(j=i+1)^(n) a_(i j) x_j = b_i $
Despejando $x_i$
$ a_(i i) x_i = b_i - sum_(j=i+1)^(n) a_(i j) x_j xarrow(a_(i i)!=0) x_i = (b_i - sum_(j=i+1)^(n)  a_(i j) x_j)/a_(i i) $

#rect(```pseudo
Algoritmo x = sustitucion_inversa(A,b)

para i = n hasta 1 salto -1
    suma = 0
    para j=i+1 hasta n
        suma = suma+a_ij * x_j
    fin_para
    si a_ii = 0 entonces
        Error
    fin_si
    x_i = (b_i - suma)/a_ii
fin_para

```)

=== Sistemas triangulares inferiores
Podemos aplicar el método anterior para resolver estos, con una pequeña modificación, ya que empezamos por la primera ecuación y vamos sustituyendo las variables desde esta. Se conoce entonces como método de sustitución directa (o progresiva).


#rect(```pseudo
Algoritmo x = sustitucion_directa(A,b)

para i = 1 hasta n salto 1
    suma = 0
    para j=i+1 hasta n
        suma = suma+a_ij * x_j
    fin_para
    si a_ii = 0 entonces
        Error
    fin_si
    x_i = (b_i - suma)/a_ii
fin_para

```)

== Descomposición LU con pivotación parcial de filas

La descomposición LU de una matriz nos permite obtener dos sistemas tales que $A = L U$ donde L es una matriz triangular inferior y U es una matriz triangular superior. Por lo tanto, nos permite resolver sistemas de ecuaciones linales no triangulares en dos pasos más sencillos. En este caso vamos a explorar un método ligeramente diferente, conocido como descomposición LU con pivotación parcial de filas.

=== Matrices de permutación
Decimos que una matriz cuadrada $P in RR^(n times n)$ es una matriz de permutación si los elementos de cualquier fila o columna son 0 salvo uno de ellos por cada fila y columna, que vale 1. Su determinante es siempre $+1$ o $-1$, el signo depende del número de intercambios (o pivotaciones) de filas necesarios para pasar de la matriz $P$ a la matriz identidad: si este es par, el determinante es positivo, mientras que si es impar es negativo. Otra propiedad importante es su ortogonalidad, es decir que su transpuesta coincide con su inversa:
$ P^(T) = P^(-1) $

=== Algoritmo
Buscamos tres matrices $P, L, U$ tal que $P A = L U$. Para ello, realizaremos $n-1$ etapas, donde en cada etapa $k$ se obtienen ceros debajo del $k$-ésimo elemento de la diagonal principal (elemento pivote) por medio de transformaciones de Gauss

En cada etapa $k$:
+ Fijaremos el elemento pivote $a_(k k)$ para que su valor absoluto sea el mayor de la columna. Para esto, podremos intercambiar filas en la matriz $A$, pero el cambio también se tendrá que reflejar en la matriz P (y la L). 
+ Luego, utilizando transformaciones de gauss, anularemos los elementos debajo del elemento pivote.     

=== Por qué utilizar pivotación parcial?
La diferencia entre la descomposición LU convencional y la que incluye pivotación parcial de filas 

= Raíces de funciones y sistemas de ecuaciones no lineales

== Introducción
=== Insuficiencia de los métodos analíticos
Dada una funcion $f(x)$ pretendemos encontrar $x$ tal que $f(x)=0$, es decir queremos hallar las raíces.

Podemos resolver la ecuación de forma analítica, por ejemplo la solución de una ecuación de primer grado $a x + b = 0$ es 
$ x = (-b)/a $
Para un ecuación de segundo grado
$ a x^2 + b x + c = 0 $
La solución es
$ x = (- b plus.minus sqrt(b^2 - 4 a c))/(2a ) $
Pero no es posible resolver ecuaciones de mayor grado de esta forma. Por ejemplo
$ a_5 x^5 + a_4 x^4 + a_3 x^3 + a_1 x + a_0 = 0 $
No tiene una solución analítica (esto es demostrable)

Para ecuaciones no algebráicas como
$ cos(e^x + x) + x = 0 $
tampoco existen métodos generales.

Por lo tanto, vamos a recurrir a métodos iterativos para aproximar la solución. Aun así, es posible que no exista una solución (como es el caso de $ cos x - 3 = 0$).

Es decir, partiendo de un valor inicial vamos a generar una sucesión $x_1 , x_2 , ... x_k $ que esperaremos que converja.

=== Criterio de parada e iteraciones máximas

Para obtener una aproximación precisa utilizaremos un criterio de parada que garantice que nuestra solución esté dentro de un rango dado (tolerancia). Por lo tanto, nuestro criterio se puede expresar como 
$ | f(x_k) | < "tol" $

A parte del criterio de parada, es necesario limitar el número de iteraciones por si se da que nuestro método no converge para el problema dado en un tiempo razonable.

=== Razón de convergencia

Podemos estimar como converge una sucesión ${x_k}$ a un número $alpha$ utilizando su *razón de convergencia*, decimos que esta es de orden $r$ si 
$ lim_(k->oo) (|x_k - alpha|/(|x_(k-1) - alpha|)^r) $

Es decir, medimos como decrece la distancia a alpha con cada iteración. A $r$ más grande, converge más rápido.

Si $r=1$, decimos que la convergencia de la sucesión es lineal.
Si $r in (1,2)$, la convergencia se dice superlineal.
Si $r=2$, se dice cuadrática, y si $r=3$, cúbica.

Con la razón de convergencia podemos comparar diferentes algoritmos que resuelven un determinado problema iterativo.

=== Métodos cerrados
Los métodos cerrados se basan en el teorema de Bolzano, que para una función $f(x)$ continua en $[a,b]$ tal que $f(a) dot f(b) < 0$, garantiza la existencia de un número $c in ]a,b[$ tal que $f(c) = 0$. Es decir, si tenemos dos números $f(a)$, $f(b)$ entre los que $f(x)$ cruza 0, existe un número entre $a$ y $b$ correspondiente a $f(x)=0$: este teorema garantiza la existencia de raíces.

Por lo tanto, en los métodos cerrados la convergencia está asegurada. Partimos de dos valores iniciales $a$ y $b$ verificando que $f(a)$ y $f(b)$ tienen distinto signo, y vamos encajando intervalos conteniendo la solución. Entre estos métodos, destacan el método de la bisección y el de la regula falsi (que no veremos).

=== Métodos abiertos
Estos no se basan en el teorema de Bolzano, por lo que la convergencia no está asegurada. En vez de utilizar un intervalo, partimos de un valor inicial y generamos una sucesión que esperamos que converja hacia una de las soluciones de la ecuación. Debemos por lo tanto elegir un buen punto inicial para maximizar nuestra probabilidad de convergencia y definir un número máximo de iteraciones por si no converge. Entre estos métodos, veremos dos: el método de Newton y el método de la secante, que usan ambos el mismo principio. 

== Método de bisección
Al ser un método cerrado, partimos de $a,b$ tal que $f(a), f(b)$ tienen distinto signo. En cada iteración:
+ Calculamos el punto medio del intervalo: $c=(a+b)/2$
+ Elegimos uno de los subintervalos, el que verifique la condición de signo diferente, es decir, el intervalo cuyos extremos verifiquen $f(alpha)dot f(c)<0$ donde $alpha$ es $a$ o $b$. 
+ Repetimos los pasos 1 y 2 hasta que estemos dentro de la tolerancia esperada. 

Este método tiene la convergencia garantizada, puesto que en cada iteración dividimos el intervalo por la mitad y tenemos que 
$ |c_k-alpha| < (b-a)/2^k $
Que corresponde a una convergencia lineal, considerada bastante lenta. 

== Método de Newton
El método de Newton es un método muy eficiente para calcular las raíces de una función. Al contrario del método de la bisección, este es abierto, por lo que no tiene porque converger. 

Suponemos $f(x)$ continua y derivable en $[a,b]$, y que $x_(k-1)$ es una aproximación a la raíz de $f(x)$ en el intervalo. Buscamos una mejor aproximación $x_k$.

Empleamos una aproximación polinómica de Taylor de grado 1 alrededor de $x_(k-1)$:
$ f(x_k) approx f(x_(k-1)) + f'(x_(k-1))(x_k - x_(k-1)) $
Planteando la ecuación
$ f(x_(k-1)) + f'(x_(k-1))(x_k - x_(k-1)) = 0 $
reordenando
$ x_k = x_(k-1) - (f(x_(k-1)))/(f'(x_(k-1))) ; k>=1 $

Geométricamente, podemos ver que $x_k$ coincide con la abscisa del punto de intersección con el eje X de la recta $t_(k-1)$ tangente a $f(x)$ en el punto $x_(k-1)$, por lo que cada vez se aproxima más a cero. 

La ventaja de este método es que su convergencia es cuadrática, por lo que convergerá mucho más rápido que el método de la bisección, pero necesitaremos calcular la derivada (es decir necesitamos conocer la expresión de nuestra función), y no podremos coninuar si la derivada se anula en algún punto, que ocurre, por ejemplo cuando la función $f(x)$ tiene multiples raíces. Además, no tiene por qué converger.

== Método de la secante
Aproximando la derivada de la función en el método de Newton de forma discreta como
$ f'(x_(k-1)) approx (f(x_(k-1)) - f(x_(k-2)))/(x_(k-1) - x_(k-2)) $
Tendremos
$ x_k = x_(k-1) - (f(x_(k-1)))/((f(x_(k-1))-f(x_(k-2)))/(x_(k-1) - x_(k-2))) $
$ => x_k = x_(k-1) - ((x_(k-1) - x_(k-2))f(x_(k-1)))/(f(x_(k-1)) - f(x_(k-2))) $ 

[COMPLETAR DEMO]

Este método es conveniente porque es muy sencillo de implementar y no requiere de un cálculo de la derivada, aunque su convergencia no sea tan rápida como la del método de Newton (en un entorno de la raíz, la secante es casi tangente y la convergencia es superlineal $r approx 1.62$) pero al ser abierto no tiene la convergencia garantizada. 

== Sistemas de ecuaciones no lineales: Método de Newton-Raphson

Consideramos un sistema de ecuaciones no lineales escrito de la forma 
$ cases(f_1 (x_1,x_2,...,x_n) = 0, f_2 (x_1, x_2, ..., x_n ), ..., f_n(x_1, x_2, ..., x_n) = 0) $
O bien, en forma vectorial
$ F(bold(x)) = F(x_1, x_2, ..., x_n) = mat(f_1 (x_1,x_2,..., x_n); f_2 (x_1, x_2, ..., x_n); dots.v ; f_n(x_1,x_2,...,x_n)) $

Utilizaremos la notación siguiente:
- $ x_n$ es la $n$-ésima componente del vector $bold(x)$
- $ bold(x)^((k))$ es la $k$-ésima iteración de la sucesión de las aproximaciones al vector $bold(x)$

El método de Newton-Raphson es una generalización del método de Newton para sistemas. En vez de utilizar únicamente la derivada de la función, utilizamos la matriz Jacobiana de esta a la hora de hacer la aproximación por polinomios de Taylor:
$ bold(F)(x^((k-1))) + J(bold(x)^((k-1))) (bold(x)^((k)) - bold(x)^((k-1))) = 0 \ => J(bold(x)^((k-1))) (bold(x)^((k)) - bold(x)^((k-1))) = - bold(F)(bold(x)^((k-1))) $
Donde $ J(bold(x)^((k-1))) = dvp(bold(F)(x^((k-1))),bold(x)) $
es la matriz Jacobiana

Con $Delta bold(x)^((k-1)) = bold(x)^((k)) - bold(x)^((k-1))$ tenemos
$ J(bold(x)^((k-1))) Delta bold(x)^((k-1)) &= - bold(F) (bold(x)^((k-1))) \ bold(x)^((k)) = x^((k-1)) + Delta bold(x)^((k-1)) $

Esta relación se conoce como recurrencia de Newton.

También definimos nuestro criterio de convergencia
$ || bold(F)(bold(x)^((k)))) || < "tol" $

=== Aproximación de la matriz Jacobiana
Si bien sabemos aproximar una derivada, no conocemos la aproximación de una derivada parcial. Definámosla por analogía. Por definición, la derivada de una función $f(x)$ con respecto de $x$ es
$ dv(f(x),x) = lim_(h->0) (f(x+h)-f(x))/h $
Podemos aproximar esta de una forma discreta utilizando un incremento $h$ no infinitesimal, tal que
$ dv(f(x), x) approx (f(x+h) - f(x))/h $

Por otra parte, la derivada parcial de $f_i (x_1, ..., x_j, ..., x_n)$ con respecto a $x_j$ se define como
$ dvp(f_i (x_1,...,x_j,...,x_n),x_j) = lim_(h->0) (f_i (x_1, ..., x_j + h, ..., x_n) - f_i (x_1, ..., x_j, ..., x_n))/h $
Por analogía a la derivada, tomemos un $h$ no infinitesimal, tal que
$ dvp(f_i (x_1,...,x_j,...,x_n),x_j) approx (f_i (x_1, ..., x_j + h, ..., x_n) - f_i (x_1, ..., x_j, ..., x_n))/h $.   

Esto nos permite generar una aproximación de la matriz Jacobiana con un incremento $h$ que será próximo a cero.

