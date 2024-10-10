#align(center, text(25pt)[*Metodos Matemáticos II*])
= 1. Análisis de Fourier
== 1.1 Propiedades de las funciones periodicas
1. $f(x+p)=f(x) => sin(x+2pi)=sin(x)$
2. $f(a x)$ también es una función periodica: $cos(a x), p? => p = (2pi)/a$
3. Si $f(x)$ y $ g(x)$ son periodicas, $h(x)= a f(x) + b g(x)$ también lo es, y tendrá el mismo periodo que las funciones que la componen.
De todos los periodos $p$, el más pequeño es denominado periodo _primitivo_

== 1.2 Series de Fourier para funciones de periodo $2pi$

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

== 1.3 Series de Fourier para funciones de periodo $2L$

#underline[*Serie de Fourier para función de periodo 2L*]: #rect($ f(x) = a_0 + sum_(n+1)^oo (a_n cos (n pi)/L x + b_n sin (n pi)/L x ) $)

#underline[*Coeficientes de Fourier para función de periodo 2L*]: 
#rect(
$
a_0 &= 1/L integral_(-L)^L f(x) dif x \
a_n &= 2/L integral_(-L)^L f(x) cos (n pi)/L x dif x \
b_n &= 2/L integral_(-L)^L f(x) sin (n pi)/L x dif x
$
)

== 1.4 Simetrías
Puede evitarse trabajo innecesario si se sabe que la función es par o impar. 

#underline[*Función par*]: $f(x) = f(-x)$

#underline[*Función impar*]: $f(x) = -f(-x)$

#underline[*Teorema: Series de Fourier de funciones pares e impares*]:
La serie de Fourier  de una función par de periodo $2L$ es una "Serie Fourier de cosenos":
#rect($ f(x) = a_0 + sum_(n+1)^oo a_n cos (n pi)/L x $)

La serie de Fourier de una función impar de periodo $2L$ es una "Serie de Fourier de senos":
#rect($ f(x) = sum_(n+1)^oo b_n sin (n pi)/L x $)

== 1.5 Desarollos de medio rango
Es necesario a veces usar series de Fourier con funciones $f(x)$ que solo están dadas en un intervalo (por ejemplo $0<=x<=L$). Podemos extender $f(x)$ a una función periodica de periodo $2L$ de dos formas:
- Par: #rect($ cases(L>=x>=0: f(x), 0>x>=-L: f(-x)) $)
- Impar: #rect($ cases(L>=x>=0: f(x), 0>x>=-L: -f(-x)) $)

Extendiendo las funciones de esta forma, podemos usar las series de Fourier para estas funciones.

== 1.6 Series complejas de Fourier

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

== 1.7. Aproximación por polinomios trigonométricos
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

== 1.8 Integrales de Fourier
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

== 1.9 Transformada de Fourier en funciones pares e impares
=== Transformada de Fourier de cosenos:
La transformada de Fourier de cosenos es utilizada para funciones pares. La obtenemos de la integral de fourier: $ f(x) = integral_0^oo A(w)cos w x dif w + integral_0^oo B(w) sin w x dif w $. Como $f(x)$ es par, $B(w) = 0$. Es decir,  $ f(x) = integral_0^oo A(w) cos w x dif w "donde" A(w) = 2/pi integral_0^oo f(v) cos w v dif v $
Ahora, decimos que $A_w = sqrt(2/pi) cal(F)_c (w)$. Entonces, con $v=x$ en la formula de $A(w)$, obtenemos: $ cal(F)_c (w) = sqrt(2/pi) integral_0^oo f(x) cos w x dif x $
Esto es la transformada de Fourier de cosenos de $f(x)$. 
También obtenemos:
$ f(x) = sqrt(2/pi) integral_0^oo cal(F)_c (w) cos w x dif w $
Denominada la transformada inversa de Fourier de cosenos.

=== Transformada de Fourier de senos:
Esta vez con $f(x)$ una función impar. Sabemos que $A(w)$ es nula porque $f(x)$ es impar. Entonces, $ f(x) = integral_0^oo B(w) sin w x dif w $, donde $B(w) = 2/pi integral_0^oo f(v) sin w v dif v $.
Como con la transformada de Fourier de cosenos, decimos que $B(w) = sqrt(2/pi) cal(F)_s (w)$. Entonces, con $v=x$, obtenemos: $ cal(F)_s (w) = sqrt(2/pi) integral_0^oo f(x) sin w x dif x $
Igualmente, obtenemos la transformada inversa:
$ f(x) = sqrt(2/pi) integral_0^oo cal(F)_s (w) sin w x dif w $

== 1.10 Transformada de Fourier
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
+ Convolución: $cal(F){f*g} = cal(F){f} cal(F){g}$
+ Desplazamiento: $cal(F){f(x-a)} = e^(-i w a) cal(F){f(x)}$