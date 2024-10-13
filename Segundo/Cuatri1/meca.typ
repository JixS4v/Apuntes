#align(center, text(25pt)[*Mecánica Analítica*])
= 1. Mecánica Newtoniana
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
#pagebreak(weak:true)
= 2. Formulación Lagrangiana
== 2.1. Prerequisitos
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

== 2.2. Principio de D'Alembert
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

== 2.3. Derivación de las ecuaciones de Lagrange

Hemos conseguido nuestro objetivo en que las fuerzas de ligadura ya no aparecen, y se puede omitir el superíndice $(a)$. Aún no está en una forma que nos permita desarollar ecuaciones de movimiento para el sistema. Debemos transfomar el principio en una expresión de desplazamientos virtuales de las coordenadas generalizadas, que son independientes entre sí (para ligaduras holónomas), para que los coeficientes de las $delta q_i$ puedan ser nulos.
Empezamos por las ecuaciones de transformación: 
$ r_i = r_i (q_1, q_2, ..., q_n, t) $ (asumiendo $n$ coordenadas independientes). 
Ahora utilizaremos la regla de la cadena para derizar con respecto al tiempo, con lo que $ v_i = (dif r_i)/(dif t) = sum_k (diff r_i)/(diff q_k)dot(q)_k + (diff r_i)/(diff t) $
Similarmente, el desplazamiento irtual $delta r_i$ puede conectarse con los desplazamientos virtuales $delta q_i$ por 
$ delta r_i = sum_j (diff r_i)/(diff q_j) delta q_j $

En terminos de coordenadas generalizadas, el trabajo virtual de la $F_i$ se convierte en $ sum_i F_i dot delta r_i = sum_(i,j) F_i (diff r_i)/(diff q_j) delta q_j = sum_j Q_j delta q_j $
Donde $Q_j$ son los componentes de la fuerza generalizada, definida como $ Q_j = sum_i F_i dot (diff r_i)/(diff q_j) $
Es importante notar que como las coordenadas generalizadas no tineen que tener necesariamente las ddimensiones de longitud, las fuerzas generalizadas no tendrán necesariamente las dimensiones de fuerza, pero $Q_j delta q_j$ sí tendrá las dimensiones de trabajo. Por ejemplo, $Q_j$ será un torque $N_j$ y $dif q_j$ un ángulo diferencial $dif theta_j$, que hace a $N_J dif theta_j$ un diferencial de trabajo.

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
Las ecuaciones de movimiento entonces se transforman en $ dif/(dif t) ((diff L)/(diff dot(q)_j))-(diff L)/(diff q_j) $
Estas ecuaciones son las ecuaciones de Lagrange.

Es importante notar que para un conjunto particular de ecuaciones de movimiento no hay una elección única de Lagrangiano para el que las ecuaciones de Lagrange lleven a las ecuaciones de movimiento en las coordenadas generalizadas dadas. Es por esto que si $L(q, dot(q), t)$ es un lagrangiano aproximado y $F(q,t)$ es cualquier función diferenciable de las coordenadas generalizadas y el tiempo, entonces
$ L'(q,dot(q), t) = L(q, dot(q), t) + (dif F)/(dif t) $
es un Lagrangiano resultando en las mismas ecuaciones de movimiento. Aunque el Lagrangiano definido en función del potencial y la energía cinética es siempre apropiado para un sistema conservativo, no es el único Lagrangiano apropiado para el sistema dado.

== 2.4. Potencial generalizado
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

== 2.5. Función de disipación
Si hay fuerzas no conservativas que actuan sobre el sistema, las ecuaciones de Lagrange se pueden escribir de forma $ dif/(dif t) ((diff L)/(diff dot(q)_j)) - (diff L)/(diff q_j))= Q_j $
Donde $L$ contiene el potencial de las fuerzas conservadoras como anteriormente, y $Q_j$ representa las fuerzas que no derivan de un potencial. Esta situación ocurre cuando hay fuerzas friccionales presentes. Ocurre frecuentemente cuando la fuerza de fricción es proporcional a la velocidad de la partícula, tal que su componente $x$ tiene como forma $ F_(f x) = - k_x v_x $ 
Fuerzas de fricción de este tipo se pueden derivar en terminos de la función $ cal(F)=1/2 sum_i (k_x v_(i x)^2 + k_y v_(i y)^2 + k_z v_(i z)^2) $
Donde la suma es sobre las partículas del sistema. De esta definición queda claro que $ F_(f_x_i)=-(diff F)/(diff v_x_i) $
O, simbolicamente
$ F_f = - nabla_v cal(F) $
Le podemos dar también una interpretación física. El trabajo realizado por el sistema contra la fricción es $dif W_f = -arrow(F)_f dot dif arrow(r) = - arrow(F)_f dot arrow(v) dif t = (k_x v_x^2 + k_y v_y^2 + k_z v_z^2)dif t $
Por lo tanto, $2 cal(F)$ es la tasa de disipación de energía por la fricción. La componente de la fuerza generalizada resultando de la fricción es $ Q_j = sum_i arrow(F)_f_i dot (diff arrow(r)_i)/(diff q_j) &= - sum_i nabla_v cal(F) dot (diff arrow(r)_i)/(diff q_j) \ &= - sum nabla_v cal(F) dot (diff dot(arrow(r))_i)/(diff dot(q)_j) \ &=-(diff cal(F))/(diff dot(q)_j) $
Por lo que las ecuaciones de Lagrange se escriben como $ dif/(dif t) ((diff L)/(diff dot(q)_j))- (diff L)/(diff q_j) + (diff cal(F))/(diff dot(q)_j) = 0$

== 2.6 Principio de Hamilton
