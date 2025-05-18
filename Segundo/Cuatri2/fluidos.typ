#import "../config.typ": *

#let intro = [Estos apuntes están principablemente basados sobre el libro de Landau y Lifshitz@landau1987fluid pero contienen solo el contenido relevante a la clase, y la convención se ha intentado mantener similar. El enfoque principal, sobre todo, es justificar y elaborar sobre algunas de las explicaciones con el fin de ganar intuición sobre el funcionamiento de los fluidos de forma teórica. Por lo tanto, se ha elegido seguir la estructura del libro, que comienza con los resultados particularizados y busca generalizaciones más tarde, en oposición a construir un marco teórico desde el principio. Estos apuntes no son un resumen, pero buscan tener todo el contenido relevante a la asignatura en ellos. ]

#show: doc => template(doc, "Física de Fluidos", preface:intro)

#let dvm(..funcs) = {

  let func = funcs.pos().intersperse(",").sum(default:[])
  $(upright(D)func)/(upright(D)t) $
}

#let mach = "Ma"
#let reynolds = "Re"

= Introducción
== Qué es un fluido?
En oposición a un sólido, un fluido no tiene fuerzas de restitución ante un esfuerzo tangencial. Es decir, si intentamos deformar un sólido (por ejemplo un edificio) en la dirección tangencial (por ejemplo de izquierda a derecha aplicando un esfuerzo desde arriba), este debería de recuperar su forma original después de que se acabe la aplicación de este esfuerzo (para esfuerzos grandes, muchos sólidos no se comportarán como un sólido perfecto).

== Criterio de medio continuo.

Para poder estudiar los fluidos tenemos que definir el entorno en el que vamos a estar trabajando. Definimos un fluido como un medio continuo (vamos a estudiar sus criterios ahora), que tiene fuerzas de atracción intermolecular débiles, y que no tiene fuerzas restitutivas. Con eso, podemos decir que las ecuaciones más "generales" de la física de fluidos son aplicables. ¿Pero cuando podemos decir que un fluido es análogo a un medio continuo? Debemos primero elegir la escala en la que vamos a considerar que un "elemento de un fludo" es completamente uniforme. Es decir, que sus variables termodinámicas son uniformes en el elemento. Si el volumen de este elemento es demasiado pequeño (a partir del orden de $10^(-5) "mm"^3$) aparecen fluctuaciones en las magnitudes termodinámicas debido a fluctuaciones microscópicas. Tampoco podemos tener un volumen demasiado grande, porque entonces las variables termodinámicas no se pueden considerar uniformes en la totalidad del elemento. El tamaño adecuado de este elemento nos permite considerar variables termodinámicas locales (trabajaremos con densidades), donde cada elemento está en equilibrio local (podemos aplicar la termodinámica convencional).

Para poder caracterizar sistemas donde podemos considerar equilibrio local, se imponen dos condiicones. Primero, el recorrido libre medio (es decir, cuanto se puede desplazar una partícula sin interactuar) tiene que ser menor al tamaño de una celda, y segundo, el tamaño de las celdas debe de ser menor a la escala $L$ de los cambios macroscópicos. Por lo tanto, utilizando un adimensional llamado el número de Knudsen, podemos definir la condición como
$ "Kn" equiv l_(l m)/L << 1 $

Por lo tanto nuestro modelo no funciona en todas partes, incluso en la tierra. Por ejemplo, en la ionosfera el recorrido libre medio es del orden de 10 metros, por lo que el número de Knudsen es obviamente mayor a 1 y no se puede considerar un "fluido" por nuestra definición.

== Magnitudes estudiadas
Como hemos dicho antes, vamos a estudiar las densidades de las magnitudes que estudiemos. Conviene entonces primero definir la densidad $rho$, que corresponde a la masa por unidad de volumen:
$ rho = dv(m,V) $

Definimos también el volumen específico (el volumen por unidad de masa) como $ v = 1/rho $

Adicionalmente, vamos a definir el campo de velocidades $arrow(u) (x,y,z,t)$, una magnitud vectorial que cuantifica la velocidad de flujo en una posición $arrow(r)$

== Descripción del flujo
Hay dos formas equivalentes de describir el flujo, y se denominan Euleriana y Lagrangiana. La descripción Euleriana es la que hemos estado asumiendo hasta ahora, donde se considera un volumen de control (que es de magnitud constante, pero no tiene por qué estar fijo en el espacio, aunque a menudo se considerará así) donde las variables termodinámicas se pueden considerar razonablemente uniformes, y se estudia el flujo a través de este, utilizando un campo de velocidades general. La descripción Lagrangiana sigue a una masa de control o partícula fluida constante (que no tiene por que mantener su forma) que se desplaza a lo largo del fluido. En vez de utilizar el campo de velocidades, se identifica cada masa de control por su posición inicial $arrow(X)_0$ en un tiempo arbitrario pero igual para todas las partículas $t_0$, y se describe su velocidad en un instante $t$: $ arrow(X) (arrow(X)_0, t) $

== Derivada material

Hemos dicho que estos dos formalismos son equivalentes, pero claramente la descripción Lagrangiana, que es más parecida a lo que se utilizaría para la descripción de la mecánica de un sólido, es más engorrosa a la hora de dar una natural del flujo. Sin embargo, es necesaria porque nos permite obtener las ecuaciones del fluido por analogía a las de un sólido. Por eso necesitamos una forma de pasar de la descripción Lagrangiana al la Euleriana. 

A primera vista, como tenemos el vector de posición de la partícula fluida en un instante $t$, podemos obtener el campo de velocidades en la posición de una partícula dada:
$ arrow(u) (arrow(X) (arrow(X)_0, t), t) $ que resulta ser equivalente a $ dvp(arrow(X),t) (arrow(X)_0, t) $ ya que ambos describen la velocidad para un instante para una masa de control particular (en el lado derecho, la derivada es parcial porque $arrow(X)$ depende únicamente del tiempo para una partícula fluida en particular).

Pero, y si queremos saber la aceleración de esta partícula? Partiendo de la equivalencia que hemos considerado anteriormente, podemos expresar la aceleración de una partícula como
$ dv(u_i (arrow(X) (arrow(X_0), t), t), t) $
Ahora, vamos a aplicar la regla de la cadena, es decir
$ dv(u_i (arrow(X),t),t),t) = dvp(u_i (arrow(X),t),t) cancel(dvp(t,t)) + dvp(u_i (arrow(X),t),X_k) dvp(X_k,t) $
Aquí utilizamos $X_i$ para referirnos a las componentes del vector de posición de la partícula, y debemos de añadir estos terminos para tener en cuenta la dependencia temporal de la velocidad a través de la variable Lagrangiana también. Ahora, recordando la relación anterior de la velocidad:
$ dv(u_i (arrow(X),t), t) = dvp(u_i (arrow(X), t),t) + dvp(u_i (arrow(X),t),X_k) u_k (arrow(X), t) $

Podemos generalizar a esta nueva forma de obtener derivadas de cantidades para partículas individuales desde la desripción Euleriana a cualquier cantidad dependiente de la posición y el tiempo $bold(lambda)$, tensorial de cualquier orden, aplicando la regla de la cadena:
$ dv(bold(lambda) (arrow(X),t),t) = dvp(bold(lambda)  (arrow(X),t),t) + dvp(bold(lambda) (arrow(X),t),X_k) dvp(X_k,t) = dvp(bold(lambda) (arrow(X),t),t) + dvp(bold(lambda) (arrow(X),t),X_k) u_k (arrow(X),t) $

Esta forma de tomar la derivada se conoce como derivada material, y la denotaremos $dvm()$ para explicitar que se toma para una partícula de fluido y no para la cantidad en el punto únicamente.
$ dvm(bold(lambda)) = dvp(bold(lambda),t) + dvp(bold(lambda),x_k) u_k $
Aquí hemos intercambiado todas las variables Lagrangianas por las Eulerianas. Hemos podido hacer esto porque no aparecen de forma explícita en la expresión, solo como los argumentos de $arrow(u)$.

= Fluidos ideales: un primer acercamiento
== Conservación de la masa
Vamos a comenzar obteniendo la ecuación de conservación de la masa para un fluido #footnote([Utilizaremos el argumento de Landau @landau1987fluid]). Podemos obtener la masa de un fluido de densidad $rho$ contenida dentro de un volumen de control fijo $V_c$ como
$ integral_(V_c) rho dif V $
Por lo tanto, el incremento temporal de la masa dentro del volumen se puede expresar como
$ diff/(diff t) integral_(V_c) rho dif V $

Por otra parte podemos expresar el flujo de masa hacia el exterior del volumen por su superficie como
$ integral.cont_(S_c) rho arrow(u) dot hat(n) dif S $
donde $hat(n)$ es el vector normal exterior de la superficie. Podemos constatar que esto es equivalente al decrecimiento temporal de la masa contenida en el volumen. Por lo tanto, podemos establecer la relación
$ diff/(diff t) integral_(V_c) rho dif V = - integral.cont_(S_c) rho arrow(u) dot hat(n) dif S $
Utilizando el teorema de Gauss, tenemos
$ integral.cont_(S_c) rho arrow(u) dot hat(n) dif S = integral_(V_c) nabla dot (rho arrow(u)) dif V $
Por lo tanto, la expresión anterior se transforma en
$ diff/(diff t) integral_(V_c) rho dif V  = - integral_(V_c) nabla dot (rho arrow(u)) dif V $
Reordenando e intercambiando la diferenciación y la integral (el volumen de control es fijo en el espacio y constante, por lo que esta manipulación está permitida), obtenemos
$ integral_(V_c) [dvp(rho,t) + nabla dot (rho arrow(u))] = 0 $
Como esta integral se debe anular para cualquier volumen de control fijo, el integrando es el que se debe de anular, por lo que obtenemos
$ dvp(rho,t) + nabla dot (rho arrow(u)) = 0 $

Esta ecuación se conoce como ecuación de continuidad.

== La ecuación de Euler
Estamos en posición de obtener nuestra primera ecuación de movimiento. Vamos a realizar unas suposiciones. Primero, vamos a asumir una ausencia de viscosidad (o viscosidad despreciable), es decir que la única fuerza intrínseca en juego será la presión, que corresponde a la intensidad de las fuerzas del fluido por unidad de área. 


La fuerza neta que ejerce un volumen de control sobre el resto del fluido es dada por la integral
$ integral.cont_(S_c) p hat(n) dif S $
Por lo tanto, la fuerza que ejerce el fluido sobre el volumen es 
$ - integral.cont_(S_c) p hat(n) dif S $
Utilizando nuevamente el teorema de Gauss, sabiendo que el vector normal es constante
$ integral.cont_(S_c) p hat(n) dif S equiv hat(n) integral.cont_(S_c) p hat(n) dot hat(n) dif S = hat(n) integral.cont_(S_c) nabla dot (p hat(n)) dif V = cancel(hat(n) dot hat(n)) integral_(V_c) nabla p dif V $
Podemos escribir
$ - integral.cont_(S_c) p hat(n) dif S = - integral_(V_c) nabla p dif V $

Por lo que podemos deducir que el fluido alrededor de un volumen de control ejerce una fuerza $ - nabla p$ por unidad de volumen sobre este.

La segunda Ley de Newton postula que:
$ arrow(F) = m arrow(a) $
Esta expresión se aplica a una masa de control, por lo que para obtener las cantidades que buscamos, considerémosla para un volumen de control. Lo primero es convertir la acelearción en la derivada material de $arrow(u)$, lo que resulta ser
$ arrow(F) = m dvm(arrow(u)) $
Ahora, si derivamos por el volumen, sabiendo que $arrow(u)$ no depende del volumen
$ dv(arrow(F), V) = dv(m, V) dvm(arrow(u)) $
Sabiendo que la fuerza por unidad de volumen es $- nabla p$ y que la masa por unidad de volumen es $rho$, identificando:
$ - 1/rho nabla p = dvm(arrow(u)) $
O, desarrollando la expresión
$ dvp(arrow(u),t) + (arrow(u) dot nabla)arrow(u) = -1/rho nabla p $
Esta es la conocida Ecuación de Euler #footnote([Cabe destacar que esta expresión de la ecuación de Euler no es completa, no incluye las fuerzas másicas externas por la gravedad. Dichas fuerzas se deberían de añadir al lado derecho de la ecuación. Durante los siguientes desarrollos, emplearemos la expresión reducida.]), y es la utilizada para describir el flujo de un *Fluido Ideal* (o perfecto), es decir que no experimenta disipación de energía. Ya hemos comentado que la viscosidad es nula, pero esta condición también implica que no hay intercambio de calor entre partículas fluidas, es decir que el movimiento del fluido es adiabático. 

Podemos escribir esta condición como $ dvm(s) = 0 $ Es decir, para cada partícula fluida la entropía es constante.

Otra forma de escribir esto es 
$ dvp(s,t) + arrow(u) dot nabla s = 0 $

También, si multiplicamos esta ecuación por $rho$ y la ecuación de continuidad por $s$, y las sumamos, obtenemos
$ rho dvp(s,t) + s dvp(rho,t) + rho arrow(u) dot nabla s + s nabla dot (rho arrow(u)) = 0 $
Aplicando la regla del producto, tenemos una ecuación de continuidad del flujo de entropía
$ dvp(rho s ,t) + nabla dot (s rho arrow(u)) = 0 $

Esta condición adiabática se puede simplificar mucho con una sola suposición. Dado que la entropía se conserva para una partícula, si en algún punto del tiempo esta es uniforme en el espacio, podemos considerar que será uniforme siempre, o en otras palabras $dif s = 0$. Esta condición isentrópica es mucho más permisible, y podemos reescribir la ecuación de movimiento gracias a ella. 

Partiendo de la relación de la entalpía
$ dif h = T dif s + v dif p $

Simplificando para el flujo isentrópico, y sabiendo que $v = 1\/rho$
$ dif h = (dif p)/rho $
Podemos pasar estos a un gradiente si desarrollamos ambos diferenciales en el punto e identificamos los terminos relevantes:
$ dvp(h,x_i)dif x_i + dvp(h,t) dif t &= 1/rho (dvp(p,x_i) dif x_i + dvp(p,t) dif t) \ => dvp(h,x_i) &= 1/rho dvp(p,x_i) $
Que es equivalente a escribir:
$ nabla h = 1/rho nabla p $
Sustituyendo en la ecuación de Euler:
$ dvm(arrow(u)) = - nabla h $
Por lo tanto, en un flujo ideal isentrópico una partícula fluida acelera en la dirección del mínimo de la entalpía. 

== Ecuación de Bernoulli
Hasta ahora hemos considerado casos relativamente generales a todos los fluidos ideales. Ahora vamos a discutir una particularización de la ecuación para el caso del flujo estacionario isentrópico, es decir cuando $dvp(arrow(u),t)=0$ y $dif s = 0$.
 
Para ello, vamos a introducir el concepto de línea de corriente, que son las líneas cuyas tangentes tienen la misma dirección que la velocidad. Es decir, a lo largo de una línea de corriente $ arrow(u) = u hat(e)_t $ Donde $hat(e)_t$ es el vector unitario tangente a la línea de corriente considerada. podemos reescribir esto como un sistema de ecuaciones que exige que $dif arrow(r)$ y $arrow(u)$ sean paralelas: 
$ (dif x)/u_x = (dif y)/u_y = (dif z)/u_z $

Ahora, partiendo de la ecuación de Euler isentrópica
$ cancel(dvp(arrow(u),t)) + (arrow(u) dot nabla) arrow(u) = - nabla h $
A lo largo de una línea de corriente tendríamos
$ (u hat(e)_t dot nabla) (hat(e)_t u) = - nabla h $

Proyectando sobre la línea de corriente:
$ (u hat(e)_t dot nabla) (hat(e)_t u) dot hat(e)_t = - (hat(e)_t dot nabla) h $

recordando la condición anterior, tenemos $ dif arrow(r) = hat(e)_t abs(dif arrow(r)) equiv hat(e)_t dif l $
Por lo que, reordenando
$ hat(e)_t = dv(arrow(r),l) $
Podemos calcular 
$ hat(e)_t dot nabla = dv(arrow(r), l) dot nabla equiv dv(x_i, l) dot diff/(diff x_i) = 1/(dif l) dif x_i partial/(partial x_i) $
Podemos indentificar la suma $ dif x_i diff/(diff x_i)$ como un operador correspondiente a la diferencial exacta de una función dependiente de la posición, por ejemplo $dif lambda = dif x_i dvp(lambda,x_i ) $. Por lo tanto, podemos escribir 
$ hat(e)_t dot nabla equiv dif/(dif l) $

Sustituyendo este resultado:
$ u dif/(dif l ) (u hat(e)_t) dot hat(e)_t = - dv(h,l) $
Sabiendo que
$ dif/(dif l) (u^2 hat(e)_t^2) equiv dif/(dif l) (u^2 hat(e)_t dot hat(e)_t) $
Aplicando la regla del producto, vemos que:
$ dif/(dif l) (u^2 hat(e)_t dot hat(e)_t) =  u hat(e)_t dot dif/(dif l) (u hat(e)_t) + u hat(e)_t dot dif/(dif l)(u hat(e)_t) = 2u hat(e) dot dif/(dif l) (u hat(e)_t) $
Por lo que
$ dif/(dif l) (u^2 hat(e)_t^2) =  2 u hat(e)_t dif/(dif l) (u hat(e)_t) $
Y entonces
$ u hat(e)_t dif/(dif l) (u hat(e)_t) = dif/(dif l) (1/2 u^2 hat(e)_t^2) $
Como $hat(e)_t$ es unitario, $hat(e)_t^2 = 1$. Podemos sustituir en la ecuación para obtener
$ dif/(dif l) (1/2 u^2) = - dv(h,l) $
Finalmente, reordenando
$ dif/(dif l) (h + u^2/2) = 0 $
De esto es immediato que a lo largo de una línea de corriente del flujo estacionario isentrópico de un fluido perfecto $u^2/2 + h$ es constante. Si queremos añadir un campo gravitatorio uniforme basta con añadir $arrow(g)$ al lado derecho de la ecuación de Euler, que corresponde a añadir $-hat(e)_t dot arrow(g)$ al lado izquierdo de la ecuación, que corresponde a $-g cos alpha $ donde $alpha$ es el ángulo entre la dirección de $arrow(g)$ y la línea de corriente. Suponiendo un sistema de referencia donde $arrow(g)$ va en la dirección $-z$, podemos inventar un ángulo $beta = alpha-pi/2$  que corresponde al ángulo entre $hat(e)_t$ y el eje $x$. Sustituyendo en la ecuación, tenemos que $ -hat(e)_t dot arrow(g) = g sin beta $. Finalmente, este seno se puede calcular como $sin beta = dv(z,l)$ obteniendo finalmente la ecuación
$ dif/(dif l) (u^2/2 + h) + g dv(z,l) = 0 $
O, sabiendo que $g$ es una constante
$ dif/(dif l) (u^2/2 + h + g z) = 0 $
Es decir, en flujo estacionario isentrópico de un fluido ideal sometido a un campo gravitatorio uniforme y constante, $ u^2 +h + g z$ es constante a lo largo de una línea de corriente. 

Esto es una forma más común de la ecuación de Bernoulli, ya que en la mayoría de casos el fluido considerado está sometido a un campo gravitatorio. 

== Más leyes de conservación
Ahora que tenemos una imagen aproximada de las propiedades y ecuaciones en un fluido ideal, vamos a obtener otras leyes de conservación importantes.
=== Ecuación de la energía
Vamos a considerar, como anteriormente un volumen de control fijo. La energía contenida en un volumen unidad es entonces
$ 1/2 rho u^2 + rho e $
Donde el primer término corresponde a la energía cinética del fluido en el volumen y el segundo a la energía interna. 

Podemos calcular su evolución temporal como
$ diff/(diff t) (1/2 rho u^2 + rho e) $
Para establecer una correspondencia para esta cantidad, consideremos primero el primer término
$ diff/(diff t) (1/2 rho u^2) = 1/2 u^2 dvp(rho,t) + 1/2 rho dvp(u^2,t) $
Utilizando que $u^2 equiv arrow(u) dot arrow(u)$ y la regla del producto otra vez:
$ diff/(diff t) (1/2 rho u^2) = 1/2 u^2 dvp(rho,t) + rho arrow(u) dot dvp(arrow(u),t) $
Empleando la ecuación de continuidad y la de Euler, tenemos
$ diff/(diff t) (1/2 rho u^2) = - 1/2 u^2 nabla dot (rho arrow(u)) - rho arrow(u) dot [(arrow(u) dot nabla)arrow(u) + 1/rho nabla p] = - 1/2 u^2 nabla dot (rho arrow(u)) - arrow(u) dot [rho (arrow(u) dot nabla) arrow(u) + nabla p] $
Utilizando la forma diferencial de la entalpía
$ dif h = T dif s + 1/rho dif p => nabla p = rho nabla h - rho T nabla s $
Por lo que tenemos
$ diff/(diff t) (1/2 rho u^2) = -1/2 u^2 nabla dot (rho arrow(u)) - rho arrow(u) dot [(arrow(u) dot nabla) arrow(u) + nabla h - T nabla s ] $
Ahora, sabiendo que
$ arrow(u) dot (arrow(u) dot nabla) arrow(u) equiv u_i u_j dvp(u_i,x_j) = 1/2 u_j dvp(u_i u_i,x_j) = 1/2 u_j dvp(u^2,x_j) equiv 1/2 arrow(u) dot nabla u^2 $
Podemos escribir
$ diff/(diff t) (1/2 rho u^2) = - 1/2 u^2 nabla dot (rho arrow(u)) - rho arrow(u) dot (1/2 nabla u^2 + nabla h - T nabla s) $
Finalmente, reorganizando obtenemos
$ diff/(diff t) (1/2 rho u^2) = - 1/2 u^2 nabla dot (rho arrow(u)) - rho arrow(u) dot nabla(1/2 u^2 + h) + rho T arrow(u) dot nabla s $
Ahora, para calcular $dvp((rho e),t)$, comenzamos con
$ dif (rho e) = e dif rho + rho dif e $
Y por lo tanto, utilizando la expresión más común de la energía interna
$ dif (rho e) = e dif rho + rho T dif s - rho p dif (1/rho) $
Utilizando la regla de la cadena, $ dif(1/rho) = -(dif rho)/rho^2 $
Sustituyendo
$ dif (rho e) = e dif rho + rho T dif s + p (dif rho)/rho $
Agrupando
$ dif (rho e) = rho T dif s + (e + p/rho) dif rho $
Identificando que $e + p/rho = e + p v$ es la expresión de la entalpía
$ dif (rho e) = rho T dif s + h dif rho $
De aquí, deducimos que
$ dvp(rho e,t) = rho T dvp(s,t) + h dvp(rho,t) $
Utilizando la ecuación adiabática y la de continuidad
$ dvp(rho e,t) = - rho T arrow(u) dot nabla s - h nabla dot (rho arrow(u)) $

Ahora ya podemos combinar nuestros resultados
$ diff/(diff t) (1/2 rho u^2 + rho e) = - 1/2 u^2 nabla dot (rho arrow(u)) - rho arrow(u) dot nabla(1/2 u^2 + h) + cancel(rho T arrow(u) dot nabla s) - cancel(rho T arrow(u) dot nabla s) - h nabla dot (rho arrow(u)) $
Agrupando
$ diff/(diff t) (1/2 rho u^2 + rho e) = - (1/2 u^2 + h) nabla dot (rho arrow(u)) - rho arrow(u) dot nabla(1/2 u^2 + h) $
Utilizando la regla del producto
$ diff/(diff t) (1/2 rho u^2 + rho e) = - nabla dot [rho arrow(u) (1/2 u^2 + h)] $

El sentido de esta expresión es claro una vez la integramos en un volumen

$ diff/(diff t) integral_V (1/2 rho u^2 + rho e) = - integral_V nabla dot (rho arrow(u) (1/2 u^2 + h)) $

La integral de derecha se transforma en una de superficie con el teorema de la divergencia

$ diff/(diff t) integral_V (1/2 rho u^2 + rho e) = - integral.cont_S rho (1/2 u^2 + h) arrow(u) dot hat(n) dif S $

Podemos indentificar el lado izquierdo de la integral como el incremento temporal de la energía en el volumen, por lo que el lado derecho corresponde entonces a el flujo de energía hacia el interior del volumen. Podemos entonces identificar el vector $ rho arrow(u) (1/2 u^2 + h) $ como el vector de densidad de flujo energético.

Parece extraño que aparezca la entalpía en esta expresión en vez de la energía interna, pero podemos ver el significado físico fácilmente. Sabiendo que por definición, $ h = e + p/rho$, podemos escribir el flujo de energía a través de una superficie cerrada como
$ -integral.cont_S rho arrow(u) (1/2 u^2 + e + p/rho) dot hat(n) dif S  = - integral.cont_S rho arrow(u) (1/2 u^2 + e) dot hat(n) dif S - integral.cont_S p arrow(u) dot hat(n) dif S $
El primer término corresponde a la entrada de energía cinética y interna transportada por la masa del fluido a través de la superficie, mientras que el otro es el trabajo realizado por la presión en la superficie.

Cabe insistir que este resultado solo es válido cuando se considera un fluido ideal. Más tarde obtendremos una expresión más general. 

=== Ecuación de la cantidad de movimiento 
Vamos a darle un tratamiento similar a la cantidad de movimiento. La cantidad de movimiento o momento lineal de un volumen unidad es $ rho arrow(u) equiv rho u_i $
Por lo tanto, su variación temporal es
$ dvp(rho u_i,t) = rho dvp(u_i,t) + u_i dvp(rho,t) $
Utilizando la ecuación de continuidad
$ dvp(rho u_i,t) = rho dvp(u_i,t) - u_i dvp(rho u_j,x_j) $
Recordando la ecuación de Euler
$ rho dvp(u_i,t) + rho u_j dvp(u_i,x_j) = - 1/rho dvp(p,x_i) $
Tenemos, sustituyendo
$ dvp(rho u_i,t) = - rho u_j dvp(u_i,x_j) - dvp(p,x_i) - u_i dvp(rho u_j,x_j) $
Ahora, utilizando la regla del producto: 
$ dvp(rho u_i,t) = - dvp(p,x_i) - dvp(rho u_i u_j,x_j) $
Ahora, escribimos $ dvp(p,x_i)$ como $delta_(i j) dvp(p,x_j)$, por lo que podemos meterlo dentro de la divergencia
$ dvp(rho u_i,t) = - dvp((p delta_(i j) + rho u_i u_j),x_j) $
Podemos definir un tensor #footnote[Este tensor no corresponde al tensor de esfuerzos general, sino que lo contiene. En este caso, como se considera un fluido ideal la parte correspondiente al tensor de esfuerzos es $p delta_(i j)$] $ Pi_(i j) = p delta_(i j) + rho u_i u_j$ tal que 
$ dvp(rho u_i, t) = - dvp(Pi_(i j),x_j) $
Su significado físico se aclara si integramos la ecuación en un volumen
$ diff/(diff t) integral_V rho u_i dif V = - integral_V dvp(Pi_(i j),x_j) dif V $
aplicando el teorema de Gauss
$ diff/(diff t) integral_v rho u_i dif V = - integral.cont_S Pi_(i j) n_j dif S $
Claramente, el lado izquierdo de la ecuación es el incremento temporal de la componente $i$-ésima de la cantidad de movimiento en el volumen, por lo tanto, el lado derecho al ser una integral de superficie debe corresponder a un flujo, en este caso al flujo de la $i$-ésima componente de la cantidad de movimiento hacia el interior del volumen por su superficie delimitante. Vemos entonces que el tensor $Pi_(i j)$ corresponde al flujo de la componente i-ésima del momento a través de una superficie unitaria normal a $x_j$. Por esta razón, se llama tensor de densidad de flujo de momento.

=== Conservación de la circulación 
Se define la circulación como $ Gamma = integral.cont_C arrow(u) dot dif arrow(l) $
Vamos a considerar la circulación en un contorno cerrado formado por partículas fluidas. Este estará en movimiento, por lo que para ver como varía la circulación tomamos la derivada material.

$ dvm(Gamma) = dvm() integral.cont_C arrow(u) dot dif arrow(l) $
Identificamos $dif arrow(l)$ con la diferencia de vectores posición entre dos partículas fluidas adyacentes en el contorno, por lo que $ dif arrow(l) = dif arrow(r)$
$ dvm(Gamma) = dvm() integral.cont_C arrow(u) dot dif arrow(r) $
Ahora, intercambiamos la integración y la diferenciación. Esta operación está permitida porque $arrow(u)$ y $ dif arrow(r)$ suelen comportarse bien bajo diferenciación. 
$ dvm(Gamma) = integral.cont_C dvm((arrow(u) dot dif arrow(r))) $
Aquí tenemos que tener en cuenta que la diferencial de $arrow(r)$ cambia con el tiempo, por lo que no se puede sacar de la derivada. Utilizando la regla del producto:
$ dvm(Gamma) = integral.cont_C dvm(arrow(u)) dot dif arrow(r) + integral.cont_C arrow(u) dot dvm(dif arrow(r)) $
Suponiendo buen comportamiento intercambiamos la derivada y la diferencial de $arrow(r)$
$ dvm(Gamma) = integral.cont_C dvm(arrow(u)) dot dif arrow(r) + integral.cont_C arrow(u) dot dif dvm(arrow(r)) $
Sabiendo que $dvm(arrow(r)) equiv arrow(u)$, tenemos
$ dvm(Gamma) = integral.cont_C dvm(arrow(u)) dot dif arrow(r) + integral.cont_C arrow(u) dot dif arrow(u) $
Por la regla del producto: $ dif (1/2 u^2) equiv dif (1/2 arrow(u) dot arrow(u)) = 1/2 arrow(u) dot dif arrow(u) + 1/2 arrow(u) dot dif arrow(u) = arrow(u) dot dif arrow(u)$, por lo que
$ dvm(Gamma) = integral.cont_C dvm(arrow(u)) dot dif arrow(r) + integral.cont_C dif (1/2 u^2) $
Un resultado del calculo vectorial conocido #footnote[yo no lo conocía, pero tiene sentido y nos lo creemos porque las matemáticas son el engendro del diablo mismo], es que la integral de una diferencial exacta en un contorno cerrado siempre es cero. Por lo que resulta que
$ dvm(Gamma) = integral.cont_C dvm(arrow(u)) dot dif arrow(r) $
Que es lo que hubiesemos obtenido si considerasemos que $dif arrow(r)$ no depende del tiempo, pero esto solo es verdad en este caso particular de contorno cerrado.

Ahora, de la ecuación de Euler isentrópica:
$ dvm(arrow(u)) = - nabla h $
Por lo que, sustituyendo
$ dvm(Gamma) = - integral.cont_C nabla h dot dif arrow(r) $

Ahora, aplicando el teorema de Stokes, que dice
$ integral_S (nabla times arrow(V)) dot hat(n) dif S = integral.cont_C arrow(V) dot dif arrow(l) $

Tenemos
$ dvm(Gamma) = - integral_S nabla times nabla h dot dif arrow(r) $
Pero sabemos que el rotacional de un gradiente es nulo, por lo que concluimos
$ dvm(Gamma) = 0 $
Es decir, para un fluido ideal en flujo isentrópico, la circulacion de velocidades alrededor de un contorno de partículas fluidas es constante. Esta demostración también funciona para un fluido bajo la influencia de un campo gravitatorio uniforme porque $nabla times arrow(g)=0$, por lo que se anularía.

== Flujo potencial
Acabamos de demostrar que la circulación se conserva en el caso del flujo isentrópico. Ahora vamos a ver una consecuencia muy importante de este resultado.

Como con la conservación de la entropía, si en un punto de la trayectoria de una partícula fluida se anulase la circulación, tendría que ser nula en cualquier punto a lo largo de esta. No podemos definir la circulación en un punto, pero si podemos formar un contorno infinitesimalmente pequeño que rodee la trayectorial alrededor de este, tal que si ahí se anula, tendrá que anularse alrededor de cualquier punto de la trayectoria de la partícula. 

Reescribiendo la integral de circulación en función de la superficie formada por ese contorno:
$ Gamma = integral_s nabla times arrow(u) dot hat(n) dif S = 0 $
Como la integral se tiene que anular para la superficie de cualquier contorno infinitesimal alrededor de los puntos de la trayectoria de la partícula, el integrando debe de ser cero, por lo que
$ nabla times arrow(u) = 0 $
A lo largo de la trayectoria.

Por lo tanto, si $nabla times arrow(u)=0$ en un punto de la trayectoria de una partícula fluida, será nulo en cualquier punto de esta. 

En el caso de flujo estacionario este resultado es más permisivo porque las líneas de corriente son equivalentes a las trayectorias de las partículas fluidas.

Esto tiene un significado físico particular, $nabla times arrow(u) = arrow(omega)$ (la vorticidad) representa el movimiento en rotación del fluido, por lo que un flujo unidireccional tendrá como propiedad $omega=0$. 

Sería lógico concluir entonces que si consideramos un flujo estacionario uniforme (tal que $arrow(u)$ es constante) al infinito, sería irrotacional en cualquier línea de corriente y por lo tanto en todo el espacio. 

Esta propiedad es clave, pues nos permite escribir $arrow(u)$ en como el gradiente de un potencial, ya que al ser nulo el rotacional de este nos simplificaría las ecuaciones. Por esta razón, el flujo irrotacional se conoce como flujo potencial, y se define el potencial de velocidad $phi$ tal que
$ arrow(u) = nabla phi $

Para integrarlo en la ecuación de Euler, primero tenemos que obtener una identidad vectorial importante. Utilizaremos la notación de Levi-Civita#footnote[Esta notación es invento del demonio, pero es muy conveniente para las identidades del rotacional] para el producto vectorial:
$ arrow(u) times arrow(v) equiv epsilon_(i j k) u_j v_k $

Aplicandolo a $arrow(u) times (nabla times arrow(u))$:
$ arrow(u) times (nabla times arrow(u)) equiv epsilon_(i j k) u_j epsilon_(k l m) dvp(u_m,x_l) equiv epsilon_(i j k) epsilon_(k l m) u_j dvp(u_m,x_l) $

Un intercambio de índices en el símbolo de Levi-Civita corresponde a la incorporación de un signo menos, por lo que $ epsilon_(k l m) = - epsilon_(l k m) = epsilon_(l m k) $

Utilizando una de las identidades del símbolo de Levi-Civita:
$ epsilon_(i j k) epsilon_(k l m) = epsilon_(i j k) epsilon_(l m k) = delta_(i l) delta_(j m) - delta_(i m) delta_(j l) $

Por lo que
$ epsilon_(i j k) epsilon_( k l m) u_j dvp(u_m,x_l) &= (delta_(i l) delta_(j m) - delta_(i m) delta_(j l)) u_j dvp(u_m,x_l) \ &= u_j dvp(u_j,x_i) - u_j dvp(u_i,x_j) \ &= 1/2 dvp(u_j u_j,x_i) - u_j dvp(u_i,x_j) \ &= 1/2 dvp(u^2,x_i)- u_j dvp(u_i,x_j) $

Que es equivalente a escribir
$ arrow(u) times (nabla times arrow(u)) = 1/2 nabla u^2 - (arrow(u) dot nabla) arrow(u) $

La sustitución dentro de la ecuación de Euler #footnote[El resultado siguiente es análogo con la adición un campo gravitatorio uniforme, pero lo vamos a omitir por brevedad] (isentrópica, ya que estamos en el flujo potencial y es necesario) es aparente:
$ dvp(arrow(u),t) + 1/2 nabla u^2 - arrow(u) times (nabla times arrow(u)) = - nabla h $
Como $arrow(omega) = 0$, obtenemos
$ dvp(arrow(u),t) + 1/2 nabla u^2 = - nabla h $
Introduciendo el potencial de velocidades $nabla phi = arrow(u)$:
$ nabla dvp(phi,t) + 1/2 nabla u^2 = - nabla h $
Podemos agrupar bajo el gradiente
$ nabla ( dvp(phi,t) + 1/2 u^2 + h) = 0 $
Por lo tanto
$ dvp(phi,t) + 1/2 u^2 + h = f(t) $
Podemos incluso igualar $f(t)$ a cero porque como $arrow(u)$ solo depende de las derivadas posicionales de $phi$, podemos definir 
$ phi' = phi + F(t) \ dv(F(t),t) = f(t) $
tal que
$ dvp(phi',t) + 1/2  u^2 + h = dvp(phi,t) + f(t) + 1/2  u^2 + h = f(t) => dvp(phi,t) + 1/2  u^2 + h = 0 $
Y tendríamos aún
$ nabla phi' = nabla phi = arrow(u) $
De todas formas, en el flujo estacionario que es el caso donde el flujo potencial es más útil, $dvp(phi,t)=0$ y $f(t) = "const."$ y no podemos igualar la constante a cero porque tenemos una restricción de los grados de libertad de base. La ecuación de Bernoulli reaparece #footnote[En el caso donde hay un campo gravitacional uniforme también se obtiene la ecuación de Euler, ya que es irrotacional, pero no lo hemos incluido por simplicidad], pero en un caso más libre porque la constante es igual para todo el flujo potencial:
$ 1/2 u^2 + h = "cte." $

Hemos visto que el flujo potencial nos permite simplificar mucho las ecuaciones de movimiento (con un caso de la ecuación de Bernoulli más permisivo). Pero realmente se puede considerar esta aproximación válida? Tratemos el caso del flujo alrededor de un obstáculo. Hemos dicho que para cualquier línea de corriente (en el caso estacionario), si en un contorno cerrado infinitesimal alrededor de un punto la vorticidad es cero esta se anulará para cualquier punto en esta línea. Aquí hemos realizado una suposición errónea: no es posible formar un contorno cerrado para los puntos adyacentes al obstáculo, por lo que nuestra demostración anterior no es válida para las trayectorias que pasan por estos puntos.

Esta limitación hace que las soluciones para el flujo ideal admitan separación del fluido adherido al cuerpo, es decir que después de pasar un tiempo fluyendo adyacente, se desprendan. Estas soluciones poseen una discontinuidad en el patrón de flujo, ya que hay una superficie que separa la región de fluido quieto detrás del objeto de el flujo que pasa por el lado, deslizándose @discont_diag. En esta superficie la vorticidad sería no nula, y si incluímos soluciones con discontinuidad, no existe solución única a las ecuaciones para el fluido ideal, a parte del flujo continuo admiten una infinidad de soluciones con discontinuidades en diferentes puntos. Sin embargo, ninguna de estas soluciones son físicamente importantes, ya que las discontinuidades tangenciales llevarían a turbulencia, y eso no se contempla en el flujo potencial. 

#figure(image("assets/fluid_discontinuity.svg", width:60%), caption: "Visualización de la discontinuidad en el flujo")<discont_diag>

Obviamente, la solución física debe de ser única, pero existe esta anomalía porque no existe ningún fluido verdaderamente ideal, siempre va a haber una viscosidad, aunque sea minúscula, que determinará el comportamiento del flujo en la superficie del cuerpo. Esta se conoce como *capa límite*, y en muchos casos de flujo a bajas viscosidades, se puede describir el flujo alrededor de un obstáculo como una combinación de flujo viscoso en la capa límite y en una estela cercana (donde la viscosidad, aunque sea pequeña si que afecta de forma importante), y flujo potencial en el resto de sitios (trataremos este formalismo después de ver el flujo viscoso). 

== Fluidos incompresibles
=== Flujo incompresible general
En muchos casos de flujo, la densidad se puede suponer constante, y hablamos de flujo incompresible. Irónicamente, el caso de flujo incompresible es el más comprensible, ya que las ecuaciones de movimiento se simplifican mucho. La ecuación de continuidad se convierte en
$ cancel(dvp(rho,t)) nabla dot (rho arrow(u)) = 0 $
$ rho nabla dot arrow(u) + arrow(u) dot cancel(nabla rho) = 0 $
$ nabla dot arrow(u) = 0 $

En la ecuación de Euler no se pueden realizar muchas simplificaciones, excepto meter la densidad dentro del gradiente de presión
$ dvm(arrow(u)) = - nabla(p/rho) + arrow(g) $

Ahora que la densidad no es incógnita, podemos reescribir las ecuaciones de movimiento únicamente en función de la velocidad. Partiendo de la ecuación de Euler:
$ dvp(arrow(u),t) + (arrow(u) dot nabla) arrow(u) = - nabla(p/rho) + arrow(g) $
Utilizando la identidad que hemos demostrado anteriormente:Tendríamos
$ (arrow(u) dot nabla) arrow(u) = 1/2 nabla u^2 - arrow(u) times (nabla times arrow(u)) $
Entonces
$ dvp(arrow(u),t) + 1/2 nabla u^2 - arrow(u) times (nabla times arrow(u)) = - nabla (p/ rho) + arrow(g) $
Tomando el rotacional, sabiendo que el rotacional del gradiente es nulo:
$ diff/(diff t)( nabla times arrow(u) ) = nabla times [arrow(u) times (nabla times arrow(u))] $
En términos de la vorticidad
$ dvp(arrow(omega),t) = nabla times (arrow(u) times arrow(omega)) $

Podemos incluso reescribir la ecuación de Bernoulli de una forma más conveniente. Podemos identificar que la única diferencia entre la ecuación de Euler isentrópica y la del flujo incompresible genral es que en vez de $nabla h$ tenemos $nabla (p\/rho)$, por lo que podemos sustituir en la ecuación de Bernoulli:
$ 1/2 u^2 + p/rho + g z = "constante" $

Si consideramos dos puntos en una misma línea de corriente, tenemos
$ 1/2 u_1^2 + p_1/rho + g z_1 &= 1/2 u_2^2 + p_2/rho + g z_2 \ <=> 1/2 rho u_1^2 + rho g z_1 + p_1 &= 1/2 rho u_2^2 + rho g z_2 + p_2 $
Que es la expresión más habitual de la ecuación de Bernoulli, aplicable a las línea de corriente en fluidos ideales incompresibles.

=== Flujo potencial de un fluido incompresible
Si ahora consideramos el flujo potencial, sustituyendo la ecuación de Euler con $arrow(u) = nabla phi $:
$ dvps(cancel(nabla times (nabla phi)),t, space:t) = nabla times (nabla phi times (cancel(nabla times nabla phi))) $
Vemos que se cumple idénticamente

Por que tenemos $ nabla phi &= arrow(u) \ nabla^2 phi &= nabla dot arrow(u) $
Y por lo tanto, por la ecuación de continuidad ($nabla dot arrow(u) = 0 $)
$ nabla^2 phi = 0 $
Por lo que el potencial de velocidad satisface la ecuación de Laplace.

Para resolverla habría que suplementarla con condiciones de contorno en las superficies donde el fluido se encuentra con un sólido. Obviamente, no puede penetrar la superficie, por lo que obligatoriamente su velocidad normal relativa a la superficie debe de anularse. Es decir, si consideramos un vector $hat(n)$ normal a la superficie y que la superficie tiene una velocidad arbitraria $arrow(u)_s$, tendríamos
$ (arrow(u)-arrow(u)_s)dot hat(n) = 0 $
es decir
$ hat(n) dot nabla phi = arrow(u)_s dot hat(n) $
Llamando $u_n$ a la velocidad de la superficie normal a $hat(n)$:
$ hat(n) dot nabla phi = u_n $
El producto escalar del gradiente de una función por un vector unitario corresponde a la derivada direccional en la dirección del vector:
$ dvp(phi,n) = u_n $
Por lo tanto las condiciones generales son que $dvpc(phi,n)$ es una función dada de las coordenadas y el tiempo en el contorno. 

Para el flujo potencial general, la ecuación de Euler relacionaba la entalpía y la velocidad tal que
$ dvp(phi,t) + 1/2 u^2 + h = f(t) $
Como estamos en un fluido incompresible podemos intercambiar $h$ y $p\/rho$ #footnote[Hacemos el cambio bastante a la ligera porque son equivalentes ya que en un fluido incompresible el gradiente de $p\/rho$ está en el mismo lugar que estaría el gradiente de la entalpía en el flujo isentrópico y alcanzar esta ecuación solo necesita que las funciones tratadas sean gradientes]
$ dvp(phi,t) + 1/2 u^2 + p/rho = f(t) $

De aquí podemos identificar una propiedad bastante importante del flujo potencial de un fluido incompresible. Supongamos que un obstáculo se desplaza a través del fluido. Si el resultado es flujo potencial, dicho flujo depende en cualquier instante únicamente de la velocidad del cuerpo en ese instante, y no de la aceleración. Esto se debe a que la ecuación de Laplace no contiene explícitamente el tiempo, sino que aparece en las condiciones de contorno suplementadas que dependen de la velocidad del obstáculo únicamente. 

=== Criterio de incompresibilidad, o por qué descifrar jeroglíficos nunca es buena idea
Estos resultados son muy útiles para los fluidos incompresibles, pero de verdad existen? Pues resulta que no, no hay fluidos totalmente incompresibles, pero podemos hablar de fluidos prácticamente incompresibles en ciertas condiciones de flujo. 

Si la variación de la densidad es despreciable frente a esta se puede considerar incompresible. Esta condición nos permite ver el límite de la aproximación. Desarrollando el diferencial de la densidad:
$ dif rho = dvp(rho,p, eval:s, evalsym:")") dif p + dvp(rho,s, eval:p, evalsym:")") dif s $
En el caso isentrópico, $dif s = 0 $
$ dif rho = dvp(rho,p, eval:s, evalsym:")") dif p $
En aproximación de primer orden para pequeñas variaciones
$ Delta rho = dvp(rho,p, eval:s, evalsym:")") Delta p $
es decir
$ Delta rho = 1/dvpc(p,rho, eval:s, evalsym:")") Delta p $
Identificamos esta derivada con el cuadrado de la velocidad del sonido $a^2$ #footnote[Por ahora la tomamos como definición, más adelante justificaremos la fórmula cuando tratemos el flujo compresible y el sonido]

Por lo tanto $ Delta rho = (Delta p)/a^2 $

Vamos a intentar representar la compresión de un fluido incompresible #footnote[He pasado demasiado tiempo intentando entender por que coño en las diapositivas pone $Delta p tilde rho u^2$ y esta es la mejor explicación que se me ha ocurrido, usaré esta antes de perder la cordura]. Asumiendo que la compresión es debido a una diferencia de velocidad, y tenemos que un fluido a una velocidad $u$ se topa con una pared fija (es decir, que decelera por completo), por la ecuación de Bernouilli, tendríamos
$ p_1 + 1/2 rho u^2 + cancel(rho g z) = p_2 + cancel(rho g z) $
Por lo tanto
$ 1/2 rho u^2 = p_2 - p_1 = Delta p $
Podemos entonces estimar que $Delta p$ es del orden $rho u^2$ durante una compresión 
$ Delta p tilde rho u^2 => a^2 Delta rho tilde rho u^2 $
Concluyendo
$ (Delta rho)/rho tilde u^2/a^2 $
$u\/a$ es un número adimensional conocido como el número de Mach ($mach$). Expresándolo en función de este
$ (Delta rho)/rho tilde mach^2 $
Hemos dicho que, para un fluido incompresible (y encima, para que la barbaridad que hemos hecho antes con Bernouilli tenga algún sentido):
$ Delta rho << rho equiv (Delta rho)/rho << 1 $
Por lo que podemos establecer que para que el flujo sea incompresible
$ mach^2 << 1 $
Normalmente, a $mach<0.3$ se suele ver flujo incompresible #footnote[Fuente: está en los apuntes del profe]

=== Los matemáticos le odian! Facilita la resolución de problemas con este extraño truco. <wip>
Hay unos trucos que se pueden usar cuando se considera el flujo bidimensional, es decir que el campo de velocidades depende únicamente de dos coordenadas y su velocidad es paralela al plano que se considera (en este caso consideramos el plano $x y$, es decir $u_z = 0$ y $dvp(u_x,z)=dvp(u_y,z)=0$). En el caso del flujo incompresible, podemos resolver problemas de flujo dimensional más facilmente expresando la velocidad en términos de una función de corriente. Como $nabla dot arrow(u)= 0$, tenemos $dvp(u_x,x) + dvp(u_y,y) = 0 $. Podemos escribir esto de forma implícita definiento una función $psi$ tal que
$ u_x = dvp(psi,y) quad u_y = -dvp(psi,x) $
Ya que, asumiendo que $psi$ es una función bien comportada
$ dvp(psi,x,y) = psi(psi,y,x) => dvp(u_x,x) = - dvp(u_y,y) $
Por lo que implícitamente $nabla dot arrow(u)= 0 $

Se puede escribir entonces 
$ arrow(u) = - hat(z) times nabla psi $

Ahora, sustituiremos $arrow(u)$ por las derivadas de la función de corriente en la ecuación de Euler incompresible, que es de forma
$ dvp(arrow(omega),t) = nabla times (arrow(u) times arrow(omega) ) $

Primero, obtengamos $arrow(omega) = nabla times arrow(u)= nabla times (- hat(z) times nabla psi)$
En notación de Levi-Civita (ver capítulo 2.5):
$ omega_i &= - epsilon_(i j k) dvp(,x_j) epsilon_(k l m) delta_(l 3) dvp(psi,x_m) \ &= - epsilon_(i j k) epsilon_(l m k) delta_(l 3) dvp(psi,x_m, x_j)  \ &= -(delta_(i l) delta_(j m) - delta_(i m ) delta_(j l)) delta_(l 3) dvp(psi,x_m, x_j) \ &=  delta_(j 3) dvp(psi,x_i, x_j) - delta_(i 3) dvp(psi,x_j, x_j) \ &= cancel(dvp(psi,x_i, z)) - delta_(i 3) dvp(psi,x_j, x_j) = - delta_(i 3) dvp(psi,x_j, x_j) equiv - hat(z) nabla^2 psi $

Ahora, obtendremos $nabla times (arrow(u) times arrow(omega))$:
Otra vez empleando notación de Levi-Civita
$ nabla times (arrow(u) times omega) &= epsilon_(i j k) dvp(,x_j) epsilon_(k l m) epsilon_(l n o) delta_(n 3) dvp(psi,x_o) delta_(m 3) dvp(psi,x_r,x_r) \ &= epsilon_(i j k) epsilon_(l m k) epsilon_(l n o) dvp(,x_j) [ delta_(n 3) delta_(m 3) dvp(psi,x_o) dvp(psi,x_r, x_r) ] \ &= (delta_(i l) delta_(j m) - delta_(i m) delta_(j l)) epsilon_(l n o) dvp(,x_j) [delta_(n 3) delta_(m 3) dvp(psi,x_n) dvp(psi,x_r, x_r) ] \ &= epsilon_(i n o) dvp(,x_j) [delta_(n 3) delta_(j 3) dvp(psi,x_o) dvp(psi,x_r,x_r)] - epsilon_(j n o) dvp(,x_j) [delta_( n 3) delta_(i 3) dvp(psi,x_o) dvp(psi,x_r,x_r)] \ &= epsilon_(i n o) cancel(dvp(,z)) [delta_(n 3) dvp(psi,x_o) dvp(psi,x_r, x_r)] - epsilon_(j n o) dvp(,x_j) [delta_(n 3) delta_(i 3) dvp(psi,x_o) dvp(psi,x_r, x_r)] \ &= delta_(i 3) dvp(,x_j) [- epsilon_(j n o) delta_(n 3) dvp(psi,x_o) dvp(psi,x_r,x_r)] \ &equiv hat(z) nabla dot [- hat(z) times nabla(psi) nabla^2 psi] \ &= hat(z) nabla dot [nabla^2 psi arrow(u)] \ &= hat(z)( nabla^2 psi cancel(nabla dot) arrow(u) +  arrow(u) dot nabla nabla^2 psi ) \ &= hat(z) [dvp(psi,y)dvp(,x)nabla^2 psi - dvp(psi,x)dvp(,y)nabla^2 psi] $ 

Sustituyendo en la ecuación
$ -hat(z) dvp(,t) nabla^2 psi = hat(z)[dvp(psi,y) dvp(,x) nabla^2 psi - dvp(psi,x) dvp(,y) nabla^2 psi] \ => dvp(,t) nabla^2 psi + dvp(psi,y) dvp(,x) nabla^2 psi - dvp(psi,x) dvp(,y) nabla^2 psi = 0 $
Esta es la ecuación de movimiento para la función de corriente.


== Fluidos compresibles, casos importantes teóricos <wip>
(Nota: Landau@landau1987fluid trata la acústica un poco más tarde en el libro, pero lo pongo antes porque es importante para los fluidos ideales y en la materia)



= Ecuaciones del flujo viscoso<todo>
== Obtención del tensor de esfuerzos viscosos<todo>
= Turbulencia, o como aprendí a dejar de preocuparme y amar las aproximaciones <todo>
= Leyes de conservación generales<todo>
= Aplicaciones<todo>

#bibliography("assets/ref_fluids.bib", title:"Referencias")