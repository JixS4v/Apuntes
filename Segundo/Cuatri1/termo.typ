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
Definimos la temperatura de inversión como la temperatura donde el coeficiente Joule-Kelvin se anula. Más allá de este, una compresión isoentálpica enfriará el gas y una expansión lo calentará. Hay una temperatura donde la curva de inversión cruza el eje vertical que es la máxima temperatura de inversión.

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

