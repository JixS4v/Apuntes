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
  