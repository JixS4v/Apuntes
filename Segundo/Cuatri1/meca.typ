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
Si el Lagrangiano de un sistema no contiene una coordenada dada $q_j$ (aunque puede contener la velocidad correspondiente $dot(q)_j$ ) entonces la coordenada se dice ser cíclica o ignorable. Esta definición no es universal, pero es la utilizada normalmente. La ecuación de movimiento se reduce, para una coordenada cíclica, a $ dif/(dif t) dvp(L,dot(q)_j) = 0 $ o $ dv(p_j, t) = 0 => p_j = "constante" $ Entonces, podemos decir como un teorema de conservación general que el momento generalizado conjugado de una coordenada cíclica se conserva. Es importante notar que hemos asumido aquí que $q_j$ es una coordenada generalizada, una que es linealmente independiente de todas las otras coordenadas. Cuando existen ecuaciones de ligadura, todas las coordenadas no son lienalmente independientes. Por ejemplo, la coordenada angular $theta$ no está presente en el Lagrangiano de una aro que baja por una pendiente sin deslizarse, pero el ángulo aparece en las ecuaciones de ligadura $r dif theta = dif x$. Como resultado, el momento angular $p_theta = m r^2 dot(theta) $ no es constante. ,