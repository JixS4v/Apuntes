#align(center, text(25pt)[*Metodos Matemáticos II*])
= 1. Series de Fourier
== 1.1 Propiedades de las funciones periodicas
1. $f(x+p)=f(x) => sin(x+2pi)=sin(x)$
2. $f(a x)$ también es una función periodica: $cos(a x), p? => p = (2pi)/a$
3. Si $f(x)$ y $ g(x)$ son periodicas, $h(x)= a f(x) + b g(x)$ también lo es, y tendrá el mismo periodo que las funciones que la componen.
De todos los periodos $p$, el más pequeño es denominado periodo _primitivo_

== 1.2 Series de Fourier para funciones de periodo $2pi$

Podemos representar funciones periodicas de periodo $2pi$ con una *Serie de Fourier*, de forma que:
#rect($ f(x) = a_0 sum_(n=1)^oo a_n cos n x + b_n sin n x $)
Donde $a_0$, $a_n$, y $b_n$ son denominados _Coeficientes de Fourier_

#underline[*Formulas de Euler*]

Las formulas de Euler nos permiten calcular los coeficientes de Fourier: 
#rect(
$
a_0 &=1/(2pi) integral^pi_(-pi) f(x) d x \ 
a_n &= 1/pi integral_(-pi)^pi f(x) cos (n x) d x \ 
b_n &= 1/pi integral_(-pi)^pi f(x) sin (n x) d x \ 
$)

#underline[*Teorema: Convergencia de series de Fourier*]
Si una función periódica $f(x)$ con periodo $2 pi$ es continua por secciones en el intervalo $-pi <= x <= pi$ y tiene derivada por la izuqierda y por la derecha en todo punto de dicho intervalo, entonces la serie de Fourier de $f(x)$ (con coeficientes de Fourier dados por las formulas de Euler) es convergente. Su suma es $f(x)$, salvo en uun punto $x_0$ en el que $f(x)$ es discontinua y la suma de la serie es el promedio de los limites por la izquierda y la derecha de $f(x)$ en $x_0$.

== 1.3 Series de Fourier para funciones de periodo $2L$

#underline[*Serie de Fourier para función de periodo 2L*]: #rect($ f(x) = a_0 + sum_(n+1)^oo (a_n cos (n pi)/L x + b_n sin (n pi)/L x ) $)

#underline[*Coeficientes de Fourier para función de periodo 2L*]: 
#rect(
$
a_0 &= 1/L integral_(-L)^L f(x) d x \
a_n &= 1/L integral_(-L)^L f(x) cos (n pi)/L x d x \
b_n &= 1/L integral_(-L)^L f(x) sin (n pi)/L x d x
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
Es necesario a veces usar series de Fourier con funciones $f(x)$ que solo están dadas en un intervalo (por ejemplo $0<=x<=L$)