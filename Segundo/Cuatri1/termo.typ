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
- En sistemas no aislados el equilibrio se establece cuando el sistema no interacciona con el entorno, es decir cuando hay fuerzas sin equilibrar debidas a diferencias de parámetros intensivos entre sistema y entorno.
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
$ ((d psi)/(d t))_"exp" << ((d psi)/(d t))_"exp" $ 
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
  - En procesos adiabáticos ($delta Q = 0$: $ dif U = - delta W <=> Delta U = -W $
  - En procesos cíclicos ($Delta U = 0$): $ 0 = Q-W <=> Q=W $
]

== 2.4. Entalpía

#underline[*Entalpía*]: $H = U + p V => Q|_p = Delta H$

#set math.cases(reverse:true)
#underline[*Formulación del Primer Principio de la Termodinámica*]: $ cases( U = H - p V -> dif U =  dif  H - p  dif V - V dif p ,  delta Q =  dif U + p | dif V) -> dif H = delta Q + V dif p $

= 3. Ecuaciones de estado
== 3.1. Ecuaciones de estado
- #underline[*Ecuación de estado*]: Cualquier función, obtenida teórica o experimentalmente, que relaciona las variables termodinámicas de un sistema. #[
  - Dependerá de las variables escogidas (de acuerdo con el Principio Cero: las variables externas pueden expresarse en función de las variables externas y de la temperatura)
  - Para los sistemas habituales #[
    - Si el parámetro interno es la enegría interna:#linebreak() Ecuación energética de estado $ U = U(V,0) $
    - Si el parámetro interno es la presión: #linebreak() Ecuación térmica de estado $ p = p(V,0) $
  ]
]

== 3.2. Coeficientes térmicos de un sistema
- En general, obtener la ecuación térmica de estado no es sencillo
- Los coeficientes térmicos proporcionan un método general: #linebreak() integración de diferenciales de variables
$ V = V(theta, p) -> dif V = ((diff V) / (diff theta))_p dif theta + ((diff V) / (diff p))_theta dif p $
$ p = p(theta, V) -> dif p = ((diff p)/(diff theta))_V dif theta + ((diff p)/(diff V))_theta dif V $
$ theta = theta (p, V)-> dif theta = ((diff theta)/(diff p))_V dif p + ((diff theta)/(diff V))_p dif V $

Hay 3 coeficientes térmicos:
- Coeficiente de dilatación isobárica: $alpha = 1/V ((diff V)/(diff theta))_p$
- Coeficiente de compresibilidad isotérmica: $chi_theta = - 1/V ((diff V)/(diff p))_theta$
- Coeficiente piezotérmico: $beta = 1/p((diff p)/(diff theta))_V$

Relación entre los 3 coeficientes (propiedad cíclica): $ ((diff p)/(diff V))_theta ((diff V)/(diff theta))_p ((diff theta)/(diff p))_V = -1 => (- 1/(chi_theta V))(alpha V)(1/(beta p))=-1 => alpha = beta chi_theta p $

Solo hacen falta dos coeficientes para integrar la ecuación de estado:
$ dif V = ((diff V)/(diff theta))_p dif theta + ((diff V)/(diff p))_theta dif p = alpha V dif theta - chi_theta V dif p $
$ dif p = ((diff p)/(diff theta))_V dif theta + ((diff p)/(diff V))_theta dif V = beta p dif theta - 1/(chi_theta V) dif V $
$ dif theta = ((diff theta)/(diff p))_V dif p + ((diff theta)/(diff V))_p dif V = 1/(beta p) dif p + 1/(alpha V) dif V $

Además, hay que especificar completamente un estado $(p, V, theta)$

- Aplicación al gas ideal #[
  - #underline[Ley de Boyle]: a temperatura constante, el producto de la presión por el volumen es constante para una masa dada. Derivando con respecto a $p$:$ (p V)_theta = "constante" => p ((diff V)/(dif p))_theta + V = 0 => chi_theta = - 1/V ((diff V)/(diff p))_theta = 1/p $ (coeficiente de compresibilidad isotérmica)
  - #underline[Ley de Gay-Lussac]: a presión constante, el volumen de una masa dada de gas es proporcional a la temperatura. Derivando con respecto a $theta$: $ (V/theta)_p = "constante" => theta ((diff V)/(diff theta))_p - V = 0 => alpha = 1/V ((diff V)/(diff theta))_p = 1/theta $ (coeficiente de dilatación isobárica)
]
Entonces: $ dif V = alpha V dif theta - chi_0 V dif p => (dif V)/V = alpha dif theta - chi_0 dif p = (dif theta)/theta - (dif p)/p => p V = "cnst"times theta$
- Aplicación al gas ideal: #[
  Ley de Avogadro: en condiciones normales (0ºC y 1 atm), un mol de cualquier gas ocupa un volumen de 22.4 L. Esto proporciona el estado totalmente definido que permite la determinación de la constante: $ (V_(N C))/n = "cnst"(theta_(N C))/(n p_(N C)) => "cnst" = n [(p_(N C))/(theta_(N C))(V/n)_(N C)]=n tilde(R) $ con $ tilde(R) = 101300/273.15 22.4 = 8310 "J" dot "kmol"^(-1) dot "K"^(-1) $
]
#set math.cases(reverse:false)
- Finalmente: $ p V = n tilde(R) theta <=> cases(p tilde(v) = tilde(R) theta, p V = m/M tilde(R) theta = m R theta <=> p v = R theta) $

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
- Del primer principio, y desarrollando $dif U$ en términos de $dif theta$ y $dif V$: $ delta Q = dif U + p dif V = ((diff U)/(diff theta))_V dif theta + [((diff U)/(diff V))_0 + p] dif V $ A volumen constante ($dif V = 0$): $ delta Q |_V = C_V dif theta = ((diff U)/(diff theta))_V dif theta => C_V = ((diff U)/(diff theta))_V $
- A presión constante, en un proceso análogo se desarrolla $dif V$ en términos de $dif theta$ y $dif p$: $ delta Q = dif U + p dif V = ((diff U)/(diff theta))_V d theta + [((diff U)/(diff V))_theta + p] overbrace(dif V, [((diff V)/(diff theta))_p dif theta + ((diff V)/(diff p))_0 dif p]) $ Considerando presión constante y recordando $C_V$: $ delta Q |_p = C_p dif theta = {C_V + [((diff U)/(diff V))_theta + p] ((diff V)/(diff theta)_p)}dif theta $ $ C_p = C_V + [((diff U)/(diff V))_theta + p] ((diff V)/(diff theta))_p $
- Del Primer Principio en términos de entalpía: $ delta Q = dif H - V dif p = ((diff H)/(diff theta))_p dif theta + [((diff H)/(diff p))_theta - V] dif p $ A presión constante: $ delta Q |_p = C_p dif theta = ((diff H)/(diff theta))_p dif theta => C_p = ((diff H)/(diff theta))_p $ A volumen constante: $ delta Q |_V = C_V dif theta => ... => C_V = C_p + [((diff H)/(diff p))_theta - V]((diff p)/(diff theta))_V $
- -> Todas las derivadas parciales necesarias para determinar U o H son calculables, si se conoce $C_V, C_p$ y la ecuación térmica de estado: $
((diff U)/diff theta))_V &= C_V \
C_p = C_v + [((diff U)/(diff V))_theta + p]((diff V)/(diff theta))_p -> ((diff theta)/(diff V))_theta &= [C_p - C_V]((diff theta)/(diff V))_p - p \
((diff H)/(diff theta))_p &= C_p \
C_V = C_p + [((diff H)/(diff p))_theta - V]((diff p)/(diff theta))_V -> ((diff H)/(diff p))_theta &= [C_V - C_p]((diff theta)/(diff p))_V + V $
- #underline[*Ecuación energética de estado*]: #[
  - Integrando las diferenciales de U o H $ 
  dif U &= ((diff U)/(diff theta))_V = dif theta + ((diff U)/(diff V))_theta dif V \
  dif U &= C_v dif theta + [(C_p - C_V)((diff theta)/(diff V))_p - p]dif V 
  $
  - Para la entalpía: $
  dif H &= ((diff H)/(diff theta))_p dif theta + ((diff H)/(diff p))_theta dif p \
  dif H &= C_p dif theta + [(C_V - C_p)((diff theta)/(diff p))_V + V] dif p$
]
]