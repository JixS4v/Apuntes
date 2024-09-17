#align(center, text(25pt)[*Metodos Matemáticos II*])
= 1. Series de Fourier
== 1.1 Propiedades de las funciones periodicas
1. $f(x+p)=f(x) => sin(x+2pi)=sin(x)$
2. $f(a x)$ también es una función periodica: $cos(a x), p? => p = (2pi)/a$
3. Si $f(x)$ y $ g(x)$ son periodicas, $h(x)= a f(x) + b g(x)$ también lo es, y tendrá el mismo periodo que las funciones que la componen.
De todos los periodos $p$, el más pequeño es denominado periodo _primitivo_

== 1.2 Series de Fourier para funciones de periodo $2pi$

Podemos representar funciones periodicas de periodo $2pi$ con una *Serie de Fourier*, de forma que:
$ f(x) = a_0 sum_(n=1)^oo a_n cos n x + b_n sin n x $
Donde $a_0$, $a_n$, y $b_n$ son denominados _Coeficientes de Fourier_

#underline[*Formulas de Euler*]

Las formulas de Euler nos permiten calcular los coeficientes de Fourier: 
$ a_0 =1/(2pi) integral^pi_(-pi) f(x) d x $
$ a_n = 1/pi integral_(-pi)^pi f(x) cos (n x) d x $
$ b_n = 1/pi integral_(-pi)^pi f(x) sin (n x) d x $

Derivemos estas formulas:

Primero, debemos definir un producto interior para las funciones de periodo 2pi. Elegimos $<f,g> = integral_(-pi)^pi f(x)g(x) d x$. Esto significa, que si $<f,g> =0$, las funciones $f(x)$ y $g(x)$ son ortogonales. 

#underline[*Teorema*: Ortogonalidad del seno, coseno y derivados.]

Las funciones $sin x$, $cos x$ y derivados ($sin (n x), cos (m x), n,m in N$) son ortogonales entre sí en un intervalo de longitud $2pi$: 
 $ integral_(-pi)^pi cos n x cos m x d x = 0, (n!=m) $
 $ integral_(-pi)^pi sin n x sin m x d x = 0, (n!=m) $
 $ integral_(-pi)^pi sin n x cos m x d x = 0, ("no importa el valor de n o m") $ 

Apliquemos el teorema anterior al calculo de los coeficientes de Fourier:
$ f(x) = a_0 + sum_(n=1)^oo (a_n cos n x + b_n sin n x) $
Integramos de los dos lados entre $-pi$ y $pi$
$ integral_(-pi)^pi f(x) d x = integral_(-pi)^pi (a_0 + sum^oo_(n=1)(a_n cos n x + b_n sin n x)) d x $
Asumimos que podemos integrar termino a termino
$ integral _(-pi)^pi f(x) d x = a_0 integral ^pi _(-pi) + sum ^oo _(n=1)(a_n integral_(-pi)^pi cos n x d x + b_n integral_(-pi)^pi sin n x d x)$

