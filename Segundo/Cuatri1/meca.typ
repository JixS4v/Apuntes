#import "config.typ": *

#align(center, text(25pt)[*Mecánica Analítica*])


#show: doc => template(doc)

= Mecánica Newtoniana
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
= Formulación Lagrangiana
== Prerequisitos
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

== Principio de D'Alembert
Podemos positar que en un sistema en equilibrio donde $F_i=0$, $F_i dot delta r_i$, el trabajo virtual, también será 0. Entonces, la suma de todos estos productos también se anulará: $ sum_i F_i dot delta r_i = 0 $
Descomponemos $F_i$ en dos partes, la fuerza aplicada $F_i^((a))$ y la fuerza de ligadura $f_i$: $ F_i = F_i^((a)) + f_i $
Entonces, $ sum_i F_i^((a)) dot delta r_i + sum_i f_i dot delta r_i = 0 $
Ahora vamos a restringirnos a sistemas para los que el trabajo virtual neto de las fuerzas de ligadura es nulo. Obtenemos entonces que la condición de equilibrio de un sistema es que el trabajo virtual de las fuerzas aplicadas sea nulo: $ sum_i F_i^((a)) dot delta r_i = 0 $
Esta ecuación se denomina comúnmente como el principio del trabajo virtual. Es importante notar que los coeficientes de $delta r_i$ ya no pueden ser nulos, en general $F_i^((a)) != 0$ ya que $delta r_i$ ya no son completamente independientes pero están conectados por las ligaduras. Entonces, para poder igualar los coeficientes a cero debemos transformar el principio en una forma que utiliza los desplazamientos virtuales de las coordenadas generalizadas, que sí son independientes. 

Partiendo de la Segunda Ley de Newton:
$ F_i = dot(p)_i $
$ => F_i - dot(p)_i = 0 $
Que entonces dice que las particulas en el sistema estarán en euilibrio bajo una fuerza igual a la fuerza actual menos una "fuerza efectiva invertida", $-dot(p)_i$. 

Enonces, podemos escrbir: $ sum_i (F_i - dot(p)_i) dot delta r_i = 0 $
Aplicando las mismas restricciones que anteriormente: 
$ sum_i (F_i^((a))-p_i) dot delta r_i = 0 $

Esto es el Principio de D'Alembert.

== Derivación de las ecuaciones de Lagrange

Hemos conseguido nuestro objetivo en que las fuerzas de ligadura ya no aparecen, y se puede omitir el superíndice $(a)$. Aún no está en una forma que nos permita desarollar ecuaciones de movimiento para el sistema. Debemos transfomar el principio en una expresión de desplazamientos virtuales de las coordenadas generalizadas, que son independientes entre sí (para ligaduras holónomas), para que los coeficientes de las $delta q_i$ puedan ser nulos.
Empezamos por las ecuaciones de transformación: 
$ r_i = r_i (q_1, q_2, ..., q_n, t) $ (asumiendo $n$ coordenadas independientes). 
Ahora utilizaremos la regla de la cadena para derizar con respecto al tiempo, con lo que $ v_i = (dif r_i)/(dif t) = sum_k (diff r_i)/(diff q_k)dot(q)_k + (diff r_i)/(diff t) $
Similarmente, el desplazamiento irtual $delta r_i$ puede conectarse con los desplazamientos virtuales $delta q_i$ por 
$ delta r_i = sum_j (diff r_i)/(diff q_j) delta q_j $

En terminos de coordenadas generalizadas, el trabajo virtual de la $F_i$ se convierte en $ sum_i F_i dot delta r_i = sum_(i,j) F_i (diff r_i)/(diff q_j) delta q_j = sum_j Q_j delta q_j $
Donde $Q_j$ son los componentes de la fuerza generalizada, definida como $ Q_j = sum_i F_i dot (diff r_i)/(diff q_j) $
Es importante notar que como las coordenadas generalizadas no tienen que tener necesariamente las dimensiones de longitud, las fuerzas generalizadas no tendrán necesariamente las dimensiones de fuerza, pero $Q_j delta q_j$ sí tendrá las dimensiones de trabajo. Por ejemplo, $Q_j$ será un torque $N_j$ y $dif q_j$ un ángulo diferencial $dif theta_j$, que hace a $N_J dif theta_j$ un diferencial de trabajo.

Ahora vamos al otro término del principio de D'Alembert, que se puede escribir como $ sum_i dot(p)_i delta r_i = sum_i m_i dot.double(r)_i dot delta r_i $
Expresando $delta r_i$ en terminos de coordenadas generalizadas, esto se convierte en $ sum_(i,j) m_i dot.double(r)_i dot (diff r_i)/(diff q_j) delta q_j $
Partiendo de esta relación (regla del producto):
$ sum_(i,j) dif/(dif t) (m_i dot(r)_i dot (diff r_i)/(diff q_j))  = sum_(i,j) [m_i dot.double(r)_i (diff r_i)/(diff q_j)+m_i dot(r_i)dot dif/(dif t) (diff r_i)/(diff q_j)] $
Podemos escribir que:
$ sum_(i,j) m_i dot.double(r)_i (diff r_i)/(diff q_j) = sum_(i,j) [dif/(dif t) (m_i dot(r)_i dot (diff r_i)/(diff q_j))  -m_i dot(r_i)dot dif/(dif t) (diff r_i)/(diff q_j)] $
Desarrollando partes de la ecuación anterior:
$ dif/(dif t) ((diff r_i)/(diff q_j)) = (diff dot(r)_i)/(diff q_j) = sum_k (diff^2 r_i)/(diff q_j diff q_k) dot(q)_k + (diff^2 r_i)/(diff q_j diff t) = (diff v_i)/(diff q_j) $

También sabemos que $ (diff v_i)/(diff dot(q)_j) = (diff r_i)/(diff q_j) $

Sustituyendo estos cambios: 
$ sum_i m_i dot.double(r)_i dot (diff r_i)/(diff q_j) = sum_i [ dif/(dif t) (m_i v_i dot (dif v_i)/(diff dot(q)_j)-m_i v_i dot (diff v_i)/(diff q_j)] $
El segundo término de la izquierda de la ecuación puede ser expandido 
$ sum_j {dif/(dif t) [diff/(diff dot(q)_j)(sum_i 1/2 m_i v_i^2)]-diff/(diff q_j)(sum_i 1/2 m_i v_i^2)- Q_j}delta q_j $
Vemos que aparece la energía cinética del sistema $T$. El principio de D'Alembert se convierte en
$ sum_j {[dif/(diff t) ((diff T)/(diff dot(q)_j)-(diff t)/(diff q_j))]-Q_j}delta q_j = 0 $

Por ahora, no hemos realizado ninguna restricción sobre la naturaleza de las ligaduras excepto que deben no realizar trabajo en un desplazamiento virtual. Las variables $q_j$ pueden ser cualquier conjunto de coordenadas utilizadas para describir el movimiento del sistema. Si, además, las ligaduras son holónomas, podemos encontrar conjuntos de coordenadas independientes $q_j$ que contienen las condiciones de ligadura implicitamente en las ecuaciones de transformación. Cualquier desplazamiento virtual $delta q_j$ es independiente de $delta q_k$, ppor lo que la única forma para que la ecuación sea válida es que los coeficientes de $delta q_j$ desapaarezcan: $ dif/(dif t) ((diff T)/(diff dot(q)_j))-(diff T)/(diff q_j) = Q_j$. Hay $n$ ecuaciones. 

Cuando las fuerzas deriven de un potencial escalar $V$: $ F_i = -nabla_i V $
Entonces, las fuerzas generalizadas se pueden escribir como $ Q_j = sum_i F_i dot (diff r_i)/(diff q_j) = - sum_i nabla_i V dot (diff r_i)/(diff q_j) $
Esto es realmente la expresión de la derivada parcial de una función escalar $-V(r_1,r_2,...,r_N, t)$ con respecto a $q_j$:
$ Q_j = - (diff V)/(diff q_j) $
Por lo que las ecuaciones anteriores se pueden escribir como: 
$dif/(dif t)((diff T)/(diff dot(q)_j)) - (diff(T-V))/(diff q_j)=0$
Estas ecuaciones de movimiento no están necesariamente restringidas a sistemas conservativos, el sistema es conservativo solo si $V$ no es una función explicita del tiempo. Como definido anteriormente, el potencial $V$ no depende de las velocidades generalizadas, por lo que podemos añadir V a la derivada parcial con respecto $dot(q)_j$: $ dif/(dif t) ((diff(T-V))/(diff dot(q)_j))-(diff(T-V))/(diff q_j) = 0 $
Definimos el *Lagrangiano* $L$ como
$ L=T-V $
Las ecuaciones de movimiento entonces se transforman en $ dif/(dif t) ((diff L)/(diff dot(q)_j))-(diff L)/(diff q_j) = 0$
Estas ecuaciones son las ecuaciones de Lagrange.

Es importante notar que para un conjunto particular de ecuaciones de movimiento no hay una elección única de Lagrangiano para el que las ecuaciones de Lagrange lleven a las ecuaciones de movimiento en las coordenadas generalizadas dadas. Es por esto que si $L(q, dot(q), t)$ es un lagrangiano aproximado y $F(q,t)$ es cualquier función diferenciable de las coordenadas generalizadas y el tiempo, entonces
$ L'(q,dot(q), t) = L(q, dot(q), t) + (dif F)/(dif t) $
es un Lagrangiano resultando en las mismas ecuaciones de movimiento. Aunque el Lagrangiano definido en función del potencial y la energía cinética es siempre apropiado para un sistema conservativo, no es el único Lagrangiano apropiado para el sistema dado.

== Potencial generalizado
Las ecuaciones de Lagrange se pueden escribir en función del Lagrangiano aunque no haya una función potencial $V$ mientras que las fuerzas generalizadas sean obtenidas por una función $U(q_j, dot(q)_j)$ por la fórmula
$ Q_j = - (diff U)/(diff q_j) + dif/(diff t)((diff U)/(diff dot(q)_j)) $
En tal caso, las ecuaciones de Lagrange siguen siendo válidas con el Lagrangiano dado por
$ L = T-U $
Aquí podemos decir que $U$ es un "potencial generalizado".

Este potencial nos permite trabajar con fuerzas disipativas.

Consideremos el ejemplo de una carga eléctrica $q$ de masa $m$ moviéndose a una velocidad $arrow(v)$, en una región libre de carga conteniendo un campo eléctrico $arrow(E)$ y un campo magnético $arrow(B)$, que dependen del tiempo y la posición. La carga experimenta una fuerza, llamada fuerza de Lorentz, dada por $arrow(F) = q [ arrow(E) + (arrow(V) times arrow(B))] $. Ambos $arrow(E)(x, y, z, t)$ y $ arrow(B)(x,y,z,t)$ son funciones continuas del tiempo y la posición derivables de un potencial escalar $phi(x,y,z,t)$ y un potencial vectorial $arrow(A)(x,y,z,t)$. De forma que $ E = -nabla phi - (diff A)/(diff t) $ y $ B = nabla times A $
La fuerza sobre la carga se puede derivar del potencial generalizado $ U = q phi - q arrow(A) dot arrow(V) $
por lo que el Lagrangiano, $L = T-U$, es 
$ L = 1/2 m v^2 - q phi + q vec(A) dot vec(v) $
Considerando únicamente la componente $x$ de las euaciones de Lagrange, obtenemos 
$
m dot.double(x) = q (v_x (diff A_x)/(diff x) + v_y (diff A_y)/(diff x) + v_z (diff A_z)/(diff x))-q((diff phi)/(diff x) + (dif A_x)/(dif t)))
$

La derivada total en función del tiempo de $A_x$ se relaciona a su derivada parcial en función del tiempo por $ (dif A_x)/(dif t) = (diff A_x)/(diff t) + arrow(v) dot nabla A_x = (diff A_x)/(diff t) + v_x (diff A_x)/(diff x) + v_y (diff A_x)/(diff y) + v_z (diff A-x)/(diff z) $
Por lo que 
$
m dot.double(x) &= q (v_x (diff A_x)/(diff x) + v_y (diff A_y)/(diff x) + v_z (diff A_z)/(diff x) - (diff phi)/(diff x) - (diff A_x)/(diff t) - v_x (diff A_x)/(diff x) - v_y (diff A_x)/(diff y) - v_z (diff A_x)/(diff z)) \
&= q (v_y (diff A_y)/(diff x) - (diff A_x)/(diff y) + v_z (diff A_z)/(diff x) - (diff A_x)/(diff z))
$
Sabemos que $ arrow(E) = -nabla phi - (diff arrow(A))/(diff t) $
Por lo que $ E_x = -(diff phi)/(diff x) - (diff A_x)/(diff t) $
Calculamos $ (arrow(v) times arrow(B))_x = v_y((diff A_y)/(diff x) - (diff A_x)/(diff y)) + v_z((diff A_z)/(diff x) - (diff A_x)/(diff z)) $
Sustituyendo $E_x$ y $(arrow(V) times arrow(B))_x$ estas expresiones, obtenemos la ecuación de movimiento en la dirección $x$:
$ m dot.double(x)=q[E_x+(arrow(v)times arrow(B))_x] $
Vemos que esta es idéntica a la expresión de la fuerza de Lorentz, mostrando que podemos obtenerla a través de las ecuaciones de Lagrange.

== Función de disipación
Si hay fuerzas no conservativas que actuan sobre el sistema, las ecuaciones de Lagrange se pueden escribir de forma $ dif/(dif t) ((diff L)/(diff dot(q)_j)) - (diff L)/(diff q_j))= Q_j $
Donde $L$ contiene el potencial de las fuerzas conservadoras como anteriormente, y $Q_j$ representa las fuerzas que no derivan de un potencial. Esta situación ocurre cuando hay fuerzas friccionales presentes. Ocurre frecuentemente cuando la fuerza de fricción es proporcional a la velocidad de la partícula, tal que su componente $x$ tiene como forma $ F_(f x) = - k_x v_x $ 
Fuerzas de fricción de este tipo se pueden derivar en terminos de la función $ cal(F)=1/2 sum_i (k_x v_(i x)^2 + k_y v_(i y)^2 + k_z v_(i z)^2) $
Donde la suma es sobre las partículas del sistema. De esta definición queda claro que $ F_(f_x_i)=-(diff F)/(diff v_x_i) $
O, simbolicamente
$ F_f = - nabla_v cal(F) $
Le podemos dar también una interpretación física. El trabajo realizado por el sistema contra la fricción es $dif W_f = -arrow(F)_f dot dif arrow(r) = - arrow(F)_f dot arrow(v) dif t = (k_x v_x^2 + k_y v_y^2 + k_z v_z^2)dif t $
Por lo tanto, $2 cal(F)$ es la tasa de disipación de energía por la fricción. La componente de la fuerza generalizada resultando de la fricción es $ Q_j = sum_i arrow(F)_f_i dot (diff arrow(r)_i)/(diff q_j) &= - sum_i nabla_v cal(F) dot (diff arrow(r)_i)/(diff q_j) \ &= - sum nabla_v cal(F) dot (diff dot(arrow(r))_i)/(diff dot(q)_j) \ &=-(diff cal(F))/(diff dot(q)_j) $
Por lo que las ecuaciones de Lagrange se escriben como $ dif/(dif t) ((diff L)/(diff dot(q)_j))- (diff L)/(diff q_j) + (diff cal(F))/(diff dot(q)_j) = 0$

== Principio de Hamilton
Hemos conseguido obtener las ecuaciones de Lagrange a partir de un estado instantaneo del sistema y desplazamientos virtuales pequeños sobre este estado. Es decir, a partir de un principio diferencial, como el de D'Alembert. Ahora vamos a obtener las ecuaciones de Lagrange a partir de un principio que considera el movimiento completo del sistema entre dos tiempos $t_1$ y $t_2$. Un principio de esta clase se conoce como un principio integral.

=== Acción
Antes de presentar este principio, el significado de un movimiento del sistema entre $t_1$ y $t_2$ debe de ser enunciado en un lenguaje más preciso. Lo que estamos describiendo en este caso es el camino que toma el sistema en el _espacio de configuraciones_. El tiempo se puede considerar como un parámetro de la curva, a cada punto del camino hay uno o mas valores temporales asociados. Es importante notar que el camino del sistema dentro de este espacio no está necesariamente ligado a un camino en el espacio físico, sino que describe una configuración en un instante dado. Definimos entonces la acción $S$ como la integral de la función Lagrangiana entre los tiempos $t_1$ y $t_2$. $ S = integral_(t_1)^(t_2) L dif t $ 

=== Principio de Hamilton
El principio de Hamilton enuncia que la acción (definida anteriormente) toma un valor _estacionario_. Es decir, que el Lagrangiano es la función que minimiza la acción. Podemos decir entonces que la variación de la acción es nula $delta S = 0$.

=== Derivación de las ecuaciones de Lagrange 
Partamos de la integral de acción:
$ S = integral_(t_1)^(t_2) L(q_1(t),q_2(t),...,dot(q_1)(t), dot(q_2)(t), ..., t) dif t $ 
Vamos a obtener su variación considerando $S$ una función de un parámetro $alpha$ que distingue un posible conjunto de caminos entre $t_1$ y $t_2$ $q_n(t, alpha)$. Entonces, podemos introducir $alpha$ como
$ 
q_n(t,alpha) = q_n(t, 0) + alpha eta_n(t) 
$
Donde $q_n(t,0)$ son las soluciones del problema de los extremos que estamos intentando resolver, y $eta_n$ funciones independientes cualquiera de $t$ que se anulan en $t_1, t_2$ y son continuas hasta su segunda derivada. Entonces, la variación de $S$ puede ser expresada como
$ (dif S)/(dif alpha) = integral_(t_1)^(t_2) sum_i (diff L)/(diff q_i) (diff q_i)/(diff alpha) + (diff L)/(diff dot(q)_i) (diff dot(q)_i)/(diff alpha) dif t $
Consideramos la segunda parte de la suma en la integral:
$ integral_(t_1)^(t_2) (diff L)/(diff dot(q)_i) (diff dot(q_i))/(diff alpha) dif t $
Integrando por partes:
$  integral_(t_1)^(t_2) (diff L)/(diff dot(q)_i) (diff^2 q_i)/(diff alpha diff t) dif t = (diff L)/(diff dot(q)_i) (diff q_i)/(diff alpha) |_(t_1)^(t_2) - integral_(t_1)^(t_2) (diff q_i)/(diff alpha) dif/(dif x) ((diff L)/(diff dot(q)_i)) dif t $
Vemos que el primer término desaparece porque la función $eta_n$ se anula en $t_1$ y $t_2$. Entonces, la variación de la acción se puede escribir como
$ delta S = integral_(t_1)^(t_2) sum_i ((diff L)/(diff q_i) - dif/dif(t) ((diff L)/(diff dot(q)_i))) (diff q_i)/(diff alpha) dif t $
Sustituyendo la variación de $q_i$ $delta q_i = (diff q_i)/(diff alpha) |_(alpha = 0)$
$ delta S = integral_(t_1)^(t_2) sum_i ((diff L)/(diff q_i) - dif/dif(t) ((diff L)/(diff dot(q)_i))) delta q_i dif t $
Sabiendo que según el principio de Hamilton, $delta S$ es nulo, y que la variación de $q_i$ es arbitraria, nos queda que la primera porción de la integral anterior debe ser nulo. Por lo que obtenemos las ecuaciones de Lagrange:
$ (diff L)/(diff q_i) - dif/dif(t) ((diff L)/(diff dot(q)_i)) = 0  "para " i "coordenadas generalizadas" $

=== Sistemas con ligaduras holónomas
Hemos aprendido a resolver problemas con ligaduras holónomas eligiendo coordenadas para que las ecuaciones de ligadura se conviertan en ecuaciones triviales $0=0$. Vamos a extender el Principio de Hamilton para poder resolver problemas que involucran ligaduras utilizando los multiplicadores de Lagrange.

Cuando derivamos las ecuaciones de Lagrange, las ligaduras holónomas aparecen en el último paso cuando las variaciones en las coordenadas generalizadas ya eran consideradas independientes entre sí. Sin embargo, las variaciones de los desplazamientos virtuales de estas no tienen que conformar con las ligaduras. Si hay $n$ variables y $m$ ecuaciones de ligadura $f_alpha$ de forma $f(q_1, ..., q_n, t) = 0$ los desplazamientos virtuales adicionales se pueden eliminar por el método de los multiplicadores indeterminados de Lagrange.

Modificamos la integral de acción para incluir los multiplicadores de Lagrange:
$ S = integral_1^2 (L + sum_(alpha=1)^(m) lambda_alpha f_alpha) dif t $
Y dejamos que $q_alpha$ y $lambda_alpha$ varíen independientemente para obtener $n+m$ ecuaciones. Las variaciones de los $lambda_alpha$ dan las $m$ ecuaciones de ligadura. Las variaciones de las $q_i$ dan: $ delta S = integral_1^2 dif t (sum_(i=1)^(n) (d/(dif t) dvp(L,dot(q)_i)) - dvp(L,q_i) + sum_(alpha=1)^(m) lambda_alpha dvp(f_alpha,q_i)delta q_i) = 0 $
Sin embargo, las variaciones de los desplazamientos virtuales $delta q_i$ no son independientes. Elegimos $lambda_alpha$ para que las $m$ de las ecuaciones sean staisfechas para $delta q_i$ arbitrarios, y luego elegimos las variaciones de los $delta q_i$ para que las $n-m$ ecuaciones restantes sean satisfechas. Obtenemos entonces $m$ ecuaciones de la forma $ d/(dif t) dvp(L,dot(q)_k) - dvp(L,q_k) + sum_(alpha=1)^(m) lambda_a dvp(f_alpha,q_k) = 0 $
para $k = 1, ..., m $. La igualdadp proviene de la elección de los $lambda_alpha$. También tenemos las mismas expresiónes que esta ecuación para $k = m + 1, ..., n $ donde la igualdad sale de las variaciones virtuales de los $delta q_i$. Esto resuelve el sistema con el coste de introducir las $m$ funciones $lambda_alpha$.. Podemos entender esto considerando que as ecuaciones para $k = 1, ..., n$ se pueden expresar como $ d/(dif t) dvp(L,dot(q)_k) - dvp(L,q_k) = - sum_(alpha = 1)^(m) lambda_alpha dvp(f_alpha,q_k) = Q_k $
donde $Q_k$ son las fuerzas generalizadas. Las funciones, $Q_k$ tienen las magnitudes de las fuerzas necesarias para producir las ligaduras individuales. Sin embargo, como la eleccción de '+' en el tercer térmimno de las ecuaciones de Lagrange modificadas es arbitraria, solo podemos determinar matemáticamente el valor absoluto de la fuerza, no su dirección. Esto implica que es necesario entender el significado físico de estas fuerzas para poder determinar sus direcciones.

== Teoremas de conservación y simetrías
Resolver las ecuaciones de movimiento no es siempre posible, sin embargo, podemos extraer mucha información sobre la naturaleza física del movimiento del sistema. En muchos problemas, un gran número de primeras integrales de las ecuaciones de movimiento es imediatamente obtenible, y estas toman la forma $ f(q_1, ..., q_n, dot(q)_1, ..., q_n, t) = "constante" $ siendo ecuaciones diferenciales de orden 1. Estas primeras integrales son de interés porque nos dicen cosas sobre el sistema físico. Inccluyen, por ejemplo, las leyes de conservación. 

Consideremos por ejemplo un sistema de puntos de masa bajo la influencia de fuerzas que derivan de potenciales dependientes solo de la posición: $ dvp(L,dot(x)_i) equiv dvp(T,dot(x)_i) - dvp(V,dot(x)_i) = dvp(T,dot(x)_i) = diff/(diff dot(x_i)) sum 1/2 m_i(dot(x)^2_i + dot(y)^2_i + dot(z)^2_i ) = m_i dot(x)_i = p_(i x) $ 
Que es la componente $x$ del momento linea asociado con la $i$esima particula. Este resultado sugiere una extensión obvia del concepto de momento. El momento generalizado asociado con la coordenada $q_j$ se defini como $ p_j = dvp(L,dot(q)_j) $
Los términos "momento canónico" y "momento conjugado" también se usan a menudo para $p_j$. Es importante notar que si $q_j$ no es una coordenada Cartesiana, $p_j$ no tiene necesariamente las dimensiones de un momento lineal. Además, si hay un potencial dependiende de la velocidad, entonces incluso con una coordenada Cartesiana $q_j$ el momento generalizado asociado no será identico al momento mecánico convencional. Por lo tanto, en el caso de un grupo de partículas en un campo electromagnético, el Lagrangiano es $ L = sum_i 1/2 m_i dot(r)_i^2 - sum_i q_i phi(x_i) + sum_i q_i bold(A)(x_i) dot dot(bold(r))_i $ ($q_i$ denota aquí la carga) y entonces el momento generalizado conjugado asociado a $x_i$ es $ p_(i x ) = dvp(L,dot(x)_i) = m_i dot(x)_i + q_i A_x $ 
Es decir, el momento mecánico mas un término adicional. 
Si el Lagrangiano de un sistema no contiene una coordenada dada $q_j$ (aunque puede contener la velocidad correspondiente $dot(q)_j$ ) entonces la coordenada se dice ser cíclica o ignorable. Esta definición no es universal, pero es la utilizada normalmente. La ecuación de movimiento se reduce, para una coordenada cíclica, a $ dif/(dif t) dvp(L,dot(q)_j) = 0 $ o $ dv(p_j, t) = 0 => p_j = "constante" $ Entonces, podemos decir como un teorema de conservación general que el momento generalizado conjugado de una coordenada cíclica se conserva. Es importante notar que hemos asumido aquí que $q_j$ es una coordenada generalizada, una que es linealmente independiente de todas las otras coordenadas. Cuando existen ecuaciones de ligadura, todas las coordenadas no son lienalmente independientes. Por ejemplo, la coordenada angular $theta$ no está presente en el Lagrangiano de una aro que baja por una pendiente sin deslizarse, pero el ángulo aparece en las ecuaciones de ligadura $r dif theta = dif x$. Como resultado, el momento angular $p_theta = m r^2 dot(theta) $ no es constante. 
Podemos utilizar la integración de las ecuaciones de movimiento para eliminar formalmente las coordenadas cíclicas del problema, como hemos hecho anteriormente, para luego resolverlo en términos de coordenadas generalizadas. El proceso, originado por Routh, consiste en modificar el Lagrangiano para que no sea una función de la velocidad generalizada que corresponde a la coordenada cíclica, escribiéndola en función del momento conjugado. La ventaja de hacer esto es que $p_j$ se puede considerar una constante de integración, y el resto de integraciones solo dependen de las coordenadas no cíclicas. Es importante notar que las condiciones para la conservación de momentos generalizados son más generales que los dos teoremas derivados anteriormente. Por ejemplo, implican un teorema de conservación ara un caso en el que la ley de accióñ y reacción es violada, como es el caso de un sistema donde hay fuerzas electromagnéticas presentes. Supongamos que hay una única partícula en un campo donde ni $phi$ ni $bold(A)$ depende de $x$. Entonces $x$ no aparecerá en $L$ y será cíclica. El momento canónico correspondiente $p_x$ debe de ser conservado por consecuencia. El momento canónico tiene como forma $ p_x = m dot(x) + q A_x = "constante" $  
En este caso, no es el momento lineal mecánico $m dot(x)$  que se conserva sino que es su suma con $q A_x$ que se conserva. De todas formas, debería de seguir siendo verdad que los teoremas de conservación de Newton están contenidos dentro de la regla general para coordenadas cíclicas, con restriccones adicionales.
Primero consideramos una coordenada generalizada $q_j$ , para la que un cambio $d q_j$ representa una translación del sistema por completo en una dirección dada. Un ejemplo sería una de las coordeadas Cartesianas del centro de masas del sistema. Entonces clasamente $q_j$ no puede aparecer en $T$, porque las velocidades no están afectadas por un cambio en el origen, y entonces la derivada parcial de $T$ con respecto a $q_j$ es nula. Además, asumimos un sistema conservativo para los que $V$ no es función de las velocidades, para eliminar las complicaciones de las fuerzas electromagnéticas. La ecuación de Lagrange de movimiento para una coordenada definida de esta forma se reduce a $ dif/(dif t) dvp(T,dot(q)_j)equiv dot(p)_j = - dvp(V,q_j) equiv Q_j $
Ahora demostraremos que esta es la ecuación de movimiento para el momento lineal total, es decir, que $Q_j$ representa la componente de la fuerza total sobre la dirección de translacióñ de $q_j$, y $p_j$ es la componente del momento lineal total en esta dirección. En general, ,la fuerza generalizada $Q_j$ es dada por la ecuación $ Q_j = sum_i bold(F)_i dot dvp(bold(r)_i,q_j) $
Como $dif q_j$ corresponde a una translación del sistema a lo largo de algún eje, los vectores $ bold(r)_i (q_j)$ y $bold(r)_i (q_j + dif q_j) $ están relacionados con una relación de composición con $dif q_j$. Por la definición de derivada, tenemos $ dvp(bold(r)_i,q_j) = lim_(dif q_j -> 0) (bold(r)_i (q_j + dif q_j ) - bold(r)_i (q_j))/(dif q_j) = (dif q_j)/(dif q_j) bold(n) = bold(n) $
Donde $bold(n)$ es el vector unidad a lo largo de la dirección de translación. Por lo tanto, $ Q_j = sum bold(F)_i dot bold(n) = bold(n) dot bold(F) $
Que es la componente de la fuerza total en la dirección de $bold(n)$. Para demostrar la otra mitad de nuestra declaración, es importante notar que la don energía cinética de forma $ T = 1/2 sum m_i dot(bold(r)_i^2) $
El momento conjugado es $ p_j = dvp(T,dot(q)_j) = sum_i m_i dot(bold(r))_i dot dvp(dot(bold(r))_i,dot(q)_j) = sum_i m_i bold(v)_i dot dvp(bold(r)_i,q_j) $
Como hemos visto anteriormente, podemos transformar esto en $ p_j = bold(n) dot sum_i m_i bold(v)_i $
como hemos predicho, es la componente del momento lineal total del sistema sobre la dirección $bold(n)$.
Supongamos ahora que la coordenada de translación $q_j$ que hemos estado comentando es cíclica. Entonces $q_j$ no puede aparecer en $V$ y entonces $ -dvp(V,q_j) equiv Q_j = 0 $ 
Esto es el teorema de conservación del momento lineal. Si un componente de la fuerza aplicada total se anula, la componente correspondiente del momento lineal se conserva.
De forma similar, se puede demostrar que si una coordenada cíclica $q_j$ es tal que un cambio $dif q_j$ corresponde a una rtación del sistema sobre algún eje, entonces la conservación de su momento conjugado corresponde a la conservación de un momento angular. Por el mismo argumento utilizado anteriormente, $T$ no puede contener $q_j$, porque una rotación del sistema de coordenadas no puede afectar a la velocidad absoluta. De ahí que la derivada parcial de $T$ con respecto a $q_j$ es nula, y como $V$ es independiente de $dot(q)_j$, volvemos a obtener que $ dif/(dif t) dvp(T,dot(q)_j) equiv dot(p)_j = - dvp(V,q_j) equiv Q_j $ 
Pero ahora queremos demostrar que con $q_j$ siendo una coordenada de rotación, la fuerza generalizada es una componente del torque total aplicado alrededor del eje de rotación, y que $p_j$ es la componente del momento angular total sobre el mismo eje. La fuerza generalizada $Q_j$ es dada por $ Q_j = sum_i bold(F)_i dot dvp(bold(r)_i,q_j) $
Solo que la derivada ahora tiene otro significado. Aquí el cambio en $q_j$ corresponde a una rotación infinitesimal del vector $bold(r)_i$, manteniendo la magnitud del vector constante. La norma de la derivada es fácil de obtener: $ |dif bold(r)_i| = r_i sin theta dif q_j " y " |dvp(bold(r)_i,q_j|=r_i sin theta ) $
Y su dirección es perpendicular a ambos $bold(r)_i$ y a $n$. Claramente, la derivada se puede expresar en forma vectorial como $ dvp(bold(r)_i,q_j)=bold(n) times bold(r)_i $
Con este resultado, la fuerza generalizada se convierte en $ Q_j = sum_i bold(F)_i dot bold(n) times bold(r) = sum_i bold(n) dot bold(r)_i times bold(F)_i $
Reduciendose a $ Q_j = n dot sum_i bold(N)_i = bold(n) dot bold(N) $
que demuestra la primera parte. Una manipulación similar de $p_j$ con la ayuda de la definición vectorial de la derivada demuestra la segunda parte de la declaración: $ p_j = dvp(T,dot(q)_j) = sum_i m_i bold(v)_i dot dvp(bold(r)_i ,q_j) = sum_i bold(n) dot bold(r)_i times m_i bold(v)_i = bold(n) dot sum_i bold(L)_i = bold(n) dot bold(L) $
Resumiendo estos resultados, vemos que si la coordenada de rotación $q_j$ es cíclica, entonces $Q_j$, que es la componente del torque aplicado a lo largo de $bold(n)$, se anula, y el componente de $bold(L)$ a lo largo de $bold(n)$ es constante. Aquí hemos ddemostrado el teorema de la conservación del momento angular relacionado con las coordenadas cíclicas.
La importancia de las coordenadas cíclicas de translación o rotación en relación a propiedades del sistema tiene que ser comentada. Si una coordenada generalizada que corresponde a un desplazamiento est cíclica, significa que una translación del sistema, como si este fuese rígido, no tiene ningún efecto sobre el problema. En otras palabras, si el sistema es invariante bajo translación en una dirección dada, el momento lineal correspondiente se conserva. Similarmente, el hecho que una coordenada generalizada de rotación sea cíclica indica que el sistema es invariante bajo rotación en el eje dado. Los teoremas de conservación del momento están así estrechamente relacionados con las propiedades de simetría del sistema. Si el sistema es esféricamente simétrico, podemos decir que todas las componentes del momento angular se conservan. O, por ejemplo si el sistema es simétrico solo en el eje $z$, entonces $L_z$ será el único momento angular conservado. Estas consideraciones de simetría se pueden utilizar a menudo con problemas relativamente complicados para determinar a primera vista si ciertas constantes del movimiento existen.
Supongamos, por ejemplo, que el sistema consiste en un conjunto de puntos de masa moviendose en un campo de potencial generado por fuentes fijas uniformemente distribuidas en un plano infinito, elegimos aquí arbitrariamente el plano z=0. Entonces a simetría del problema es tal que el Lagrangiano es invariante bajo una translación del sistema de partículas en las direcciones $x$ o $y$ (pero no en la dirección $z$), y también en una rotación alrededor del eje $z$. Es imediatamente aparente que las componentes $x$ e $y$ del momento lineal total, $P_x$ y $P_y$, son constantes del movimiento junto con $L_z$, la componente $z$ del momento angular total. Sin embargo, si las fuentes estuviesen restringidas a solo la mitad del plano, $x>=0$, entonces la simetría de translación a lo largo del eje $x$ y de rotación sobre el eje $z$ se rompería. En este caso solo se conservaría $P_y$.

== Función de energía y conservación de la energía

Otro teorema de conservación que deberíamos de esperar obtener en la formulación Lagrangiana es la conservación de la energía total para sistemas donde las fuerzas son deriables de potenciales dependientes únicamente de la posición. Es posible demostrar un teorema de conservacion para el que la conservación de la energía total representa solo un caso especial. Consideremos un Lagrangiano general, que será una función de las coordenadas $q_j$ y las velocidades $dot(q)_j$ y puede depender también explicitamente del tiempo (puede surgir de la variación temporal de potenciales externos, o de ligaduras dependientes del tiempo). Entonces la derivada temporal total de $L$ es $ dv(L, t) = sum_j dvp(L,q_j)dv(q_j, t) + sum_j dvp(L,dot(q)_j)dv(dot(q)_j, t) + dvp(L,t) $
De las ecuaciones de Lagrange: 
$ dvp(L,q_j) = d/(dif t) (dvp(L,dot(q)_j)) $
Entonces podemos reescribir la derivada de $L$ como
$ dv(L, t) = sum_j d/(dif t) (dvp(L ,dot(q)_j))dot(q)_j + sum_j dvp(L,dot(q)_j) dv(dot(q)_j, t) + dvp(L,t) $
o
$ dv(L, t) = sum_j d/(dif t) (dot(q)_j dvp(L,dot(q)_j)) + dvp(L,t) $
Entonces sigue que 
$ d/(dif t) (sum_j dot(q)_j dvp(L,dot(q)_j) - L ) + dvp(L,t) = 0 $

La cantidad en paréntesis se denomina a menudo como función de energía y la denotaremos por $h$:
$ h(q_1,..., q_n; dot(q)_1, ..., dot(q)_n; t) = sum_j dot(q)_j dvp(L,dot(q)_j) - L $
Entonces la ecuación anterior es la derivada total temporal de $h$.
$ dv(h,t) = - dvp(L ,t) $

Si el Lagrangiano no es una función explicita del tiempo, entonces la ecuación anterior dice que $h$ se conserva. Es una de las primeras integrales del movimiento y a veces se denomina integral de Jacobi.
Bajo circunstancias específicas, la función $h$ es la energía total del sistema. Para determinar cuales son estas circunstancias, recordamos que la energía cinética total de un sistema se puede escribir como $ T = T_0 + T_1 + T_2 $
Donde $T_0$ es una función de las coordenadas generalizadas únicamente, $T_1$ es lineal en las velocidades generalizadas, y $T_2$ es una función cuadrática de las velocidades generalizadas. Para un gran numero de sistemas y conjuntos de coordenadas generalizadas, el Lagrangiano también se puede descomponer de una forma similar.
$ L(q, dot(q), t) = L_0(q,t)+L_1(q,dot(q), t) + L_2(q, dot(q), t) $
Aquí $L_2$ es una función homogénea de segundo grado en $dot(q)$, mientras que $L_1$ es homogénea de primer grado en $dot(q)$. NO hay una razón intrínseca de la mecánica que requiere un Lagrangiano que conforme a esta forma, pero suele ser posible en la mayoría de problemas de interés. El Lagrangiano tiene claramente esta forma cuándo las fuerzas son derivables de un potencial que no depende de las velocidades. Incluso con un potencial generalizado, notamos que el Lagrangiano para una partícula cargada en un campo electromagnético satisface esta forma. Utilizando el teorema de Euler que dice que si $f$ es una función homogénea de grado $n$ en las variables $x_i$ entonces: $ sum_i x_i dvp(f,x_i) = n f $
Aplicado a la función $h$, para Lagrangianos que pueden ser descompuestos, este teorema implica que $ h = 2L_2 + L_1 - L = L_2 - L_0 $
Si las ecuaciones de transformación definiendo las coordenadas generalizadas no dependen explicitamente del tiempo entonces $T=T_2$. Si, además el potencial no depende de las velocidades generalizadas, entonces $L_2 = T$ y $L_0 = -V$, por lo que $ h = T+V = E $
y la función de energía es la energía total. Bajo estas circunstancias, si $V$ no depende del tiempo explicitamente, tampoco lo hará $L$. Entonces, $h$ se conserva. Es importante notar que las condiciones de conservación de $h$ son en principio bastante distintas de las que identifican $h$ como la energía total. Se puedetener un conjunto de coordenadas generalizadas para que en un problema particular, $h$ pueda ser la energía total en la forma $T+V$, pero que no se conserve. Es también importante notar que mientras que el Lagrangiano está fijado únicamente para cada sistema por la fórmula $L=T-V$ independientemente de la elección de coordenadas generalizadas, la función de energía $h$ depende en magnitud y forma funcional del conjunto específico de coordenadas generalizadas. Para el mismo sistema, varias funciones de energía $h$ de diferente contenido físico se pueden generar dependiendo de como las coordenadas generalizadas se elijan. 
Vamos a ver el caso en el que el sistema no es conservativo. Es decir, hay fuerzas friccionales derivables de una función de disipación $cal(F)$, se puede demostrar fácilmente que $cal(F)$ se relaciona a la tasa de pérdida de $h$. Cuando las ecuaciones de movimiento están dadas por $ dif/(dif t)(dvp(L,dot(q)_j)) - dvp(L,q_j)+dvp(cal(F),dot(q)_j) = 0 $
entonces podemos decir que
$ dv(h,t) + dvp(L,t) = sum_j dvp(cal(F),dot(q)_j)dot(q)_j $
Por la definición de $cal(F)$, es una función homogénea de las velocidades generalizadas de grado 2. Entonces, aplicando el teorema de Euler, obtenemos: $ dv(h,t) = -2 cal(F) - dvp(L ,t) $
Si $L$ no es una función explícita del tiempo, y el sistema es tal que $h$ es igual a la energía total, entonces $2 cal(F)$ es la tasa de disipación de la energía.

= Formalismo Hamiltoniano
Hemos desarrollado la formulación Lagrangiana y estudiado diferentes propiedades dentro de esta. Ahora vamos a introducir el formalismo Hamiltoniano, una formulación alternativa de la teoría. 

== Transformaciones de Legrendre y Ecuaciones de Movimiento de Hamilton

En el formalismo Lagrangiano, un sistema con $n$ grados de libertad posee $n$ ecuaciones de movimiento de forma $dif/(dif t)(dvp(L,dot(q)_i)) - dvp(L,q_i) $
Como las ecuaciones son de orden 2, el movimiento del sistema solo está determinado para todo el tiempo cuando $2n$ condiciones iniciales se especifican, por ejemplo, las $n$ $q_i$ y n $dot(q)_i$ en un instante dado $t_1$ o las $n$ $q_i$ en dos instantes $t_1$ y $t_2$. Representamos el estado de el sistema con un punto en un espacio de configuraciones $n$-dimensional cuyas coordenadas son las $n$ ccoordenadas generalizadas $q_i$ y siguen el movimiento del sistema a lo largo del tiempo. Físicamente, en el punto de vista Lagrangiano un sistema con $n$ grados de libertad es un problema de $n$ variables indepenidientes $q_i (t)$, y $dot(q)_i$ aparece únicamente como una notación conveniene para indicar la derivada temporal de $q_i$. Las $n$ coordenadas deben ser independientes entre sí. En el formalismo Hamiltoniano no puede haber ecuaciones de ligadura entre las coordenadas. Si las $n$ coordenadas no son independientes, un conjunto reducido de $m$ coordenadas (con $m<n$), debe ser usado para la formulación del problema antes de poder proceder con el resto de pasos.

El formalismo Hamiltoniano se basa en un punto de vista fundamentalmente diferente. Se busca describir el movimiento en términos de ecuaciones de primer orden. Como el número de conidciones iniciales determinando el movimiento debe de seguir siendo $2n$, debe haber $2n$ ecuaciones de primer orden expresadas con $2n$ variables independientes. Entonces las $2n$ ecuaciones de movimiento describen el comportamiento del sistema en un espacio de fases cuyas coordenadas son las $2n$ variables independientes. Al doblar el número de cantidades independientes, es natural elegir que la mitad de ellas sean $n$ coordenadas generalizadas $q_i$. Como veremos, el formalismo es casi simétrico si elegimos que la otra mitad de estas coordenadas sean los momentos conjugados $p_i$ ya introducidos previamente: $ p_i = dvp(L(q_i, dot(q)_j, t) ,dot(q)_i) $
Donde el índice $j$ representa el conjunto de coordenadas y velocidades generalizadas. Las cantidades $(q,p)$ se conocen como las variables canónicas. 
Desde un punto de vista matemático, se puede decir que las $q$ y $dot(q)$ se han tratado como variables distintas. En las ecuaciones de Lagrange, la derivada parcial de $L$ con respecto a $q_i$ significa la derivada tomada con las otras $q$ y todas las $dot(q)$ constantes. Similarmente, las derivadas parciales con respecto a $dot(q)_i$, el resto de $dot(q)$ y todas las $q$ se mantienen constantes. Tratandolo estrictamente como un problema matemático, la transición de formulación Lagrangiana a formulación Hamiltoniana corresponde a un cambio de variable: de $q, dot(q), t$ a $q, p, t$, donde $p$ se relaciona a $q$ y $dot(q)$ por la ecuación anterior. El proceso para cambiar las variables de esta forma es dado por la transformación de Legendre.

Consideremos una función con solo dos variables $f(x,y)$, para que un diferencial de $f$ tenga como forma $ dif f = u dif x + v dif y $ 
Donde $ u = dvp(f,y) quad v=dvp(f,y) $
Ahora queremos cambiar la base de descripción de $x,y$ a un conjunto distinto de variables $u, y$ para que las cantidades diferenciales se expresen en términos de los diferenciales $dif u$ y $dif y$. Sea $g$ una función de $u$ y de $y$ definida por la función $ g = f- u x $
Un diferencial de $g$ está dado entonces por $ dif g = dif f - u dif x - x dif u $ 
O, sustituyendo el diferencial de $f$, $ dif g = v dif y - x dif u $ 
Que es exactamente la forma que deseamos. Las cantidades $x$ y $v$ son ahora funciones de las variables $u$ e $y$ dadas por las relaciones $ x= -dvp(g,u) quad v = dvp(g,y) $
que son entonces análogos a los diferenciales de $u$ y $v$ vistos anteriormente.
La transformación de Legendre así definida es utilizada a menudo en termodinámica. El primer principio relaciona el cambio diferencial en energía total con el cambio de calor y el trabajo realizado, tal que $ dif U = dif Q - dif W $.
Para un gas experimentando un proceso reversible, el primer principio se puede reformular como $ dif U = T dif S - p dif V $ 
Donde $U(S,V)$ se escribe como una función de la entropía, $S$ y del volumen, $V$, donde la temperatura, T y la presión del gas, P, son dadas por $ T = dvp(U,S) quad "y" quad P = -dvp(U,V) $
La entalpía, $H(S,P)$ se genera por la transformada de Legendre $ H = U+P V $
que da 
$ dif H = T dif S + V dif P $ 
donde 
$ T = dvp(H,S) quad "y" quad V = dvp(H,P) $
Unas transformadas de Legendre adicionales, 
$ F = U - T S $
$ G = H - T S $ 
generan la energía libre de Hemholtz $F(T,V)$ y la energía libre de Gibbs $G(T,P)$

Las transformadas de $(q, dot(q), t)$ a $(q, p, t)$ se diferencian del tipo considerado anteriormente únicamente en que hay que transformar más de una variable. Comenzamos escribiendo el diferencial del Lagrangiano, $L(q, dot(q), t)$, como 
$ dif L = dvp(L,q_i) dif q_i + dvp(L,dot(q)_i) dif dot(q)_i + dvp(L,t) dif t $ 
Sustituyendo el momento canónico en la $i$esima ecuación de lagrange:
$ dot(p)_i = dvp(L,q_i) $
Entonces, el diferencial del lagrangiano se puede escribir como 
$ dif L = dot(p)_i dif q_i + p_i dif dot(q)_i + dvp(L,t) dif t $
El Hamildoniano está generado por la transformada de Legendre
$ H(q, p, t) = dot(q)_i p_i - L(q, dot(q), t) $
Con el diferencial 
$ dif H = dot(q)_i dif p_i - dot(p)_i dif q_i - dvp(L,t) dif t $
Donde el término $p_i dif dot(q)_i $ se quita de la transformada de Legendre. Como $dif H$ también se puede escribir como $ dif H = dvp(H,q_i) dif q_i + dvp(H,p_i) dif p_i + dvp(H,t) dif t $ 
Obtenemos las $2n + 1$ relaciones
$ 
dot(q)_i &= dvp(H,p_i) \
- dot(p_i) &= dvp(H,q_i) \
- dvp(L,t) &= dvp(H,t)
$
Las dos primeras ecuaciones se conocen como las ecuaciones canónicas de Hamilton, constituyen el conjunto de $2n$ ecuaciones de primer orden de movimiento reemplazando las ecuaciones de segundo orden de Lagrange.

La primera mitad de las ecuaciones de Hamilton dan las $dot(q)_i$ como funciones de $(q,p,t)$. Forman enctonces la inversa de las ecuaciones constitutivas que definen los momentos $p_i$ como funciones de $(q,dot(q), t)$. Podemos decir entonces que no proporcionan ninguna información nueva. En terminos de resolución de problemas meçanicos en términos de ecuaciones canónicas, la aserción es correcta. Pero dentro del cuadro Hamiltoniano, donde $H(q,p,t)$ es una función dada sin importar su origen, las dos mitades del conjunto de ecuaciones de Hamilton son igualmente independientes y significativas. La primera mitad dice como $dot(q)$ depende de $q,p,$ y $t$; la segunda dice la misma cosa sobre $dot(p)$.
Obviamente el Hamiltoniano $H$ se construye de la misma manera y tiene el mismo valor que $h$, la función de energía definida anteriormente. Pero son funciones de diferentes variables: Como el Lagrangiano, $h$ es una función de $q, dot(q)$ y posiblemente $t$, mientras que $H$ siempre debe de estar espresado como una función de $q,p$ y posiblemente $t$. Es para enfatizar la diferencia en comportamiento funcional que se le han dado simbolos diferentes a las cantidades aunque se evaluen al mismo valor. 
Normalmente el Hamiltoniano para cada problema se debe construir via la formulación Lagrangiana. El proceso formal pide una secuencia larga de pasos:
+ Se eligen un conjunto de coordenadas $q_i$ y se construye el lagrangiano a partir de las expresiones de la energía cinética y el potencial
+ Los momentos conjugados se definen como funciones de $q_i, dot(q)_i, "y" t$
+ Se forma el Hamiltoniano como $H(q,p,t) = dot(q)_i p_i - L(q, dot(q),t)$
+ Se exprsa $dot(q)_i$ como una función de $(q, p, t)$
+ Los resultados del paso anterior se usan para eliminar $dot(q)$ de $H$ para expresarlo como una función únicamente de $(q,p,t)$.

Ahora estamos listos para utilizar el Hamiltoniano en las ecuaciones canónicas de movimiento. Para muchos sistemas físicos es posible acortar este proceso considerablemente. Como hemos podido ver antes, para muchos problemas el Lagrangiano es suma de funciones homogéneas en las velocidades generalizadas de grado 0, 1 y 2, respectivamente. En ese caso $H$ es dado por $ H = dot(q)_i p_i - L = dot(q)_i p_i - [L_0(q_i,t) + L_1(q_i, t)dot(q)_k + L_2(q_i, t)dot(q)_k dot(q)_m] $
donde $L_0$ es la parte del Lagrangiano independiente de las velocidades generalizadas, $L_1$ repesenta los coeficientes de la parte del Lagrangiano que es homogénea $dot(q)_i$ de primer grado, y $L_2$ es la partte que es homogénea en $dot(q)_i$ de segundo grado. Además, si las ecuaciones definiendo las coordenadas generalizadas no dependen del tiempo explicitamente, entonces $L_2 dot(q)_k dot(q)_m = T$  (la energía cinética) , y si las fuerzas son derivables de un potencial conservativo $V$, entonces $L_0 = - V$. Cuando estas condiciones están satisfechas, el Hamiltoniano es automáticamente la energía total del sistema: $ H = T + V = E $ 
Si estas condiciones se verifican, todo el proceso descrito anteriormente se elimina.
Podemos a veces ir incluso más lejos. En muchas categorías de problemas, ocurre que $L_2$ es una función cuadrática de las velocidades generalizadas y $L_1$ es una función lineal de las mismas variables con las siguientes dependencias funcionales específicas $ L(q_i, dot(q)_i, t) = L_0 (q,t) + dot(q)_i a_i (q,t) + dot(q)_i^2 T_i(q,t) $
Donde $a_i$ y $T_i$ son funciones de las $q$ y $t$.

Las manipulaciones algebráicas de los pasos 2-5 se pueden llevar a cabo. Para enseñar esto vamos a formar todas las $dot(q)_i$ en una matriz columna $dot(bold(q))$. Bajo las premisas dadas se puede escribir el Lagrangiano como $ L(q, dot(q), t) = L_0 (q, t) + tilde(dot(bold(q))) bold(a) + 1/2 tilde(dot(bold(q))) bold(T) dot(bold(q)) $
Donde la matriz fila $tilde(dot(bold(q)))$ se escribe explicitamente como la transpuesta de la matriz columna $dot(bold(q))$. Aquí $bold(a)$ es una matriz columna, y $bold(T)$ es una matriz cuadrada $n times n$. Los elementos de ambas son funciones generales de $q$ y $t$. Para ilustrar este formalismo, consideremos el caso especial donde $q_i = {x,y,z}$, y $bold(T)$ es diagonal. Escribiríamos entonces $ 1/2 tilde(dot(bold(q))) bold(T) dot(bold(q)) = 1/2 mat(dot(x),dot(y), dot(z))mat(m,0,0;0,m,0;0,0,m) mat(dot(x);dot(y);dot(z)) = m/2 (dot(x)^2 + dot(y)^2 + dot(z)^2) $
y $ tilde(dot(bold(q))) bold(a) = mat(dot(x), dot(y), dot(z)) mat(a_x;a_y;a_z) = a_x dot(x) + a_y dot(y) + a_z dot(z) = bold(a) dot dot(bold(r)) $

En esta notación, el hamiltoniano, $H = tilde(dot(bold(q))) bold(p) - L$ se convierte en $ H = tilde(dot(bold(q)))(bold(p)- bold(a)) - 1/2 tilde(dot(bold(q))) bold(T) dot(bold(q)) - L_0 $
Como $bold(T)$ es simétrica, los momentos conjugados, una matriz columna $bold(p)$ están dados por $ bold(p) = bold(T)dot(bold(q)) + a $
Que se puede invertir al vector columna $ dot(bold(q)) = bold(T)^(-1) (bold(p)-bold(a)) $
Este paso presupone que $bold(T)^(-1)$ existe, que normalmente existe por virtud de la propiedad positiva definida de la energía cinética. 
La ecuación correspondiente para $tilde(dot(bold(q)))$ es $ tilde(dot(bold(q))) = (tilde(bold(p)) - tilde(bold(a)))) bold(T)^(-1) $
Para obtener la forma funcional correcta para el Hamiltoniano, las ecuaciones anteriores deben de ser utilizadas para reemplazar $dot(bold(q))$ y $tilde(dot(bold(q)))$, dando la forma final del Hamiltoniano $ H(q,p,t) = 1/2 (tilde(bold(p))-tilde(bold(a))) bold(T)^(-1) (bold(p)-bold(a))-L_0(q,t) $
Si el Lagrangiano puede escribirse en la forma supuesta, podemos imediatamente saltar los pasos que intervienen y escribir el hamiltoniano de esta forma. La matriz inversa $bold(T)^(-1)$ se suele poder obener de forma sencilla normalmente como $ bold(T)^(-1) = (tilde(bold(T))_c)/(|bold(T)|) $
Donde $bold(T)_c$ es la matriz de adjuntos cuyos elementos $(bold(T)_c)_(j k)$ son $(-1)^(j k)$ veces el determinante de la matriz obtenido al eliminar la $j$ésima fila y la $k$ésima fila de $T$. En el ejemplo de la matriz diagonal anterior, se pueden calcular fácilmente como $ bold(T) = mat(m,0,0;0,m,0;0,0,m) quad bold(T)^(-1) = mat(1/m,0,0;0,1/m,0;0,0,1/m) $

== Coordenadas cíclicas y teoremas de conservación

En una coordenada cíclica $q_j$,
$ dv(p_j, t) = 0 equiv dot(p)_j $
Pero sabemos por las ecuaciones canónicas que
$ dot(p)_j = -dvp(H,q_j) $
Esto nos dice entonces que una coordenada cíclica estará ausente del Hamiltoniano. Conversamente, si una coordenada generalizada no ocurre en H, el momento conjugado se conserva. Los teoremas de conservación de momento deducidos para el formalismo Lagrangiano se pueden transferir al formalismo Hamitoniano simplemente sustituyendo $H$ por $L$. En particular, la conexión entre la invarianza o propiedades de simetría del sistema físico y las constantes del movimiento también se pueden derivar en términos del Hamiltoniano. Por ejemplo, si un sistema está completamente aislado, con solo fuerzas internas entre las partículas, entoncces el sistema se puede mover como un conjunto rígido sin afectar a las fuerzas o movimiento subsecuente. El sistema se dice invariante bajo un desplazamiento rígido. De ahí que una coordenada generalizada que describe un movimiento rígido no aparecerá explicitamente en el Hamiltoniano, y los momentos conjugados correspondientes serán conservados. Si el movimiento rígido es una translación en una dirección en particular, entonces el momento conservado es el componente cartesiano correspondiente del momento canónico total del sistema. Como la dirección es arbitraria, el vector del momento lineal total se conserva. Si la dirección es arbitraria, el vector del momento lineal total se conserva. El desplazamiento rígido puede ser una rotación, de lo  que deducimos que el vector del momento angular total se conserva. Incluso si el sistema interactúa con fuerzas externas, puede haber una simetría en la situación que lleva a un momento canónico conservado. Supongamos que el sistema es simétrico bajo rotaciones alrededor de un eje tal que $H$ es invariante. Entonces $H$ no puede depender de la coordenada de rotación alrededor del eje y la variable del angulo debe de ser una coordenada cíclica. Sigue de esto que la componente del momento angular sobre ese eje de rotación se conserva. 
Las consideraciones en torno a $h$ ya han mostrado que cuando $L$ no es una función explicita de $t$, entonces $H$ es una constante del movimiento. Esto también se puede ver directamente en las ecuaciones de movimiento escribiendo la derivada temporal total del Hamiltoniano como $ dv(H,t) = dvp(H,q_i)dot(q)_i + dvp(H,p_i)dot(p)_i + dvp(H,t) $
En consecuencia de las ecuaciones de movimiento, las dos primeras sumas del lado derecho se cancelan entre sí y entonces sigue que $ dv(H,t) = dvp(H,t) = -dvp(L,t) $
Entonces si $t$ no aparece explicitamente en $L$, no estará tampoco presente en $H$, y $H$ será constante en el tiempo. 
Además, demostramos que si las ecuaciones de transformación que si las ecuaciones que definen las coordenadas generalizadas no dependen explícitamente del tiempo, y si la energía potencial es independiente de la velocidad, entonces $H$ es la energía total $T+V$. La identificación de $H$ como una constante del movimiento y como la energía total son dos asuntos separados, y las condiciones suficientes para una no son suficientes para la otra. Puede ocurrir que las ecuaciones de transformación dependan de $t$ y que $H$ no lo haga. En este caso, $H$ es constante pero no es la energía total. El Hamiltoniano, como enfatizado a la hora de estudiar la función de energía, es dependiente ambos en valor al evaluarlo evaluado y forma funcional según el conjunto de coordenadas generalizadas elegidas. Para el Lagrangiano, tenemos una fórmula especifica, $L=T-V$, y un cambio de coordenadas generalizadas dentro de esta formula cambiará la apariencia funcional de $L$ pero no alterará su valor al evaluarlo. En el caso del Hamiltoniano, utilizar un conjunto diferente de coordenadas generalizadas puede conllevar un cambio en la cantidad representada por $H$. Puede ser que en un conjunto de coordenadas $H$ sea la energía total, mientras que en otro conjunto no lo sea. O que en un conjunto se conserve, pero en otro diferente varíe con el tiempo. 

== Procedimiento de Routh

Se ha visto que la formulación de Hamilton no es particularmente útil a la hora de obtener una solución directa para problemas mecánicos. A menudo podemos resolver las $2n$ ecucaiones de primer orden solo eliminando algunas de las variables, por ejemplo, las variables $p$, que nos lleva directamente a las ecuaciones de movimiento de Lagrange que estamos intentando cirvumventar. Pero hay una excepción importante que hay que enfatizar: el formalismo Hamiltoniano está especialmente adaptado al tratamiento de problemas con coordenadas cíclicas.
Consideremos la situación en formulación Lagrangiana cuando una coordenada $q_n$ es cíclica. El lagrangiano como función de $q$ y $dot(q)$ se puede escribir como $ L = L(q_1, ..., q_(n-1); dot(q)_1, ..., dot(q)_n; t) $

Todas las velocidades generalizadas siguen ocurriento en el Lagrangiano y en general serán funciones del tiempo. Seguimos teniendo que resolver un poblema de $n$ grados de libertad, incluso si un grado de libertad corresponde a una coordenada cíclica. Sin embargo, como hemos visto previamente, una coordenada cíclica en la formulación Hamiltoniana es completamente ignorable, porque en la misma situación $p_n$ es una constante $alpha$ y $H$ tiene como forma $ H = H(q_1, ..., q_(n-1); p_1, ..., p_(n-1); alpha, t) $
En efecto, el Hamiltoniano ahora describe un problema con solo $n-1$ coordenadas, que se puede resolver ignorando completamente la coordenada cíclica excepto cuando se manifesta en la constante de integración $alpha$, que tiene que ser determinada basandose en las condiciones iniciales. El comportamiento de la coordenada cíclica en sí misma con el tiempo se puede encontrar entonces integrando la ecuación de movimiento $ dot(q)_n = dvp(H,alpha) $
Las ventajas del formalismo Hamiltoniano a la hora de manejar coordenadas cíclicas se pueden combinar con las conveniencias del formalismo Lagrangiano para el resto de las coordenadas, utilizando un método inventado por Routh. Esencialmente, realizamos una transformación desde la base $q, dot(q)$ a la base $q,p$ solo para las coordenadas cíclicas, obteniendo sus ecuaciones de movimiento en la forma Hamiltoniana, mientras que el resto de coordenadas siguen en la forma de ecuaciones de Lagrange. Si las coordenadas cíclicas se nombran $q_(s+1),...,q_n$, entonces una nueva función $R$ (conocida como la función de Routh o Routhiano) se puede introducir, definida como 
$ R(q_1,...,q_n;dot(q)_1, ..., dot(q)_s; p_(s+1),...,p_n;t)=sum_(i=s+1)^(n) p_i dot(q)_i - L $
Que es equivalente a escribir 
$ R = H_"ciclicas" - L_"no ciclicas" $
Es fácil demostrar que para las $s$ coordenadas no cíclicas, las ecuaciones de Lagrange $ dv(R, dot(q)_i) - dvp(R,q_i) = 0 quad i=1,..., s $
estan satisfechas, mientras que para las $n-s$ coordenadas ignorables, las ecuaciones de Hamilton son aplicables, tal que $ dvp(R,q_i) = - dot(p)_i = 0, quad "y" dvp(R,p_i) = dot(q)_i, quad i=s+1,..., n $

El procedimiento de Routh no añade información, pero permite tratar todo más convenientemente sobretodo en el caso de problemas con muchos grados de libertad.

== Derivación de las ecuaciones de Hamilton desde un principio variacional

Las ecuaciones de Lagrange han sido demostradas como la consecuencia de un principio variacional, más espicificamente del principio de Hamilton. En efecto, el método variacional es el método preferible para la derivación de las ecuaciones de Lagrange, ya que es aplicable a tipos de sistemas no incluidos a menudo dentro de la mecánica. Será también ventajoso si se puediese encontrar un principio variacional que conduzca directamente a las ecuaciones de Hamilton. El principio de Hamilton es útil para este propósito pero está formulado originalmente para caminos en un espacio de configuraciones. La primera modificación que tendremos que realizar entonce será que la integral será evaluada en una trayectoria del sistema en un espacio de fases, y los caminos variados deben de estar en la proximidad de esta trayectoria en el espacio de fases. Manteniendo la filosofía del formalismo Hamiltoniano, $q$ y $p$ tienen que tratarse como coordenadas independientes del espacio de fases, a ser variadas independientemente. A este fin el integrando en la integral de acción debe de ser espresado como una función de $q$ y $p$ y sus derivadas.