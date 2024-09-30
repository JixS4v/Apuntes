#align(center, text(25pt)[*Señales Sistemas y Circuitos*])

= 1. Circuitos de Corriente Continua

== Magnitudes de interés
- Diferencia de potencial entre A y B ($V_(A B)$) $[V]$
- Intensidad de corriente $(I)$ $[A]$
- Resistencia $(R)$ $[Omega]$
- Capacidad $(C)$ $[F]$
- Coeficiente de autoinducción $(L)$ $[H]$
- Fuerza electrostática $F = (q_1 q_2)/(4 pi epsilon_0 r^2) $ $[N]$
- Campo electrostático $E=F/(q_2)$ $[N/C]$. $-> nabla times arrow(E) = 0, arrow(E)=-nabla Phi$

== Ley de Ohm
Asumiendo que I va de A a B: $V_(A B) = I dot R$

== Leyes de Kirchoff
=== Ley de Kirchoff de las corrientes
En cualquier nodo de un circuito, $sum^n I_n = 0$
=== Ley de Kirchoff de las tensiones
La suma de tensiones en cualquier circuito cerrado es cero

Apoyandonos en la Ley de Ohm y las leyes de Kirchoff, podemos plantear un sistema de ecuaciones que tienen como solución las intensidades diferentes circulando por las diferentes mallas.

== Fuentes de tensión y corriente reales

Podemos calcular el rendimiento de un generador de tensión con la siguiente formula : $ eta_("generador \n tensión")^((%))=(P_("útil"))/(P_("total"))=(E dot I - R_S dot I^2)/(E dot I) dot 100 $

Para un generador de corriente, la formula del rendimiento es: $ eta_"generador \n tensión"^((%))=(P_"útil")/(P_"total")=(V dot I_0 - (V^2)/(R_S))/(V dot I_0) $

== Máxima transferencia de potencia
$ I(R_L+R_S) = E $
$ I = E/(R_L + R_S) $
$ P_(R_L)= R_L dot I^2 = R_L (E^2)/((R_L+R_S)^2) = E^2(R_L)/(R_L+R_S)^2 =(E^2)/(4 R_S) (4 R_L R_S)/(R_L+R_S)^2 $ 

== Método de las mallas









= 2. Transitorios\
== 2.1. Carga de una bobina
$ v(t) = L (dif i(t))/(dif t) $

Durante la carga de la bobina: $ i(t) dot R + L (dif i)/(dif t) = V_0 $
Condición inicial: $i(t = 0) = 0$

Resolvemos la ecuación diferencial:
$ i(t) = V_0/R (1-e^(-R/L t)) $

Durante la descarga de la bobina: $ i(t) R + L (dif i(t))/(dif t) = 0 $
Condición inicial: $i(t=0) = V_0$

Resolvemos la ecuación diferencial: 
$ i(t) = V_0/R e^(-R/L t) $

Cuando $t->oo$: Podemos sustituir una bobina con un cortocircuito.
== 2.2. Carga de un condensador
$ C (dif v)/(dif t) = i(t) <=> C V = Q $

Lo planteamos como una ecuación difenrencial: 
$ i(t) R + 1/C integral i(t) dif t $
Hacemos un cambio de variable
$ i(t) = (dif q(t))/(dif t) $
La ecuación diferencial resultante es:
$ R (dif q(t))/(dif t) + q(t)/C = V_0 $
Asumimos que estamos estudiando el proceso de carga del condensador, por lo que la condición inicial es: $q(t=0) = 0$

Solución particular: $ q_p (t) = V_0 dot C$

$q_h (t)$ ecuación homogenea $q' R + q 1/C = 0$
$
q_h (t) = e^(lambda t)
=> lambda R e^(lambda t) + 1/C e^(lambda t) = 0
=> (lambda R + 1/C) e^(lambda t) = 0
=> lambda R + 1/C = 0
=> lambda = -1/(R C)
=> q_h (t) = e^(-t/(R C))
$
Obtenemos la solución general:
$ q(t) = V_0 C + A e^(-t/(R C)) $ 
Aplicamos la condición inicial:
$ q(t=0) = 0 = V_0 C + A => A = -V_0 C $
$ q(t) = V_0 C (1 - e^(-t/(R C))) $
Derivamos para obtener $i(t)$:
$ i(t) = (dif q(t))/(dif t) = V_0 /R e^(-t/(R C)) $
Cuando $t->oo$: Podemos sustituir un condensador con un circuito abierto.

== Carga de un circuito RLC
$
q(t) &= A^* e^(lambda_+ t) + B^* e^(lambda_- t) \
lambda_(+-) &= (-R +-sqrt(R^2 - (4L)/C))/(2L) \
mat(1,1;lambda_+, lambda-)vec(A*,B*)
&=
vec(-C V_"max", 0)
$

Obtenemos $i(t) = (dif q)/(dif t) = A^* lambda_+ e^(lambda_+ t) + B^* lambda_- e^(lambda_- t)$

= 3. Señales
#underline[*Señal*]:  Magnitud física que depende de otra (típicamente del tiempo)
- Por ejemplo: #[
  - $v(t)$, $i(t)$ (unidimensional)
  - $T(x,y)$ (bidimensional)
]

== 3.1 Señales periódicas
$ exists T: x(t+T) = x(t) forall x in RR,  t in RR $
El periodo fundamental es el valor mínimo de $T>0$ que hace que se cumpla la ecuación anterior.

$x(t)$, $y(t)$ periódicas de periodos $T_x,T_y$ $<=>$ $x(t) + y(t)$ periódica y de periodo $T_x + T_y in QQ$

== 3.2 Energía y potencia de Señales
$
x(t) &-> E = integral_(-oo)^oo |x(t)|^2 dif t \
x(t) &-> P = lim_(T->+oo) 1/(2 T) integral_(-T)^T |x(t)|^2 dif t 
$
