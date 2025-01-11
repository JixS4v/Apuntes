#import "config.typ": *

#show: doc => template(doc, "Métodos Matemáticos II")

= Análisis de Fourier
== Propiedades de las funciones periodicas
1. $f(x+p)=f(x) => sin(x+2pi)=sin(x)$
2. $f(a x)$ también es una función periodica: $cos(a x), p? => p = (2pi)/a$
3. Si $f(x)$ y $ g(x)$ son periodicas, $h(x)= a f(x) + b g(x)$ también lo es, y tendrá el mismo periodo que las funciones que la componen.
De todos los periodos $p$, el más pequeño es denominado periodo _primitivo_

== Series de Fourier para funciones de periodo $2pi$

Podemos representar funciones periodicas de periodo $2pi$ con una *Serie de Fourier*, de forma que:
#rect($ f(x) = a_0 + sum_(n=1)^oo a_n cos n x + b_n sin n x $)
Donde $a_0$, $a_n$, y $b_n$ son denominados _Coeficientes de Fourier_

#underline[*Formulas de Euler*]

Las formulas de Euler nos permiten calcular los coeficientes de Fourier: 
#rect(
$
a_0 &=1/(2pi) integral^pi_(-pi) f(x) dif x \ 
a_n &= 1/pi integral_(-pi)^pi f(x) cos (n x) dif x \ 
b_n &= 1/pi integral_(-pi)^pi f(x) sin (n x) dif x \ 
$)

#underline[*Teorema: Convergencia de series de Fourier*]
Si una función periódica $f(x)$ con periodo $2 pi$ es continua por secciones en el intervalo $-pi <= x <= pi$ y tiene derivada por la izuqierda y por la derecha en todo punto de dicho intervalo, entonces la serie de Fourier de $f(x)$ (con coeficientes de Fourier dados por las formulas de Euler) es convergente. Su suma es $f(x)$, salvo en uun punto $x_0$ en el que $f(x)$ es discontinua y la suma de la serie es el promedio de los limites por la izquierda y la derecha de $f(x)$ en $x_0$.

== Series de Fourier para funciones de periodo $2L$

#underline[*Serie de Fourier para función de periodo 2L*]: #rect($ f(x) = a_0 + sum_(n+1)^oo (a_n cos (n pi)/L x + b_n sin (n pi)/L x ) $)

#underline[*Coeficientes de Fourier para función de periodo 2L*]: 
#rect(
$
a_0 &= 1/2L integral_(-L)^L f(x) dif x \
a_n &= 1/L integral_(-L)^L f(x) cos (n pi)/L x dif x \
b_n &= 1/L integral_(-L)^L f(x) sin (n pi)/L x dif x
$
)

== Simetrías
Puede evitarse trabajo innecesario si se sabe que la función es par o impar. 

#underline[*Función par*]: $f(x) = f(-x)$

#underline[*Función impar*]: $f(x) = -f(-x)$

#underline[*Teorema: Series de Fourier de funciones pares e impares*]:
La serie de Fourier  de una función par de periodo $2L$ es una "Serie Fourier de cosenos":
#rect($ f(x) = a_0 + sum_(n+1)^oo a_n cos (n pi)/L x $)

La serie de Fourier de una función impar de periodo $2L$ es una "Serie de Fourier de senos":
#rect($ f(x) = sum_(n+1)^oo b_n sin (n pi)/L x $)

== Desarollos de medio rango
Es necesario a veces usar series de Fourier con funciones $f(x)$ que solo están dadas en un intervalo (por ejemplo $0<=x<=L$). Podemos extender $f(x)$ a una función periodica de periodo $2L$ de dos formas:
- Par: #rect($ cases(L>=x>=0: f(x), 0>x>=-L: f(-x)) $)
- Impar: #rect($ cases(L>=x>=0: f(x), 0>x>=-L: -f(-x)) $)

Extendiendo las funciones de esta forma, podemos usar las series de Fourier para estas funciones.

== Series complejas de Fourier

#underline[*Serie compleja de Fourier*]: 
#rect($ f(x) = sum^oo_(n=-oo) c_n e^(i n x) \
 c_n = 1/(2pi) integral_(-pi)^pi f(x) e^(-i n x) dif x $)

 Esta fórmula la obtenemos utilizando la fórmula de Euler: $ e^(i t) = cos t + i sin t $. 

$ e^(- i t) = cos (- t) + i sin (-t) $
 Recordamos que:
 $ cos (-t) = cos (t) $
 $ sin (-t) = - sin (t)$
 $ => e^(- i t) = cos (t) - i sin (t) $
 Con $t=n x$: 
 $ e^(i n x) = cos n x + i sin n x $
 $ e^(- i n x) = cos n x + i sin n x $
 De estas obtenemos:
 Al sumarlas y dividirlas entre 2i:
$ cos n x = 1/2(e^(i n x) + e ^(-i n x)) $
Al restarlas y dividirlas entre 2i:
$ sin n x = 1/(2 i) (e ^(i n x) - e(- i n x)) $
Sabiendo que $1/i=-i$ podemos obtener:
$ a_n cos n x + b_n sin n x &= 1/2 a_n (e^(i n x) + e^(-i n x)) + 1/(2 i) b_n (e^(i n x) - e^(-i n x))) \
&= 1/2 (a_n - i b_n) e^(i n x) + 1/2 (a_n + i b_n)e^(i n x) $

Sustituyendo en la serie de Fourier:
$ f(x) = c_0 + sum_(n=1)^oo (c_n e^(i n x)+k_n e^(- i n x)) $
Donde $c_0 = a_0 $ y:
$ c_n = 1/2 (a_n - i b_n) = 1/(2 pi) integral_(-pi)^pi f(x) e^(-i n x) dif x $
$ k_n = 1/2 (a_n + i b_n )= 1/(2 pi) integral_(-pi)^pi f(x) e^(i n x) dif x $
$k_n = c_(-n)$, obtenemos las fórmulas presentadas anteriormente.

== Aproximación por polinomios trigonométricos
Nos preguntamos si las series de fourier son la mejor aproximación a f por un polinomio trigonométrico de grado N, es decir, una función de la forma $ F(x) = a_0 + sum_(n=1)^N (alpha_n cos n x + beta_n sin n x) $
Donde mejor significa que el erro de la aproximación es mínimo.
Definimos el error como el error cuadrático total de F con relación de f en el intervalo $-pi <= x <= pi$:
#rect($ E = integral_(-pi)^pi (f - F)^2 dif x $)
Queremos determinar los coeficientes $alpha_n$ y $beta_n$ tales que el error se minimice.
$ E = integral_(-pi)^pi f^2 dif x - 2 integral_(-pi)^pi f F dif x + integral_(-pi)^pi F^2 dif x $
Para minimizar E, debemos hacer que sus derivadas parciales con respecto a $a_0$, $alpha_n$, y $beta_n$ sean cero:

$(diff E) / (diff a_0) = 0$:
$ -2 integral_(-pi)^pi f dif x + 2 integral_(-pi)^pi a_0 dif x = 0 $
$ a_0 = 1/(2pi) integral_(-pi)^pi f dif x $
$(diff E) / (diff alpha_n) = 0$:
$ -2 integral_(-pi)^pi f cos n x dif x + 2 integral_(-pi)^pi F cos n x dif x = 0 $
$ alpha_n = 1/pi integral_(-pi)^pi f cos n x dif x $
$(diff E) / (diff beta_n) = 0$:
$ -2 integral_(-pi)^pi f sin n x dif x + 2 integral_(-pi)^pi F sin n x dif x = 0 $
$ beta_n = 1/pi integral_(-pi)^pi f sin n x dif x $

Observamos que estos coeficientes son exactamente los coeficientes de Fourier que obtuvimos anteriormente. Esto demuestra que la serie de Fourier proporciona la mejor aproximación en el sentido del error cuadrático mínimo.

#underline[*Identidad de Parseval*]:
$ 2a_0 ^2 + sum_(n=1)^oo (a_n^2 + b_n^2) - 1/pi integral_(-pi)^pi $

== Integrales de Fourier
A la hora de abordar problemas con funciones aperiocas, no podemos utilizar las series de Fourier. Observamos lo que ocurre cuando hacemos que $L->oo$. Hacemos lo mismo con una función cualquiera $f_L$ de periodo $2L$ que puede ser representada con una serie de Fourier. $ f_L = a_0 + sum_(n=1)^oo (a_n cos w_n x + b_n sin w_n x), "con" w_n = (n pi)/L $
Insertamos ahora $a_n$ y $b_n$ de las fórmulas de Euler y denotamos la variable de integración con $v$: $ f_L (x) = 1/(2L) integral_(-L)^L f_L(v) dif v + 1/L sum_(n=1)^oo [cos w_n x integral_(-L)^L f_L(v)cos w_n v dif v + sin w_n x integral_(-L)^L f_L (v) sin w_n v dif v] $.
Sea $ Delta w = w_(n+1) - w_n = ((n+1) pi)/L - (n pi)/L = pi/L $
Entonces $1/L=(Delta w)/pi$ y podemos escribir la serie de Fourier en la forma: $ f_L(x) = 1/(2L) integral_(-L)^L f_L(v) dif v + 1/pi sum^oo_(n=1)[(cos w_n x)Delta w integral_(-L)^L f_L(v) cos w_n v dif v + (sin w_n x)Delta w integral^L_(-L) f_L(v) sin w_n v dif v] $ 
Esta representación es valida para culaquier L fijo de cualquier tamaño, pero finito. Si hacemos ahora que $L->oo$ y asumimos que la funcion no periodica resultante $ f(x) = lim_(L->oo) f_L(x) $ es _absolutamente integrable_ en el eje $x$, es decir que existen los limites finitos siguientes: $ lim_(a->-oo) integral_a^0 |f(x)| dif x + lim_(b->oo) integral_0^b |f(x)| dif x ("escrito" integral_(-oo)^(oo)|f(x)|dif x) $
Entonces $1/L -> 0$, y el valor del primer término de la derecha de la ecuación anterior tiende hacia 0. Tmabién, $Delta w = pi/L -> 0$ y parece plausible que la serie infinita de la ecuación anterior se convierta en una integral de 0 a $oo$, que representa $f(x)$, es decir: 
$ f(x) = 1/pi integral_0^(oo) [cos w x integral_(-oo)^oo f(v) cos w v dif v + sin w x integral_(-oo)^oo f(v) sin w v dif v] dif w $. 
Introducimos las notaciones: $ A(w) = 1/pi integral_(-oo)^oo f(v) cos w v dif v, B(w) = 1/pi integral_(-oo)^oo f(v) sin w v dif v $
Entonces: $ f(x) = integral_0^oo [A(w) cos w x + B(w) sin w x] dif w $
Esta es la representación de $f(x)$ por medio de una *Integral de Fourier*

== Transformada de Fourier en funciones pares e impares
=== Transformada de Fourier de cosenos:
La transformada de Fourier de cosenos es utilizada para funciones pares. La obtenemos de la integral de fourier: $ f(x) = integral_0^oo A(w)cos w x dif w + integral_0^oo B(w) sin w x dif w $. Como $f(x)$ es par, $B(w) = 0$. Es decir,  $ f(x) = integral_0^oo A(w) cos w x dif w $ ,donde $A(w) = 1/pi integral_(-oo)^oo f(v) cos w v dif v$. Al ser el integrando par (par por par), la integral de $-oo$ a $oo$ es equivalente al doble de la integral de $0$ a $oo$. Es decir: $A(w) =2/pi integral_(-oo)^oo f(v) cos w v dif v$.
Ahora, decimos que $A_w = sqrt(2/pi) cal(F)_c (w)$. Entonces, con $v=x$ en la formula de $A(w)$, obtenemos: $ cal(F)_c (w) = sqrt(2/pi) integral_0^oo f(x) cos w x dif x $
Esto es la transformada de Fourier de cosenos de $f(x)$. 
También obtenemos:
$ f(x) = sqrt(2/pi) integral_0^oo cal(F)_c (w) cos w x dif w $
Denominada la transformada inversa de Fourier de cosenos.

=== Transformada de Fourier de senos:
Esta vez con $f(x)$ una función impar. Sabemos que $A(w)$ es nula porque $f(x)$ es impar. Entonces, $ f(x) = integral_0^oo B(w) sin w x dif w $, donde $B(w) = 1/pi integral_(-oo)^oo f(v) sin w v dif v$. Como el integrando en este caso es par (impar por impar), podemos decir que $B(w) = 2/pi integral_0^oo f(v) sin w v dif v$. 
Como con la transformada de Fourier de cosenos, decimos que $B(w) = sqrt(2/pi) cal(F)_s (w)$. Entonces, con $v=x$, obtenemos: $ cal(F)_s (w) = sqrt(2/pi) integral_0^oo f(x) sin w x dif x $
Igualmente, obtenemos la transformada inversa:
$ f(x) = sqrt(2/pi) integral_0^oo cal(F)_s (w) sin w x dif w $

== Transformada de Fourier
=== Integral de Fourier compleja
Podemos escribir la integral de Fourier de una función $f(x)$ como una integral compleja.
Partiendo de la integral de Fourier:
$ f(x) = integral_0^oo [A(w) cos w x + B(w) sin w x] dif w $
Sustituyendo $A(w)$ y $B(w)$ queda:
$ f(x) = 1/pi integral_0^oo integral_(-oo)^oo f(v) [cos w v cos w x + sin w v sin w x] dif v dif w $
Por la formula trigonométrica de la suma de ángulos, obtenemos: 
$ cos w v cos w x + sin w v sin w x = cos(w x - w v) $
Entonces:
$ f(x) = 1/pi integral_0^oo [ integral_(-oo)^oo f(v) cos (w x - w v) dif v] dif w $

Como el coseno es par, podemos escribir:
$ f(x) = 1/(2 pi) integral_(-oo)^oo [ integral_(-oo)^oo f(v) cos (w x - w v) dif v] dif w $

Sabemos que la integral de esta forma con el seno en vez del coseno es nula, ya que $sin(w x - w u )$ es una función impar de w, que hace que al integral en paréntesis sea una función impar de v,  de ahí la integral de $-oo$ a $oo$ es nula, como dicho.

Utilizamos la formula de Euler: $e^(i x) = cos x + i sin x $
Multiplicando por $f(v)$ y utilizando $w x - w u $ en vez de $x$:
$ f(v) cos (w x - w u) + i f(v) sin(w x - w u) = f(v) e^(i(w x - w v)) $
Entonces partiendo de
$ f(x) = 1/(2 pi) integral_(-oo)^oo [ integral_(-oo)^oo f(v) cos (w x - w v) dif v] dif w $
Podemos escribir que:
$ f(x) = 1/(2 pi) {integral_(-oo)^oo [ integral_(-oo)^oo f(v) cos (w x - w v) dif v] dif w + underbrace(integral_(-oo)^oo [ integral_(-oo)^oo f(v) i sin (w x - w v) dif v] dif w , = 0)} $
Y entonces: 
$ f(x) = 1/(2 pi) integral_(-oo)^oo [ integral_(-oo)^oo f(v) [cos (w x - w v) + i sin (w x - w v)] dif v] dif w $
Que nos lleva a escribir: 
$f(x) = 1/(2 pi) integral_(-oo)^oo integral_(-oo)^oo f(v) e^(i w(x-v)) dif v dif w $

Llamamos a esta formula la *Integral de Fourier compleja*.

=== Transformada de Fourier compleja y su inversa
Escribimos la funcion exponencial en la integral de fourier compleja como un producto de funciones, tal que: $ e^(i w(x-v)) = e^(i w x)e^(i w v) $ 
Entonces:
$ f(x) = 1/sqrt(2 pi) integral_(-oo)^oo [1/sqrt(2pi)integral_(-oo)^oo f(v) e^(-i w v) dif v ]e^(i w x) dif w $
La expresión entre paréntesis es una funcion de $w$, denotada por $cal(F){f}(w)$ y se llama la *Transformada de Fourier compleja* de $f(x)$, con $v=x$, tenemos:
$ cal(F){f}(w) = 1/sqrt(2 pi) integral_(-oo)^oo f(x) e^(-i w x) dif x $
Asimismo, definimos la transformada inversa de Fourier compleja:
$ f(x) = 1/sqrt(2 pi) integral_(-oo)^oo cal(F){f}(w) e^(i w x) dif w $

=== Propiedades de la Transformada de Fourier
+ Linealidad: $cal(F){a f + b g} = a cal(F) (f)+ b cal(F) (g)$
+ Derivada: $cal(F){f'(x)} = i w cal(F){f(x)}$
+ Convolución: $cal(F){f*g} = sqrt(2pi)cal(F){f} cal(F){g}$
+ Desplazamiento: $cal(F){f(x-a)} = e^(-i w a) cal(F){f(x)}$

= Resolución de ecuaciones diferenciales ordinarias por series de potencias

== Series de potencias
Una serie de potencias es una serie infinita de forma 
$ sum_(m=0)^(oo) a_m (x - x_0)^m = a_0 + a_1 (x-x_0) + a_2 (x-x_0)^2 + ...  $ 
$a_m$ son los coeficientes de la serie (constantes). $x_0$ es el centro de la serie (constante) y $x$ es la variable independiente.

Ejemplos a conocer de las series de potencias
$
1/(1-x) &= sum_(m=0)^(oo) x^m \
e^x &= sum_(m=0)^(oo) x^m/m! \
cos x &= sum_(m=0)^(oo) (-1)^m x^(2m)/(2m)! \
sin x &= sum_(m=0)^(oo) (-1)^m x^(2m+1)/(2m+1)! \
$

== Método de las series de potencias
Paara una ecuacion dada: 
$ y'' + p(x) y' + q(x) y = 0 $

Primero representamos $p(x)$ y $q(x)$ por series de potencias. Si $p(x)$ y $q(x)$ son polinomios no es necesario hacer nada en el primer paso.

Luego, suponemos una solución en forma de serie de potencias (sin conocer aún los coeficientes):
$ y = sum_(m=0)^(oo) a_m x^m = a_0 + a_1 x + a_2 x^2 + a_3 x^3$

Ahora derivamos para obtener su primer y segunda derivada: 
$ 
y' &= sum_(m=1)^(oo) m a_m x^(m-1) \
y'' &= sum_(m=2)^(oo) m(m-1) a_m x^(m-2)
$

Las introducimos en la ecuación diferencial:
$ sum_(m=2)^(oo) m(m-1) a_m x^(m-2) + p(x) sum_(m=1)^(oo) m a_m x^(m-1) + q(x) sum_(m=0)^(oo) a_m x^m $
(Siendo $q(x)$ y $p(x)$ los desarrollos en serie de potencias correspondientes)

A continuación agrupamos los términos de la misma potencia y así podremos ir determinando sucesivamente los coeficientes de la serie de potencias. Luego sustituiremos estos en la expresión de $y$ para obtener la solución de la ecuación diferencial.

=== Ejemplo
Dada la ecuación diferencial
$ y' - y = 0 $

Realizamos el desarrollo de potencias:
$ (a_1 + 2 a_2 x + 3a_3 x^2 + ... ) - (a_0 + a_1 x + a_2 x^2 + ... ) = 0 $
Agrupamos las potencias iguales de $x$
$ (a_1 - a_0) + (2a_2 - a_1) x + (3a_3 - a_2) x^2 + ... = 0 $
Al igualar a 0 las restas de los coeficientes:
$ a_1 - a_0 = 0, quad 2a_2 - a_1 = 0, quad 3a_3 - a_2 = 0 $
Reconocemos un patrón:
$ a_1 = a_0 , quad a_2 = a_1 / 2 = a_0 / 2! , quad a_3 = a_2 / 3 = a_0 / 3! $
Por lo que la solución general es 
$ y = a_) + a_0 x + a_0/2! x^2 + a_0/3! x^3 + ... $
Factorizando por $a_0$:
$ y = a_0 (1+x+x^2/2! + x^3/3!+ ...) = a_0 e^x $

== Teoría del método de las series de potencias
=== Conceptos básicos

Definimos la $n$-ésima suma parcial de una serie de potencias $s_n(x)$ como
$ s_n(x) = a_0 + a_1 (x-x_0) + a_2 (x-x_0)^2 + ... + a_n(x-x_0)^n $
Si omitimos los términos de $s_n$ de la serie de potencias, la expresión que queda será 
$ R_n(x) = a_(n+1) (x-x_0)^(n+1) + a_(n+2) (x-x_0)^(n+2) + ... $
Se denomina residuo de la serie de potencias después del $n$-ésimo término. 

Si para alguna $x=x_1$ la suma parcial converge, es decir 
$ lim_(n->oo) s_n(x_1) = s(x_1) $
Entonces la serie se dice convergente en $x=x_1$ y que $s(x_1)$ es la suma de la serie en $x=x_1$. Se escribe entonces
$ s(x_1) = sum_(m=0)^(oo) a_m (x_1 - x_0)^m $
Entonces para cada $n$
$ s(x_1) = s_n (x_1) + R_n (x_1) $
Si la sucesión diverge en $x=x_1$ se dice que la serie es divergente en $x=x_1$. Cuando converja, para cualquier $epsilon>0 exists N $ (depende de $epsilon$) tal que:
$ |R_n(x_1)| = |s(x_1) - s_n (x_1) | < epsilon forall n > N $

=== Radio de convergencia
Las series de potencias siempre convergen en $x=x_0$ porque se anulan todos sus términos salvo $a_0$. 
Si hay más valores de $x$ para los que la serie converge (que no siempre es el caso), se define un intervalo de convergencia. Si es finito, tiene un punto medio $x_0$ por lo que tiene un radio, que se denomina radio de convergencia. $ |x-x_0| < R $
La serie converge para los valores dentro del radio y diverge para los valores fuera de él.
El radio de convergencia se puede obtener con la siguiente fórmula
$ 1/R = lim_(m->oo) |a_(m+1)/a_m | $
siempre que este límite exista. Cuando el límite es infinito, entonces $R=0$ y la serie converge solo en $x=x_0$. Si el límite es cero, entonces $R=oo$ y la serie converge para todos los valores de $x$.

Para cada $x$ para que una serie de potencias converge, tiene un valor especifico $s(x)$. Decimos entonces que representa a la función $s(x)$ en el intervalo de convergencia y se describe $ s(x) = sum_(m=0)^(oo)  a_m (x-x_0)^m quad forall x in (x_0 - R, x_0+R) $

=== Operaciones con series de potencias
==== Derivación término a término
Si $ y(x) = sum_(m=0)^(oo) a_m (x-x_0)^m $
converge para |x-x_0| < R, entonces su derivada $y'(x)$ también converge en el mismo intervalo y se tiene
$ y'(x) = sum_(m=1)^(oo) m a_m (x-x_0)^(m-1) quad forall x in (x_0 - R, x_0+R) $

Esto ocurre de manera identica con las derivadas de orden superior.

=== Adición término a término
Si las series $ sum_(m=0)^(oo)  a_m (x-x_0)^m quad "y" quad sum_(m=0)^(oo) b_m (x - x_0)^m $
Tienen radios de convergencia positivos y sus sumas son $f(x)$ y $g(x)$ entonces la serie 
$ sum_(m=0)^oo (a_m + b_m )(x-x_0)^m $
Converge para la intersección entre los dos intervalos de convergencia y representa $f(x)+g(x)$

==== Multiplicación término a término
Si las series $ sum_(m=0)^(oo)  a_m (x-x_0)^m quad "y" quad sum_(m=0)^(oo) b_m (x - x_0)^m $
tienen radios de convergencia positivos y sus sumas son $f(x)$ y $g(x)$ entonces la serie obtenida al multiplicar cada término de la primera serie por cada término de la segunda serie y agrupar sus potencias es $ sum_(m=0)^(oo) sum_(i=0)^(m) (a_i b_(m-i)) (x-x_0)^m $
esta serie converge y representa $f(x)g(x)$ para la intersección de los intervalos de convergencia de las series originales.

==== Cancelación de todos los coeficientes
Si una serie de potencias tiene un radio de convergencia positivo y una suma identidad con cero en este intervalo, entonces todos sus coeficientes son cero.

==== Cambio de los índices de la sumatoria
El índice de una sumatoria es una variable muda y se puede cambiar. Podemos fijar $m=s+2 <=> s=m-2 $
$ sum_(m=0)^(oo) a_m (x-x_0)^m = sum_(s=2)^(oo) a_(s+2) (x-x_0)^(s+2) = sum_(s=0)^(oo) a_(s+2) (x-x_0)^(s+2) $

Es necesario hacer esto para poder expresar la suma de dos series como una sola suma.

==== Existencia de las soluciones. Funciones analíticas reales

El criterio para determinar si una ecuación diferencial de forma $ y'' + p(x) y' + q(x) y = r(x) $
tiene solución en forma de serie de potencias es si las funciones $p,q$ y $r$ tienen representaciones en series de potencias. Esto se cumple tambíen si tenemos una ecuación de forma $ tilde(h)(x) y'' + tilde(p)(x) y' + tilde(q)(x) y = tilde(r)(x) $
donde las funciones $tilde(h), tilde(p), tilde(q)$ y $tilde(r)$ tienen representaciones en series de potencias y $tilde(h)(x_0) != 0$

===== Función analítica real
Una función real $f(x)$ se llama analítica en un punto $x = x_0$ si puede representarse por una serie de potencias en $x-x_0$ con radio de convergencia $R>0$.

== Ecuación de Legendre. Polinomios de Legendre.

La ecuación diferencial de Legendre tiene como forma 

#rect($ (1-x^2)y'' - 2x y' + n(n+1) y = 0 $)
el parámetro $n$ es un número real dado.
A sus soluciones se les llama funciones de Legendre y son consideradas una categoría de funciones especiales.
Se observa que los coeficientes de la ecuación son analíticos en $x=0$ y que $tilde(h)(x) = 1-x^2 !=0$ en $x=0$. Por lo tanto, la ecuación de Legendre tiene soluciones en forma de serie de potencias en $x=0$.

Al sustituir la expresión general de la serie de potencias y sus derivadas en la ecuación de legendre, se llega a la ecuación 
$ sum_(m=2)^(oo)  m(m-1)a_m x^(m-2) - sum_(m=2)^(oo) m(m-1) a_m x^m - 2 sum_(m=1)^(oo)  m a_m x^m + k sum_(m=0)^(oo) a_m x^m = 0 $
Al desarrollarse obtenemos
$ 2 dot 1 a_2 + 3 dot 2 a_3 x +4 dot 3 x^2 + ... + (s+2)(s+1)a_(s+2) x^s \ + ...  - 2 dot 1 a_2 x^2   - ... - s(s-1)a_s x^s \ - ... - 2 dot 1 a_1 x - 2 dot d a_2 x^2 - ... - 2 s a_s x^2 \ - ... + k a_0 + k a_1 x + k a_2 x^2 + ... + k a_s x^s + ... = 0 $

Siendo $k=n(n+1)$, obtenemos las siguientes identidades para los coeficientes de la serie de potencias:
$ 2a_2 + n(n+1)a_0 &= 0 space "coeficientes de " x^0\ 
6a_3 + [-2 + n(n+1)]a_1 &= 0 space "coeficientes de " x^1 $
y en general
$ (s+2)(s+1)a_(s+2) + [-s(s-1) - 2s + n(n+1)]a_s = 0 $
con $s=2,3,...$
Podemos escribir que
$ a_(s+2) = - ((n-s)(n+s+1))/((s+2)(s+1)) a_s $
Obtenemos una relación de recurrencia.
Nos permite obtener cada coeficiente en términos del segundo anterio, con excepción de $a_0$ y $a_1$ que quedan como constantes. 

Entonces obtenemos una solución de forma 
$ y(x) = a_0 y_1 (x) + a_1 y_2 (x) $
Donde 
$ y_1 (x) = 1 - (n(n+1))/2! x^2 + ((n-2)n(n+1)(n+3))/4! x^4 - + ... $
y
$ y_2 (x) = x - ((n-1)(n+2))/3! x^3 + ((n-3)(n-1)(n+2)(n+4))/5! x^5 - + ... $
Estas series tienen radio de convergencia 1. 

=== Polinomios de Legendre
Cuando el parametro $n$ de la ecuación de Legendre es un entero no negativo, el segundo miembro de la relación de recurrencia es nulo cuando $s=n$ y por lo tanto $a_(n+2)=0, a_n+4=0,a_(n+6) = 0, ...$ Por consecuencia, si $n$ es par, $y_1(x)$ se reduce a un polinomio de grado $n$. Si $n$ es impar, se cumple lo mismo para $y_2(x)$. Estos polinomios, multiplicados por algunas constantes, se llaman polinomios de Legendre y se denotan $P_n(x)$. La elección estandar  las constantes se hace eligiendo el coeficiente $a_n$ de mayor potencia $x^n$ como
$ a_n = ((2n)!)/(2^n (n!)^2) = (1 dot 3 dot 5 dot ... dot (2 n -1 ))/(n!) quad n in NN^* $
(con $a_n = 1$ si $n=0$). Luego calculamos los otros coeficientes a partir de la relación de recurrencia resuelta para $a_s$ en términos de $a_(s+2) $. Es decir
$ a_s = - ((s+2)(s+1))/((n-2)(n+s+1)) a_(s+2) $
La elección anterior del coeficiente hace que $p_n (1) = 1 $ para todo $n$ 
#image("assets/figure_2025-01-02-14-25-07.png")

Lo que explica la elección de $a_n$ para el $x^n$ mayor.
De la relación general con $s=n-2$ y nuestra elección específica
$ a_(n-2) = - (n(n-1))/(2(2n-1)) a_n = -(n(n-1))/(2(2n-1)) dot ((2 n)!)/(2^n (n!)^2 ) $
Utilizando $ (2n)! = 2n(2n-1)(2n-2)!$ en el numerador y $n!=n(n-1)!$ y $n!=n(n-1)(n-2)!$ en el denominador obteniendo
$ a_(n-2) = (cancel(n(n-1) 2 n (2n-1))(2n-2)!)/(cancel(2(2n-1))2^n cancel(n) (n-1)! cancel(n (n-1))(n-2)!) $
Simplificando
$ a_(n-2) = ((2n-2)!)/(2^n (n-1)!(n-2)) $
Análogamente
$ a_(n-4) &= ((n-2)(n-3))/(4(2n-3)) a_(n-2) \ &= ((2n-4)!)/(2^n 2! (n-2)! (n-4)!) $
Y así recurrentemente. En general, cuando $n-2m >=0$
$ a_(n-2m) = (-1)^m ((2n-2m)!)/(2^n m! (n-m)! (n-2m)! ) $
La solución resultante de la ecuación diferencial de legendre se conoce como el polinomio de legendre de grado $n$ y se denota por $P_n (x) $.

De la ecuación anterior, obtenemos
$ P_n (x) &= sum_(m=1)^(M) (-1)^m ((2n - 2m)!)/(2^n m! (n-m)! (n-2m)!) x^(n-2m) \ &= ((2n)!)/(2^n (n!)^2) x^n - ((2n-2)!)/(2^n 1! (n-1)!(n-2)!) x^(n-2) + - ... $
Donde $M=n/2$ o $(n-1)/2$, el que sea entero de los dos. Las las primeras de estas funciones son
#align(center,grid(columns:2, column-gutter:50pt, $ P_0 (x) &= 1 \ P_2 (x) &= 1/2 (3x^2 -1) \ P_4 (x) &= 1/8 (35 x^4 - 30 x^2 + 3) $, $ P_1 (x) &= x \ P_3 (x) &= 1/2 (5x^3 - 3 x) \ P_5 (x) &= 1/8 (63x^5 - 70x^3 + 15x) $))

== Método de Frobenius

=== Aplicabilidad del método
Se trata de un procedimiento para resolver ecuaciones diferenciales lineales con coeficientes variables, aplicable a ecuaciones más generales que el método de las series de potencias, algunas de ellas fundamentales, por lo que posee gran importancia práctica. 

Primero veremos a que ecuaciones se aplica este método

Un punto $x=x_0$ en el que los coeficientes $p$ y $q$ de una ecuación 
$ y'' + p(x) y' + q(x) y = 0 $
son analíticos se llama punto regular de esta. DE manera similar, un punto regular $x=x_0$ de 
$ tilde(h)(x) y'' + tilde(p) (x) y' + tilde(q) (x) y = 0 $
Es aquel en el que $tilde(h)$, $tilde(p)$ y $tilde(q)$ son analíticos y $tilde(h)(x_0)!=0$ (por lo que al dividir entre $tilde(h)$, puede obtenerse la forma estándar con $y''$ como primer término y coeficientes analíticos $p=tilde(p)/tilde(h)$ y $ q = tilde(q)/tilde(h)$). Un punto que no es regular se llama punto singular de la ecuación. Por ejemplo, la ecuación de Bessel
$ x^2 y'' + x y' + (x^2 - v^2)y = 0 $
(con v dado)
como se ve tiene a $x=0$ como punto singular (para ver esto ayuda dividir por $x^2$).

Si $x_0$ es punto regular de una ecuación, el método de series de potencias funciona, como ya hemos visto, y da soluciones en series de $x-x_0$. Sin embargo, si $x_0$ es singular, deja de ser el caso, simplemente porque la ecuación puede no tener una solución en potencias de $x-x_0$. Por suerte, el comportamiento de los coeficientes de una ecuación en un punto singular no suele ser malo.

=== Método de Frobenius
Toda ecuación diferencial de forma $ y'' + (b(x))/x y' + (c(x))/(x^2) y = 0 $
donde las funciones $b(x)$ y $c(x)$ son analíticas en $x=0$ tiene al menos una solución que puede representarse de la forma
$ y(x) = x^r sum_(m=0)^(oo) a_m x^m = x^r (a_0 + a_1 x + a_2 x^2 + ... ) quad (a_0!=0) $
donde el exponente $r$ puede ser un número cualquiera (real o complejo y $r$ se elie tal que $a_0 != 0 $)

La ecuación tambien tiene una segunda solución (tal que estas dos soluciones son linealmente independientes) que puede ser similar a esta (con $r$ diferente y coeficientes diferentes) o puede contener un término logarítmico

Por ejemplo, la ecuación de Bessel
$ y'' + 1/x y' + (x^2 - v^2)/x^2 y = 0 $
Es de la forma vista anteriormente con $b(x) = 1$ y $c(x) = x^2 - v^2 $ analítica en $x=0$ por lo que el teorema es aplicable 

El punto es que en la solución se tiene una serie de potencias multiplicando una sola potencia de $x$ cuyo exponente $r$ no está restringido a ser un entero no negativo (Esta última restricción haría la expresión completa de una serie de potencias). El método que vamos a ver a continuacion se basa en la solución vista anteriormente y se conoce como método de Frobenius o método extendido de las series de potencias.

==== Ecuación indicial
Para resolver la ecuación, esta se escribe de forma más conveniente
$ x^2 y'' + x b(x) y' + c(x) y = 0 $
Primero desarrollamos $b(x)$ y $c(x)$ en series de potencias
$ b(x) = sum_(i=0)^(oo) b_i x^i $
$ c(x) = sum_(i=0)^(oo) b_i x^i $
Derivamos término a término la solución general
$ y'(x) = sum_(m=0)^(oo)  (m+r) a_m x^(m+r-1) = x^(r-1) [r a_0 + (r+1) a_1 x + ... ] $
$ y'' (x) = sum_(m=0)^(oo) (m+r)(m+r - 1) a_m x^(m+r-2) = x^(r-2) [r(r-1)a_0 + (r+1)r a_1 x + ... ] $
Al insertar estas series en la ecuación, obtenemos
$ x^r [r(r-1) a_0 + ...] + (b_0 + b_1 x + ...) x^r (r a_0 + ...) + (c_0 + c_1 x +...)x^r (a_0 + a_1 x + ...) = 0 $
Ahora, igualamos a 0 la suma de los coeficientes de cada potencia de $x$, como anteriormente. Obtenemos así un sistema de ecuaciones que incluyen $a_m$. La menor potencia es $x^r$ y la ecuación correspondiente es
$ [r(r-1) + b_0 r + c_0]a_0 = 0 $
Puesto que por hipótesis $a_0 !=0$, la expresión dentro de los corchetes debe de anularse. Por lo que
$ r(r-1) + b_0 r + c_0 = 0 $
Esta ecuación se conoce como ecuación indicial de la ecuación diferencial. Su papel se explicará a continuación.

==== Base de soluciones

El método visto llevará a una base de soluciones. Una de las dos soluciones será siempre de la forma vista anteriormente, donde $r$ es una raíz de la ecuación indicial. La forma de la otra solución la indicará la ecuación indicial, dependienddo de las raíces, hay tres casos posibles, que veremos a continuación. 

*Caso 1. Raíces distintas que no difieren por un entero*

Una base es 
$ y_1 (x) = x^(r_1) (a_0 + a_1 x + a_2 x^2 + ... ) $
y
$ y_2 (x) = x^(r_2) (A_0 + A_1 x + A_2 x^2 + ...) $
con coeficientes obtenidos sucesivamente sustituyendo $r=r_1$ y $r=r_2$ en la expresión completa de la ecuación.

*Caso 2. Raíz doble*

Una base es
$ y_1 (x) = x^2 (a_0 + a_1 x + a_2 x^2 + ... ) $
$ y_2 (x) = y_1 (x) ln x + x^r (A_1 x + A_2 x^2 + ...) quad (x>0) $

*Caso 3. Raíces que difieren por un entero*

Una base es:
$ y_1 (x) = x^(r_1) (a_0 + a_1 x + a_2 x^2 + ... ) $
Y la otra 
$ y_2 (x) = k y_1 ( x) ln x + r^(r_2) (A_0 + A_1 x + A_2 x^2 + ... ) $
Donde las raíces se denotan tal que $r_1 - r_2 > 0 $ y $k$ puede ser cero

== Ecuación de Bessel
Vamos a usar el método de Frobenius para resolver una de las ecuaciones con mayor importancia en las matemáticas aplicadas, la ecuación de Bessel

$ x^2 y'' + x y' + (x^2 - v^2)y = 0 $
En forma estándar
$ y'' + 1/x y' + (1-v^2/x^2) y = 0 $
Aquí el parámetro $v$ es una constante real no negativa dada. 
Vamos a utilizar el método de Frobenius.
Sustituimos la serie de la forma
$ y(x) = sum_(m=0)^(oo) a_m x^(m+r) $
Con coeficientes indeterminados y sus derivadas en la ecuación de Bessel, obtenemos lo siguiente
$ sum_(m=0)^(oo)  (m+r)(m+r-1)a_m x^(m+r) + sum_(m=0)^(oo) (m+r)a_m x^(m+r) + sum_(m=0)^(oo) a_m x^(m+r+2) - v^2 sum_(m=0)^(oo) a_m x^(m+r) = 0 $
Igualamos a cero la suma de los coeficientes de $x^(s+r)$. Eta formula corresponde a $m=s$ en las series primera, segunda y cuarta y a $ m = s-2$ en la tercera serie. Por tanto, para $s=0$ y $ s=1$ la tercera serie no participa ya que $m >= 0$. Para $s=2,3,...$ las cuatro series intervienen, por lo que se obtiene una formula general para todas estas $s$. Se encuentra que
$ r(r-1) a_0 + r a_0 - v^2 a_0 = 0 quad (s=0) $
$ (r+1)r a_1 + (r+1) a_1 - v^2 a_1 = 0 quad (s=1) $
$ (s+r)(s+r-1) a_s + (s+r) a_s + a_(s-2) - v^2 a_s = 0 quad (s = 2,3,...) $
De esta primera obtenemos la ecuación indicial
$ (r+v)(r-v) = 0 $
Las raíces son $ r_1 = v (>=0) $ y $r_2 = -v $

Para $r=r_1 = v$ de la ecuación segunda se obtiene $a_1 = 0$. La tercera ecuación se puede escribir
$ (s+r+v)(s+r-v)a_s + a_(s-2) = 0 $
Y para $r=v$ 
$ (s+2v)s a_s + a_(s-2) = 0 $
Puesto que $a_1 $ y $v>=0$ se sigue que $a_3=0$, $a_5 = 0$ sucesivamente
Si se hace $ s=2m$ para los demás coeficientes se obtiene
$ a_(2m ) = - 1/(2^2 m (v+m)) a_(2m -2) quad m = 1,2 , ... $
Y es posible determinar sucesivamente estos coeficientes $ a_2$, $a_4$, $...$. Se obtiene así
$ a_2 = - a_0/(2^2 (v+1)) $
$ a_4 = - a_2 /(2^2 2 (v+2)) = a_0/(2^4 2! (v+1)(v+2)) $
Y así sucesivamente.

En general:
$ a_(2 m) = (-1)^m a_0/(2^(2m) m! (v+1)(v+2)dot dot dot (v+m)), quad m = 1,2,... $

=== Función de Bessel para v entero
Los valores enteros de $v$ se denotan por $n$. Para $v=n$ la relción anterior queda como
$ a_(2 m) = (-1)^m a_0/(2^(2m) m! (n+1)(n+2)dot dot dot (n+m)) , quad m = 1,2,... $
$a_0$ sigue siendo arbitraria, por lo que la serie $y$ con estos coeficientes incluirá este factor arbitrario $a_0$, una situación desventajosa en la práctica para desarrollar fórmulas o calcular valores. En consecuencia, es necesario hacer una eleccíon: $a_0 =1$  es posible, pero es más práctico elegir
$ a_0 = 1/(2^n n!) $
porque entonces $n!(n+1) dot dot dot (n+m) = (n+m)!$ en el coeficiente $a_(2m)$.
$ a_(2m) = (-1)^m/(2^(2m+n) m! (n+m)!), quad m = 1,2,... $
Con estos coeficientes y $r_1 = v=n$ se obtiene una solución particular de la ecuación de Bessel, denotada por $J_n (x)$ 
$ J_n(x) = x^n sum_(m=0)^(oo) (-1)^m x^(2m) / (2^(2m+n) m! (n+m)!) $
llamada la función de bessel de primera clase de orden $n$. Esta serie converge para todo $x$ como lo indica la prueba de la razón y con mucha rapidez debido a los factoriales del denominador.

=== Función de Bessel para v real positiva
==== Función Gamma
Necesitamos ampliar la definición de factorial a numeros reales positivos
$ Gamma(v) = integral_0^oo e^(-t) t^(v-1) $
Al integrar por partes obtenemos
$ Gamma (v+1) = integral_0^oo e^(-t) t^v dif t = -e^(-t) t^v |_0^oo + v integral_0^oo e^(-t) t^(v-1) $
La primera expresión es nula y la integral de la derecha es $Gamma(v)$ por lo que obtenemos la relación
$ Gamma (v+1) = v Gamma(v) $
Puesto que
$ Gamma(1) = integral_0^oo e^(-t) dif t = 1 $
Por lo que concluimos
$ Gamma(2) = Gamma(1) = 1! , quad Gamma(3) = 2 Gamma(2) = 2! $
En general
$ Gamma(n+1) = n! quad n=0,1,... $
Vemos que la función gamma generaliza la función factorial
==== Solución de la ecuación de Bessel para v real positivo

Ahora se tiene $a_0 = 1/(2^v Gamma(v+1)) $
Entonces nuestro $a_(2m)$ queda como
$ a_(2m) = (-1)^m / (2^(2m+v) m! (v+1)(v+2)dot dot dot (v+m) Gamma(v+1)) $
Pero en el denominador
$ (v+1)Gamma(v+1) = Gamma(v+2) quad (v+2)Gamma(v+2) = Gamma(v+3) $
Y así sucesivamente, por lo que
$ (v+1)(v+2) dot dot dot (v+m) Gamma(v+1) = Gamma(v+m+1) $
Por lo tanto los coeficientes son
$ a_(2m) = (-1)^m / (2^(2m+v) m! Gamma(v+m+1)) $
Con estos coeficientes y $r=r_1=v$ obtenemos una solución particular de la ecuación
$ J_v (x) = x^v sum_(m=0)^(oo) (-1)^m x^(2m)/(2^(2m + v) m! Gamma(v+m+1)) $
Llamada la función de Bessel de primera clase de orden $v$. Esta serie converge para todo $x$.

=== Solución $J_(-v)$ de la ecuación de bessel
Tenemos la solución $J_v$, ahora vamos a obtener una solución general. Para ello debemos deducir una segunda solución independiente. Si $v$ resulta no ser entero, esto es sencillo. Si $v$ es un entero $n$ esto requiere un esfuerzo mayor. Los detalles son los siguientes

Al sustituir $v$ por $-v$ en la expresión de $J_v (x)$ tenemos
$ J_(-v) (x) = x^(-v) sum_(m=0)^(oo) (-1)^m x^(2m) / (2^(2m-v) m! Gamma(m-v+1)) $

== Solución general de la ecuación de Bessel

Puesto que la ecuación de bessel incluye $v^2$ las funciones $J_v$ y $J_(-v)$ son soluciones de la ecuación para el mismo $v$. Si $v$ no es entero, estas soluciones son linealmente independientes, ya que el primer término de sus expresiones son múltiplos finitos diferentes de cero de $x^v$ y $x^(-v)$.

Por lo tanto, si $v$ no es un entero, una solución general de la ecuación de Bessel para toda $x!=0$ es 
$ y(x) = c_1 J_v (x) + c_2 J_(-v) (x) $
Pero si $v$ es entero, entonces esto no es una solución general. De hecho, en este caso las dos soluciones se vuelven linealmente dependientes:

$ J_(-n) (x) = (-1)^n J_n (x) quad n in NN^* $

Demostración:

Partimos de la expresión de $J_(-v) (x)$ y hacemos que $ v$ tienda a un entero positivo $n$. Entonces, las funciones gamma en los coeficientes de los $n$ primeros términos se hacen infinitas, los coeficientes se hacen cero y la sumatoria empieza con $m=n$. Puesto que en este caso $Gamma(m-n+1) = (m-n)!$ se obtiene
$ J_(-n) (x) = sum_(m=n)^(oo) ((-1)^m x^(2m-n))/(2^(2m -n) m! (m-n)!) = sum_(s=0)^(oo) ((-1)^(n+s) x^(2s + n))/(2^(2s +n) (n+s)! s! ) $
Donde $m=n+s$ y $s=m-n$. Vemos que en realidad esta serie representa $(-1)^n J_n (x)$. 

== Propiedades adicionales de $J_v (x)$
Vamos a ver las 4 propiedades más elementales de la función de Bessel.

Al multiplicar la expresión de $J_v (x)$ por $x^v$
$ x^v J_v (x) = sum_(m=0)^(oo) ((-1)^m x^(2m + 2v))/(2^(2m +v) m! Gamma (v+m+1)) $
Al derivar 
$ (x^v J_v)' &= sum_(m=0)^(oo) ((-1)^m 2 (m+v) x^(2m + 2 v -1 ))/(2^(2m + v ) m! Gamma (v+m+1)) \ &= x^v x^(v-1) sum_(m=0 )^(oo)  ((-1)^m x^(2m))/(2^(2m+v-1) m! Gamma (v+m))  $
Por identificación
$ dif/(dif x) [x^v J_v (x)] = x^v J_(v-1) (x) $
De manera similar, multiplicando por $x^(-v)$ obtenemos
$ dif/(dif x) (x^(-v) J_v) &= sum_(m=1)^(oo)  ((-1)^m x^(2m-1))/(2^(2m +v -1) (m-1)! Gamma(v+m+1)) \ &= sum_(s=0)^(oo) ((-1)^(s+1) x^(2s +1))/(2^(2s+v+1) s! Gamma(v+s+2)) $
Donde $m=s+1$. Por identificación otra vez
$ dif/(dif x) [x^(-v) J_v (x) ] = -x^(-v) J_(v+1) (x) $

Desarrollando estas dos formulas y multiplicando la segunda por $x^(2v) $ obtenemos
$ v x^(v-1) J_v + v^v J'_v = x^(v) J_(v-1) $
y 
$ -v x^(v-1) J_v + x^v J'_v = - x^v J_(v+1) $
Al restar estas entre sí y dividiendo por $x^v$ obtenemos una relación de recurrencia
$ J_(v-1) (x) + J_(v+1 )(x) = (2 v)/x J_v (x) $
Esta será la primera relación de recurrencia. Para obtener la segunda sumamos las dos expresiones anteriores y dividimos el resultado por $x^v$
$ J_(v-1) (x) - J_(v+1) (x) = 2 J'_v (x) $
Estas relaciones nos permiten obtener funciones de bessel de grado más alto a partir de tablas, por ejemplo.

=== $J_v (x)$ con $v = plus.minus 1/2, plus.minus 3/2, plus.minus 5/2 , ...$ son elementales

En casos especiales se puede reducir las funciones superiores a funciones conocidas. Vamos a estudiarlo para $J_v (x)$

Cuando $v=1/2$ entonces la función de bessel es
$ J_(1/2) (x) = sqrt(x) sum_(m=0)^(oo)  (-1)^m x^(2m)/(2^(2m+1/2) m! Gamma(m+3/2)) = sqrt(2/x) sum_(m=0)^(oo)  (-1)^m x^(2m +1)/(2^(2m+1) m! Gamma (m+3/2)) $
Ahora se usa que
$ Gamma (1/2) = sqrt(pi) $
A partir de esta expresión y de las propiedades de la función Gamma
$ Gamma(m+3/2) = (m+1/2)(m-1/2)dot dot dot 3/2 dot 1/2 Gamma (1/2) = 2^(-(m+1)) (2m+1)(2m-1) dot dot dot 3 dot sqrt(pi) $
En el denominador, además
$ 2^(2m+1) m! = 2^(2m +1 ) m(m-1) dot dot dot 2 dot 1 = 2^(m+) 2m (2m-2) dot dot dot 4 dot 2 $
En conjunto, el denominador queda como $(2m+1)! sqrt(pi) $

La expresión completa es entonces
$ J_(1/2) (x) = sqrt(2/(pi x)) sum_(m=0)^(oo) ((-1)^m x^(2m+1))/((2m+1)! ) $
Esta es la serie de Maclaurin de $sin x$ 
$ J_(1/2) (x) = sqrt(2/(pi x)) sin x $

A partir de este resultado y la relación de recurrencia podemos decir que las funciones de Bessel $J_v$ de ordenes $v= plus.minus 1/2 , plus.minus 3/2 , plus.minus 5/2  , ...$ son elementales; pueden expresarse por un número finito de cosenos, senos y potencias de $x$.

== Funciones de Bessel de segunda clase
Solo nos queda obtener una solución general de la ecuación de bessel para $v=n$ entero. Lo que buscamos es una segunda solución linealmente independiente para la ecuación de Bessel, que denotaremos $Y_0 (x)$
=== $n=0$: Función de Bessel de segunda clase $Y_0 (x)$
Consideramos primero el caso donde $n=0$:
$ x y'' + y' + x y = 0 $
La ecuación indicial tiene entonces la raíz doble $r=0$. Se trata del caso 2. La solución buscada (única) es de forma
$ y_2 (x) = J_0 (x) ln x + sum_(m=1)^(oo) A_m x^m $
Se sustituye $y_2$ y sus derivadas
$ y'_2 = J'_0 ln x + J_0/x + sum_(m=1)^(oo)  m A_m x^(m-1) $
$ y''_2 = J''_0 ln x + (2 J'_0)/x - J_0 / x^2 + sum_(m=1)^(oo)  m(m-1) A_m x^(m-2) $
Entonces los términos logarítmicos se cancelan ya que $J_0$ es solución de la ecuación, al igual que los otros términos que contienen $J_0$ y queda
$ 2 J'_0 + sum_(m=1)^(oo) m(m-1) A_m x^(m-1) + sum_(m=1)^(oo) m A_m x^(m-1) + sum_(m=1)^(oo) A_m x^(m+1) = 0 $
Conocemos la serie de $J'_0$ 
$ J'_0 (x) = sum_(m=1)^(oo) ((-1)^m x^(2m-1))/(2^(2m-1) m! (m-1)! ) $
Al insertar la serie obtenemos
$ sum_(m=1)^(oo) ((-1)^m x^(2m-1))/(2^(2m-2) m! (m-1)!) + sum_(m=1)^(oo) m^2 A_m x^(m-1) + sum_(m=1)^(oo) A_m x^(m+1) = 0 $
Se demuestra primero que todas las $A_m$ con subíndices impares son cero. El coeficiente de la potencia $x^0$ es $A_1$ y en consecuencia $A_1=0$. AL igualar a cero la suma de los coeficientes de la potencia $x^(2 s)$ se tiene
$ (2s+1)^2 A_(2s+1) + A_(2s-1) = 0 $
Puesto que $A_1=0$ se obtiene que todos los coeficientes impares se anulan. Ahora igualamos a cero la suma de los coeficientes de $x^(2s +1)$. Obtenemos
$ 4 A_2 - 1 = 0 quad "o" quad A_2 = 1/4 quad (s=0) $
Para los demas valores $s=1,2,...$
$ (-1)^(s+1)/(2^(2s) (s+1)! s!) + (2s + 2)^2 A_(2s+2) + A_(2s ) = 0 $
Para $s=1$ se obtiene
$ 1/8 + 16 A_4 + A_2 = 0 => A_4 = -3/(128) $
En general
$ A_(2m) = ((-1)^(m-1))/(2^(2m) (m!)^2) (1+ 1/2 +1/3 + dot dot dot + 1/m ) quad m= 1,2,... $
Utilizando la notación abreviada
$ h_m = 1 + 1/2 + ... + 1/m $
insertando la expresión de $A_(2m) $ y sabiendo que los coeficientes de m impar se anulan
$ y_2 (x) = J_0 (x) ln x + sum_(m=1)^(oo) ((-1)^(m-1) h_m)/(2^(2m) (m!)^2) x^(2m) $
Puesto que $J_0$ y $y_2$ son linealmente independientes, forman una base de soluciones de la ecuación. Se obtiene otra base si se sustituye $y_2$ por una solución particular independiente de forma $a(y_2 + b J_0) $ donde $a!=0$ y $b$ son constantes. Se suele elegir $a=2/pi$ y $b = gamma - ln 2$ donde $gamma$ es la constante de Euler, que se define por el limite de 
$ 1 + 1/2 + ... + 1/s - ln s $
cuando $s$ tiende a infinito. La solución particular estándar se denomina la función de Bessel de segunda clase de orden cero o función de Neumann de orden cero y se denota por $Y_0 (x)$. Por tanto
$ Y_0 (x) = 2/pi [J_0 (x) (ln x/2 + gamma) + sum_(m=1)^(oo) ((-1)^(m-1) h_m)/(2^(2m) (m!)^2) x^(2m) ] $
Para $x>0$ pequeña la función $Y_0 (x)$ se comporta similarmente a $ln x$ y $Y_0 (x) -> oo$ cuando $x->0$.

=== Funciones de bessel de segunda clase para todo $n in NN^(*)$

Puede obtenerse una segunda solución mediante manipulaciones similares a las empleadas en el caso $n=0$. Resulta que en estos casos tambien tiene un término logarítmico.

La situación no es del todo conveniente, ya que la segunda solución se define de manera diferente dependiendo del carácter de $v$. A fin de conseguir uniformidad en el formalismo, es conveniente adoptar una forma de la segunda solución que sea válida para todos los valores del orden. Esta es la razón para una segunda solución estándar $Y_v (x)$, definida para todo $v$ 
$ Y_v (x) = 1/(sin v pi) [ J_v (x) cos v pi - J_(-v) (x)] $
$ Y_n (x) = lim_(v-> n ) Y_v (x) $
Esta función recibe el nombre de función de Bessel de segunda clase de orden v o funcion de Neumann de orden v. 

Por lo que una solución general de la ecuación de Bessel para todos los valores de $v$ es
$ y(x) = C_1 J_v (x) + C_2 Y_v (x) $
A veces existe la necesidad de contar con soluciones que toman valores complejos para $x$ real, por lo que habitualmente se usa
$ H^(1)_v (x) = J_v (x) + i Y_v (x) $
$ H^2_v (x) = J_v (x) - i Y_v (x) $
Estas funciones linealmente independientes se llaman funciones de Bessel de tercera clase de orden $v$ o primera y segunda funciones de Hankel de orden $v$.

== Problemas de Sturm-Liouville. Ortogonalidad
Sturm y Liouville demostraron que las ecuaciones de Bessel, Legendre, y otras importantes de la ingeniría se pueden considerar de un punto de vista común, con el resultado de que se obtienen familias de soluciones que resultan útiles para la representacion en series de funciones dadas que se presentan en mecánica, conducción de calor, electricidad y otras aplicaciones físicas. 

Vamos a empezar motivando la utilizdad a través de las ecuaciones de Bessel y Legendre

La ecuación de Bessel es
$ tilde(x)^2 dot.double(y) + tilde(x) dot(y) + (tilde(x)^2 - n^2) y = 0 $
Siendo la variable independiente $tilde(x)$ y $ dot(y) = dv(y, tilde(x))$, $dot.double(y)=dv(y, tilde(x), deg:2) $

Puede transformarse haciendo $tilde(x) = k x $ y entonces $ dot(y) =(y')/k$, $dot.double(y) = (y'')/k^2$ 
y se obtiene
$ x^2 k^2 (y'')/k^2 + x k (y')/k + (k^2 x^2 - n^2) y = 0 $
Al cancelarse los k en los primeros términos
$ x^2 y'' + x y' + (k^2 x^2 - n^2) y = 0 $
Al dividir entre $x$
$ x y'' + y' + (k^2 x - n^2/x) $
Que podemos reescribir como
$ x dif/(dif x) y' + y' dif/(dif x) x + (k^2 x - n^2/x) $
Por identificación
$ dif/(dif x) [x y'] + (-n^2/x + lambda x) = 0 $
siendo $lambda = k^2$

De manera similar, la ecuación de Legendre
$ (1-x^2) y'' - 2 x y' + n(n+1)y = 0 $
Puede reescribirse como
$ dif/(dif x) [(1-x^2)y'] + lambda y $
Con $lambda = n(n+1) $

Ambas ecuaciones son de forma
$ dif/(dif x) [r(x) y'] + [q(x) + lambda p(x) ] y = 0 $
Que se conoce como ecuación de Sturm-Liouville. Hay otras ecuaciones que se pueden escribir de esta forma. La mas simple es
$ y'' + lambda y = 0 $
La ecuación de Sturm-Liouville se considera en un intervalo dado $a<=x<=b$ y se supone la continuidad de $p,q,r,r'$ y también que $p(x) >0 $ en este intervalo. En los puntos frontera se imponen unas condiciones de frontera
$ k_1 y(a) + k_2 y' (a) &= 0 \ l_1 y(b) + l_2 y'(b) = 0 $

Con las constantes $k_1$ y $k_2$ dadas sin ser ambas cero, y $l_1$, $l_2$ dadas, sin ser ambas cero. El problema con estas condiciones de frontera para la ecuación de Sturm-Liouville se conoce como problema de Sturm-Liouville. Es evidente que $y approx 0$ siempre es solución pero tiene poco interés. Lo que queremos encontrar son soluciones no triviales. A tales soluciones sel les conoce como eigenfunciones y el número $lambda$ para tal eigenfunción se conoce como eigenvalor del problema.

=== Existencia de eigenvalores
Los eigenvalores en un problema de Sturm-Liouville incluso en número indefinido existen bajo condiciones bastante generales sobre $p,q,r$. Además, si $p,q,r,r'$ son funciones con valores reales y continuas en el intervalo $a<=x<=b$ y $p$ es positiva o negativa en ese intervalo entonces todos los eigenvalores del problema serán reales. 

=== Ortogonalidad
Las eigenfunciones de los problemas de Sturm-Liouville poseen propiedades importantes generales, sobretodo la ortogonalidad. 

Las funciones $y_1, y_2, ...$ definidas en un intervalo $a<=x<=b$ se llaman ortogonales en este intervalo con respecto a una función peso $p(x)>0$ si
$ integral_a^b p(x) y_m (x) y_n (x) dif x = 0 $
La norma $||y_m||$ de $y_m$ se define por 
$ ||y_m|| = sqrt(integral_a^b p(x) y^2_m (x) dif x) $
Las funciones se llaman ortonormales en un intervalo si son ortogonales en este y su norma es 1.

En lugar de ortogonal con respecto a $p(x)=1$ se ddice ortogonal.

==== Ortogonalidad de eigenfunciones
Suponiendo que las funciones $p,q,r,r'$ tienen valores reales y son continuas y que $p(x)>0$ en $a<=x<=b$, entonces las eigenfunciones $y_m (x), y_n (x)$ correspondientes a dos eigenvalores diferentes $lambda_m, lambda_n$ son ortogonales en ese intervalo. 

Si $r(a)=0$ entonces la primera condición de contorno puede eliminarse mientras que si $r(b)=0$ entonces la segunda puede eliminarse. Se requerirá entonces que $y$ e $y'$ permanezcan acotadas en tal punto y el problema se llamará singular en oposición a un problema regular donde si se requieren las condiciones de contorno. También, si $r(a)=r(b)$, entonces las condiciones de frontera se pueden sustituir por unas condiciones periódicas de la frontera 
$ y(a) = y(b) quad y'(a)=y'(b) $
Esta clase de problema se conoce como problema periódico de Sturm-Liouville.

==== Ortogonalidad de las funciones de Bessel
Para cada entero no negativo fijo $n$ las funciones de Bessel $J_n(k_(1n) x), J_n(k_(2n) x), J_n (k_(3n) x) ,... $ (con $k_(m n)= a_(m n)/R$ siendo $R$ el límite superior del intervalo donde se estudian las soluciones), forman un conjunto ortogonal en el intervalo $0<=x<=R$ con respecto al peso $p(x)=x$
$ integral_0^R x J_n (k_(m n)x) J_n(k_(j n) x) dif x = 0 $
Por consiguiente se ha obtenido una infinidad de conjuntos ortogonales cada uno de los cuales corresponde a un $n$ fijo.

== Desarrollo de Eigenfunciones
Por qué son importantes los conjuntos ortogonales de eigenfunciones? La respuesta es que producen desarrollos en series de funciones dadas en una forma simple, como las series de Fourier.

Primero vamos a introducir notación
$ (y_m , y_n) = integral_a^b p(x) y_m (x) y_n (x) dif x $
donde $m=0,1,2,...$ y $n=0,1,2,...$

En forma aún más abreviada
$ (y_m, y_n) = delta_(m n) quad "(cuando la norma de y_m es 1)"$
La norma de $y_m$ se puede entonces escribir
$ ||y_m|| = sqrt((y_m,y_m)) $

=== Series ortogonales
Sean $y_0, y_1, ...$ un conjunto ortogonal con respecto al peso $p(x)$ en un intervalo $a<=x<=b$. Sea $f(x)$ una función dada que puede representarse en términos de $y_m$ por una serie convergente
$ f(x) = sum_(m=0)^(oo) a_m y_m (x) = a_0 y_0 (x) + a_1 y_1 (x) + ... $
Esta expresión se llama desarrollo ortogonal o serie de Fourier generalizada, y si $y_m$ son eigenfunciones de un problema de Sturm-Liouville se llama un desarrollo de eigenfunciones. El punto es que debido a la ortogonalidad se obtienen los coeficientes desconocidos $a_0 , a_1, ...$ en una manera simple; estods se llaman constantes de Fourier de $f(x)$ con respecto a $y_0, y_1 ,...$. De hecho, si ambos miembros de la serie se multiplican por $p(x)y_n (x)$ con $n$ fijo, y después de integra en el intervalo $[a,b]$, se obtiene (suponiendo que es posible integrar término a término)
$ (f,y_n) = integral_a^b p f y_n dif x = integral_a^b p(sum_(m=0)^(oo) a_m y_m ) y_n dif x = sum_(m=0)^(oo)  a_m (y_m, y_n) $
Ahora resulta crucial el hecho de que debido a la ortogonalidad, todas las intgrales $(y_m, y_n)$ del segundo miembro son cero, excepto cuando $m=n$, entonces $(y_n, y_n) = ||y_n||^2$ por lo que la formula completa se reduce a 
$ (f, y_n) = a_n ||y_n||^2 $
Llegamos entonces a la formula deseada para las constantes de fourier
$ a_m = ((f,y_m))/(||y_m||^2) = 1/(||y_m||^2) integral_a^b p(x) f(x) y_m (x) dif x quad m in NN $

=== Completitud de los conjuntos ortonormales
En la práctica solo se usan los conjuntos ortonormales que cuentan con un número suficiente de funciones, para que sea posible representar grandes clases de funciones. Estos conjuntos ortonormales se llaman completos. Por ejemplo, los polinomios de legendre o las funciones de bessel son completos en sus intervalos.

En este contexto, la convergencia es convergencia el na norma, esto es, se dice que una sucesion de funciones $f_n$ es convergente con el limite $f$ si 
$ lim_(k->oo) ||f_k - f|| = 0 $
es decir
$ lim_(k->oo) integral_a^b p(x) [f_k (x) - f(x)]^2 dif x = 0 $
(omitiendo la raíz cuadrada)
Entonces, la serie converge y representa a $f$ si
$ lim_(k->oo) integral_a^b p(x) [s_k (x) - f(x)]^2 dif x = 0 $
Donde $s_k$ es la $k$-ésima suma parcial de la serie
$ s_k (x) = sum_(m=0)^(k) a_m y_m (x) $
Por definición, un conjunto ortonorma $y_0,y_1,...$ en un intervalo $[a,b]$ es completo en un conjunto de funciones $S$ definidas en $[a,b]$ si esposible aproximar lo suficientemente cerca toda $f$ en $S$ por medio de una combinación lineal $a_0 y_0 + a_1 y_1 + ... + a_k y_k $ es decir, en términos técnicos, si para todo $epsilon >0 $ pueden encontrarse las constantes $a_n$ tales que $||f-(a_0 y_0 + ...+ a_k y_k) || < epsilon $
Una interesante consecuencia básica de la integral de convergencia se obtiene de la siguiente manera. Elevando al cuadrado y desarrollando el término $s_k$
$ integral_a^b p(x) [s_k (x) - f(x)]^2 dif x &= integral_a^b p s_k^2 dif x - 2 integral_a^b p f s_k dif x + integral_a^b p f^2 dif x \ &= integral_a^b p[sum_(m=0)^(k) a_m y_m]^2 dif x - 2 sum_(m=0)^(k)  a_m integral_a^b p f y_m dif x + integral_a^b p f^2 dif x $
la primera integral del segundo miembro es igual a $a_m^2$ porque $integral p y_m y_1 dif x = 0 $ para $m!=1$ e $integral p y_m^2 dif x = 1 $ (al ser $y_m$ ortonormal). En la segunda sumatoria de la derecha, la integral es igual a $a_m$ por definición con $||y_m||^2 = 1$. Por lo tanto el segundo miembro se reduce a 
$ - sum_(m=0)^(k) a_m^2 + integral_a^b p f^2 dif x $
Esta expresión es no negativa debido a que en la formula anterior el integrando del primer miembro y en consecuencia la integral no son negativos. Con esto se demuestra la importante desigualdad de Bessel
$ sum_(m=0)^(k)  a_m^2 <= ||f||^2 $
Aquí puede hacerse $k->oo$ ya que los primeros miembros forman una sucesion monótona creciente que está acotada por la derecha, por lo que se tiene la convergencia. En consecuencia:
$ sum_(m=0)^(a_m^2) <= ||f||^2 $
Además, si $y_0, y_1, ...$ es completo en un conjunto de funciones $S$, entonces la integral de convergencia es válida para toda $f$ que pertenezca a $S$. Entonces, esto implica la igualdad en la desigualdad de Bessel con $k->oo$, por tanto, en el caso de completitud tenemos la igualdad de Parseval
$ sum_(m=0)^(oo) a_m^2 = ||f||^2 $

= Ecuaciones en derivadas parciales

== Conceptos básicos
Las ecuaciones en derivadas parciales (EDP) son ecauciones que continenen una o más derivadas parciales de una función desconocida que depende de al menos dos variables. Llamaremos $u$ a esta función. El orden de la derivada parcial más alta se llama el orden de la ecuación. Una EDP es lineal si es de primer grado en la función desconocida $u$ y sus derivadas. Si no, se llama no lineal. Llamamos homogénea a una EDP si cada uno de sus términos contiene $u$ o una de sus derivadas parciales. Si no, la llamaremos no homogénea. 

Una solución de una EDP en una region $R$ del espacio de variables independientes es una función que tiene todas las derivadas parciales de la EDP en un dominio $D$ conteniendo $R$, y satisface la EDP en todo $R$. 

A menudo uno solo necesita que la función sea continua en el contorno de $R$. Haciendo que $R$ esté en $D$ simplifica la situación de las derivadas en el contorno de $R$, que es la misma en el contorno y en el interior de $R$. En general, la totalidad de soluciones de una EDP es muy grande. Veremos luego que la solución única de una EDP correspondiendo a un problema físico se obtiene imponiendo condiciones adicionales relacionadas por el problema.

Sabemos que si una EDO es linear y homogenea, entonces de soluciones conocidas podemos obtener más soluciones por superposición. La situación es parecida en las EDP.

Si $u_1$ y $u_2$ son soluciones de una EDP linear homogénea en una región $R$:
$ u = c_1 u_1 + c_2 u_2 $
con constantes $c_1$ y $c_2$ arbitrarias también es solución de la EDP en la región $R$

== Solución por separación de variables. Series de Fourier
El modelo de una cuerda elástica que vibra es una ecuación de onda unidimensional:
$ dvp(u,t, deg: 2) = c^2 dvp(u,x, deg:2) quad c^2 = T/rho $
Para la elongación desconocida $u(x,t)$ de la cuerda.
Como la cuerda está sujeta a los extremos $x=0$ y $x=L$, tenemos las dos condiciones de contorno:
$ cases(u(0,t) = 0, u(L,t)=0) forall t>=0 $
Adicionalmente, la forma del movimiento de la cuerda dependerá de su elongación inicial $f(x)$ y su velocidad inicial $g(x)$. Por lo que tenemos dos condiciones iniciales
$ cases(u(x,0)=f(x), u_t (x,0) = g(x)) forall x in [0,L] $
Donde $u_t = dvp(u,t) $. Ahora tenemos que encontrar una solución de la EDP satisfaciendo las condiciones. Esto será nuestra solución. Haremos esto en tres pasos:

+ Separación de variables, diciendo $u(x,t) = F(x) G(t)$ obtendremos dos EDOs, una para $F(x)$ y otra para $G(t)$
+ Determinaremos soluciones de estas EDOs que satisfacen las condiciones de contorno
+ Utilizando las series de fourier, compondremos estas funciones para encontrar una solución de la EDP que satisface las condiciones de contorno

=== Separación de la ecuacion en dos EDO
Vamos a fijar $ u(x,t) = F(x) G(t) $
diferenciando, obtenemos
$ dvp(u,t,t) = F dot.double(G) quad "y" quad dvp(u,x,deg:2) = F'' G $
Donde los puntos son derivadas con respecto al tiempo y las primas con respecto a x.
Insertando esto en la ecuación de onda obtenemos
$ F dot.double(G) = c^2 F'' G $
Dividiendo por $c^2 F G $ y simplificando
$ dot.double(G)/(c^2 G) = (F'')/F $
las variables están serparadas, el lado izquierdo solo depende de $t$ y el lado derecho de $x$. Por lo tanto ambos lados deben de ser constantes porque $x$ y $t$ son independientes. Entonces
$ dot.double(G)/(c^2 G) = (F'')/F = k $
Multiplicando por los denominadores nos da dos ecuaciones diferenciales ordinarias
$ F'' - k F = 0 $
y
$ dot.double(G) - c^2 k G = 0 $
La constante de separación $k$ sigue siendo arbitraria

=== Resolviendo las EDO para las condiciones de contorno
Ahora determinamos las soluciones $F$ y $G$ para que $u = F G $ satisfaga las condiciones de contorno. Es decir
$ cases(u(0,t) = F(0) G(t) = 0, u(L,t)= F(L)G(0)= 0) forall t>=0 $
Vamos a resolver la ecuación de F primero. Si $G(t)=0$, entonces $u=F G= 0$. Que no tiene interés. Por lo que $G!=0$ y entonces por las condiciones de contorno
$ F(0)=0 quad F(L) = 0 $
Ahora vamos a demostrar que $k$ debe de ser negativo. Para $k=0$ la solución general para $F$ es $F=a x + b$ y de las condiciones de contorno obtenemos $a=b=0=>F equiv 0 => u = F G equiv 0 $ que no tiene interés. Para $k=mu^2$ positivo la solución general es 
$ F = A e^(mu x) + B e^(- mu x) $
Y de las condiciones de contorno obtenemos $F equiv 0$ otra vez. Entonces solo nos queda $k$ negativo, por ejemplo $k = -p^2 $. Entonces, tenemos
$ F'' + p^2 F = 0 $
Que tiene como solución general
$ F(x) = A cos p x + B sin p x $
De esto y de las condiciones de contorno tenemos
$ F(0) = A = 0 quad ; quad F(L) = B sin p L = 0 $
Tenemos que tomar $B!=0$ o nuestra ecuación se anula entera. Por lo que $ sin p L = 0 => p L = n pi => p = (n pi)/ L $
Tomando $B=1$ obtenemos infinitas soluciones $F(x)=F_n (x) $, donde
$ F_n (x) = sin (n pi)/L x quad n in NN^* $
Estas soluciones satisfacen las condiciones de contorno

Ahora resolvemos la ecuación de $G$ con $k=-p^2 = -((n pi)/L)^2$ es decir
$dot.double(G) + lambda_n^2 G = 0 $
donde $lambda_n = c p = (c n pi)/L $
Una solución general es
$ G_n (t) = B_n cos lambda_n t + B_n^* sin lambda_n t $
Por lo que las soluciones para $F$ y $G$ que satisfacen las condiciones de contorno son $u_n (x,t) = F_n (x) G_n (t) $
Escrito
$ u_n (x,t) = (B_n cos lambda _n t + B^* _n sin lambda_n t) sin (n pi)/L x quad n in NN^* $
Estas funciones son las eigenfunciones, y los valores $lambda_n = (c n pi)/L $ son los eigenvalores de la cuerda vibrante.

==== Discusión de eigenfunciones
Vemos que cada $u_n$ representa un movimiento armónico con la frecuencia $lambda_n/(2 pi) = (c n)/(2 L )$ ciclos por unidad de tiempo. Este movimiento se llama el $n$-ésimo modo normal de la cuerda. El primer modo normal se llama el modo fundamental ($n=1$) y el resto se conoce como armónicos; músicamente dan la octava, octava más quinta, etc. Como tenemos
$ sin (n pi)/L = 0 quad "para" quad x=L/n, (2L)/n , ..., (n-1)/n L $
El $n$-ésimo modo normal tiene $n-1$ nodos, es decir puntos en la cuerda que se mantienen fijos.

=== Solución del problema completo. Series de Fourier
Las eigenfunciones satisfacen la ecuación de onda y las condiciones de contorno, pero un $u_n$ singular no va a satisfacer las condiciones iniciales, en general. Pero como la ecuación de onda es lineal y homogénea, la suma finita de soluciones $u_n$ es una solución del problema. Para obtener una solución que también satisface las condiciones iniciales, consideramos la serie infinita con $lambda_n = (c n pi)/L$. 
$ u(x,t) = sum_(n=1)^(oo) u_n (x,t) = sum_(n=1)^(oo) (B_n cos lambda_n t + B^*_n sin lambda_n t) sin (n pi)/L x $

==== Condiciones iniciales. Elongamiento inicial.
Aplicando nuestra primera condicion inicial a la expresión de la solución:
$ u(x,0) = sum_(n=1)^(oo) B_n sin (n pi)/L x = f(x) $
Esto es la expresión de una serie de fourier de senos, por lo que sabemos la forma de $B_n$:
$ B_n = 2/L integral_0^L f(x) sin (n pi x)/L dif x $

==== Condiciones iniciales. Velocidad inicial.
Similarmente, diferenciando la solución con respecto a $t$ y utilizando la segunda condición inicial:
$ dvp(u,t, eval:t=0) &= [ sum_(n=1)^(oo) (-B_n lambda_n sin lambda_n t + B_n^* lambda_n cos lambda_n t) sin(n pi x)/L]_(t=0) \ &= sum_(n=1)^(oo) B_n^* lambda_n sin (n pi x)/L = g(x) $
Por lo que otra vez $B^*_n$ resulta ser un coeficiente de la serie de fourier de senos de una función, en este caso $g(x)$. Entonces,
$ B^*_n lambda_n = 2/L integral_0^L g(x) sin (n pi x)/L dif x $
Sabemos que $lambda_n = (c n pi)/L$, por división
$ B_n* = 2/(c n pi) integral_0^L g(x) sin (n pi x)/L dif x $

Ya tenemos nuestra solución.

== Modelación. Flujo de calor de un cuerpo. Ecuación de calor
Después de la ecuación de onda vamos a derivar y comentar la otra EDP importante, la ecuación de calor, que describe la temperatura $u$ de un cuerpo en el espacio. Vamos a obtener este modelo asumiendo que
+ El calor especifico $sigma$ y la densidad $rho$ del material del cuerpo son constantes. No hay calor que se produzca o desaparezca en el cuerpo
+ Los experimentos muestran que en un cuerpo el calor fluye en la dirección de la temperatura decreciente, y que la tasa de flujo es proporcional al gradiente de la temperatura. Es decir, la velocidad $bold(v)$ del flujo de velocidad en el cuerpo es de forma $ bold(v) = - K gradient U $
+ La conductividad térmica $K$ es constante, como es en el caso de un material homogéneo en condiciones no extremas.

Bajo estas asumciones vamos a modelar el flujo de calor.

Sea $T$ una región en el cuerpo delimitado or una superficie $S$ con un vector normal unitario $bold(n)$ tal que el teorema de la divergencia sea aplicable. Entonces, $bold(v) dot bold(n)$ es el componente de $bold(v)$ en la dirección de $bold(n)$. Por lo tanto, $ | bold(v) dot bold(n) Delta a |$ es la cantidad de calor saliendo de $T$ (si $bold(v) dot bold(n) > 0$ en un punto $P$) o entrando a $T$ (si $bold(v) dot bold(n)<0$ en un punto $P$) por unidad de tiempo en un punto de $P$ en $S$ a través de una pequeña porción $Delta S$ de $S$ de area $Delta A$. Por lo tanto, la cantidad total de calor que fluye por $S$ en $T$ es dada por la integral de superficie
$ integral.double_S bold(v) dot bold(n) dif A $
Esto es en paralelo al flujo de un fluido. Utilizando el teorema de Gauss, ahora vamos a convertir nuestra integral de superficie en una integral de volumen sobre la región $T$. Por la definición de $bold(v)$, esto es
$ integral.double_s bold(v) dot bold(n) dif A = - K integral.double gradient u dot bold(n) dif A = - K integral.triple_T gradient dot gradient u dif x dif y dif z = - K integral.triple gradient^2 u dif x dif y dif z $
Donde $gradient^2$ es el operador laplaciano: $ gradient^2 u = dvp(u,x, deg:2) + dvp(u,y,y) + dvp(u,z,z) $
Por otra parte, la cantidad total de calor en $T$ es
$ H = integral.triple_T sigma rho u dif x dif y dif z $
Con $sigma$ y $rho$ como anteriormente. Por lo tanto, el decrecimiento de $H$ es
$ - dvp(H,t) = - integral.triple_T sigma rho dvp(u,t) dif x dif y dif z $
Esto debe de ser igual a la cantidad de calor saliendo de $T$ porque no hay calor que se produzca o desaparezca en el cuerpo. Por lo tanto
$ integral.triple_T sigma rho dvp(u,t) dif x dif y dif z = - K integral.triple_T gradient^2 u dif x dif y dif z $
o 
$ integral.triple_T (dvp(u,t) - K/(sigma rho) gradient^2 u ) dif x dif y dif z = 0 $
Sustituyendo con $c^2 = K/(p sigma) $
$ integral.triple_T (dvp(u,t) - c^2 nabla^2 u) dif x dif y dif z = 0 $
Como esto es verdad para cualquier región del cuerpo $T$, el integrando (si es continuo) debe de anularse. Es decir
$ dvp(u,t) = c^2 nabla^2 u $
Esto es la ecuación del calor, la ecuación fundamental que modela el flujo de calor. 