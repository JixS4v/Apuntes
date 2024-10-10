#align(center, text(25pt)[*Mecánica Analítica*])
= 1. Mecánica Newtoniana
== Dinámica Newtoniana
#underline[*Leyes de Newton*]
+ Si no actúa una fuerza neta sobre un cuerpo, este permanece en su estado inicial de reposo o de movimiento rectilíneo uniforme.
+ La relación que existe entre la fuerza neta que se aplica a un cuerpo y la
aceleración que este adquiere es un coeficiente característico del cuerpo, que
recibe el nombre de masa inerte. $arrow(F) = m arrow(a)$
+ Si un cuerpo ejerce uuna fuerza sobre otro, este responde con una fuerza sobre el primero de igual módulo y dirección, pero de sentido contrario.

#underline[*Momento Lineal*]:
El momento lineal de una partícula es el producto de su masa por su velocidad. $arrow(p) = m arrow(v)$. El momento lineal de un sistema de puntos materiales es la suma del momento lineal de todos sus puntos.

La unidad del S.I. del momento lineal es el kg m/s.

#underline[*Segunda ley de newton aplicada al momento lineal*]:
La resultante de las fuerzas externas que actúan sobre un sistema de partículas es igual a la variación temporal del momento lineal del sistema. $arrow(F) = (dif arrow(p))/(dif t)$
Si la resultante de las fuerzas externas que actúan sobre un sistema de partículas es nula, el momento lineal del sistema se conserva.

#underline[*Momento angular*]:
El momento angular de una partícula es el producto de su momento lineal por su posición respecto a un punto. $arrow(L) = arrow(r) times arrow(p)$. El momento angular de un sistema de partículas es la suma de los momentos angulares de todas sus partículas.

La unidad del S.I. del momento angular es el kg m^2/s.

#underline[*Momento de una fuerza*]:
El momento de una fuerza respecto a un punto es el producto vectorial del vector posición respecto al punto por la fuerza. $arrow(M) = arrow(r) times arrow(F)$
También se puede expresar como $arrow(M) = (dif arrow(L))/(dif t)$
Entonces, si $arrow(M_a) = 0 => arrow(L_a) = "cte."$

#underline[*Trabajo*]:
_"Contribución de una fuerza al desplazamiento"_

El trabajo de una fuerza $arrow(F)$ a lo largo de un camino entre dos puntos A y B es la integral curvilínea de la fuerza a lo largo del camino entre los dos puntos $ W = integral_(A B) arrow(F) dot dif arrow(r) $

La unidad del S.I. del trabajo es el julio (J), que es el trabajo realizado por una fuerza de $1N$ que actúa sobre un cuerpo a lo largo de un metro.

#underline[*Energía*]
_"Capacidad de un sistema para efectuar un trabajo"_

Su valor es del trabajo que puede realizarse.

#underline[*Energía cinética*]: #[
  - Es la energía que un sistema de puntos materiales tiene por el hecho de estar en movimiento.
  - Por lo tanto, es igual al trabajo que se ha debido realizar sobre el sistema para, partiendo del reposo, llevarlo a su estado actual de movimiento.
  - Matemáticamente: $ W = integral_(A B) m v dif v = [(m v^2)/2]_A^B = 1/2 m v^2_B - underbracket(1/2 m v^2_A,"0") = 1/2 m v^2_B$
]

#underline[*Fuerzas conservativas y no conservativas*]:
Un campo vectorial es conservativo si su integral curvilinea entre dos puntos cualesquiera es independiente del camino.

Aplicado a las fuerzas:
- Fuerzas conservativas: Son aquellas que realizan un trabajo independiente del camino seguido.
- Fuerzas no conservativas: Existe al menos un par de caminos con igual origen y destino para los que el trabajo que realiza es diferente.

#underline[*Propiedades de las fuerzas conservativas*]:
- Una fuerza es conservativa si y solo si su trabajo a lo largo de cualquier camino cerrado es nulo.
- Una fuerza es conservativa si y solo si existe una función U tal que $arrow(F) = - arrow(nabla) V$
- El trabajo de una fuerza conservativa se podrá escribir como: $ W = V_A - V_B $

#underline[*Energía potencial*]:
- Una fuerza conservativa $arrow(F)$ si y solo si es conservativa tiene asociada una energía potencial $E_p$ tal que $arrow(F) = - arrow(nabla)E_p$.
- El trabajo de una fuerza conservativa entre dos puntos es igual a la pérdida de su energía potencial: $W = - Delta E_p$

#underline[*Centro de masas*]:
El centro de masas de un sistema de partículas es el punto que se comporta como si toda la masa del sistema estuviera concentrada en él. Se puede calcular como: $arrow(R) = (1/M) sum_(i=1)^N m_i arrow(r_i)$

== Ligaduras
#underline[*Ligadura*]: Restricción del movimiento de una partícula.
Tipos de ligadura:
- Ligaduras holónomas: Reducen el grado de libertad
- Ligaduras no holónomas: No son holónomas.
- Ligaduras esclerónomas: Sin dependencia temporal
- Ligaduras reonómicas: Con dependencia temporal

#underline[*Grados de libertad*]: 
Un sistema compuesto de $N$ partículas libre de ligaduras holónomas tiene $3N$ coordenadas independientes (o grados de libertad). Si hay ligaduras holónomas, expresadas en $k$ ecuaciones, nos quedamos con $3N-k$ coordenadas independientes, y podemos decir que el sistema tiene $3N-k$ grados de libertad.

#underline[*Coordenadas generalizadas*]:
Son las coordenadas que describen el sistema, y no tienen por qué ser las coordenadas cartesianas. Se pueden obtener a partir de las coordenadas cartesianas. Podemos escribir las coordenadas cartesianas en función de las coordenadas generalizadas como $r_i = r_i(q_1, q_2, ..., q_n, t)$, con las ligaduras implícitamente contenidas en las expresiones de estas.

#underline[*Espacio de configuraciones*]: 
Definimos el espacio de configuraciones como todas las posiciones instantáneas posibles de un sistema. El espacio de configuraciones ampliado es el espacio de configuraciones más las velocidades posibles. Podemos entonces definir el espacio de configuraciones como todas los valores que pueden tomar las coordenadas generalizadas y sus derivadas.

#underline[*Desplazamientos virtuales*]:
Un desplazamiento virtual es un desplazamiento infinitesimal que no viola las ligaduras del sistema, realizado en un instante dado. Se puede escribir como $delta q_i$. El tiempo en este caso permanece fijado.

#underline[*Principio de D'Alembert*]:
