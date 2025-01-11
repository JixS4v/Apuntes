#import "config.typ": *


#show: doc => template(doc, "Termodinámica")

= Conceptos básicos
== Naturaleza de la Termodinámica
#figure(table(
  columns:3,
  table.header[][Microscopico][Macroscopico], [Equlibrio], [Mecanica estadística], [_*Termodinámica*_], [Fuera del equilibrio], [Teoría cinética], [Fenómenos de transporte]
), caption: [Posibilidades de abordar el problema de la descripción de un problema con muchos constituyentes])

La termodinámica posee las siguientes características:
- Es una teoría macroscopica y fenomenológica
- No hay una hipótesis sobre la estructura de la materia (descripción de solidos y fluidos como medios continuos)

== Concepto de un sistema termodinámico: clasificación
#underline[*Sistema termodinámico*]: Región _macroscópica_ del espacio delimitada por una superficie cerrada (paredes)
- Las paredes pueden ser reales o imaginarias.
- La elección del sistema (paredes) depende del problema que se quiera resolver y de la información de que se dispone (las variables termodinámicas y/o las energías).

#underline[*Entorno*]: Región _macroscópica_ fuera del sistema y que interacciona con el sistema.

#underline[*Universo termodinámico*]: Región _macroscópica_ del espacio ocuada por el sistema y su entorno. No incluye objetos alejados que no interactúan con el sistema.

#underline[*Paredes*]: 
#table(
  columns:2, 
  [Aislantes],[No permiten intercambio de Materia y Energía], [Adiabáticas], [No permiten intercambio de Calor], [Impermeables], [No permiten intercambio de Materia], [Fija y rígida], [No permiten intercambio de Trabajo]
)

#underline[*Sistemas*]:
#table(
  columns:2,
  [Abiertos], [Intercambian Materia y Energía con el entorno], [Cerrados], [Intercambian Energía con el entorno, pero no Materia], [Aislados], [Ni intercambian materia, ni intercambian energía con el entorno]
)

==  Variables de estado: magnitudes extensivas e intensivas
#underline[*Variables termodinámicas*]: Atributos de un sistema termodinámico que lo caracterizan en el momento actual y son independientes de su historia pasada.

#underline[*Variables o parámetros de estado*]: Conjunto reducido de parámetros que permite describir al sistema.

#underline[*Estado de un sistema*]: Cada uno de los modos de encontrarse un sistema, caracterizados por las variables de estado

#underline[*Parámetros externos*]: Parámetros que dependen de la posición en el espacio de cuerpos externos al sistema. A través de estos parámetros, podemos realizar el acoplamiento de un sistema con su entorno. Al condicionar el valor del resto de parámetros, se consideran variables independientes.

#underline[*Parámetros internos*]: Los parámetros que no son externos. Por ejemplo la presión.

#underline[*Parámetros extensivos*]: Parámetros que dependen de la masa del sistema y son proporcionales a ella, tienen un carácter global. (Volumen, longitud)

#underline[*Parámetros intensivos*]: Parámetros que no dependen de la masa, tienen un carácter local. (Presión, tensión superficial). Podemos incluir en estos las magnitudes _específicas_ (por unidad de masa)

==  Estado de equilibrio termodinámico
- Se dice que un sistema está en equilibrio termodinámico cuando sus magnitudes termodinámicas son constantes en el tiempo y uniformes en el espacio.
- Solamente un sistema aislado puede estar estrictamente en equilibrio
- En sistemas no aislados el equilibrio se establece cuando el sistema no interacciona con el entorno, es decir cuando no hay fuerzas sin equilibrar debidas a diferencias de parámetros intensivos entre sistema y entorno.
- No debe de confundirse estado de equilibrio con _estado estacionario_

==  Concepto de proceso termodinámico
- Un proceso termodinámico es el paso de un estado de equilibrio a otro como consecuencia de la interacción del sistema con el entorno.
- El proceso puede seguirse a través de la variación de las magnitudes termodinámicas #[
- Funciones de estado, que solo dependen de los estados inicial y final Funciones de proceso
- Funciones de proceso, que dependen de los estados inicial y final, pero también del camino seguido]
#underline[*Representación gráfica*]: El proceso se puede representar mediante diagramas que muestran la evolucion de unas magnitudes termodinámicas frente a otras. El espacio euclídeo correspondiente se llama espacio termodinámico de estados.
#figure(image("diagramatermo.png"), caption: [Ejemplo de un diagrama representando un corte del espacio termodinámico de estados])

==  Tipos de procesos termodinámicos
#underline[*Procesos cíclicos*]: Procesos en que el estado inicial coincide con el final.

#underline[*Procesos abiertos*]: Procesos en los que al menos una variable cambia entre los dos estados

#underline[*Proceso infinitesimal*]: Proceso cuya realización implica un cambio infinitesimal en alguna variable del sistema. Los estados intermedios son estados de equilibrio.

#underline[*Proceso finito*]: Proceso en que los cambios en las variables no son
infinitesimales. Los estados intermedios no han de ser de equilibrio

#underline[*Proceso de relajación*]: Proceso por el que vuelve a alcanzar el equilibrio un sistema inicialmente en equilibrio que es perturbado y dejado evolucionar libremente. El tiempo que tarda en alcanzarse el nuevo estado de equilibrio se llama tiempo de _relajación_.

#underline[*Procesos cuasiestáticos*]: Procesos constituidos por una sucesión de procesos infinitesimales que admiten representación en el espacio de estados. Los procesos suficientemente lentos por comparación con el proceso de relajación entre los mismos estados pueden considerarse aproximadamente cuasiestáticos. Son útiles para calcular las variaciones en las funciones de estado.
$ ((d psi)/(d t))_"exp" << ((d psi)/(d t))_"rel" $ 

#underline[*Procesos no estáticos*]: Procesos en que ambos tiemos son comparables: 
$ Delta t_"exp" approx Delta t_"rel" $

==  Postulados de la Termodinámica
#underline[*Primer postulado de la Termodinámica*]: #[
  - Todo sistema aislado alcanza, con el tiempo, un estado de equilibrio termodinámico que no puede abandonar espontáneamente #[
- Es de carácter estadístico: concepto de "estado más probable"
- Por consecuencia, no se estudian los fenómenos en que un sistema abandona espontáneamente su estado más probable (fluctuaciones)]]
#underline[*Segundo postulado de la Termodinámica*]: #[- Dos sistemas en equilibrio térmico con un tercero están en equilibrio térmico entre sí #[
- Hay que definir una nueva variable: la temperatura (interna e intensiva)
- Principio cero: los parámetros internos son función de los parámetros externos y de la temperatura.]]

== Escalas termométricas

#underline[*Definición operacional de temperatura*]:
- Elección de un sistema de referencia (termómetro)
- Asignación de valores a las isotermas del sistema (escala)
#underline[*Magnitud termométrica*]: La (única) propiedad del sistema que depende de la temperatura

#underline[*Función termométrica*]: Relación entre la temperatura y la magnitud termométrica

#underline[*Puntos fijos*]: Estados patrón fácilmente reproducibles a los que se asignan valores arbitrarios para determinar la función termométrica. #[
  - Hielo puro en equilibrio con agua pura saturada de aire a 1 atm
  - Agua pura en equilibrio con su vapor a 1 atm
  - Punto triple del agua (2716 K)
]

== Una definición empírica de temperatura

- Buscamos medir la temperatura con distintas masas de gas a volumen constante: #[
  - Tomamos una cierta masa $m_1$ de un gas dado
  - Ponemos el baño a la temperatura del punto triple del agua $theta_(3w)$
  - Movemos el flexible hasta alcanzar el volumen $V_"ref"$ deseado
  - Medimos la presión correspondiente $p_"ref"$
  - Ponemos el baño a la temperatura objetivo $theta_t$
  - Reajustamos el flexible para mantener el mismo volumen $V_"ref"$
  - Medimos la presión correspondiente $p$
#figure(image("montajemedidatermo.png"), caption: "Montaje utilizado para la medida")
]
Así, se tiene la presión $p$ del gas a la temperatura objetivo $theta_t$, para la masa y el volumen escogidos, $m_n$, $V_"ref"$
Repitiendo esto para distintas masas de gas y distintos gases, podemos trazar las rectas que cruzan los puntos. El punto donde las rectas correspondientes a los distintos gases se cruzan obtenemos la presión

=  Primer principio de la Termodinámica

==  Energía interna, calor y Trabajo
#underline["*Energía*"]: Toda causa capaz de producir _trabajo_
- Se manifiesta de muchas manenras y puede _transmitirse_ entre sistemas o _transformarse_ de unas formas a otras.

#table(columns:2, [*Energías acumuladas o _Fuentes_*],[*Energías en tránsito o _Vectores_*], [Energía fósil (quimica)], [Transmisión de calor: CALOR], [Energía potencial gravitatoria (hidráulica)], [Transmisión de E. mecánica: TRABAJO], [Energía potencial eléctrica], [Corriente eléctrica],[Energía cinética (eólica, mareas, ...)], [Ondas electromagnéticas], [Energía nuclear (fusión o fisión)], [Ondas de presión], [Energía térmica almacenada])

#underline["*Energías Almacenadas*"]
- Energía interna ($U$) #[
  - Es la energía térmica acumulada en un sistema. Es la manifestación macroscópica de la energía de los componentes microscópicos del sistema
  - Contribuciones: #[
    - Energía cinética de traslación, rotación y vibración de los componentes microscópicos (relacionada con la temperatura)
    - Energía potencial de interacción entre componentes microscópicos (relacionada con el volumen)
    - Energía asociada a fenómenos y procesos subatómicos (no afectada por las transformaciones habitualmente tratadas en termodinámica)
  ]
  - Es una función de estado (función de los parámetros externos y de la temperatura)
]

#underline["*Energías en Tránsito*"]
- Trabajo mecánico ($W$) #[
  - Transmisión de energía asociada con el movimiento macroscópico de los componentes del sistema
  - El trabajo está asociado a las variaciones de volumen del sistema
  - Es función de proceso
]
- Calor ($Q$) #[
  - Transmisión de energía asociada con el movimiento microscópico de los componentes del sistema.
  - Es función de proceso
  - Existen _tres_ mecanismos de transmisión de calor: #[
    - Conducción a través de un sólido o un fluidos
    - Convección en el seno de un fluido o en la interfase fluido-sólido
    - Radiación electromagnéticas
  ]
]

==  Conservación de la energía
- La energía ni se crea ni se destruye, solo se transforma.
- A escalas subatómicas #[
  - La energía no está sujeta al principio de incertidumbre
  - La masa no es más que otra forma de energía (el famoso $E = m c^2$)
]
- La equivalencia entre las distintas formas de energía no es ni evidente ni trivial, y de hecho no se confirmó hasta el siglo XVII (Thompson). 

#underline[*Cuantificación. Análisis energético*]:
- El aumento de las energías acumuladas en el sistema es igual al balance de las energías en tránsito entrantes y salientes a través de las paredes del sistema.
- Formulación general: #[
  - $Delta (E_"interna" + E_"mecánica") = (Q_"entrante" - Q_"saliente") - (W_"sobre sistema" - W_"por sistema") + (E_"materia entrante" - E_"materia saliente")$
]

==  Formulación para sistemas cerrados

- Sin variación de energía cinética y potencial: $  dif U = delta Q - delta W <=> Delta U = Q - W $ #[
  - En procesos cuasietáticos: $ delta Q =  dif  U + delta W =  dif U + p  dif V $ $ Q = Delta U + integral_1^2 p  dif V $
  - En procesos adiabáticos ($delta Q = 0$): $ dif U = - delta W <=> Delta U = -W $
  - En procesos cíclicos ($Delta U = 0$): $ 0 = Q-W <=> Q=W $
]

==  Entalpía

#underline[*Entalpía*]: $H = U + p V => Q|_p = Delta H$

#set math.cases(reverse:true)
#underline[*Formulación del Primer Principio de la Termodinámica*]: $ cases( U = H - p V -> dif U =  dif  H - p  dif V - V dif p ,  delta Q =  dif U + p dif V) -> dif H = delta Q + V dif p $
=  Ecuaciones de estado
==  Ecuaciones de estado
- #underline[*Ecuación de estado*]: Cualquier función, obtenida teórica o experimentalmente, que relaciona las variables termodinámicas de un sistema. #[
  - Dependerá de las variables escogidas (de acuerdo con el Principio Cero: las variables externas pueden expresarse en función de las variables externas y de la temperatura)
  - Para los sistemas habituales #[
    - Si el parámetro interno es la enegría interna:#linebreak() Ecuación energética de estado $ U = U(V,theta) $
    - Si el parámetro interno es la presión: #linebreak() Ecuación térmica de estado $ p = p(V,theta) $
  ]
]

==  Coeficientes térmicos de un sistema
- En general, obtener la ecuación térmica de estado no es sencillo
- Los coeficientes térmicos proporcionan un método general: #linebreak() integración de diferenciales de variables
$ V = V(theta, p) -> dif V = dvp(V, theta, eval: p, evalsym:"(") dif theta + dvp(V, p, eval: theta, evalsym:"(") dif p $
$ p = p(theta, V) -> dif p = dvp(p, theta, eval: V, evalsym:"(") dif theta + dvp(p, V, eval: theta, evalsym:"(") dif V $
$ theta = theta (p, V)-> dif theta = dvp(theta, p, eval: V, evalsym:"(") dif p + dvp(theta, V, eval: p, evalsym:"(") dif V $

Hay 3 coeficientes térmicos:
- Coeficiente de dilatación isobárica: $ alpha = 1/V dvp(V, theta, eval: p, evalsym:"(") $
- Coeficiente de compresibilidad isotérmica: $ chi_theta = - 1/V dvp(V, p, eval: theta, evalsym:"(") $
- Coeficiente piezotérmico: $ beta = 1/p dvp(p, theta, eval: V, evalsym:"(") $

Relación entre los 3 coeficientes (propiedad cíclica): $ dvp(p, V, eval: theta, evalsym:"(") dvp(V, theta, eval: p, evalsym:"(") dvp(theta, p, eval: V, evalsym:"(") = -1 => (- 1/(chi_theta V))(alpha V)(1/(beta p))=-1 => alpha = beta chi_theta p $

Solo hacen falta dos coeficientes para integrar la ecuación de estado:
$ dif V = dvp(V, theta, eval: p, evalsym:"(") dif theta + dvp(V, p, eval: theta, evalsym:"(") dif p = alpha V dif theta - chi_theta V dif p $
$ dif p = dvp(p, theta, eval: V, evalsym:"(") dif theta + dvp(p, V, eval: theta, evalsym:"(") dif V = beta p dif theta - 1/(chi_theta V) dif V $
$ dif theta = dvp(theta, p, eval: V, evalsym:"(") dif p + dvp(theta, V, eval: p, evalsym:"(") dif V = 1/(beta p) dif p + 1/(alpha V) dif V $

Además, hay que especificar completamente un estado $(p, V, theta)$

- Aplicación al gas ideal #[
  - #underline[Ley de Boyle]: a temperatura constante, el producto de la presión por el volumen es constante para una masa dada. Derivando con respecto a $p$:$ (p V)_theta = "constante" => p dvp(V, p, eval: theta, evalsym:"(") + V = 0 => chi_theta = - 1/V dvp(V, p, eval: theta, evalsym:"(") = 1/p $ (coeficiente de compresibilidad isotérmica)
  - #underline[Ley de Gay-Lussac]: a presión constante, el volumen de una masa dada de gas es proporcional a la temperatura. Derivando con respecto a $theta$: $ (V/theta)_p = "constante" => theta dvp(V, theta, eval: p, evalsym:"(") - V = 0 => alpha = 1/V dvp(V, theta, eval: p, evalsym:"(") = 1/theta $ (coeficiente de dilatación isobárica)
  - Entonces: $ dif V = alpha V dif theta - chi_0 V dif p => (dif V)/V = alpha dif theta - chi_0 dif p = (dif theta)/theta - (dif p)/p => p V = "cnst"times theta $
  - #underline[Ley de Avogadro]: en condiciones normales (0ºC y 1 atm), un mol de cualquier gas ocupa un volumen de 24 L. Esto proporciona el estado totalmente definido que permite la determinación de la constante: $ (V_(N C))/n = "cnst" (theta_(N C))/(n p_(N C)) => "cnst" = n [(p_(N C))/(theta_(N C))(V/n)_(N C)]=n tilde(R) $ con $ tilde(R) = 101300/2715 24 = 8310 "J" dot "kmol"^(-1) dot "K"^(-1) $
]
#set math.cases(reverse:false)
Finalmente: $ p V = n tilde(R) theta <=> cases(p tilde(v) = tilde(R) theta, p V = m/M tilde(R) theta = m R theta <=> p v = R theta) $

== Propiedades energéticas de un sistema
- #underline[*Definición*]: propiedades energéticas son aquellas que expresan el cambio de la energía interna de un sistema, o de calor intercambiado or un sistema a lo largo de un proceso, como consecuencia de la variación de alguna variable termodinámica.
- #underline[*Características*]: #[
  - Se obtienen generalmente de forma experimental
  - Permiten determinar la ecuación energética de estado
]
- #underline[*Clasificación*]: #[
  - Capacidades térmicas
  - Coeficientes calorimétricos #[
    - Calores latentes
    - Calores sensibles
  ]
]

- #underline[*Capacidad térmica*]: #[
- Cantidad de energía en forma de calor que es necesario comunicar a un sistema para elevar su temperatura $1 K$: $ delta Q = C dif theta $ Si está referida a la unidad de masa, se habla de calor específico: $ delta q equiv 1/m delta Q = c dif theta $ #[
  - Para un proceso finito: $ Q = integral_(theta_1)^(theta_2) C dif theta = integral_(theta_1)^(theta_2) m c dif theta $
  - Hay tantas como posibles procesos
  - Un sistema con capacidad térmica infinita se llama foco térmico.
]
- Las mas empleadas son a presión y a volumen constante $ delta Q |_p = C_p dif theta ; delta Q |_V = C_V dif theta $ 
- Del primer principio, y desarrollando $dif U$ en términos de $dif theta$ y $dif V$: $ delta Q = dif U + p dif V = dvp(U, theta, eval: V, evalsym:"(") dif theta + [dvp(U, V, eval: 0, evalsym:"(") + p] dif V $ A volumen constante ($dif V = 0$): $ delta Q |_V = C_V dif theta = dvp(U, theta, eval: V, evalsym:"(") dif theta => C_V = dvp(U, theta, eval: V, evalsym:"(") $
- A presión constante, en un proceso análogo se desarrolla $dif V$ en términos de $dif theta$ y $dif p$: $ delta Q = dif U + p dif V = dvp(U, theta, eval: V, evalsym:"(") d theta + [dvp(U, V, eval: theta, evalsym:"(") + p] overbrace([dvp(V, theta, eval: p, evalsym:"(") dif theta + dvp(V, p, eval: 0, evalsym:"(") dif p], dif V) $ Considerando presión constante y recordando $C_V$: $ delta Q |_p = C_p dif theta = {C_V + [dvp(U, V, eval: theta, evalsym:"(") + p] dvp(V, theta, eval: p, evalsym:"(") }dif theta $ $ C_p = C_V + [dvp(U, V, eval: theta, evalsym:"(") + p] dvp(V, theta, eval: p, evalsym:"(") $
- Del Primer Principio en términos de entalpía: $ delta Q = dif H - V dif p = dvp(H, theta, eval: p, evalsym:"(") dif theta + [dvp(H, p, eval: theta, evalsym:"(") - V] dif p $ A presión constante: $ delta Q |_p = C_p dif theta = dvp(H, theta, eval: p, evalsym:"(") dif theta => C_p = dvp(H, theta, eval: p, evalsym:"(") $ A volumen constante: $ delta Q |_V = C_V dif theta => ... => C_V = C_p + [dvp(H, p, eval: theta, evalsym:"(") - V]dvp(p, theta, eval: V, evalsym:"(") $
- $->$ Todas las derivadas parciales necesarias para determinar U o H son calculables, si se conoce $C_V, C_p$ y la ecuación térmica de estado: $
dvp(U, theta, eval: V, evalsym:"(") &= C_V \
C_p = C_v + [dvp(U, V, eval: theta, evalsym:"(") + p]dvp(V, theta, eval: p, evalsym:"(") -> dvp(theta, V, eval: theta, evalsym:"(") &= [C_p - C_V]dvp(theta, V, eval: p, evalsym:"(") - p \
dvp(H, theta, eval: p, evalsym:"(") &= C_p \
C_V = C_p + [dvp(H, p, eval: theta, evalsym:"(") - V]dvp(p, theta, eval: V, evalsym:"(") -> dvp(H, p, eval: theta, evalsym:"(") &= [C_V - C_p]dvp(theta, p, eval: V, evalsym:"(") + V $
- #underline[*Ecuación energética de estado*]: #[
  - Integrando las diferenciales de U o H $ 
  dif U &= dvp(U, theta, eval: V, evalsym:"(") = dif theta + dvp(U, V, eval: theta, evalsym:"(") dif V \
  dif U &= C_v dif theta + [(C_p - C_V)dvp(theta, V, eval: p, evalsym:"(") - p]dif V 
  $
  - Para la entalpía: $
  dif H &= dvp(H, theta, eval: p, evalsym:"(") dif theta + dvp(H, p, eval: theta, evalsym:"(") dif p \
  dif H &= C_p dif theta + [(C_V - C_p)dvp(theta, p, eval: V, evalsym:"(") + V] dif p$
]
- Aplicación al Gas Ideal #[
- En un gas ideal, la energía interna ($U$) solo depende de la temperatura (comprobado por el experimento de Joule). $ delta Q = 0 "y" delta W = 0 -> dif U = 0 => dvp(theta, V, eval: U, evalsym:"(") = 0 $ Por la propiedad cíclica: $ dvp(theta, V, eval: U, evalsym:"(") dvp(V, U, eval: 0, evalsym:"(") dvp(U, theta, eval: V, evalsym:"(") = -1 -> dvp(U, V, eval: theta, evalsym:"(") = -C_V dvp(theta, V, eval: U, evalsym:"(") $ Del experimento de joule $dvp(theta, V, eval: U, evalsym:"(") = 0$, y como $C_V != 0 $ -> $ dvp(U, V, eval: theta, evalsym:"(") = 0 $ Entonces, la energía interna es función solo de la temperatura: $ dif U = dvp(U, theta, eval: V, evalsym:"(") dif theta + dvp(U, V, eval: theta, evalsym:"(") dif V = C_V (theta) dif theta -> Delta U = integral_(theta_1)^(theta_2) C_V(theta)dif theta $ Si $C_V$ no depende de la temperatura -> Gas perfecto: $ dif U = C_V dif theta -> Delta U = C_V Delta theta $ Recordando la expresión para $C_p - C_V$ que $dvp(U, V, eval: theta, evalsym:"(") $ y usando la ecuación térmica de estado, se obtiene la relación de Mayer: $ C_p - C_V = [dvp(U, V, eval: theta, evalsym:"(") + p] dvp(V, theta, eval: p, evalsym:"(") = p dvp(V, theta, eval: p, evalsym:"(") = p ((m R)/p) = m R -> c_p - c_V = R $ De la ecuación de la entalpía se obtiene que también $dvp(H, p, eval: theta, evalsym:"(") = 0$: $ dif H = C_p dif theta + [(C_V-C_p)dvp(theta, p, eval: V, evalsym:"(") + V] dif p = C_p dif theta + [(- m R)(V/(m R))+V] dif p $ $ -> dif H = C_p(theta) dif theta -> Delta H = integral_(theta_1)^(theta_2) C_p (theta) dif theta $ Si $C_p$ no depende de la temperatura, se trata de un gas perfecto: $ dif H = C_p dif theta -> Delta H = C_p Delta theta $
]
]
- #underline[*Calores latentes*]: #[
- Cantidad de energía en forma de calor que se necesitan para conseguir una variación unidad de la presión o el volumen a temperatura constante: $ delta Q|_theta = l_v dif V ; delta Q |_theta = h_p dif p $ Del primer principio y desarrollando $dif U$ en términos de $dif theta$ y $dif V$: $ delta Q = dif U + p dif V = dvp(U, theta, eval: V, evalsym:"(") dif theta + [dvp(U, V, eval: theta, evalsym:"(") + p] dif V $ $"Si" dif theta = 0 -> delta Q|_theta = [dvp(U, V, eval: theta, evalsym:"(") + p] dif V = l_v dif V -> l_v = dvp(U, V, eval: theta, evalsym:"(") + p $ Haciendo lo mismo con la entalpía, del primer principio y desarrollando $dif H$ en términos de $dif theta$ y $dif p$: $ delta Q = dif H - V dif p = dvp(H, theta, eval: p, evalsym:"(") dif theta + [dvp(H, p, eval: theta, evalsym:"(") - V] dif p $ $ "Si" d theta = 0 -> delta Q|_theta = [dvp(H, p, eval: theta, evalsym:"(") - V] dif p = h_p dif p -> h_p = dvp(H, p, eval: theta, evalsym:"(") - V $ Entonces: $ h_p = dvp(H, p, eval: theta, evalsym:"(") - V = (C_V - C_p)dvp(theta, p, eval: V, evalsym:"(") $ Para gases ideales, como $dvp(U, V, eval: theta, evalsym:"(") = 0$ y $dvp(H, p, eval: theta, evalsym:"(") = 0$ se obtiene: $ l_v = dvp(U, V, eval: theta, evalsym:"(") + p -> l_v = p ; h_p = dvp(H, p, eval: theta, evalsym:"(") - V -> h_p = -V $
]
#underline[*Calores sensibles*]: #[
  - Cantidad de energía en forma de calor que se necesita para conseguir una variación unidd de la presion o el volumen a volumen o presión constante, respectivamente: $ delta Q|_V = mu dif p ;delta Q|_p = lambda dif V $ Del primer principio y desarrollando $dif U$ en términos de $dif p$ y $dif V$: $ delta Q = dif U + p dif V = [dvp(U, V, eval: p, evalsym:"(") + p]dif V + dvp(U, p, eval: V, evalsym:"(") dif p $ $ "Si" dif V = 0 -> delta Q|_v = dvp(U, p, eval: V, evalsym:"(") dif p -> $ $ mu = dvp(U, p, eval: V, evalsym:"(") = dvp(U, theta, eval: V, evalsym:"(")dvp(theta, p, eval: V, evalsym:"(") = C_v dvp(theta, p, eval: V, evalsym:"(") $ Haciendo lo mismo con la entalpía, del primer principioo y desarrollando $dif H$ en términos de $dif p$ y $dif V$: $ delta Q = dif H - V dif p = [dvp(H, p, eval: V, evalsym:"(") - V] dif p + dvp(H, V, eval: p, evalsym:"(") dif V $ $ "Si" dif p = 0 -> delta Q |_p = dvp(H, V, eval: p, evalsym:"(") dif V ->$ $lambda = dvp(H, V, eval: p, evalsym:"(") = dvp(H, theta, eval: p, evalsym:"(")dvp(theta, V, eval: p, evalsym:"(") = C_p dvp(theta, V, eval: p, evalsym:"(") $
  - Para gases ideales, la ecuación de estado lleva directamente a: $ mu = C_V theta/p ; lambda = C_p theta/V $
]
=  Procesos Termodinámicos Fundamentales
==  Formas de Pfaff del Primer Principio
Hemos obtenido que $ C_v = dvp(U, theta, eval: V, evalsym:"(") l_v = dvp(U, V, eval: theta, evalsym:"(") + p $
Entonces
$ delta Q = dif U + p dif V = dvp(U, theta, eval: v, evalsym:"(") dif theta + [dvp(U, V, eval: theta, evalsym:"(") + p] dif V  => delta Q = C_v dif theta + l_v dif V "(Primera forma de Pfaff)" $
Igualmente
$ C_p=dvp(H, theta, eval: p, evalsym:"(") h_p = dvp(H, p, eval: theta, evalsym:"(") - V $
$ delta Q = dif H - V dif p = dvp(H, theta, eval: p, evalsym:"(") dif theta + [dvp(H, p, eval: theta, evalsym:"(") - V] dif p => delta Q = C_p dif theta + h_p dif p "(Segunda forma de Pfaff)" $
Finalmente
$ mu = dvp(U, p, eval: V, evalsym:"(") space lambda = dvp(U, V, eval: p, evalsym:"(") + p $
$ delta Q = dif U + p dif V = [dvp(U, V, eval: p, evalsym:"(") + p ] dif V + dvp(U, p, eval: v, evalsym:"(") dif p = mu dif p + lambda dif V $
o, equivalentemente
$ lambda = dvp(H, V, eval: p, evalsym:"(") space mu = dvp(H, p, eval: v, evalsym:"(") - V $
$ delta Q = dif H - V dif p = [dvp(H, p, eval: V, evalsym:"(") - V ] dif p + dvp(H, V, eval: p, evalsym:"(") dif V = mu dif p + lambda dif V $
$ => delta Q = mu dif p + lambda dif V "(Tercera forma de Pfaff)" $

== Procesos politrópicos
- #underline[*Proceso politrópico*]: 
Proceso en que la capacidad térmica del sistema permanece constante #[
  - Ecuación: A partir de la Tercera forma de Pfaff: $delta Q = mu dif p + lambda dif V$ #[
    - Por definición $ delta Q = C dif theta space "y" space lambda = C_p = dvp(theta, V, eval: p, evalsym:"(") space mu = C_v dvp(theta, p, eval: V, evalsym:"(") $ $ => C dif theta = C_v dvp(theta, p, eval: V, evalsym:"(") dif p = C_p dvp(theta, V, eval: p, evalsym:"(") dif V $
    - Desarrollando $dif theta$ en términos de $dif p$ y $dif V$ y reordenando: $ C[dvp(theta, p, eval: V, evalsym:"(") dif p + dvp(theta, V, eval: p, evalsym:"(") dif V] = C_V dvp(theta, p, eval: V, evalsym:"(") dif p + C_p dvp(theta, V, eval: p, evalsym:"(") dif V (C_v - C)dvp(theta, p, eval: V, evalsym:"(") dif p _ (C_p - C)dvp(theta, V, eval: p, evalsym:"(") dif V = 0 $
    - Dividiendo por $C_v - C$ se obtiene $ dvp(theta, p, eval: V, evalsym:"(") + (C_p - C)/(C_v - C) dvp(theta, V, eval: p, evalsym:"(") dif V = 0 $
    - El índice politrópico se define como $ k = (C_p - C)/(C_v - C) $
    - Entonces, la ecuación funcional del proceso en términos de $p$ y $V$ es $ dvp(theta, p, eval: V, evalsym:"(") dif p + k dvp(theta, V, eval: p, evalsym:"(") dif V = 0 $
    - Se pueden obtener fácilmente ecuaciones en términos de $p $ y $theta$ y de $theta $ y $V$ 
  ]
  - Ecuaciones funcionales: #[
    - Formulación presión-volumen: $dvp(theta, p, eval: V, evalsym:"(") dif p + k dvp(theta, V, eval: p, evalsym:"(") dif V = 0 $
    - Formulación temperatura-volumen: $ dif theta + (k-1)dvp(theta, V, eval: p, evalsym:"(") dif V = 0 $
    - Formulación presión-temperatura: $ dif theta = (1-k)/k dvp(theta, p, eval: V, evalsym:"(") dif p = 0 $
  ]
  - Procesos más frecuentes: #[
    - Adiabático: $ dif Q = 0 => C=0 => k = C_p / C_v equiv gamma $
    - Isotermo: $ dif theta = 0 => C->oo => k=1 $
    - Isóbaro: $ C=C_p => k=0 $
    - Isócoro: $ C= C_V => k->oo $ 
    ]
]
==  Compresibilidad adiabática
#underline[*Compresibilidad adiabática*]: $ X_(Q=0) = -1/V ((dif V)/(dif p))_(Q=0) $
La ecuación funcional de este proceso se obtiene considerando $k=gamma$ en la politrópica $ dvp(theta, p, eval: V, evalsym:"(") dif p + gamma dvp(theta, V, eval: p, evalsym:"(") dif V = 0 $
Derivando con respecto a $p$ obtenemos
$ dvp(theta, p, eval: gamma, evalsym:"(") + gamma dvp(theta, V, eval: p, evalsym:"(") dvp(V, p, eval: Q=0, evalsym:"(") = 0 $
Para despejar la derivada en la definición de $chi_(Q=0)$ multiplicamos todo por $dvp(V, theta, eval: p, evalsym:"(")$ 
$ dvp(theta, p, eval: V, evalsym:"(") dvp(V, theta, eval: p, evalsym:"(") + gamma ((dif V)/(dif p))_(Q=0) = 0 $
Por la propiedad ciclica
$ - dvp(V, p, eval: theta, evalsym:"(") + gamma ((dif V)/(dif p))_(Q=0) = 0 $
Dividiendo por V y despejando:
$ gamma 1/V ((dif V)/(dif p))_theta = 1/V dvp(V, p, eval: theta, evalsym:"(") => chi_(Q=0) = 1/gamma chi_theta $

== Procesos de los gases perfectos
#underline[*Proceso isóbaro de un gas perfecto*]:

Aplicando la ecuación de estado se obtiene la ecuación del proceso: 
$ p v_1 = R theta_1; p v_1  = R theta_2 => (v_1)/(theta_1) = (v_2)/(theta_2) $
El trabajo es 
$ w = integral_1^2 p dif v = p integral_1^2 dif v = p Delta v = R Delta theta $
Por la definición de entalpía
$ q = Delta h = c_p Delta theta = gamma/(gamma-1) p Delta v $
Aplicando el primer principio
$Delta u = q - w = c_p Delta theta - R Delta theta = c_v Delta theta = 1/(gamma-1) p Delta v $
#underline[*Proceso isocóro de un gas perfecto*]:

Ecuacion de proceso
$ p_1 v = R theta_1 ; p_2 v = R theta_2 => (p_1)/(theta_1) = (p_2)/(theta_2) $
El trabajo es nulo ya que el volumen es constante: 
$ w = integral_1^2 p dif v = 0 $
La energía interna es
$ Delta u = c_v Delta theta = c_v v (Delta p)/R = 1/(gamma - 1 ) v Delta p $
Aplicando el primer principio
$ q = Delta u + w = Delta u = c_v Delta theta = c_v v (Delta p)/R = 1/(gamma - 1) v Delta p = Delta u $

#underline[*Proceso isotermo de un gas perfecto*]:

Ecuación de proceso
$ p_1 v_1 = R theta ; p_2 v_2 = R theta => p_1 v_1 = p_2 v_2 $
El trabajo es
$ w = integral_1^2 p dif v = p_1 v_1 integral_1^2 (dif v)/v = p_1 v_1 ln (v_2)/(v_1) = R theta_1 ln (p_1)/(p_2)$
La energía interna es
$ Delta u = c_v Delta theta = 0 $
Aplicando el primer principio
$ q = Delta u + w = w = p_1 v_1 ln (v_2)/(v_1) = R theta_1 ln (p_1)/(p_2) $

#underline[*Proceso politrópico de un gas perfecto*]: 

La ecuación de proceso se obtiene integrando la politrópica con la ecuación de estado: 

$ dvp(theta, p, eval: V, evalsym:"(") dif p + k dvp(theta, v, eval: p, evalsym:"(") dif v = 0 -> v/R dif p + k p/R dif V = 0 -> 1/p dif p + k 1/v dif V = 0 \ -> ln (p_2)/(p_1) = -k ln (v_2)/(v_1) -> (p_2)/(p_1) = ((v_1)/(v_2))^k -> p_1 v_1^k = p_2 v_2 ^k $
El trabajo es
$ w = integral_1^2 p dif v = p_1 v_1^k integral_1^2 (dif v)/(v^k) = - (p_1 v_1)/(k-1) [((v_2)/(v_1))^(1-k)-1] $
La energía interna es
$ Delta u = c_v Delta theta = (R theta_1)/(gamma - 1)[((p_2)/(p_1))^((k-1)/k) - 1 ] $
Aplicando el primer principio
$ q = Delta u + w = (k-gamma)/((gamma-1)(k-1)) p_1 v_1 [((v_2)/(v_1))^(1-k) - 1] $

#underline[*Proceso adiabático de un gas perfecto*]:

Considerando el caso particular $k=gamma$ en las ecuaciones politrópicas se obtiene

$ p_1 v_1^gamma = p_2 v_2^gamma ; p_1^(1-gamma) theta^gamma = p_2^(1-gamma)theta_2^gamma ; v_1^(gamma-1) theta_1 = v_2^(gamma - 1 ) theta_2 $

$ w = integral_1^2 p dif v = -(p_1 v_1)/(gamma -1 ) [ ((v_2)/(v_1))^(1-gamma) - 1 ] = - Delta u $
$ Delta u  = c_v Delta theta = (R theta_1)/(gamma - 1 )[((p_2)/(p_1))^((gamma -1)/gamma) - 1]$
$ q = Delta u + w = 0 $

=  Segundo Principio de la Termodinámica
== 1 Limitaciones del primer principio
- Da información sobre la viabilidad energética de los procesos, pero hay procesos naturales no espontáneos, mientras que sus inversos sí lo son
-> El Segundo Principio determina el sentido de evolución espontánea de los procesos, y cuál es el estado final de equilibrio que se alcanza

==  Conceptos de motor térmico y de máquina frigorífica
#underline[*Motor térmico*]:
Sistema en el que un fluido evoluciona de forma ciclica intercambiando calor con dos focos (recibiendo un calor $Q_a$ y cediendo un calor $Q_c$), produciendo así trabajo $W$

Por el 1er principio solo se requeriria un foco del que absorber calor.

Concepto de Rendimiento
$ eta = W/(Q_a) $ 
Cuantifica la proporción de calor cedido utilizada para producir trabajo

Sabemos que por definición $Q_a = W+Q_c$ (Conservación de energía) y por tanto $Q_a - Q_c = W => W = Q_a + |Q_c|$

$ => eta = W/Q_a = (Q_a - |Q_c|)/(Q_a) = 1-(|Q_c|)/(Q_a) $

#underline[*Máquina frigorífica*]:
Maquina en la que el ciclo se recorre de forma inversa, consumiendo trabajo y convirtiendolo en un flujo de calor desde temperaturas bajas a temperaturas altas

El 1er principio solo implica la existencia de un foco al que ceder calor

Coeficientes de prestaciones

Efecto frigorífico: 
$ epsilon = (Q_a)/(|W|) = (Q_a)/(|Q_c|-Q_a) $
Calefacción: 
$ epsilon_c = (|Q_c|)/(|W|) = (|Q_c|)/(|Q_c|-Q_a) $


==  Enunciados del Segundo Principio: equivalencia

=== En términos de motor térmico:
#underline[Enunciado de Kelvin-Planck]: Es imposible la existencia de una maquina que funcionando ciclicamente solamente absorba calor y produzca trabajo

#underline[Enunciado de Ostwald]:
El movil o motor de segunda especie es imposible. El movil de segunda especie se define como una maquina con una sola fuente o monoterma
=== En terminos de máquina frigorífica
#underline[Enunciado de Clausius]:
Es imposible la existencia de un dispositivo, que, funcionando ciclicamente, tenga como unico efecto el paso de calor de un cuerpo frío a otro más caliente

==  Procesos reversibles e irreversibles
#underline[*Proceso reversible*]:
Dado un proceso por el que un sistema pasa de un estado inicial a un estado final, se dice que es reversible si tanto el sistema como el entorno pueden ser devueltos a sus estados iniciales sin una transformación no compensada de calor en trabajo (sin violar el segundo principio)
-> Todos estos procesos son cuasiestaticos

#underline[*Proceso irreversible*]:
La vuelta al estado inicial del sistema y entorno implica una transformación no compensada de calor en trabajo (violación del segundo principio)
-> Casi todos los procesos no estáticos son irreversibles (Fricción, transferencia de calor por diferencia de temperatura, expansión al vacío, difusión...)

=== Tipos de irreversibilidades
- Externas: desequilibrios entre el sistema y su entorno (pared)
- Internas: desequilibrios dentro del sistema

=== Procesos internamente reversibles
- Los gradientes de variables intensivas en el sistema son tan pequeños que la evolución dentro del sistema puede considerarse reversible #[
  - Cualquier estado intermedio puede considerarse un estado de equilibrio, por lo que cumple la ecuación de estado
  - Cualquier irreversibilidad ocurre en la pared del sistema.
]

==  Ciclo y teoremas de Carnot
#underline[*Ciclo de Carnot*]:
- Se trata de un ciclo externa e internamente reversible
- Los cuatro procesos reversibles que lo forman son #[
  + Compresión adiabática ($delta Q = 0$)
  + Aporte de calor isotermo ($T_"fuente" - T_"sistema" = 0$)
  + Expansión adiabática ($delta Q = 0$)
  + Cesión de calor isoterm($T_"sumidero"- T_"sistema" = 0 $)
]

#underline[*Primer teorema de Carnot*]:
- No puede existir un motor termico que, funcionando entre dos focos termicos dados tenga mayor rendimiento que uno de Carnot funcionando entre los mismo focos

#underline[*Segundo teorema de Carnot*]:
- Todos los motores reversibles que operan entre los mismos focos termicos tienen el mismo rendimiento

==  Escala termodinámica de temperaturas
- Es una escala independiente de las características del sistema
- Está basada en el rendimiento del motor de Carnot (que depende únicamente de las temperaturas de las fuentes)

$ eta = W/(Q_a) = 1 - (|Q_c|)/(Q_a) = Phi (theta_a, theta_c) $
$ => (Q_a)/(|Q_c|) = 1/(1- Phi(theta_a, theta_c)) = f(theta_a, theta_c) $

Para encontrar la forma de $f(theta_a,theta_c)$, consideremos un foco intermedio
$(Q_a)/(|Q_c|) = (Q_a)/(|Q_"int"|) (Q_"int")/(|Q_c|)$
Pero: $ (Q_a)/(|Q_"int"|) = f(theta_a, theta_"int") ; (Q_"int")/(|Q_c|) = f(theta_"int", theta_c); (Q_a)/(|Q_c|) = f(theta_a, theta_c)) $
$ -> f(theta_a, theta_c) $
Esto implica que
$ f(theta_i, theta_j) = (psi(theta_i))/(psi(theta_j)))$
Por lo tanto:
$ (Q_a)/(|Q_c|) = (psi(theta_a))/(psi(theta_c)) equiv (T_a)/(T_c) <-> (Q_a)/(-Q_c) = (T_a)/(T_c) $

=  Entropía e irreversibilidad
==  Entropía
Del griego 'en-tropie': dirección intrínseca
- La entropía puede introducirse de dos formas complementarias: #[
  - Macroscópica (relacionada con pérdidas de calor irreversibles), como fue definida inicialmente por Rudolf Clausius en los 1860 y se hara en todo lo que siguen
  - Microscópica (relacionada con la probabilidad estadística de un estado) como hizo Ludwig Boltzmann en 1877
]
#grid(columns:2, column-gutter:1cm, [
- Un ciclo arbitrario puede aproximarse por un gran numero de ciclos consistentes en: #[
  - 2 procesos adiabáticos
  - 2 procesos isotérmicos
]
], image("assets/figure_2024-11-06-15-02-31.png"))
- Para cada ciclo $i$: #[
  - Si es reversible (Carnot) entonces: $ (Q^i_a)/(Q^i_c)=-(T_a^i)/(T_c^i) => (Q^i_a)/(T^i_a)+(Q^i_c)/(T^i_c) = 0 $
  - Si es irreversible, como el rendimiento es menor que el de un ciclo de Carnot, para un $Q^i_a$ dado es $|Q^i_(c("rev"))| < |Q^i_(c("irrev"))| -> Q^i_(c("rev")) > Q^i_(c("irrev"))$ $ Q^i_a/T^i_a + Q^i_c/T^i_c < 0 $
]
- Sumando para todos los ciclos, se obtiene: $ sum_i Q^i_a/T^i_a + Q^i_c/T^i_c <= 0 $ Donde el signo $=$ corresponde al ciclo reversible
- En el limite en que se usa un numero infinito de ciclos para aproximar perfectamente el ciclo inicial se obtiene finalmente la desigualdad de Clausius
#rect($ integral.cont (delta Q)/T <= 0 $)
#grid(columns:2, column-gutter: 1cm, [
#underline[*Entropía*]:
Sea un ciclo reversible de un sistema cerrado:

Por Clausius:
$ 0 = integral.cont (delta Q)/T = integral_1^2 (delta Q)/T |_a + integral_2^1 (delta Q)/T |_b => integral_1^2 (delta Q)/T |_a - integral_1^2 (delta Q)/T |_b = 0 $
Para cualquier trayecto reversible: $ integral_1^2 (delta Q)/T |_a = integral_1^2 (delta Q)/T |_b = integral_1^2 (delta Q)/T |_c = ... $
La entropía (función de estado) se define como:
#rect($ dif S = (delta Q)/T |_"REV" => S_2 - S_1 = integral_1^2 (delta Q)/T|_"REV" $)], image("assets/figure_2024-11-05-16-41-08.png"))
En procesos adiabáticos reversibles y en prpocesos reversibles de sistemas aíslados: #rect($ dif S = 0 => Delta S = 0 $ )

- Diagrama $T-s$: #[
  - Permite representar en la misma gráfica la temperatura y el calor transmitido reversible (área bajo la curva del proceso)
  - En un ciclo el área interior es el calor neto intercambiado ($Q_"ciclo" = W$)
]
#stack(dir:ltr,image("assets/figure_2024-11-05-16-56-39.png"), image("assets/figure_2024-11-05-16-59-01.png"))

== Procesos reales: generación de Entropía
#grid(columns:2, [
- Cambio de entropía en procesos irreversibles #[
- Cerramos el ciclo con un proceso reversible $ integral.cont (delta Q)/T = integral_1^2 (delta Q)/T |_I - integral_1^2 (delta Q)/T |_R = integral_1^2 (delta Q)/T |_I - (S_2-S_1) < 0 $ $ -> Delta S > integral_1^2 (delta Q)/T|_I => dif S > (delta Q)/T |_I $
]], image("assets/figure_2024-11-05-17-03-38.png")
)
*Principio del incremento de entropía:*
#grid(columns:2,column-gutter: .5cm, [En sistemas aislados: \ En sistemas cerrados adiabáticos:
], [ #align(horizon)[$ Delta S>0=>dif S>0 $
]])
*Generación de entropía*
$ Delta S = sigma + integral_1^2 (delta Q)/T |_I <=> dif S = delta sigma + (delta Q)/T|_I, sigma > 0, delta sigma > 0 $

- Extensión a sistemas no adiabáticos: #[
  - El universo es un sistema aislado: $delta Q_E = - delta Q_S$ $ 
  dif S_U &= dif S_S + dif S_E >=0 \ 
  dif S_S &= (delta Q_S)/T_S + delta sigma_S \
  dif S_E &= (delta Q_E)/T_E + delta sigma_E \
  \
  dif S_U &= (delta Q_S)/T_S + (delta Q_E)/T_E + delta sigma_S + delta sigma_E = delta Q_s [1/T_S - 1/T_E] + delta sigma_S + delta sigma_E >= 0 
  $
]
==  Relación entre ecuaciones de estado
- Combinando el primer y segundo principios:
#grid(align: horizon, columns:3, column-gutter: .5cm, $dif U = delta Q - p dif V \ delta Q = T dif S $, $ dif U = T dif S - p dif V$, [Ecuación de Gibbs])
$ -> dif S = 1/T dif U + p/T dif V $
- Desarrollando: 
$ dif S = 1/T dvp(U, T, eval: V, evalsym:"(") dif T + 1/T [dvp(U, V, eval: T, evalsym:"(")+p] dif V $
Identificando derivadas parciales: 
$ dvp(S, T, eval: V, evalsym:"(") = 1/T dvp(U, T, eval: V, evalsym:"(") ; dvp(S, V, eval: T, evalsym:"(") = 1/T [dvp(U, V, eval: T, evalsym:"(") + p ] $
Como la entropía es función de estado, es una diferencial exacta, y cumple la condición de Schwartz:
$ diff/(diff T)[dvp(S, V, eval: T, evalsym:"(")]_V = diff/(diff V)[dvp(S, T, eval: V, evalsym:"(")]_T $
$ diff/(diff T)[dvp(S, V, eval: T, evalsym:"(")]_V = diff/(diff T) [1/T [dvp(U, V, eval: T, evalsym:"(") + p ]]_T = 1/T dvp(U,T,V, evalsym:"(") -1/T^2 dvp(U, V, eval: T, evalsym:"(")+1/T dvp(p, T, eval: V, evalsym:"(") - p/(T^2) $
$ diff/(diff V) [dvp(S, T, eval: V, evalsym:"(")]_T = diff/(diff V)[1/T dvp(U, T, eval: V, evalsym:"(")]_T = 1/T ((diff^2 U)/(diff V diff T)) $
Reordenando y simplificando:
#stack(spacing: .5cm, dir:ltr,$ -1/T^2 dvp(U, V, eval: T, evalsym:"(") + 1/T dvp(p, T, eval: V, evalsym:"(") - p/T^2 = 0 -> $, [#rect($ T dvp(p, T, eval: V, evalsym:"(") = dvp(U, V, eval: T, evalsym:"(") + p $)])
Consecuencias: #[
  - Relación de Mayer generalizada: #[
    - Teníamos: $ C_p - C_V = [dvp(U, V, eval: T, evalsym:"(") + p ]dvp(V, T, eval: p, evalsym:"(") $
    - Sustituyendo: $ C_p - C_v = T dvp(p, T, eval: V, evalsym:"(") dvp(V, T, eval: p, evalsym:"(") $
    - En términos de coeficientes térmicos: $ C_p - C_V = alpha beta p V T = (alpha^2 V T)/chi_T $
  ]
  - Ley de Joule para los gases ideales: $ dvp(U, V, eval: T, evalsym:"(") = T dvp(p, T, eval: V, evalsym:"(") - p = T p/T - p = 0 => dvp(U, V, eval: T, evalsym:"(") = 0 $
]
== Cálculo de variaciones de entropía
- La entropía es función de estado, solo hacen falta los estados inicial y final. #[
  - Teníamos: $ dif S = 1/T dvp(U, T, eval: V, evalsym:"(") dif T + 1/T [dvp(U, V, eval: T, evalsym:"(") + p ]dif V $ y $ C_V = dvp(U, T, eval: V, evalsym:"(") ; dvp(U, V, eval: T, evalsym:"(") + p = T dvp(p, T, eval: V, evalsym:"(") $
  - Entonces: $ dif S = C_V (dif T)/T + dvp(p, T, eval: V, evalsym:"(") dif V $
  - En términos de $p$ y $T$: $ dif S = C_p (dif T)/T - dvp(V, T, eval: p, evalsym:"(") dif p $
  - En términos de $p$ y $V$: $ dif S = C_v/T dvp(T, p, eval:V, evalsym:"(") $ 
]
#grid(columns:3, column-gutter: .5cm, 
[Para: 
$ dif s &= c_v (dif T)/T + R (dif v)/v \
dif s &= c_p (dif T)/T - R (dif p)/p \
dif s &= c_v (dif p)/p + c_p (dif v)/v $], 
[#underline[Gas ideal]
$ Delta s &= integral c_v (dif T)/T + R ln (v_2)/(v_1) \
 Delta s &= integral c_p (dif T)/T - R ln p_2/p_1 \
 Delta s &= integral c_v (dif p)/p + integral c_p (dif v)/v $
],
[#underline[Gas perfecto]
$ Delta s &= c_v ln (T_2)/(T_1) + R ln v_2/v_1 \
  Delta s &= c_p ln (T_2)/(T_1) - R ln p_2/p_1 \
  Delta s &= c_v ln (p_2)/(p_1) + c_p ln (v_2)/(v_1) $
])

= Relaciones Termodinámicas
== Sistemas abiertos: potencial químico
Ecuación de Gibbs en sistemas cerrados: $ dif U = T dif S - p dif V $ 
establece la dependencia entre $U$, $S$ y $V$ como: $ U = U(S,V)$

En sistemas abiertos $U$ depende también de la masa (o numero de moles) del sistema. Entonces: $ U = U(S,V,n) $
Entonces la ecuación de Gibbs puede generalizarse como:
$ dif U = T dif S - p dif V + mu dif n $ 
donde $ mu = dvp(U,N,eval: (S,V), evalsym: "(") $
es el potencial químico del sistema

== Complementos matemáticos - Funciones homogéneas
- Una función #rect($psi(x_1, ..., x_n)$) se dice que es homogénea de orden $r$ si $ psi(lambda x_1, ..., lambda x_n) = lambda^r phi(x_1, ..., x_n) $
- Casos particulares #[
  - $r=0$: magnitudes intensivas $ psi(lambda x_1, ..., lambda x_n) = psi(x_1, ..., x_n) $
  - $r=1$: magnitudes extensivas $ psi(lambda x_1, ..., lambda x_n) = lambda psi(x_1, ..., x_n) $
]
- Ecuaciones para magnitudes extensivas: #[
  - Adoptando la notación $tilde(x) = lambda x_i $, podemos decir que $tilde(psi)(tilde(x)_1,...,tilde(x)_n) = lambda psi(x_1, ..., x_n)$
  - Diferenciando con respecto a $lambda$ $dvp(psi, lambda) = sum_(i =1)^(n) dvp(tilde(psi), tilde(x)_i) dv(tilde(x)_i, lambda) = sum_(i=1)^(n) dvp(tilde(psi), tilde(x)_i) x_i = psi(x_1, ..., x_n) forall lambda $
  - Tomando $lambda = 1$, $tilde(psi)(tilde(x)_i) = psi(x_i)$, y definiendo la magnitud intensiva $y_i = dvp(psi, x_i)$ queda finalmente la Ecuación de Euler $ psi(x_1, ..., x_n) = sum_(i=1)^(n) dvp(psi, x_i) equiv sum_(i=1)^(n)  $
  - La expresión de la diferencial $dif psi(x_1, ..., x_n) = sum_(i=1)^(n) dvp(psi,x_i, eval:x_(x!=i), evalsym:")") space dif x_i equiv sum_(i=1)^(n) y_i dif x_i $ se llama en Termodinámica Ecuación de Gibbs.
  - Diferenciando la ecuación de Euler: $ dif psi = sum_(i=1)^(n) [y_i dif x_i + x_i dif y_i] $ Comparando con la ecuación de Gibbs queda; $ sum_(i=1)^(n) x_i dif y_i = 0 $ que es la Ecuación de Gibbs-Duhem
]

== Representación energética

La ecuacion fundamental es la expresión de la energía interna en función de variables independientes extensivas. 
- Ecuación energética fundamental: $U = U(S,V,n)$ #[
  - Ecuación de Gibbs: $ dif U = T dif S - p dif V + mu dif n $
  - Ecuación de Euler : $ dif U = T S - p V + mu n $
  - Ecuación de Gibbs-Duhem: $ n dif mu = S dif T + V dif p => dif mu = - tilde(s) dif T + tilde(v) dif p $
]
- Al expresar la energía interna en términos de sus variables independientes naturales, se obtiene información exhaustiva sobre el sistema.

Por ejemplo, en el caso de un sistema cerrado: 
$ U = U(S, V) quad dif U = T dif S - p dif V $
Parciales primeras : $ dvp(U,S, eval:V, evalsym:")")=T quad ; quad dvp(U,V, eval:S, evalsym:")")=-p $
Eliminando $S$ se obtiene la ecuación térmica de estado: $p=p(T,V)$
Parciales segundas: 
$ dvp(U,S, eval:V, evalsym:")", deg:2) = dvp(T,S, eval:V, evalsym:")") = T 1/T dvp(T,S, eval:V, evalsym:")") = T/C_v => C_v = T dvp(U,S, eval:V, evalsym:")", deg:2)^(-1) $
$ dvp(U,V, eval:S, evalsym:")", deg:2) = dvp(T,S, eval:V, evalsym:")")=1/(V chi_S)=> chi_S = [V dvp(U,V, eval:S, evalsym:")")]^(-1) $

*Criterio de evolución en procesos no estáticos*
Consideremos un sistema cerrado que interacciona térmica y mecánicamente con un foco
#image("assets/figure_2024-11-20-19-51-21.png")
Si inicialmente la presión y la temperatura son distintas en el sistema y el foco, el sistema completo experimentará un proceso irreversible: 
$ Delta S_U = Delta S + Delta S_F > 0 $
El proceso en el foco es reversible. Así, si se transfiere un calor $Q$ al sistema se tiene: $ Delta S_F = - Q/(T_F) $
Entonces: $ Delta S - Q/(T_F) = 0 $
Aplicando el primer principio: $ Delta U = Q - p_F Delta V $
Despejando $Q$: $ T_F Delta S > Delta U + p_f Delta V $ 
Esta condición puede aplicarse para estudiar la evolución de sistemas con distintas ligaduras si se formula con el potencial adecuado (variables naturales)
$ S = "cte", V= "cte":$
$ Delta U < T_F Delta S - p_F Delta V = 0 -> Delta U < 0 $
La energía interna disminuye por lo que el estado final de equilibrio es un mínimo.

== Representación entrópica
La ecuación fundamental es la expresión de la entropía en función de variables independientes extensivas: 
- Ecuación entrópica fundamental: $ S = S(U,V,n) $ #[
  - Ecuación de Gibbs: $ dif S = 1/T dif U + p/T dif V - mu/T dif n $
  - Ecuación de Euler: $ S = 1/T U + p/T V - mu/T n $
  - Ecuación de Gibbs-Duhem: $ U dif(1/T) + V dif (p/T) - n dif(mu/T) = 0 $
]
- También se obtiene información exhaustiva sobre el sistema:
Por ejemplo, un sistema cerrado: $ S=S(U,V) quad dif S = 1/T dif U + p/T dif V $
Parciales primeras: 
$ dvp(S,U, eval:V, evalsym:")") = 1/T quad ; quad dvp(S,V, eval:U, evalsym:")") = P/T -> p = (dvp(S,V, eval:U, evalsym:")")/dvp(S,U, eval:V, evalsym:")")) $
El formalismo se complica algo pero proporciona un criterio en un caso significativo.
- Criterio de evolución en procesos no estáticos
- $U="cte"$, $V="cte"$: sistema aislado
$ Delta S > 1/(T_F) Delta U + (p_F)/(T_F) Delta V = 0 -> Delta S > 0 $
La entropía aumenta $->$ El estado final de equilibrio es un máximo

== Condiciones de equilibrio de un sistema compuesto
Considerand 2 sistemas separados por una pared, el conjunto aislado
La condicioón de equilibrio corresponde al maximo de entropía $S$:
$ S = S_1(U_1, V_1, n_1) + S_2(U_2, V_2, n_2)$
Vamos a obtener su expresión para diferentes tipos de pared: 
- Pared diatérmana, fija e impermeable
$ dif S = dvp(S_1,U_1) dif U_1 + dvp(S_2,U_2) dif U_2 = 1/T_1 dif U_1 + 1/T_2 dif U_2 $

El conjunto es aíslado $-> U = U_1+U_2 = "cte" -> dif U_2 = -dif U_1 $ 
$ => dif S = (1/T_1 - 1/T_2) dif U_1 $ 
El equlilibrio corresponde al maximo de entropía por lo que
$ dif S = 0 -> (1/T_1 - 1/T_2) = 0 -> T_1 = T_2 $

- Pared diatérmana, móvil e impermeable
$ dif S &= dvp(S_1,U_1) dif U_1 =+ dvp(S_2,U_2) dif U_2 + dvp(S_1,V_1) dif V_1 + dvp(S_2,V_2) dif V_2 \ &= 1/T_1 dif U_1 + 1/T_2 dif U_2 (p_1)/(T_1) dif V_1 + (p_2)/(T_2) dif V_2 $
El conjunto es aíslado -> $dif U_2 = - dif U_1 $ y $ V= V_1 + V_2-> dif V_2 = -dif V_1$ 
$ => dif S = (1/T_1 - 1/T_2) dif U_1 + ((p_1)/T_1 - (p_2)/T_2) dif V_1 $
El equliibrio corresponde al maximo de entropía por lo que
$ dif S = 0 -> (1/T_1 - 1/T_2) = 0; ((p_1)/T_1 - (p_2)/T_2) = 0 -> T_1 = T_2; p_1 = p_2 $

- Pared diatérmana, fija y permeable
$ dif S = dvp(S_1,D_1) dif U_1 + dvp(S_2,U_2) dif U_2 + dvp( S_1,n_1) dif n_1 + dvp(S_2,n_2) dif n_2 = 1/T_1 dif U_1 + 1/T_2 dif U_2 - dvp(mu_1,T_1) dif n_1 - dvp(mu_2,T_2) dif n_2 $
El conjunto es aíslado $->$ $dif U_2 = - dif U_1$ y también $n = n_1 + n_2 => dif n_2 = - dif n_1$
$ => dif S = (1/T_1 - 1/T_2 ) dif U_1 - ((mu_1)/T_1 - (mu_2)/T_2 ) dif n_1 $
El equlibrio corresponde al maximo de entropía por lo que
$ dif S = 0 -> (1/T_1 - 1/T_2 ) = 0; ((mu_1)/T_1 - (mu_2)/T_2) = 0 -> T_1 = T_2 space mu_1 = mu_2 $

== Limitaciones de la representación energética
- Para calcular magnitudes otras que $C_v$ o $chi_S$ hay que usar la relación de Mayer generalizada (para $C_p$), y para los coeficientes térmicos
$ T = T(S,V) => dif T = dvp(U,S, eval:V, evalsym:")", deg: 2) dif S + dvp(U, V,S) dif V quad T = dvp(U,S, eval:V, evalsym:")") $
$ p = p(S,V) => -dif p = dvp(U,S,V) dif S + dvp(U,V, eval:S, evalsym:")", deg:2 ) dif V quad p = dvp(U,V, eval:S, evalsym:")")  $
Por ejemplo, $beta$: poniendo $dif V = 0 $ y eliminando $dif S $: $ beta = 1/p dvp(p,T, eval:V, evalsym:")") = dvp(U,V, eval:S, evalsym:")")^(-1) dvp(U,S,V) dvp(U,S, eval:V, evalsym:")", deg:2 )^(-1) $
Vemos que no es práctico. Exploremos una alternativa
== Transformación de Legendre
Dada una función $psi$ de las variables extensivas $x_i$, vamos a definir una función cuyas variables naturales sean las intensivas $y_i$, es decir 
$ psi(x_1,..., x_n) => phi(y_1,...,y_n) quad y_i dvp(psi,x_i) $
Entonces, definimos la transformación de Legendre para un conjunto parcial de variables (las $k$) primeras: 
$ phi(y_1,..., y_k, x_(k+1), ..., x_n)&=psi - sum_(i=1)^(k) y_i x_i \ &= psi - sum_(i=1)^(k) x_i dvp(psi,x_i) $

== Entalpía
La magnitud resultante de sustituir V por su variable conjugada $p$ mediante una transformación de Legendre sobre $U$ se denomina entalpía y se denota $H$:
$ U -> U-V dvp(U,V, eval:S, evalsym:")") => H = U + p V $ 

En la ecuación de Gibbs: 
$ dif H = dif U + dif (p V) = (T dif S - p dif V + mu dif n ) + p dif V + V dif p $
$-> dif H = T dif S + V dif p + mu dif n quad -> H = H(S,p,n) $ 

En las ecuaciones de Euler y Gibbs-Duhem
$ H = T S + mu n $
$ n dif mu = - S dif T + V dif p $

=== Información obtenible en sistemas cerrados

- Parciales primeras: $ dvp(H,S, eval:p, evalsym:")") = T space ; space dvp(H,p, eval:S, evalsym:")") = V => p =  p(T,V) $
- Parciales segundas 
$ dvp(H,S, eval:p, evalsym:")", deg:2) = T/T dvp(T,S, eval:, evalsym:")") = T/C_p => C_p = T dvp(H,S, eval:p, evalsym:")", deg: 2)^(-1)$
$ dvp(H,p, eval:S, evalsym:")", deg:2 ) = dvp(V,p, eval:S, evalsym:")") = -V chi_S => chi_S = -1/V dvp(H,p, eval:S, evalsym:")" , deg:2) $

=== Criterio de evolución en procesos no estáticos
- $ S = "cte", p=p_F="cte"$: $H$ es el potencial natural: $ Delta U < T_F Delta S - p_F Delta V = -p_F Delta V $
$ -> Delta U + p_F Delta V < 0 $
Pero
$ H = U+p V -> Delta H = Delta U + p_F Delta V < 0 $
$ -> Delta H < 0 $
La entalpía disminuye por lo que el estado final de equilibrio es un mínimo.

== Potencial de Hemholtz
La magnitud resultante de sustituir $S$ por su variable conjugada $T$ mediante una transformación de Legendre sobre $U$ se denomina potencial de Hemholtz y se denota $F$:
$ U -> U-S dvp(U,S, eval:V, evalsym:")") => F = U-T S $

En la ecuación de Gibbs:
$ dif F &= dif U - dif (T S ) \ &= (T dif S - p dif V + mu dif n ) - T dif S - S dif T \ &= -S dif T - p dif V + mu dif n$
$ => F = F(T,V,N ) $

En las ecuaciones de Euler y Gibbs-Duhem:
$ F = - p V + mu n $
$ n dif mu = -S dif T + V dif p $

=== Información obtenible en sistemas cerrados
- Parciales primeras: 
$ dvp(F,T, eval:V, evalsym:")") = -S space ; space dvp(F,V, eval:T, evalsym:")") = - p -> space p = p(T,V) $
- Parciales segundas: 
$ dvp(F,V, eval:T, evalsym:")", deg:2) = - dvp(p,V, eval:T, evalsym:")") = 1/(V chi_T ) => chi_T = [V dvp(F,V, eval:T, evalsym:")", deg:2)^(-1)] $
$ dvp(F,T, eval:V, evalsym:")", deg:2 ) = - dvp(S,T, eval:V, evalsym:")") = -T/T dvp(S,T, eval:V, evalsym:")") = - (C_V)/T => C_V = -T dvp(F,T, eval:V, evalsym:")", deg:2) $

=== Criterio de evolución en procesos no estáticos
- $ T = T_F = "cte" $, $V = "cte"$: $F$ es el potencial natural: $ Delta U < T_F Delta S - p_F Delta V = T_F Delta S $ $ -> Delta U - T_F Delta S < 0 $
Pero 
$ F = U-T S -> Delta F = Delta U - T_F Delta S < 0 $
$ -> Delta F < 0 $
El potencial de Hemholtz disminuye por lo que el estado final de equilibrio es un mínimo.

== Potencial de Gibbs
La magnitud resultante de sustituir $S$ y $V$ por sus variables conjugadas $T$ y $p$ respectivamente, mediante una transformación de Legendre sobre U: $ U -> U - S dvp(U,S, eval:V, evalsym:")") - V dvp(U,V, eval:S, evalsym:")") => G = U-T S + p V $

En la ecuación de Gibbs: 
$ dif G &= dif U - dif (T S ) + dif (p V ) \ &= (T dif S - p dif V + mu dif n ) - T dif S - S dif T + p dif V + V dif p $
$ dif G = -S dif T + V dif p + mu dif n -> G = G(T, p, n) $

En las ecuaciones de Euler y Gibbs-Duhem:
$ G = mu n $
$ n dif mu = - S dif T + V dif p $

=== Información obtenible en sistemas cerrados
- Parciales primeras:
$ dvp(G,T, eval:p, evalsym:")") = -S space ; space dvp(G,p, eval:T, evalsym:")") = V -> space V = V(T,p ) $

- Parciales segundas:
$ dvp(G,T, eval:p, evalsym:")", deg:2 ) = - dvp(S,T, eval:p, evalsym:")") = - T/T dvp(S,T, eval:p, evalsym:")") = - (C_p)/T => C_p == - T dvp(G,T, eval:p, evalsym:")", deg:2) $
$ dvp(G,p, eval:T, evalsym:")") = dvp(V,p, eval:T, evalsym:")") = - V chi_T => chi_T = -1/V dvp(G,p, eval:T, evalsym:")", deg:2 ) $

=== Criterio de evolución en procesos no estáticos
- $ p= p_f = "cte", T = T_F = "cte"$: $G$ es el potencial natural:
$ Delta U < T_F Delta S - p_F Delta V $
$ -> Delta U + p_F Delta V - T_F Delta S < 0 $
Pero 
$ G = U- T S + p V space -> Delta G = Delta U + p_F Delta V - T_F Delta S < 0 $
$ -> Delta G < 0 $

El potencial de Gibbs disminuye por lo que el estado final de equilibrio es un mínimo.

== Relaciones de Maxwell
- Las relaciones de Maxwell se obtinen al aplicar la condición de Schwartz a los distintos potenciales termodinámicos 
$ dif U &= T dif S - p dif V quad -> quad dvp(p,S, eval:V, evalsym:")") &= dvp(T,V, eval:S, evalsym:")") \
dif F &= -p dif V - S dif T quad -> quad dvp(p,T, eval:V, evalsym:")") &= dvp(S,V, eval:T, evalsym:")") \
dif H &= T dif S + V dif p quad -> quad dvp(V,S, eval:p, evalsym:")") &= dvp(T,p, eval:S, evalsym:")") \
dif G &= - S dif T + V dif p quad -> quad dvp(V,T, eval:p, evalsym:")") &= - dvp(S,p, eval:T, evalsym:")") $

Estas nos permiten sustituir las derivadas parciales en las que interviene la entropía por relaciones entre variables que podremos medir más fácilmente

=== Ejemplo
Necesitamos conocer $dvp(U,V, eval:T, evalsym:")")$

$ dif U = T dif S - p dif V =& T [dvp(S,T, eval:V, evalsym:")") dif T + dvp(S,V, eval:T , evalsym:")") dif V ] - p dif V \
&=  T dvp(S,T, eval:V, evalsym:")") dif T + [T dvp(S,V, eval:T, evalsym:")") - p] dif V $
$ -> dvp(U,V, eval:T, evalsym:")") = T dvp(S,V, eval:T, evalsym:")") - p $

Utilizando las relaciones de Maxwell:

Sabiendo que $ dvp(S,V, eval:T, evalsym:")") = dvp(p,T, eval:V, evalsym:")") $
$dif U$ se quda en $ dvp(U,V, eval:T, evalsym:")") = T dvp(p,T, eval:V, evalsym:")") - p $

= Sistemas homogéneos monocomponente
== Ecuaciones de estado
La ecuación del gas ideal es claramente insuficiente. Es por eso que se han propuesto ecuaciones de estado más generales:

- Ecuación de Van der Waals: $ (p + a/v^2)(v-b) = R T $
- Ecuación de Redlich-Kwong: $ p = R T/(v-b) - a/(T^(1/2) v (v+b)) $
- Ecuaciones de Clausius y de Berthellot
$ [p + a/(T(v+c)^2)](v-b) = R T xarrow(c=0) [p + a/(T v^2) (v-b) ] = R T $
- Ecuación de Dieterici:
$ p = R T/(v-b) exp(-a/(R T v)) $

Todas estas vuelven a la ecuación del gas ideal para $v->oo$

== Variables reducidas
Buscamos las coordenadas del punto crítico de un gas de Van der Waals:

El punteo crítico es un punto de inflexión con tangente horizontal:
$ dvp(p,v, eval:T, evalsym:")") = 0 quad ; quad dvp(p,v, eval:T, evalsym:")", deg:2) quad ; quad [p_c+a/v_c^2 ] (v_c - b) = R T_c $

Despejando $p$ :
$ p = (R T)/(v-b) - a/v^2 $
Calculamos las derivadas parciales
$ dvp(p,v, eval:T, evalsym:")") = (- R T_c) / (v_c -b)^2 + (2 a)/(v_c^3) = 0 $
$ dvp(p,v, eval:T, evalsym:")", deg:2) = (2 R T_c)/(v_c-b)^3 - (6a)/v_c^4 = 0 $
Tenemos 3 ecuaciones con 3 incógnitas. Resolviendo:
$ cases((R T_c)/(v_c-b)^2 = (2a)/(v_c^3), (2 R T_c)/((v_c - b)^(2+1)) = (6a)/v_c^4)) => (4a)/((v_c-b)v_c^3) = (6a)/(v_c^4) => 2/(v_c-b) = 3/v_c -> v_c = 3b $
$ R T_c = (2a)/v_c^3 (v_c - b)^2 = (8 a b^2)/(27 b^3) -> T_c = (8 a)/(27 R b) $
$ p_c = (R T_c)/ (v_c-b) - a/v_c^2 = (8a)/(27b 2b) - a/(9b^2) -> p_c = a/(27b^2) $
Por lo que las constantes del gas son
$ b = 1/3 v_c quad ; quad a = 3p_c v_c^2 quad ; quad R = 8/3 (p_c v_c)/(T_c) $
Sustituyendo las constantes en la ecuación de Van der Waals:
$ (p+ (3 p_c v_c^2)/v^2) (v - 1/3 v_c) = 8/3 (p_c v_c)/(T_c) T $
$ => (p/p_c + (3v_c^2)/(v^2))(v-1/3 v_c) = 8/3 v_c / T_c T -> (p/p_c + (3v_c^2)/v^2) (v/v_c - 1/3) = 8/3 T/T_c $
Definimos las variables reducidas como:
$ v_r = v/v_c quad ; quad T_r = T/T_c quad ; quad p_r = p/p_c $
Finalmente:
$ (p_r + 3/(v_r^2)) (v_r - 1/3) = 8/3 T_r $

=== Ley de los estados correspondientes
Si iguales cantidades de masa de dos gases se encuentran a igual presión reducida y ocupan el mismo volumen reducido, su temperatura reducida es también la misma. Esta ley se cumple para los gases que cumplan una determinada ecuación de estado. 

== Desarrollos del virial
Se supone que existen desarrollos de forma
$ p v = A + B/v + C/v^2 + ... $
$ p v = A' + B' p + C' p^2 + ... $
Por el limite del gas ideal, debe cumplirse que $ A = A' = R T $

Podemos relacionar los coeficientes de ambos desarrollos
$ p v = A' + B' [A/v + B/v^2 + C/v^3 + ...] + C' [A/v^2 + B/v^3 + C/v^4 + ...] + ... $
Por lo que 
$ p v = A' + 1/v (B'A) + 1/v^2 (B'B + C'A^2) $
Comparando:
$ B = A'B' quad C = A'B'^2 + C'A'^2 $
invirtiendo:
$ B' = B/A quad C' = (C A - B^2)/A^3 $

== Diagrama de Amagat
#image("assets/figure_2024-12-28-22-12-23.png")
Es una representación de $p v$ en función de $p$ y distintas temperaturas. 
El lugar geométrico de los mínimos es una curva bien definida que no está presente para temperaturas más altas.
El punto en cada isoterma se llama punto de Boyle y se calcula como $ lim_(p->0) dvp((p v),p, eval:T, evalsym:")") = 0 $

=== Determinación del punto de Boyle
Partimos del desarrollo del virial:
$ p v = A' + B'p + C'p^2+... $
La pendiente de la isoterma para una temperatura $T$ es:
$ dvp(p v,p, eval:T, evalsym:")") = B' + 2 C' p = 0 => lim_(p->0) dvp((p v),p, eval:T, evalsym:")") = B' $
La condición buscada es entonces que $B'=0$. Para un gas de Van der Waals:
$ B' = (R T b - a)/(R T) = 0 -> T_b = a/(R b) -> T_b = 27/8 T_c $

=== Interpretación de la temperatura de Boyle
Utilizando la ecuación de Van der Waals:

Si $B'=0$, el desarrollo del virial a $T_B$ queda como $ p v = R T_B + C'p^2 + ... $
Para un gas de Van der Waals:
$ C' = (C A - B^2 )/A^3 quad A = R T quad ; quad B = R T b -a  quad ; quad C = R T b^2 quad T_c = a/(R b) $
$ -> C'(T_B) = b^3 / a $
Entonces, a la temperatura de Boyle
$ p v = a/b + b^3/a p^2 + ... $
Como $b<<a$, el gas a $T_B$ se comporta como ideal en un intervalo amplio de presiones.

== Factor de Compresibilidad
El factor de compresibilidad nos permite caracterizar un gas en función de su desviación del comportamiento ideal. Se define como:
$ Z = v/v_("ideal") = v/((R T)/p) = (p v)/(R T) $
En terminos de desarrollos del virial:
$ Z = 1 + tilde(B)/v + tilde(C)/v^2 + ... quad Z = 1+ tilde(B)' p + tilde(C)' p^2 + ... $
siendo
$ tilde(B) = B/(R T) quad ; quad tilde(C) = C/(R T) quad ; quad ... $

Aplicando la ley de los estados correspondientes a gases que cumplan una cierta ecuación de estado, podemos escribir:
$ Z = (p v)/(R T) = (p_r v_r)/(T_r) (p_c v_c)/(R T_c) => Z = Z(p_r, T_r) $

También podemos obtener Z a partir de los coeficientes térmicos
$ dvp(ln z,T, eval:p, evalsym:")") &= dvp(ln v,T, eval:p, evalsym:")") - 1/T = 1/v dvp(v,T, eval:p, evalsym:")") - 1/T = alpha - 1/T \
dvp(ln z,p, eval:T, evalsym:")") &= dvp(ln v,p, eval:T, evalsym:")") - 1/T = 1/v dvp(v,p, eval:T, evalsym:")") - 1/T = beta - 1/T \
dvp(ln Z,p, eval:T, evalsym:")") &= 1/v dvp(v,p, eval:T, evalsym:")") + 1/p = 1/p - chi_T $

== Coeficiente Joule-Kelvin
El efecto joule kelvin es el cambio de temperatura asociado a la expansión de un gas en un dispositivo de estrangulamiento.
Se define el coeficiente Joule-Kelvin como la pendiente de las isoentálpicas en un diagrama p-T:
$ mu_(J K) = dvp(T,p, eval:h, evalsym:")") $
Por la propiedad cíclica:
$ dvp(T,p, eval:h, evalsym:")") dvp(p,h, eval:T, evalsym:")") dvp(h,T, eval:p, evalsym:")") = - 1 => dvp(T,p, eval:h, evalsym:")") = - dvp(h,p, eval:T, evalsym:")")/dvp(h,T, eval:p, evalsym:")") = -1/c_p dvp(h,p, eval:T, evalsym:")") $
También sabemos que
$ dif h = T dif s + v dif p -> dvp(h,p, eval:T, evalsym:")") = T dvp(s,p, eval:T, evalsym:")") + v quad ; quad dvp(s,p, eval:T, evalsym:")") = - dvp(v,T, eval:p, evalsym:")") " (R. Maxwell)" $
Por lo que
$ dvp(h,p, eval:T, evalsym:")") = v- T dvp(v,T, eval:p, evalsym:")") $ 
Finalmente
$ mu_(J K) = 1/c_p [T dvp(v,T, eval:p, evalsym:")") - v] $

=== Interpretación física - Temperatura de inversión
Definimos la temperatura de inversión como la temperatura donde el coeficiente Joule-Kelvin se anula. Más allá de este, una compresión isoentálpica enfriará el gas y una expansión lo calentará. Hay una temperatura donde la curva de inversión cruza el eje vertical que es la máxima temperatura de inversión, donde $p->0$.
#image("assets/figure_2024-12-28-22-59-53.png")

=== Cálculo de la máxima temperatura de inversión
Tomando el ejemplo de un gas de Van der Waals

$ R dvp(T,v, eval:p, evalsym:")")= p + a/v^2 - (2 a)/v^3 (v-b) = (R T)/(v-b) - (2a)/v^3 (v-b) = ( R T v^3 - 2a (v-b)^2)/(v^3 (v-b)) $
$ -> dvp(v,T, eval:p, evalsym:")") = (R v^3 (v-b))/(R T v^3 - 2 a(v-b)^2 ) -> T dvp(v,T, eval:p, evalsym:")") = (R T v^3 (v-b))/(R T v^3 - 2 a (v-b)^2) $
$ -> T dvp(v,T, eval:p, evalsym:")") - v = (R T v^3 (v-b))/(R T v^3 - 2 a (v-b)^2) - v = (R T v^3 b - 2 a v(v-b)^2)/(R T v^3 - 2 a (v-b)^2) $
$-> mu_(J K) = -1/C_p (R T v^3 b - 2 a v (v-b)^2)/(R T v^3 - 2 a (v-b)^2 ) $
$ mu_(J K) = 0 => R T_i v^3 b = 2 a v (v-b)^2 => T_i = (2 a (v_i)-b)/(R v_i^2 b) $
En $p->0$ ($v->oo$)
$T_i^("max") = (2a)/(R b) -> T_i^("max") = 27/5 T_c $

También hay otra forma de calcularlo
$ mu_(J K) = 0 => T dvp(v,T, eval:p, evalsym:")") - v = 0 => 1/v dvp(v,T, eval:p, evalsym:")") - 1/T = 0 $
pero
$ 1/v dvp(v,T, eval:p, evalsym:")") - 1/T = dvp(ln Z,T, eval:p, evalsym:")") $
En un entorno de la máxima temperatura de inversión, $p->0$, por lo que
$ Z approx 1 + tilde(B)' p $

por lo que podemos escribir la condición como
$ dvp(ln Z,T, eval:p, evalsym:")") approx dvp(ln(1+tilde(B)'p),p, eval:T, evalsym:")") approx dvp(tilde(B)' p,T, eval:p, evalsym:")") = p dvp(tilde(B)',T, eval:p, evalsym:")") = 0 => dv(tilde(B)', T, eval:T_i^("max"), evalsym: ")") = 0 $
En un gas de Van der Waals
$ B' = B/( R T) = (R T b - a )/(R T) = b - a/(R T) $
y 
$ tilde(B)' = (B')/(R T) = b/(R T) - a/(R T)^2 $
Por lo que
$ dv(tilde(B)', T) = (-b)/(R T^2) - (-2a)/(R^2 T^3) = 1/(R T^2) (-b + (2a)/(R T)) $
Finalmente
$ dv(tilde(B)', T, eval:T_i^("max"), evalsym:")") = 0 => -b + (2a)/(R T_i^("max")) = 0 => T_i^("max") = (2 a)/(R b) $


= Transiciones de fase en sistemas heterogéneos monocomponente

== Concepto de fase
Una fase es una cantidad de materia homogénea que está limitada por superficie a través de la cual las propiedades físicas cambian bruscamente. Por ejemplo, agua líquida en presencia de hielo.

== Equilibrio entre fases
Supongamos un sistema monocomponente constituido por dos fases, tal que las dos fases están a la misma temperatura y presión y estas son constantes.

Dado que el potencial de Gibbs es constante en estas condiciones (ya que $dif G$ depende de $dif T$ y $dif p$) se dice que es la magnitud natural. 
El potencial de gibbs total es
$ G = m_1 g_1 + m_2 g_2 $
Su diferencial entonces es
$ dif G = g_1 dif m_1 + m_1 dif g_1 + g_2 dif m_2 + m_2 dif g_2 $
Como $ dif G = 0$, $dif g_1 = 0$ y $dif g_2 = 0 $
$ g_1 dif m_1 = - g_2 dif m_2 $
Sabiendo que $m_1+m_2 = "cte" => dif m_1 + dif m_2 = 0 $
$ g_1(T,p) = g_2(T,p) $

Ahora vamos a tratar el mismo sistema pero con $v,T$ constantes
Aquí la magnitud natural es el podencial de Hemholtz:
$ F = m_1 f_1 + m_2 f_2 $
En este caso $f_1$ y $f_2$ no son necesariamente constantes ya que dependen de $v_1$ y $v_2$.
$ dif F = f_1 dif m_1 + f_2 dif m_2 + m_1 dif f_1 + m_2 dif f_2 = 0 $

También sabemos que $ V = m_1 v_1 + m_2 v_2 = "cte" => dif V = m_1 dif v_1 + m_2 dif v_2 + dif m_1 v_1 + dif m_2 v_2 = 0 $
Multiplicando por $p$ y sumando a $dif F$ 
$ dif F + p dif V = f_1 dif m_1 + f_2 dif m_2 + m_1 dif f_1 + m_2 dif f_2 + p m_1 dif v_1 + p m_2 dif v_2 = 0 $
$ (f_1 + p v_1 ) dif m_1 + (f_2 + p v_2) dif m_2 + m_1 (dif f_1 + p dif v_1) + m_2 (dif f_2 + p dif v_2) = 0 $
Pero sabemos que $ dif f = - s dif T - p dif v = - p dif v $
Por lo que
$ (f_1 + p v_1 ) dif m_1 + (f_2 + p v_2) dif m_2 = 0 $
Y sigue cumpliendose que $ dif m_1 = - dif m_2 $
por lo que 
$ f_1 + p v_1 = f_2 + p v_2 => g_1 = g_2 $
Por lo que la condición de equilibrio entre fases siempre será la misma sin importar las ligaduras aplicadas.

== Ecuación de Clausius-Clayperon
Proporciona una relación que nos permite describir el equilibrio entre fases.
Partiendo de un estado de equilibrio, donde $g_1 = g_2$, si el estado resultante de una pequeña modificación,
$ g_1 + dif g_1 = g_2 + dif g_2 => dif g_1 = dif g_2 => -s_1 dif T + v_1 dif p = - s_2 dif T + v_2 dif p $
Agrupando
$ (v_1 - v_2) dif p = (s_1 - s_2) dif T => dv(p,T) = (s_2 - s_1)/(v_2 - v_1) = (Delta s)/(Delta v) $
El calor latente de un cambio de fase es 
$ l = T Delta s $
por lo que
$ dv(p,t) = (Delta s)/(Delta v) = l/(T Delta v) $

En las líneas de vaporización en un diagrama $p$-$T$ $l>0$ y $Delta v>0$ por lo que $dv(p,T)>0$.
En cambio en una línea de fusión $l>0$ y $v approx 0$ por lo que el signo de la pendiente depende de el signo de $Delta v$

=== Integración para vaporización y sublimación
Partimos de dos hipótesis:
- El volumen de la fase condensada es mucho menos que el de la fase vapor $Delta v = v_2 - v_1 approx v_2 $
- La fase vapor tiene un comportamiento ideal $v_2 = (R T)/p $

En la ecuación de Clausius-Clayperon:
$ dv(p,T) = l/(T Delta v) approx l/(T v_2) = (l p)/(R T^2) => (dif p)/p = l/R (dif T)/T^2 $
El calor latente no depende de $T$
$ ln p = - l/R 1/T + C => p = C' e^(-l/(R T)) $
Donde $C'$ es una constante de integración.

== Calor latente y ecuación de Clausius

La variación del calor latente a lo largo de la curva de equilibrio entre fases es:
$ dif (l/T) = dvp(l/T,p, eval:T, evalsym:")") dif p + dvp(l/T,T, eval:p, evalsym:")") dif T $
$ => dif/(dif T) (l/T) = dvp(l/T,p, eval:T, evalsym:")") dv(p,T) + dvp(l/T,T, eval:p, evalsym:")") $
sabiendo que $ l = T Delta s $
$ dif/(dif T) (l/T) = dvp(Delta s,p, eval:T, evalsym:")") dv(p,T) + dvp(Delta s,T, eval:p, evalsym:")") $
Por relaciones de Maxwell sabemos que
$ dvp(s,p, eval:T, evalsym:")") = -dvp(v,T, eval:p, evalsym:")") => dvp(Delta s,p, eval:T, evalsym:")") = dvp(Delta v,T, eval:p, evalsym:")") $
También sabemos que
$ c_p = T dvp(s,T, eval:p, evalsym:")") => dvp(Delta s,T, eval:p, evalsym:")") = (Delta c_p)/T $
Sustituyendo
$ dif/(dif T) (l/T) = - dvp(Delta v,T, eval:p, evalsym:")") dv(p,T) + (Delta c_p)/T $
Que es la ecuación de Clausius

En la vaporización y sublimación:
$ dif/(dif T) (l/T) = (Delta c_p)/T - dvp(v_2,T, eval:p, evalsym:")") dv(p,T) = (Delta c_p)/T - R/p (l p)/(R T^2) = (Delta c_p)/T - l/T^2 $
$ => 1/T dv(l,T) - l/(T^2) = (Delta c_p)/T - l/T^2 => dv(l,T) = Delta c_p $
$ => dif l = Delta c_p dif T => l(T) - l(T_3) = integral_(T_3)^T Delta c_p dif T $

== Propiedades termodinámicas en sistemas bifásicos

Título de un vapor:
$ x = m_v/(m_v + m_l) $
Es inmediatamente aparente que los estados bajo la campana de saturación quedan determinados por los valores en la curva de saturación y el título del estado:
$ V = V_l + V_v = m_l v_l + m_v v_v $
$ v = V/m = (m_l v_l + m_v v_v)/(m_v + m_l) = m_l / (m_v + m_l) v_l + m_v /(m_v + m_l) v_v -> v = (1-x) v_l + x v_v $
Similarmente
$ h = (1-x) h_l + x h_v $
$ s = (1-x) s_l + x s_v $
$ u = (1-x) u_l + x u_v $
Recíprocamente
$ x = (v-v_l)/(v_v - v_l) = (h-h_l)/(h_v-h_l) = (s - s_l)/(s_v - s_l) = (u-u_l)/(u_v - u_l) $

= Sistemas homogéneos multicomponente
== Descripción del estado del sistema
La descripción del estado termodinámico de un sistema homogéneo multicomponente requiere de el conocimiento de dos variables intensivas independientes y la especificacióñ de la composición del sistema. 

En un sistema gaseoso cerrado con $k$ componentes, el componente $i$ se caracteriza en términos de:
- La fracción másica: $ x_(m i) = m_i/m quad, quad m = sum_(i=1)^(k) m_i => sum_(i=1)^(k) = 1 $
- El número de moles $ n_i = m_i / M_i quad , quad n = sum_(i=1)^(k) n_i $
- La fracción molar $ x_i = n_i / n => sum_(i=1)^(k) x_i = 1 $

== Propiedades molares parciales
Vamos a considerar una variable extensiva $Phi$ en un sistema con $k$ componentes. Su dependencia funcional es:
$ Phi = Phi (T, p, n_1 ,..., n_k) = Phi(T,p,n) $
Una modificación de la masa del sistema nos lleva a
$ Phi(T, p, alpha n_1, ..., alpha n_k ) = alpha Phi(T,p,n_1,...,n_k) $
Se trata de una función homogénea de orden 1, por lo que se cumple el teorema de Euler
$ Phi = sum_(k)^(i=1)  n_i dvp(Phi,n_i, eval:(T, p, n_(j!=i)), evalsym:")") $
Definimos entonces la propiedad molar parcial correspondiente como $ overline(phi)_i = dvp(Phi,n_i, eval:(T,p,n_(j!=i)), evalsym:")") quad => Phi = sum_(k)^(i=1)  n_i overline(phi)_i $
que es una propiedad intensiva del sistema.

== Potenciales termodinámicos

Para la energía interna se tiene
$ U = U(S,V,n) $
En forma diferencial
$ dif U = dvp(U,S, eval:(V,n), evalsym:")") dif S + dvp(U,V, eval:(S,n), evalsym:")") dif V + sum_(k)^(i=1) dvp(U,n_i, eval:(S,V,n_(j!=i)), evalsym:")") dif n_i $
Identificando términos con la ecuación de Gibbs
$ dif U = T dif S - p dif V + sum_(k)^(i=1) sum_(i=1)^(k) mu_i dif n_i $
Donde el potencial químico se define como
$ mu_i = dvp(U,n_i, eval:(S,V,n_(j!=i)), evalsym:")") $
Las ecuaciones de Euler y Gibbs-Duhem quedan como
$ U = T S - p V + sum_(i=1)^(k)  mu_i n_i quad ; quad sum_(k)^(i=1) n_i dif mu_i = - S dif T + V dif p $
Para el resto de potenciales
- Potencial de Helmholtz: $ F = F(T, V, n) quad quad dif F &= - S dif T - p dif V + sum_(i=1)^(k)  mu_i dif n_i \ F&= - p V + sum_(i=1)^(k)  mu_i n_i $
- Entalpía: $ H = H(S, p, n) quad quad dif H &= T dif S + V dif p + sum_(i=1)^(k)  mu_i dif n_i \ H &= T S + sum_(i=1)^(k)  mu_i n_i $
- Potencial de Gibbs: $ G = G(T,p,n) quad quad dif G &= -S dif T + V dif p + sum_(i=1)^(k)  mu_i dif n_i \ G &= sum_(i=1)^(k)  mu_i n_i $

Podemos entonces escribir
$ mu_i &= dvp(U,n_i, eval:(S,V,n_(j!=i)), evalsym:")") \ &= dvp(F,n_i, eval:(T,V,n_(j!=i)), evalsym:")") \ &= dvp(H,n_i, eval:(S,p,n_(j!=i)), evalsym:")") \ &= dvp(G,n_i, eval:(T,p,n_(j!=i)), evalsym:")") = overline(g)_i $
El potencial químico es precisamente el potencial de Gibbs molar parcial: #rect($ mu_i = overline(g)_i $)

Ahora, por la condición de diferencial exacta:
$ dif G = - S dif T + V dif p + sum_(i=1)^(k) mu_i dif n_i $
$ => dvp(mu_i,T, eval:(p,n), evalsym:")") = - dvp(S,n_i, eval:(T,p,n_(j!=i)), evalsym:")") = - overline(s)_i $
$ => dvp(mu_i,p, eval:(T,n), evalsym:")") = dvp(V,n_i, eval:(T,p,n_(j!=i)), evalsym:")") = overline(v)_i $

Ahora, con la ecuación de Gibbs-Duhem:
$ sum_(i=1)^(k) n_i dif mu_i &= - S dif T + V dif p = sum_(i=1)^(k)  n_i (-overline(s_i)) dif T + sum_(i=1)^(k)  n_i overline(v_i) dif p \ => sum_(i=1)^(k)  n_i dif mu_i &= sum_(i=1)^(k) n_i dvp(mu_i,T, eval:(p,n), evalsym:")") dif T + sum_(i=1)^(k) n_i dvp(mu_i,p, eval:(T,n), evalsym:")") dif p \ => sum_(i=1)^(k)  n_i dif mu_i &= sum_(i=1)^(k) n_i [dvp(mu_i,T, eval:(p,n), evalsym:")") dif T + dvp(mu_i,p, eval:(T,n), evalsym:")") dif p ] $
Entonces
$ dif mu_i = dvp(mu_i,T, eval:(p,n), evalsym:")") dif T + dvp(mu_i,p, eval:(T,n), evalsym:")") dif p => mu_i = mu_i (T,p ) $
$ => -overline(s)_i = dvp(mu_i,T, eval:p, evalsym:")") quad ; quad overline(v)_i = dvp(mu_i,p, eval:T, evalsym:")") $
Ahora utilizamos las relaciones entre $G$, $H$ y $S$ 
$ mu_i = dvp(G,n_i, eval:(T,p,n_(i!=j)), evalsym:")") = dvp((H-T S),n_i, eval:(T,p,n_(j!=i)), evalsym:")") = dvp(H,n_i, eval:(T,p,n_(j!=i)), evalsym:")") - T dvp(S,n_i, eval:(T,p,n_(j!=i)), evalsym:")") $
$ => mu_i = overline(h)_i - T overline(s)_i $
$ overline(h)_i = mu_i + T overline(s)_i = mu_i - T dvp(mu_i,T, eval:p, evalsym:")") $
$ => overline(u)_i = overline(h)_i - p overline(v)_i = mu_i T dvp(mu_i,T, eval:p, evalsym:")") - p dvp(mu_i,p, eval:T, evalsym:")") $
Por lo que cualquier propiedad extensiva del sistema se puede calcular si se conoce $mu_i(T,p)$ para sus componentes. Pero, como podemos obtener $mu_i(T,p) $?

== Fugacidad
Partiendo de la ecuación de Gibbs-Duhem en sistemas monocomponente
$ n dif mu = - S dif T + V dif p $ 
pasando a magnitudes molares
$ dif mu = - tilde(s) dif T + tilde(v) dif p -> T="cte" -> dif mu = tilde(v) dif p $
Para un gas ideal
$ tilde(v) = (tilde(R) T)/p -> dif mu = tilde(R) T (dif p)/p = tilde(R) T dif (ln p) $
$ mu = mu^0 (T) + tilde(R) T ln p/p_0 $
Donde $p_0$ es la presión de referencia
En gases reales, definimos la fugacidad tal que 
$ mu = mu^0 (T) + tilde(R) T ln f/f_0 $
tal que
$ lim_(p->0) f/p = 1 $
=== Fugacidad en sitemas monocomponente
Para tener en cuenta el límite $lim_(p->0) f/p = 1$ partimos de
$ dvp(ln(f/p),p, eval:T, evalsym:")") = dvp(ln f,p, eval:T, evalsym:")") - dvp(ln p ,p , eval:T, evalsym:")") $
Recordamos que
$ tilde(v) = dvp(mu,p, eval:T, evalsym:")") = tilde(R) T dvp(ln f,p, eval:T, evalsym:")") => dvp(ln(f/p),p, eval:T, evalsym:")") = tilde(v)/(tilde(R) T) - 1/p $
Y la definición del factor de compresibilidad
$ tilde(v)/(tilde(R) T) - 1/p = 1/p ((p tilde(v))/(tilde(R) T) -1 ) = 1/p (Z-1) $
Entonces
$ dvp(ln(f/p),p, eval:T, evalsym:")") = 1/p (Z-1) $
Integrando a $T$ constante entre $p->0$ y $p$ obtenemos
$ ln f/p = ln f/p |_(p->0) + integral_(p->0)^p 1/p (Z-1) dif p => ln f = ln p + integral_(p->0)^p 1/p (Z-1) dif p $
Esta expresión se puede integrar directamente a partir del desarrollo del virial para el factor de compresibilidad

En variables reduciddas
$ ln f/p equiv ln v = integral_(p_r -> 0)^(p_r) 1/p_r (Z-1) dif p $
Como $Z=Z(T_r, p_r) $, $v=v(T_r, p_r)$ por lo que también podemos aplicar la ley de los estados correspondientes

=== Fugacidad en sistemas multicomponente
Definimos la fugacidad de un componente $i$ tal que
$ mu_i = mu_i^0 (T) + tilde(R) T ln (overline(f)_i/overline(f)^0_i) $
donde $f_i^0$ es la fugacidad del componente puro a la temperatura $T$ y a la presión de referencia $p^0$.

Por lo que la condición para $p->0$ es ahora $ lim_(p->0) overline(f)_i/(x_i p) = 1  $
En el limite del comportamiento ideal
$ x_i p = x_i (n tilde(R) T)/V = (n_i tilde(R) T)/V equiv p_i $
Es decir, la presión parcial del componente $i$ la presión que tendría que ocupar él solo en el volumen $V$ y la temperatura $T$.

Ahora, para la sustancia en mezcla:
$ overline(v)_i = dvp(mu_i,p, eval:(T,n), evalsym:")") = tilde(R) T dvp(ln bar(f)_i, p, eval:(T,n), evalsym:")") $
Para la sustancia pura
$ tilde(v)_i = tilde(R) T dvp(ln f_i,p, eval:T, evalsym:")") $
Restando
$ tilde(R) T dvp(ln overline(f)_i/f_i,p, eval:(T,n), evalsym:")") = overline(v)_i - tilde(v_i) $
Integrando a la temperatura y composición constantes desde $p'->0$:
$ tilde(R) T [ ln overline(f)_i/f_i - lim_(p'->0) ln overline(f)_i/f_i] = integral_(p'->0)^p (overline(v)_i - tilde(v)_i ) dif p $
pero
$ lim_(p'->0) ln overline(f)_i/f_i = ln (x_i p)/p = ln x_i $
$ => tilde(R) T ln overline(f)_i /(x_i f_i ) = integral_(p'->0)^p (overline(v)_i - tilde(v)_i) dif p $

== Mezclas ideales
Se trata de las mezclas que cumplen la regla de Lewis-Randall: $ overline(f)_i = x_i f_i $
Si $mu_i^*$ es el potencial químico del componente puro a la temperatura $T$ y la presión $p$ de la mezcla, entonces:
$ mu_i = mu_i^* + tilde(R) T ln overline(f)_i/f_i = mu_i^* + tilde(R) T ln x_i $
Ahora
$ overline(v)_i  = dvp(mu_i,p, eval:T, evalsym:")") = dvp(mu_i^*,p, eval:T, evalsym:")") = tilde(v)_i $
Además
$ dvp(mu_i,T, eval:p, evalsym:")") = - tilde(s)_i $
y
$ mu_i = overline(h)_i - T overline(s)_i $
Así
$ dvp((mu_i)/T,T, eval:p, evalsym:")") = - mu_i/T^2 + 1/T dvp(mu_i,T, eval:p, evalsym:")") = - (overline(h)_i - T overline(s)_i)/T^2 - overline(s)_i /T = - overline(h)_i/T^2 $
y
$ mu_i/T - mu_i^* /T = tilde(R) ln x_i => dvp(mu_i/T, T, eval:p, evalsym:")") - dvp(mu_i^* /T ,T, eval:p, evalsym:")") = 0 $
Pero
$ dvp(mu_i/T, T, eval:p, evalsym:")") = - overline(h)_i/T^2 quad dvp(mu_i^* /T ,T, eval:p, evalsym:")") = - tilde(h)_i / T^2 $
Entonces
$ overline(h)_i = tilde(h)_i $
y como $tilde(v)_i = overline(v)_i $
$ overline(u)_i = tilde(u)_i $
Entonces
$ V = sum_(i=1)^(k)  n_i tilde(v)_i quad ; quad H = sum_(i=1)^(k)  n_i tilde(h)_i quad ; quad U = sum_(i=1)^(k)  n_i tilde(u)_i $
$ tilde(v) = sum_(x_i)^(tilde(v_i)) quad ; quad tilde(h) = sum_(i=1)^(k)  x_i tilde(h)_i quad ; quad tilde(u) = sum_(i=1)^(k) x_i tilde(u)_i $
En el caso de la entropía entonces
$ dvp(mu_i,T, eval:p, evalsym:")") = - overline(s)_i $
y 
$ dvp(mu_i^*,T, eval:p, evalsym:")") = - tilde(s)_i => dvp((mu_i-mu_i^*),T, eval:p, evalsym:")") = - (overline(s)_i - tilde(s)_i ) $
Por lo tanto, la variación de entropía asociada a una mezcla ideal es 
$ Delta S_m = sum_(i=1)^(k)  n_i (overline(s_i) - tilde(s)_i ) = - tilde(R) sum_(i=1)^(k)  n_i ln x_i $
$ Delta tilde(s)_m = - tilde(R) sum_(i=1)^(k)  x_i ln x_i $
Obviamente, $Delta tilde(s)_m > 0$ constistentemeinte con la irreversibilidad del proceso de mezcla

Ahora para el potencial de gibbs es imediato que
$ Delta G_m = Delta H_m - T Delta S_m $
$Delta H_m = 0$ por lo que
$Delta G_m = tilde(R) T sum_(i=1)^(k) n_i ln x_i $

$ Delta tilde(g)_m = tilde(R) T sum_(i=1)^(k)  x_i ln x_i $
Finalemente para el potencial químico
$ mu_i = mu_i^0 + tilde(R) T ln overline(f)_i /f_i^0 = mu_i^0 + tilde(R) T ln (x_i f_i)/(f_i^0) $
$ => mu_i = mu_i^0 + tilde(R) T ln f_i/f_i^0 + tilde(R) T ln x_i $

== Mezclas de gases ideales
Supondremos que el conjunto de la mezcla cumple $ p V = n tilde(R) T $

=== Modelo de Dalton
Cada gas se comporta como un gas ideal que ocupa todo el volumen a la temperatura de la mezcla
$ p_i V = n_i tilde(R) T => V sum_i p_i = tilde(R) T sum_i n_i => V sum_i p_i = n tilde(R) T  $
$ => p = sum_i p_i quad ; quad p_i = x_i p $

=== Modelo de Amagat
Cada gas se comporta como un gas ideal a la presión y temperatura de la mezcla, y ocupa un cierto volumen menor al volumen de la mezcla
$ p V_i = n_i tilde(R) T => V_i/V = n_i/n = x_i => V = sum_i V_i $

=== Variación de magnitudes termodinámicas
Como la energía interna y la entalpía son funciones de $T$, sus variaciones entre dos estados ($T^0, p^0$) y $(T,p)$ serán para cada componente
Para gases ideales
$ Delta tilde(u)_i (T,p) - tilde(u)_i (T^0, p^0) = integral_(T^0)^T tilde(c)_(v_i) (T) dif T $
$ Delta tilde(h)_i = tilde(h)_i (T,p) - tilde(h)_i (T^0, p^0 ) = integral_(T^0)^T tilde(c)_(p_i) (T) dif T $
Para gases perfectos
$ Delta tilde(u)_i = tilde(c)_(v_i) (T- T^0 ) $
$ Delta tilde(h)_i = tilde(c)_(p_i) (T-T^0) $
Las variaciones para el conjunto de la mezcla son
$ Delta tilde(u) = sum_i x_i Delta tilde(u)_i quad ; quad Delta tilde(h) = sum_i x_i Delta tilde(h)_i $

En el caso de la entropía
$ tilde(s) = sum_i x_i overline(s)_i quad ; quad overline(s_i) = tilde(s_i) tilde(R) ln x_i $
Alternativamente, recordemos que para un gas ideal
$ dif tilde(s)_i = tilde(c)_(p_i) (dif T)/T - tilde(R) (dif p)/p $
Así, al pasar de $(T,p)$ a $(T, p_i)$ se tiene
$ tilde(s)_i (T, p_i) = tilde(s)_i (T,p) - tilde(R) ln (p_i)/p = tilde(s)_i (T,p) - tilde(R) ln x_i equiv overline(s)_i $
Entonces
$ tilde(s) (T,p,x) = sum_i x_i [tilde(s)_i (T,p) - tilde(R) ln x_i ] = sum_i x_i tilde(s)_i (T,p_i) $
Finalmente, su variación entre los estados $ (T^0,p^0)$ y $(T,p)$ es
$ Delta tilde(s) = sum_i x_i [integral_(T_0)^T tilde(c)_(p_i) (dif T)/T - tilde(R) ln p/p^0 ] $
En el caso de un gas perfecto
$ Delta tilde(s) = sum_i x_i [tilde(c)_(p_i) ln T/T^0 - tilde(R) ln p/p_0] $

== Mezclas ideales de gases reales
=== Ecuación de estado
$ V = (n tilde(R) T)/p sum_i x_i (Z_i)_(T,p) $
Definiendo el factor de compresibilidad de la mezcla como
$ Z_m = sum_i x_i (Z_i)_(T,p) $
la ecuación de estado queda como
$ p V = n tilde(R) T Z_m quad ; quad (Z_i)_(T,p) = Z(p_(r_i), T_(r_i)) $
Alternativamente, podemos utilizar la regla de Kay, en vez de ponderar las $Z$ ponderamos las coordenadas críticas
Definimos $ T'_c = sum_i x_i T_(c_i) quad p'_c = sum_i x_i p_(c_i) $
y calculamos $Z_m$ como $Z_m = Z(p/(p'_c) , T/(T'_c)) $

=== Variación de magnitudes termodinámicas
Para calcularlas para la mezcla a partir de los componentes, hay que verificar la validez de la ley de los estados correspondientes

Por ejemplo en el caso de la entalpía
$ dif tilde(h)_m = T_m dif tilde(s)_m + tilde(v)_m dif p_m $
Y si no varía la composición
$ dif (sum x_i tilde(h)_i ) = T_m dif(sum x_i tilde(s)_i) + (sum x_i tilde(v)_i) dif p_m $
$ => sum x_i [ dif tilde(h)_i T_m dif tilde(s)_i - tilde(v)_i dif p_m ] = 0 $
$ => dif tilde(h)_i = T_m dif tilde(s)_i + tilde(v)_i dif p_m $
Así las correcciones debidas al factor de compresibilidad se pueden calcular utilizando la presión de la mezcla para calcular la presión reducida de cada componente

Es importante recordar que la posibilidad de esos cálculos depende de que se haya supuesto la ley de aditividad de los volúmenes.

= Sistemas heterogéneos multicomponente

== Condiciones de equilibrio
Consideremos un sistema con 2 fases y 2 componentes, con los 2 componentes presentes en las 2 fases. Cualquier cambio de composición es debido al paso de un componente de una fase a otra.

La condición de equilibrio para este sistema es un mínimo del potencial de Gibbs. Denotando las fases por $a$ y $b$, y los componentes por 1 y 2: 
$ G = G^((a)) (T,p,n_i^((a)) , n_2^((a)) ) + G^((b)) (T,p,n_1^((b)), n_2^((b))) $
sujeto a la condición de que el número total de moles de cada componente es constante
$ n_1 = n_1^((a)) + n_i^((b)) = "const" $
$ n_2 = n_2^((a)) + n_2^((b)) = "const"' $

Diferenciando la expresión del potencial de Gibbs:
$ dif G &= dif G^((a)) + dif G ^((b)) \ &= dvp(G^((a)),n_1^((a)), eval:(T,p,n_2^((a))), evalsym:")") dif n_1^((a)) + dvp(G^((a)),n_2^((a)), eval:(T,p,n_1^((a))), evalsym:")") dif n_2^((a)) + dvp(G^((b)),n_1^((b)), eval:(T,p,n_2^((b))), evalsym:")") dif n_1^((b)) + dvp(G^((b)),n_2^((b)), eval:(T,p,n_1^((b))), evalsym:")") dif n_2^((b)) = 0 $
$ => mu_1^((a)) dif n_1 ^((a)) + mu_2^((a)) dif n_2^((a)) + mu_1^((b)) dif n_1^((b)) + mu_2^((b)) dif n_2^((b)) = 0 $
$ dif n_1^((a)) + dif n_1^((b)) = 0 $
$ dif n_2^((a)) + dif n_2^((b)) = 0 $
Por lo que se tiene
$ [mu_1^((a)) - mu_1^((b))] dif n_1^((a)) + [mu_2^((a)) - mu_2^((b))] dif n_2^((a)) = 0 $
Y como $dif n_1^((a))$ y $dif n_2^((a))$ son independientes
$ mu_1^((a)) = mu_1^((b)) $
$ mu_2^((a)) = mu_2^((b)) $
Es decir el potencial químico de los dos componentes debe de ser igual en las dos fases

En un caso más general de un sistema con $phi$ fases y $c$ componentes, con todos los componentes presentes en todas las fases de forma que cada fase está en contacto con todas las demás y la composición cambia por cambios de fase de los componentes
De nuevo, la condición de equilibrio para este sistema es un mínimo del potencial de Gibbs:
$ G = sum_(j=1)^(phi) G^j (T,p,n^j_1,...,n_c^j) $
Sujeto a la condición de que el número total de moles de cada componente es constante
$ n_i = sum_(j=1)^(phi)  n_i^j , quad i=1,...,c $
Diferenciando la expresión
$ dif G = sum_(j=1)^(phi) dif G^j = sum_(j=1)^(phi) sum_(i=1)^(c)  dvp(G^j,n_i^j, eval:(T,p,n^j_(k!=i)), evalsym:")") $
$ dif n_i^j = 0 \ => sum_(j=1)^(phi) sum_(i=1)^(c)  mu_i^j dif n_i^j = 0 $
$ sum_(j=1)^(phi) dif n_i^j = 0, quad i=1,...,c $
El problema se resuelve introduciendo unos parámetros arbitrarios $lambda_i$ de forma que 
$ lambda_i sum_(j=1)^(phi)  dif n_i^j = 0, i=1,...,c -> sum_(i=1)^(c) lambda_i sum_(j=1)^(phi)  dif n_i^j = 0 $
Entonces
$ sum_(j=1)^(phi) sum_(i=1)^(c) (mu_i^j + lambda_i) dif n_i^j = 0 $
Tomemos como números de molse dependientes los de la fase 1, y hagamos:
$ lambda_i = - mu_i^1 $
Así
$ sum_(j=2)^(phi) sum_(i=1)^(c)  (mu_i^j - mu_i^1) dif n_i^j = 0 $
Como ahora todas las variables $n_i^j$ son independientes, se deberá cumplir $ mu_i^j = mu_i^1 quad ,quad j = 2,...,phi quad , quad i=1,...,c $
Es decir la condición de equilibrio es que el potencial químico de cada componente sea igual en todas las fases

== Regla de las fases
El objetivo ahora es responder las siguientes preguntas:
- Cuantas fases pueden coexistir en el equilibrio?
- Cuantas variables pueden modificarse independientemente sin alterar el número de fases (grados de libertad)?

Para ello hagamos balance de variables y ecuaciones 
- Variables: presión, temperatura y fracciones molares de cada componente en cada fase: $ 2 + c phi $ 
- Ecuaciones: $c(phi-1)$ condiciones de equilibrio y $phi$ ecuaciones adicionales por las condiciones $ sum_(i=1)^(c) x_i^j = 1 => c(phi-1) + phi $
El número de grados de libertad $l$ es la diferencia entre el número de variables y el número de ecuaciones
$ l = 2 + c phi - [c(phi-1) + phi] => l + phi = c+2 $
Este resultado no depende de nuestra hipótesis de que todos los componentes están en todas las fases, a que cambia lo mismo el número de variables que el de ecuaciones

Casos particulares:
- Sustancia pura: $ c=1=> l=3-phi$ #[
  - Sistema homogéneo: $phi=1=>l=2$
  - Sistema bifásico: $phi=2=> l=1$
  - Sistema trifásico: $phi=3=> l=0$ (punto triple)
]
- Sistema con dos componentes $c=2=> l = 4 - phi$ #[
  - Sistema homogéneo: $phi=1=l=3 (T,p,x_1 ) $
  - Sistema bifásico: $ phi = 2 => l=2 (T or p, x_1) $
]

== Ejemplo de mezclas de gases y vapores
Consideremos un sistema con dos componentes tales que a la presión y temperatura de la mezcla: 
- Una de las sustancias está muy por encima de su temperatura crítica
- La otra sustancia está por debajo o cerca de su temperatura crítica, por lo que se puede condensar fácilmente

En ambos casos, supondremos que su presión parcial en la fase gaseos es lo bastante baja como para considerar comportamiento ideal

Llamando $p^*$ a la presión de saturación de la sustancia "vapor" a la temperatura de la mezcla, pueden distinguirse tres casos:
+ Mezcla no saturada (ambas en fase gaseosa): $p_v < p^* (T)$
+ Mezcla saturada (sustancia "vapor" en cualquier fase, dependiendo de $T$) $ p_v = p* (T) $
+ Mezcla sobresaturada: estado metaestable con $p_v>p^*(T) $ que colapsa a estado saturado bajo cualquier perturbación. Sobretodo se usa cuando la fase condensada queda en suspensión.

=== Condición de equilibrio
Supongamos que en la fase líquida solo hay sustancia "vapor" y que la fase gaseosa es una mezcla de gases ideales. Para la sustancia "vapor"
$ mu_l = tilde(g) (T,p) quad ; quad mu_v = tilde(g) (T, p_v) $
La condición de equilibrio es 
$ mu_l = mu_v => tilde(h) (T,p) - T tilde(s) (T,p) = tilde(h) (T) - T tilde(s) (T,p_v) $
Para la fase gaseosa podemos estimar que
$ tilde(h) (T) approx tilde(h)_v^("sat") (T) $

Y como suponemos una mezcla de gases ideales:
$ tilde(s) (T, p_v) = tilde(s)^("sat")_v (T) - tilde(R) ln p_v/p^* $

Para el líquido:

Con buena aproximación se tiene 
$ tilde(u) (T,p) approx tilde(u)_l^("sat") (T) quad ; quad tilde(v) (T,p) approx v_l^("sat") (T) $
Entonces
$ tilde(h) (T,p) = tilde(u) (T,p) + p tilde(v) (T,p) approx tilde(u)_l^("sat") (T) + p v_l^("sat") (T) $
Pero
$ tilde(u)_l^("sat") (T) = tilde(h)_l^("sat") (T) - p* v_l^("sat")(T) quad p^* = p^("sat") (T) $
Sustituyendo
$ tilde(h) (T,p) = tilde(h)_l^("sat") (T) + tilde(v)_l^("sat") (p-p*) $
De la gráfica, también tenemos
$ tilde(s) (T,p) = tilde(s)_l^("sat") (T) $

Sustituyendo en la condición de equilibrio:
$tilde(h)_v^("sat") (T) - T [tilde(s)_v^("sat") (T) - tilde(R) ln p_v/p^* ] = tilde(h)_l^("sat") (T) + tilde(v)_l^("sat") (p-p^*) - T tilde(s)_l^("sat") (T ) $
$ => tilde(R) T ln p_v/p^* = tilde(v)_l^("sat") (p-p^*) - [(tilde(h)_v^("sat")-tilde(h)_l^("sat")) - T (tilde(s)_v^("sat") - tilde(s)_l^("sat")) ] $
El término entre corchetes se anula
$ ln p_v/p^* = (tilde(v)_i^("sat") (p-p^*))/(tilde(R) T) => p_v = p^* e^((tilde(v)_i^("sat")(p-p^*))/(tilde(R) T)) $
Para agua a presiones menores de 140 MPa el argumento de la exponencial es pequeño, y la presión parcial del vapor se puede suponer la de saturación
$ p_v approx p^* $

== Aire húmedo
Se define el aire húmedo como una mezcla de aire seco y vapor de agua

De acuerdo con la clasificación anterior, se distingue el aire húmedo no saturado, es decir que el agua es vapor sobrecalentado, aire húmedo saturado, es decir que el agua es vapor saturado seco y el aire húmedo sobresaturado es decir saturado con condensado en suspensión que puede ser líquido (vapor saturado y niebla o precipitado) o sólido (vapor saturado y hielo)

Consideraremos que la fase vapor es una mezcla de gases ideales
Aplicamos el modelo de Dalton
$ p= p_a + p_V $
$ p_a = (m_a R_a T)/V quad ; quad = p_v = (m_v R_v T)/V $
Se suele tomar
$ M_a = 28.964 quad ; quad M_v = 18.015 $
Se define la humedad del aire humedo como el cociente entre las masas del vapor de agua y aire seco
$ omega = m_v / m_a $
En ausencia de condensación
$ omega = (V p_v)/(R_v T) (R_a T)/(V p_a ) = (R_a p_v)/(R_v p_a ) = cancel(tilde(R))/M_a M_v/cancel(tilde(R)) (M_v p_v)/(M_a p_a) $
Como $M_v/M_a approx 0.622$ y $p=p_a+p_v$ podemos decir
$ omega = 0.622 p_v/(p-p_v) $
La humedad también puede definirse en base molar
$ tilde(omega) = n_v/n_a = m_v/M_v M_a/m_a = M_a/M_v omega = omega/0.622 = p_v/(p-p_v) $

== Humedad y humedad relativa
Las fracciones molares de los dos componentes pueden expresarse en función de la humedad molar
$ x_a = n_a/(n_a + n_V) = 1/(1+ tilde(omega)) $
Y también
$ x_v = tilde(omega)/(1+tilde(omega)) $

La humedad relativa se define como la relación entre la presión parcial del vapor en la mezcla y la presión parcial que tendría en una mezcla saturada a la misma presión y temperatura
$ phi = p_v/p^* |_(p,T) $
Como $p_v = x_v p $ y $ p^* = x_v^("sat") p$ entonces $ phi = x_v/x^("sat")_v $

== Temperatura de rocío
Consideremos una mezcla no staurada que se enfría a presión parcial del vapor de agua constante. Cuando se alcance la temperatura de saturación para esa presión, condensara la primera gota de agua. A esa temperatura se la llama punto de rocío: 
$ p_v = p^* (T_R) $
Al final, debido a la condensación, la presión parcial disminuye porque la cantidad de vapor de agua presente en el estado final es menor que en el estado inicial

Del estudio de las transiciones de fase sabemos que
$ ln p^* = a - b/T $
teniéndose para el agua $a = 13.765$ y $b=5.121$ ($p$ en bar)

Adicionalmeintne
$ p_v = phi p^* (T) -> p^* (T_R) = phi p^* (T) $
$ => ln p^* (T_R) = ln phi + ln p^* (T) $
Así, la temperatura de rocío queda como función de la temperatura y la humedad relativa
$ cancel(a) - b/T_R = ln phi + cancel(a) - b/T $
$ -> -b/T_R = ln phi - b/T -> p T/T_R = b- T ln phi -> T/T_R = 1-(T ln phi)/b $
Finalmente
$ T_R = T/(1- (T ln phi)/b ) $

== Propiedades termodinámicas del aire húmedo
La densidad de la mezcla viene dada por $ rho = (m_a + m_v)/V $
Como
$ p = ((m_a R_a + m_v R_v)T)/V -> 1/V = p/(m_a R_a + m_v R_v ) $
Ahora dividiendo por $m_a$ e introduciendo la humedad $ omega = m_v / m_a $
$ rho = (1+omega)/(R_a + omega R_v) p/T = (1+omega)/(1+ omega R_v / R_a ) p/(R_a T) => rho = (1+ omega)/(1+tilde(omega)) p/(R_a T) = (1+omega)/(1+tilde(omega)) rho_a $
Como $tilde(omega)>omega$ al aumentar la humedad disminuye la densidad del aire húmedo

Se ponderan las contribuciones de los componentes en la entalpía y energía interna:
$ H  = H_a + H_v = n tilde(h)_a + n tilde(h)_v => tilde(h) = tilde(h)_a + tilde(omega) tilde(h)_v $
expresado en $J$ por mol de aire seco. Es más comun expresado en función de la masa
$ h = h_a + omega h_v $
Para $h_a$ podemos suponer comportamiento de gas ideal, mientras que sabemos que $h_v$ se puede aproximar:
$ h_v approx h_v^("sat") (T) $

Evaluamos la contribución de cada componente a la temperatura de la mezcla y a su presión parcial. En el caso del vapor, tenemos:
$ s_v (T, p_v) = s_v^("sat") (T) - R_v ln p_v/p^* = s_v^("sat") (T) - R_v ln phi $

== Temperatura de bulbo húmedo
La temperatura de bulbo húmedo es la temperatura medida por un termómetro de bulbo húmedo, es decir, con el bulbo rodeado por una muselina humedecida con agua.

Puede probarse que
$ omega = (h_a (T_(b h)) - h_a (T) + omega' [h_v^("sat") (T_(b h)) - h_l^("sat") (T_(b h))])/(h_v^("sat") (T) - h_l^("sat") (T_(b h))) $
con 
$ omega' = 0.622 (p^* (T_(b h)))/(p-p^* (T_(b h))) $

== Diagrama psicrométrico
Proporciona una representación unificada y conveniente de todas las propiedades del aire húmedo

#image("assets/figure_2025-01-11-17-52-12.png")