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
Cuando el parametro $n$ de la ecuación de Legendre es un entero no negativo, el segundo miembro de la relación de recurrencia es nulo cuando $s=n$ y por lo tanto $a_(n+2)=0, a_n+4=0,a_(n+6) = 0, ...$ Por consecuencia, si $n$ es par, $y_1(x)$ se reduce a un polinomio de grado $n$. Si $n$ es impar, se cumple lo mismo para $y_2(x)$. Estos polinomios, multiplicados por algunas constantes, se llaman polinomios de Legendre.
