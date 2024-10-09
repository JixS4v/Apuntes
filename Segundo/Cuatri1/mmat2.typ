#align(center, text(25pt)[*Metodos Matemáticos II*])
= 1. Series de Fourier
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
a_n &= 1/L integral_(-L)^L f(x) cos (n pi)/L x dif x \
b_n &= 1/L integral_(-L)^L f(x) sin (n pi)/L x dif x
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

Definimos el error como el error cuadrático total de F con relación de f en el intervalo $-pi<=x<=pi$:
#rect($ E = integral_(-pi)^pi (f - F)^2 dif x $)
Queremos determinar los coeficientes $alpha_n y beta_n$ tales que el error se minimice.
$ E = integral_(-pi)^pi f^2 dif x - 2 integral_(-pi)^pi f F dif x + integral_(-pi)^pi F^2 dif x $

// TODO: Terminar esto.
== 1.8 Integrales de Fourier
A la hora de abordar problemas con funciones aperiocas, no podemos utilizar las series de Fourier. Observamos lo que ocurre cuando hacemos que $L->oo$