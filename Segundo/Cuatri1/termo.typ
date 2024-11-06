#import "@preview/diverential:0.2.0": *

#align(center, text(25pt)[*Termodinámica*])
= 1. Conceptos básicos
== 1.1. Naturaleza de la Termodinámica
#figure(table(
  columns:3,
  table.header[][Microscopico][Macroscopico], [Equlibrio], [Mecanica estadística], [_*Termodinámica*_], [Fuera del equilibrio], [Teoría cinética], [Fenómenos de transporte]
), caption: [Posibilidades de abordar el problema de la descripción de un problema con muchos constituyentes])

La termodinámica posee las siguientes características:
- Es una teoría macroscopica y fenomenológica
- No hay una hipótesis sobre la estructura de la materia (descripción de solidos y fluidos como medios continuos)

== 1.2. Concepto de un sistema termodinámico: clasificación
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

== 1.3. Variables de estado: magnitudes extensivas e intensivas
#underline[*Variables termodinámicas*]: Atributos de un sistema termodinámico que lo caracterizan en el momento actual y son independientes de su historia pasada.

#underline[*Variables o parámetros de estado*]: Conjunto reducido de parámetros que permite describir al sistema.

#underline[*Estado de un sistema*]: Cada uno de los modos de encontrarse un sistema, caracterizados por las variables de estado

#underline[*Parámetros externos*]: Parámetros que dependen de la posición en el espacio de cuerpos externos al sistema. A través de estos parámetros, podemos realizar el acoplamiento de un sistema con su entorno. Al condicionar el valor del resto de parámetros, se consideran variables independientes.

#underline[*Parámetros internos*]: Los parámetros que no son externos. Por ejemplo la presión.

#underline[*Parámetros extensivos*]: Parámetros que dependen de la masa del sistema y son proporcionales a ella, tienen un carácter global. (Volumen, longitud)

#underline[*Parámetros intensivos*]: Parámetros que no dependen de la masa, tienen un carácter local. (Presión, tensión superficial). Podemos incluir en estos las magnitudes _específicas_ (por unidad de masa)

== 1.4. Estado de equilibrio termodinámico
- Se dice que un sistema está en equilibrio termodinámico cuando sus magnitudes termodinámicas son constantes en el tiempo y uniformes en el espacio.
- Solamente un sistema aislado puede estar estrictamente en equilibrio
- En sistemas no aislados el equilibrio se establece cuando el sistema no interacciona con el entorno, es decir cuando no hay fuerzas sin equilibrar debidas a diferencias de parámetros intensivos entre sistema y entorno.
- No debe de confundirse estado de equilibrio con _estado estacionario_

== 1.5. Concepto de proceso termodinámico
- Un proceso termodinámico es el paso de un estado de equilibrio a otro como consecuencia de la interacción del sistema con el entorno.
- El proceso puede seguirse a través de la variación de las magnitudes termodinámicas #[
- Funciones de estado, que solo dependen de los estados inicial y final Funciones de proceso
- Funciones de proceso, que dependen de los estados inicial y final, pero también del camino seguido]
#underline[*Representación gráfica*]: El proceso se puede representar mediante diagramas que muestran la evolucion de unas magnitudes termodinámicas frente a otras. El espacio euclídeo correspondiente se llama espacio termodinámico de estados.
#figure(image("diagramatermo.png"), caption: [Ejemplo de un diagrama representando un corte del espacio termodinámico de estados])

== 1.6. Tipos de procesos termodinámicos
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

== 1.7. Postulados de la Termodinámica
#underline[*Primer postulado de la Termodinámica*]: #[
  - Todo sistema aislado alcanza, con el tiempo, un estado de equilibrio termodinámico que no puede abandonar espontáneamente #[
- Es de carácter estadístico: concepto de "estado más probable"
- Por consecuencia, no se estudian los fenómenos en que un sistema abandona espontáneamente su estado más probable (fluctuaciones)]]
#underline[*Segundo postulado de la Termodinámica*]: #[- Dos sistemas en equilibrio térmico con un tercero están en equilibrio térmico entre sí #[
- Hay que definir una nueva variable: la temperatura (interna e intensiva)
- Principio cero: los parámetros internos son función de los parámetros externos y de la temperatura.]]

== 1.8 Escalas termométricas

#underline[*Definición operacional de temperatura*]:
- Elección de un sistema de referencia (termómetro)
- Asignación de valores a las isotermas del sistema (escala)
#underline[*Magnitud termométrica*]: La (única) propiedad del sistema que depende de la temperatura

#underline[*Función termométrica*]: Relación entre la temperatura y la magnitud termométrica

#underline[*Puntos fijos*]: Estados patrón fácilmente reproducibles a los que se asignan valores arbitrarios para determinar la función termométrica. #[
  - Hielo puro en equilibrio con agua pura saturada de aire a 1 atm
  - Agua pura en equilibrio con su vapor a 1 atm
  - Punto triple del agua (273.16 K)
]

== 1.9. Una definición empírica de temperatura

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

#pagebreak(weak:true)
= 2. Primer principio de la Termodinámica

== 2.1 Energía interna, calor y Trabajo
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

== 2.2. Conservación de la energía
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

== 2.3. Formulación para sistemas cerrados

- Sin variación de energía cinética y potencial: $  dif U = delta Q - delta W <=> Delta U = Q - W $ #[
  - En procesos cuasietáticos: $ delta Q =  dif  U + delta W =  dif U + p  dif V $ $ Q = Delta U + integral_1^2 p  dif V $
  - En procesos adiabáticos ($delta Q = 0$): $ dif U = - delta W <=> Delta U = -W $
  - En procesos cíclicos ($Delta U = 0$): $ 0 = Q-W <=> Q=W $
]

== 2.4. Entalpía

#underline[*Entalpía*]: $H = U + p V => Q|_p = Delta H$

#set math.cases(reverse:true)
#underline[*Formulación del Primer Principio de la Termodinámica*]: $ cases( U = H - p V -> dif U =  dif  H - p  dif V - V dif p ,  delta Q =  dif U + p dif V) -> dif H = delta Q + V dif p $
#pagebreak(weak:true)
= 3. Ecuaciones de estado
== 3.1. Ecuaciones de estado
- #underline[*Ecuación de estado*]: Cualquier función, obtenida teórica o experimentalmente, que relaciona las variables termodinámicas de un sistema. #[
  - Dependerá de las variables escogidas (de acuerdo con el Principio Cero: las variables externas pueden expresarse en función de las variables externas y de la temperatura)
  - Para los sistemas habituales #[
    - Si el parámetro interno es la enegría interna:#linebreak() Ecuación energética de estado $ U = U(V,theta) $
    - Si el parámetro interno es la presión: #linebreak() Ecuación térmica de estado $ p = p(V,theta) $
  ]
]

== 3.2. Coeficientes térmicos de un sistema
- En general, obtener la ecuación térmica de estado no es sencillo
- Los coeficientes térmicos proporcionan un método general: #linebreak() integración de diferenciales de variables
$ V = V(theta, p) -> dif V = dvp(V, theta, eval: p, evalsym:"(") dif theta + dvp(V, p, eval: theta, evalsym:"(") dif p $
$ p = p(theta, V) -> dif p = dvp(p, theta, eval: V, evalsym:"(") dif theta + dvp(p, V, eval: theta, evalsym:"(") dif V $
$ theta = theta (p, V)-> dif theta = dvp(theta, p, eval: V, evalsym:"(") dif p + dvp(theta, V, eval: p, evalsym:"(") dif V $

Hay 3 coeficientes térmicos:
- Coeficiente de dilatación isobárica: $alpha = 1/V dvp(V, theta, eval: p, evalsym:"(")$
- Coeficiente de compresibilidad isotérmica: $chi_theta = - 1/V dvp(V, p, eval: theta, evalsym:"(")$
- Coeficiente piezotérmico: $beta = 1/p dvp(p, theta, eval: V, evalsym:"(")$

Relación entre los 3 coeficientes (propiedad cíclica): $ dvp(p, V, eval: theta, evalsym:"(") dvp(V, theta, eval: p, evalsym:"(") dvp(theta, p, eval: V, evalsym:"(") = -1 => (- 1/(chi_theta V))(alpha V)(1/(beta p))=-1 => alpha = beta chi_theta p $

Solo hacen falta dos coeficientes para integrar la ecuación de estado:
$ dif V = dvp(V, theta, eval: p, evalsym:"(") dif theta + dvp(V, p, eval: theta, evalsym:"(") dif p = alpha V dif theta - chi_theta V dif p $
$ dif p = dvp(p, theta, eval: V, evalsym:"(") dif theta + dvp(p, V, eval: theta, evalsym:"(") dif V = beta p dif theta - 1/(chi_theta V) dif V $
$ dif theta = dvp(theta, p, eval: V, evalsym:"(") dif p + dvp(theta, V, eval: p, evalsym:"(") dif V = 1/(beta p) dif p + 1/(alpha V) dif V $

Además, hay que especificar completamente un estado $(p, V, theta)$

- Aplicación al gas ideal #[
  - #underline[Ley de Boyle]: a temperatura constante, el producto de la presión por el volumen es constante para una masa dada. Derivando con respecto a $p$:$ (p V)_theta = "constante" => p dvp(V, p, eval: theta, evalsym:"(") + V = 0 => chi_theta = - 1/V dvp(V, p, eval: theta, evalsym:"(") = 1/p $ (coeficiente de compresibilidad isotérmica)
  - #underline[Ley de Gay-Lussac]: a presión constante, el volumen de una masa dada de gas es proporcional a la temperatura. Derivando con respecto a $theta$: $ (V/theta)_p = "constante" => theta dvp(V, theta, eval: p, evalsym:"(") - V = 0 => alpha = 1/V dvp(V, theta, eval: p, evalsym:"(") = 1/theta $ (coeficiente de dilatación isobárica)
  - #underline[Ley de Avogadro]: en condiciones normales (0ºC y 1 atm), un mol de cualquier gas ocupa un volumen de 22.4 L. Esto proporciona el estado totalmente definido que permite la determinación de la constante: $ (V_(N C))/n = "cnst"(theta_(N C))/(n p_(N C)) => "cnst" = n [(p_(N C))/(theta_(N C))(V/n)_(N C)]=n tilde(R) $ con $ tilde(R) = 101300/273.15 22.4 = 8310 "J" dot "kmol"^(-1) dot "K"^(-1) $
]
Entonces: $ dif V = alpha V dif theta - chi_0 V dif p => (dif V)/V = alpha dif theta - chi_0 dif p = (dif theta)/theta - (dif p)/p => p V = "cnst"times theta $
#set math.cases(reverse:false)
Finalmente: $ p V = n tilde(R) theta <=> cases(p tilde(v) = tilde(R) theta, p V = m/M tilde(R) theta = m R theta <=> p v = R theta) $

== 3.3 Propiedades energéticas de un sistema
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
- A presión constante, en un proceso análogo se desarrolla $dif V$ en términos de $dif theta$ y $dif p$: $ delta Q = dif U + p dif V = dvp(U, theta, eval: V, evalsym:"(") d theta + [dvp(U, V, eval: theta, evalsym:"(") + p] overbrace(dif V, [dvp(V, theta, eval: p, evalsym:"(") dif theta + dvp(V, p, eval: 0, evalsym:"(") dif p]) $ Considerando presión constante y recordando $C_V$: $ delta Q |_p = C_p dif theta = {C_V + [dvp(U, V, eval: theta, evalsym:"(") + p] dvp(V, theta, eval: p, evalsym:"(") }dif theta $ $ C_p = C_V + [dvp(U, V, eval: theta, evalsym:"(") + p] dvp(V, theta, eval: p, evalsym:"(") $
- Del Primer Principio en términos de entalpía: $ delta Q = dif H - V dif p = dvp(H, theta, eval: p, evalsym:"(") dif theta + [dvp(H, p, eval: theta, evalsym:"(") - V] dif p $ A presión constante: $ delta Q |_p = C_p dif theta = dvp(H, theta, eval: p, evalsym:"(") dif theta => C_p = dvp(H, theta, eval: p, evalsym:"(") $ A volumen constante: $ delta Q |_V = C_V dif theta => ... => C_V = C_p + [dvp(H, p, eval: theta, evalsym:"(") - V]dvp(p, theta, eval: V, evalsym:"(") $
- -> Todas las derivadas parciales necesarias para determinar U o H son calculables, si se conoce $C_V, C_p$ y la ecuación térmica de estado: $
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
#pagebreak(weak:true)
== 4. Procesos Termodinámicos Fundamentales
== 4.1. Formas de Pfaff del Primer Principio
Hemos obtenido que $ C_v = dvp(U, theta, eval: V, evalsym:"(") l_v = dvp(U, V, eval: theta, evalsym:"(") + p $
Entonces
$ delta Q = dif U + p dif V = dvp(U, theta, eval: v, evalsym:"(") dif theta + [dvp(U, V, eval: theta, evalsym:"(") + p] dif V  => delta Q = C_v dif theta + l_v dif V "(Primera forma de Pfaff)" $
Igualmente
$ C_p=dvp(H, theta, eval: p, evalsym:"(") h_p = dvp(H, p, eval: theta, evalsym:"(") - V $
$ delta Q = dif H - V dif p = dvp(H, theta, eval: p, evalsym:"(") dif theta + [dvp(H, p, eval: theta, evalsym:"(") - V] dif p => delta Q = C_p dif theta + h_p dif p "(Segunda forma de Pfaff)" $
Finalmente
$ mu = dvp(U, p, eval: V, evalsym:"(") lambda = dvp(U, V, eval: p, evalsym:"(") + p $
$ delta Q = dif U + p dif V = [dvp(U, V, eval: p, evalsym:"(") + p ] dif V + dvp(U, p, eval: v, evalsym:"(") dif p = mu dif p + lambda dif V $
o, equivalentemente
$ lambda = dvp(H, V, eval: p, evalsym:"(") mu = dvp(H, p, eval: v, evalsym:"(") - V $
$ delta Q = dif H - V dif p = [dvp(H, p, eval: V, evalsym:"(") - V ] dif p + dvp(H, V, eval: p, evalsym:"(") dif V = mu dif p + lambda dif V $
$ => delta Q = mu dif p + lambda dif V "(Tercera forma de Pfaff)" $

== 4.2 Procesos politrópicos
- #underline[*Proceso politrópico*]: 
Proceso en que la capacidad térmica del sistema permanece constante #[
  - Ecuación: A partir de la Tercera forma de Pfaff: $delta Q = mu dif p + lambda dif V$ #[
    - Por definición $ delta Q = C dif theta "y" lambda = C_p = dvp(theta, V, eval: p, evalsym:"(") mu = C_v dvp(theta, p, eval: V, evalsym:"(") $ $ => C dif theta = C_v dvp(theta, p, eval: V, evalsym:"(") dif p = C_p dvp(theta, V, eval: p, evalsym:"(") dif V $
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
== 4.3. Compresibilidad adiabática
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

== 4.4 Procesos de los gases perfectos
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
$ p_1 v = R theta_1 ; p_2 v = R theta_2 => (p_1)/(theta_1) = (p_2)/(theta_2)$
El trabajo es nulo ya que el volumen es constante: 
$ w = integral_1^2 p dif v = 0 $
La energía interna es
$ Delta u = c_v Delta theta = c_v v (Delta p)/R = 1/(gamma - 1 ) v Delta p $
Aplicando el primer principio
$ q = Delta u + w = Delta u = c_v Delta theta = c_v v (Delta p)/R = 1/(gamma - 1) v Delta p = Delta u $

#underline[*Proceso isotermo de un gas perfecto*]:
Ecuación de proceso
$p_1 v_1 = R theta ; p_2 v_2 = R theta => p_1 v_1 = p_2 v_2 $
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
$p_1 v_1^gamma = p_2 v_2^gamma ; p_1^(1-gamma) theta^gamma = p_2^(1-gamma)theta_2^gamma ; v_1^(gamma-1) theta_1 = v_2^(gamma - 1 ) theta_2 $

$ w = integral_1^2 p dif v = -(p_1 v_1)/(gamma -1 ) [ ((v_2)/(v_1))^(1-gamma) - 1 ] = - Delta u $
$ Delta u  = c_v Delta theta = (R theta_1)/(gamma - 1 )[((p_2)/(p_1))^((gamma -1)/gamma) - 1]$
$ q = Delta u + w = 0 $

#pagebreak(weak:true)
= 5. Segundo Principio de la Termodinámica
== 5.1 Limitaciones del primer principio
- Da información sobre la viabilidad energética de los procesos, pero hay procesos naturales no espontáneos, mientras que sus inversos sí lo son
-> El Segundo Principio determina el sentido de evolución espontánea de los procesos, y cuál es el estado final de equilibrio que se alcanza

== 5.2. Conceptos de motor térmico y de máquina frigorífica
#underline[*Motor térmico*]:
Sistema en el que un fluido evoluciona de forma ciclica intercambiando calor con dos focos, produciendo así trabajo

Por el 1er principio solo se requeriria un foco del que absorber calor.

Concepto de Rendimiento
$ eta = W/(Q_alpha) = (Q_alpha - |Q_c|)/(Q_alpha) = 1-(|Q_c|)/(Q_alpha) $

#underline[*Máquina frigorífica*]:
Maquina en la que el ciclo se recorre de forma inversa, consumiendo trabajo y convirtiendolo en un flujo de calor desde temperaturas bajas a temperaturas altas

El 1er principio solo implica la existencia de un foco al que ceder calor

Coeficientes de prestaciones
Efecto frigorífico: $epsilon = (Q_alpha)/(|W|) = (Q_alpha)/(|Q_c|-Q_alpha)$
Calefacción: $epsilon_c = (|Q_c|)/(|W|) = (|Q_c|)/(|Q_c|-Q_alpha)$


== 5.3. Enunciados del Segundo Principio: equivalencia

=== En términos de motor térmico:
#underline[Enunciado de Kelvin-Planck]: Es imposible la existencia de una maquina que funcionando ciclicamente solamente absorba calor y produzca trabajo
#underline[Enunciado de Ostwald]:
El movil o motor de segunda especie es imposible. El movil de segunda especie se define como una maquina con una sola fuente o monoterma
=== En terminos de máquina frigorífica
#underline[Enunciado de Clausius]:
Es imposible la existencia de un dispositivo, que, funcionando ciclicamente, tenga como unico efecto el paso de calor de un cuerpo frío a otro más caliente

== 5.4. Procesos reversibles e irreversibles
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

== 5.5. Ciclo y teoremas de Carnot
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

== 5.6. Escala termodinámica de temperaturas
- Es una escala independiente de las características del sistema
- Está basada en el rendimiento del motor de Carnot (que depende únicamente de las temperaturas de las fuentes)

$ eta = W/(Q_a) = 1 - (|Q_c|)/(Q_alpha) = Phi (theta_a, theta_c) $
$ => (Q_a)/(|Q_c|) = 1/(1- Phi(theta_a, theta_c)) = f(theta_a, theta_c) $

Para encontrar la forma de $f(theta_a,theta_c)$, consideremos un foco intermedio
$(Q_a)/(|Q_c|) = (Q_a)/(|Q_"int"|) (Q_"int")/(|Q_c|)$
Pero: $ (Q_a)/(|Q_"int"|) = f(theta_a, theta_"int") ; (Q_"int")/(|Q_c|) = f(theta_"int", theta_c); (Q_a)/(|Q_c|) = f(theta_a, theta_c)) $
$ -> f(theta_a, theta_c) $
Esto implica que
$ f(theta_i, theta_j) = (psi(theta_i))/(psi(theta_j)))$
Por lo tanto:
$ (Q_a)/(|Q_c|) = (psi(theta_a))/(psi(theta_c)) equiv (T_a)/(T_c) <-> (Q_a)/(-Q_c) = (T_a)/(T_c) $
= 6. Entropía e irreversibilidad
== 6.1. Entropía
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
  - Si es irreversible, como el rendimiento es menor que el de un ciclo de Carnot, para un $Q^i_a$ dado es $|Q^i_(c("rev"))| < |Q^i_(c("irrev"))| -> |Q^i_(c("rev"))| > |Q^i_(c("irrev"))|$ $ Q^i_a/T^i_a + Q^i_c/T^i_c < 0 $
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

== 6.2 Procesos reales: generación de Entropía
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
  dif S_S &= dif (delta Q_S)/T_S + delta sigma_S \
  dif S_E &= dif (delta Q_E)/T_E + delta sigma_E \
  \
  dif S_U &= dif (delta Q_S)/T_S + dif (delta Q_E)/T_E + delta sigma_S + delta sigma_E = delta Q_s[1/T_S - 1/T_E] + delta sigma_S + delta sigma_E >= 0 
  $
]
== 6.3. Relación entre ecuaciones de estado
- Combinando el primer y segundo principios:
#grid(align: horizon, columns:3, column-gutter: .5cm, $dif U = delta Q - p dif V \ delta Q = T dif S $, $ dif U = T dif S - p dif V$, [Ecuación de Gibbs])
$ -> dif S = 1/T dif U + p/T dif V $
- Desarrollando: 
$ dif S = 1/T dvp(U, T, eval: V, evalsym:"(") dif T + 1/T [dvp(U, V, eval: T, evalsym:"(")+p] dif V $
Identificando derivadas parciales: 
$ dvp(S, T, eval: V, evalsym:"(") = 1/T dvp(U, T, eval: V, evalsym:"(") ; dvp(S, V, eval: T, evalsym:"(") = 1/T [dvp(U, V, eval: T, evalsym:"(") + p ] $
Como la entropía es función de estado, es una diferencial exacta, y cumple la condición de Schwartz:
$ diff/(diff T)[dvp(S, V, eval: T, evalsym:"(")]_V = diff/(diff V)[dvp(S, T, eval: V, evalsym:"(")]_T $
$ diff/(diff T)[dvp(S, V, eval: T, evalsym:"(")]_V = diff/(diff T) [1/T [dvp(U, V, eval: T, evalsym:"(") + p ]]_T = 1/T((diff^2U)/(diff T diff V))-1/T^2 dvp(U, V, eval: T, evalsym:"(")+1/T dvp(p, T, eval: V, evalsym:"(") - p/(T^2) $
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
== 6.4 Cálculo de variaciones de entropía
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
#pagebreak(weak:true)

= 7. Relaciones Termodinámicas
== 7.1. Sistemas abiertos: potencial químico
Ecuación de Gibbs en sistemas cerrados: $ dif U = T dif S - p dif V $ 
establece la dependencia entre $U$, $S$ y $V$ como: $ U = U(S,V)$

En sistemas abiertos $U$ depende también de la masa (o numero de moles) del sistema. Entonces: $ U = U(S,V,n) $
Entonces la ecuación de Gibbs puede generalizarse como:
$ dif U = T dif S - p dif V + mu dif n$ 