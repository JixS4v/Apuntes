#import "../config.typ": *

#let intro = "Apuntes incompletos de un estudiante que perdió el interés. Utilízalos si te interesa entender el por qué de algunas formulas del principio."
#show: doc => template(doc, "Campos y Ondas", preface:intro)

= La ecuación de onda
== Introducción
=== Qué es una onda?
Una onda, del latin _unda_ es un movimiento periódico que se propaga en un medio físico o en el vacío. Las clasificamos en dos clases, ondas transversales (cuya dirección donde se produce la perturbación es perpendicular a la de propagación) y longitudinales (donde la dirección de perturbación y propagación es igual). 

=== Parámetros de onda 

Definimos la frecuencia $f$ de la onda como el número de veces que se repite un periodo (o oscilación completa) por unidad de tiempo. Por lo tanto podemos definir el periodo $T$ como la inversa de la frecuencia, es decir el tiempo que la perturbación en un punto tarda en dar una oscilación completa. Definimos a parte la longitud de onda $lambda$, la distancia que es necesario recorrer para que se repita el valor de la onda en un instante de tiempo dado. 

Por lo tanto, para una onda cualquiera podemos definir su velocidad de propagación $v$ como 
$ v = lambda/T = lambda f $
En una onda electromagnética, como $v$ es conocida y constante ($c$), podemos definir $lambda$ en función de $f$:
$ lambda = c/f $

También es necesario definir la amplitud $A$, es decir el valor máximo que adquiere una perturbación desde el nivel medio.

Con esto, ya hemos caracterizado los parámetros de una onda.

Aun así, podemos definir dos parámetros adicionales que son convenientes a la hora de realizar cálculos al trabajar con funciones de periodo múltiplo de $pi$: la frecuencia angular $omega = 2 pi f$ y el número de onda $k = (2pi)/lambda$.

=== Decibelios y medición de potencia

Utilizamos la escala de los decibelios para describir de forma logarítmica la potencia relativa a una potencia de referencia:
$ "dB" = 10 log (P/P_"ref") $
Hablamos de $"dBm"$ cuando tenemos una señal de referencia de 1 mW, $"dBW"$ cuando tenemos una señal de referencia de 1 W, y $"dB"_"SPL"$ cuando tenemos una señal de referencia SPL, es decir la presión mínima audible a 1 kHz.

Al ser una escala logarítmica, sumar 10 dB corresponde a una señal 10 veces más potente mientras que sumar 3 dB corresponde a una señal 2 veces más potente. 

== Ecuación de onda en el vacío
=== Ecuaciones de Maxwell
En el caso del campo electromagnético, buscamos obtener una ecuación de onda que debe satisfacer las ecuaciones de Maxwell. En su forma diferencial, las ecuaciones de Maxwell en el vacío son:
$
nabla dot arrow(E) &= rho/epsilon_0 quad "Ley de Gauss" \ 
nabla dot arrow(B) &= 0 quad "Ley de Gauss (magnetismo)" \
nabla times arrow(E) &= - dvp(arrow(B),t) quad "Ley de Faraday" \ 
nabla times arrow(B) &= mu_0 (arrow(J) + epsilon_0 dvp(arrow(E),t)) quad "Ley de Ampere-Maxwell" 
$
==== Ecuación de continuidad

Por conveniencia, también podemos obtener una ecuación de continuidad a partir de estas tomando la divergencia de la ley de Ampere-Maxwell:
$ nabla times arrow(H) = arrow(J) + epsilon dvp(arrow(E),t) $
$ nabla dot nabla times arrow(H) = nabla dot arrow(J) + epsilon dvp(nabla dot arrow(E),t) $
Por relaciones conocidas del cálculo vectorial sabemos que $ nabla dot nabla times arrow(H) = 0$, por lo que obtenemos
$ nabla dot arrow(J) + epsilon dvp(nabla dot arrow(E),t) = 0 $
Utilizando la ley de Gauss obtenemos
$ nabla dot arrow(J) + dvp(rho,t) = 0 $
Que se conoce como la ecuación de continuidad para el electromagnetismo, y nos dice como evoluciona la densidad de carga con las corrientes. 

=== Potenciales electromagnéticos y ecuaciones de onda
Sabiendo que $nabla dot arrow(B) = 0$, como la divergencia del rotacional es cero, podemos definir $arrow(B)$ en función del rotacional de un potencial vectorial tal que $ nabla times arrow(A) = arrow(B) $ Por lo tanto, eliminamos una de las ecuaciones.

Sustituyendo en la expresión de la ley de Faraday:
$ nabla times arrow(E) = - dvp(arrow(B),t) = - dvp(nabla times arrow(A),t) $
Asumiendo que $arrow(A)$ satisface la condición de Schwarz:
$ nabla times arrow(E) = - nabla times dvp(arrow(A),t) $
$ nabla times (arrow(E) + dvp(arrow(A),t)) = 0 $
Por identidades conocidas, sabemos que el rotacional del gradiente es nulo, por lo que podemos definir la expresión entre paréntesis como el gradiente de un potencial escalar $phi$:
$ - nabla phi = arrow(E) + dvp(arrow(A),t) $
Por lo que podemos definir $arrow(E)$ como:
$ arrow(E) = - nabla phi - dvp(arrow(A),t) $
Hemos eliminado otra ecuación, por lo que tenemos dos ecuaciones de Maxwell.

La ley de Gauss es:
$ nabla dot arrow(E) = rho/epsilon_0 $
$ nabla dot (- nabla phi - dvp(arrow(A),t)) = rho/epsilon_0 $
$ nabla^2 phi + nabla dot dvp(arrow(A),t) = - rho/epsilon_0 $

La ley de Ampere-Maxwell es:
$ nabla times (nabla times arrow(A)) = mu_0 [arrow(J) + epsilon_0 diff/(diff t)(- nabla phi - dvp(arrow(A),t))] $
Por identidades vectoriales conocidas, $nabla times (nabla times arrow(A)) = nabla(nabla dot arrow(A)) - nabla^2 arrow(A)$, y haciendo las mismas suposiciones sobre la condición de Schwarz para $phi$:
$ nabla (nabla dot arrow(A)) - nabla^2 arrow(A) = mu_0 [arrow(J) - epsilon_0 nabla dvp(phi,t)  - epsilon_0 dvp(arrow(A),t,deg:2) ] $
Reordenando
$ nabla ( nabla dot arrow(A) + epsilon_0 mu_0 dvp(phi,t) ) = mu_0 arrow(J) + nabla^2 arrow(A) - epsilon_0 mu_0 dvp(arrow(A),t, deg:2) $

Tenemos dos ecuaciones de Maxwell, pero siguen estando acopladas. Podemos desacoplarlas aprovechando el hecho de que los potenciales definidos anteriormente son arbitrarios.

Sabiendo que $ nabla times (nabla Lambda)$ para cualquier escalar $Lambda$ podemos definir una transformación bajo la cual $arrow(B)$ es invariante:
$ arrow(B) = nabla times arrow(A) = nabla times arrow(A) + nabla times (nabla Lambda) = nabla times arrow(A') $
Por lo que $arrow(B)$ es invariante bajo las transformaciones $arrow(A)-> arrow(A') = arrow(A) + nabla Lambda $
Para que $arrow(E)$ también sea invariante bajo estas debemos de modificar $phi$ de forma similar:
$ arrow(E) = - nabla phi - dvp(arrow(A),t) = - nabla phi - dvp((arrow(A) + nabla Lambda - nabla Lambda),t) $
Asumiendo que se cumple la condición de Schwarz para el escalar $Lambda$:
$ arrow(E) = - nabla phi + nabla dvp(Lambda,t) - dvp(arrow(A)',t) = - nabla (phi - dvp(Lambda,t)) - dvp(arrow(A)',t) = - nabla phi' - dvp(arrow(A)',t) $
Por lo tanto $arrow(E)$ y $arrow(B)$ son invariantes bajo la transformación
$ arrow(A) -> arrow(A') &= arrow(A) + nabla Lambda \ phi -> phi' &= phi - dvp(Lambda,t) $

Esta transformación se conoce como transformación de calibre (o de gauge) y nos permite imponer condiciones adicionales. Esto nos permitirá elegir unos potenciales tales que 
$ nabla dot arrow(A) + epsilon_0 mu_0 dvp(phi,t) = 0 $
Esta relación se conoce como condición de Lorentz, y nos permitirá desacoplar estas dos ecuaciones.

Para obtener tal transformación, podemos imponer la condición de Lorentz en los potenciales transformados y encontrar un $Lambda$ que la satisface
$ nabla dot arrow(A)' + epsilon_0 mu_0 dvp(phi,t) = 0 = nabla dot (arrow(A) + nabla Lambda) + epsilon_0 mu_0 dvp((phi- dvp(Lambda,t)),t) $
Por relaciones conocidas
$ nabla dot arrow(A) + nabla^2 Lambda + epsilon_0 mu_0 dvp(phi,t) - epsilon_0 mu_0 dvp(Lambda,t, deg:2) $
$ nabla^2 Lambda - epsilon_u mu_u dvp(Lambda,t, deg:2) = - (nabla dot arrow(A) + epsilon_0 mu_0 dvp(phi,t)) $
Por lo tanto, si una función dada satisface esta ecuación, los nuevos potenciales satisfarán la condición de Lorentz.

Podemos ahora escribir las ecuaciones de Maxwell en función de los potenciales, con la condición de lorentz:
La ley de Gauss es:
$ nabla^2 phi + nabla dot dvp(arrow(A),t) = - rho/epsilon_0 $
Utilizando la condición de Lorentz
$ nabla^2 phi - epsilon_0 mu_0 dvp(phi,t,deg:2) = - rho/epsilon_0 $

La ley de Ampere-Maxwell es:
$ nabla (nabla dot arrow(A) + epsilon_0 mu_0 dvp(phi,t)) = mu_0 arrow(J) + nabla^2 arrow(A) - epsilon_0 mu_0 dvp(arrow(A),t, deg:2)) $
Utilizando la condición de Lorentz, anulamos todo el lado izquierdo de la ecuación
$ mu_0 arrow(J) + nabla^2 arrow(A) - epsilon_0 mu_0 dvp(arrow(A),t, deg:2) = 0 $
Reordenando
$ nabla^2 arrow(A) - epsilon_0 mu_0 dvp(arrow(A),t, deg:2) = - mu_0 arrow(J) $

Nos quedamos con dos ecuaciones desacopladas, que resultan ser ecuaciones de onda para los potenciales electromagnéticos
$ nabla^2 phi - epsilon_0 mu_0 dvp(phi,t,deg:2) &= - rho/epsilon_0 \ nabla^2 arrow(A) - epsilon_0 mu_0 dvp(arrow(A),t, deg:2) &= - mu_0 arrow(J) $

== Ecuación de onda en medios materiales 
=== Ecuaciones de Maxwell en medios materiales
En un medio material (relativamente simple), las esquaciones de Maxwell son:
$
nabla dot arrow(E) &= rho/epsilon quad "Ley de Gauss" \ 
nabla dot arrow(H) &= 0 quad "Ley de Gauss (magnetismo)" \
nabla times arrow(E) &= - mu dvp(arrow(H),t) quad "Ley de Faraday" \ 
nabla times arrow(H) &= arrow(J) + epsilon dvp(arrow(E),t) quad "Ley de Ampere-Maxwell" 
$
==== Forma fasorial de las ecuaciones de Maxwell
Podemos pasar todas ecuaciones a fasores por conveniencia, lo que nos permitirá obtener soluciones ondulatorias monocromáticas. Por lo que las derivadas temporales se convierten en productos por $j omega$ (por las reglas de las transformadas de Fourier).

Por lo tanto, tendríamos (conservando la notación de $arrow(E)$ y $arrow(H)$ aunque no representen lo mismo)

$
nabla dot arrow(E) &= rho/epsilon \ 
nabla dot arrow(H) &= 0\
nabla times arrow(E) &= -j omega mu arrow(H) \ 
nabla times arrow(H) &= arrow(J) + j omega epsilon arrow(E),t
$
$ nabla dot arrow(J) + j omega rho = 0 $

=== Ecuaciones de onda del campo eléctrico y magnético
Podemos obtener una ecuación de onda para el campo elécrtico tomando el rotacional de la ley de Faraday:
$ nabla times arrow(E) = -j omega mu arrow(H) \
nabla times nabla times arrow(E) = -j omega mu nabla times arrow(H) 
$
Por identidades del cálculo vect    orial y utilizando la ley de Ampere-Maxwell
$
nabla(nabla dot arrow(E)) - nabla^2 arrow(E) = - j omega mu (arrow(J) + j omega epsilon arrow(E))
$
Finalmente, por la ley de Gauss:
$ nabla rho/epsilon - nabla^2 arrow(E)= - j omega mu (arrow(J) + j omega epsilon arrow(E)) $
como 
$ omega^2 mu epsilon = 4 pi^2 f^2 1/v^2 = (4 pi^2)/lambda^2 = k^2 $
Escribimos
$ nabla^2 arrow(E) + k^2 arrow(E) = nabla rho/epsilon + j omega mu arrow(J) $

Procedemos análogamente para el campo magnético, partiendo de la ley de Ampere-Maxwell

$ nabla times arrow(H) = arrow(J) + j omega epsilon arrow(E) $
$ nabla times nabla times arrow(H) = nabla times arrow(J) + j omega epsilon nabla times arrow(E) $
Por identidades conocidas y utilizando la ley de Faraday
$ nabla (nabla dot arrow(H)) - nabla^2 arrow(H) = nabla times arrow(J) + j omega epsilon (- j omega mu arrow(H)) $
Sustituyendo $k^2 = omega^2 mu epsilon $ obtenemos la ecuación de onda
$ nabla ^2 arrow(H) + k^2 arrow(H) = - nabla times arrow(J) $

Tenemos por lo tanto seis ecuaciones independientes que debemos de resolver para obtener la expresión de la onda. Al estar los dos campos conectados, es posible reducir el número de estas introduciendo unos potenciales útiles. 

==== Ecuación de onda para los potenciales
Definimos los potenciales $arrow(A), phi$ en función de los vectores campo $arrow(H)$ y $arrow(E)$
$ mu arrow(H) = nabla times arrow(A) $
$ arrow(E) = - j omega nabla times arrow(A) $

Vamos a obtener la ecuación de onda para estos. 

Comenzamos obteniendo la ecuación de onda para $arrow(A)$, partimos de la ley de Ampere-Maxwell:
$ nabla times arrow(H) = arrow(J) + j omega epsilon arrow(E) $
Sustituyendo por las expresiones de los potenciales
$ 1/mu nabla times nabla times arrow(A) = arrow(J) + j omega epsilon (= nabla phi - j omega arrow(A)) $
Por identidades conocidas
$ nabla ( nabla dot arrow(A)) - nabla^2 arrow(A) = mu arrow(J) + j omega mu epsilon(-nabla phi - j omega arrow(A)) $
Intercambiando términos y sustituyendo $k^2$ otra vez
$ nabla^2 arrow(A) + k^2 arrow(A) = - mu arrow(J) + nabla(nabla dot arrow(A) + j omega mu epsilon phi) $

Utilizando la condición de Lorentz
$ nabla dot arrow(A) + j omega mu epsilon phi = 0 $

Por lo tanto, la expresión de la ecuación de onda para el potencial vectorial es
$ nabla^2 arrow(A) + k^2 arrow(A) = - mu arrow(J) $

Para el potencial escalar, el procedimiento es similar, pero partiendo de la ley de Gauss:

$ nabla dot arrow(E) = rho/epsilon $
Sustituyendo los potenciales
$ nabla dot (-nabla phi - j omega arrow(A)) = rho/epsilon $
$ nabla^2 phi = - rho/epsilon - j omega nabla dot arrow(A) $
Aplicando la condición de Lorentz:
$ nabla^2 phi = - rho/epsilon - j omega (- j omega mu epsilon phi) $
Finalmente, reordenando y sustituyendo $k^2$ nuevamente
$ nabla^2 phi + k^2 phi = - rho/epsilon $

== Soluciones de la ecuación de onda
=== Soluciones en el espacio libre
En el espacio libre y en ausencia de cargas y corrientes, las ecuaciones de onda en el dominio de frecuencias toman una forma similar para los potenciales y los campos, y son homogéneas:
$ 
nabla^2 arrow(A) + k^2 arrow(A) = 0 \
nabla^2 phi + k^2 phi = 0 \
nabla^2 arrow(E) + k^2 arrow(E) = 0 \
nabla^2 arrow(H) + k^2 arrow(H) = 0
$

Vamos a comenzar solucionando la ecuación del potencial escalar cuando este no varía en x,y, por lo que la ecuación se queda en una ecuación diferencial ordinaria:
$ nabla^2 phi + k^2 phi = 0 <=> cancel(dvp(phi,x, deg:2) + dvp(phi,y, deg:2)) + dvp(phi,z, deg: 2) + k^2 phi = 0 => dvp(phi,z, deg:2) + k^2 phi = 0 $
Obtener la solución de esta ecuación es trivial:
$ dvp(phi,z,deg:2) = - k^2 phi => phi = e^(plus.minus sqrt(-k^2) z) = e^(k sqrt(-1) z) = e^(j k z) $
Como una solución general debe de ser una superposición de dos soluciones independientes:
$ phi = A e^(-j k z) + B e^(j k z ) $
Por lo tanto para diferentes condiciones de contorno, hay soluciones posibles como 
$ phi = cos k z , sin k z , e^(-j k z) , e^( j k z ) $

Estamos en el dominio de la freucuencia, por lo que pasando al dominio temporal
$ phi (z, t) &= frak(R) (A e^(-j k z) e^(j omega t) + B e^(j k z) e^(j omega t)) \
 phi(z, t) &= frak(R) (A e^(j(omega t - k z)) + B e^(j ( omega t + k z))) \
 phi ( z, t ) &= A cos(omega t - k z) + B cos (omega t + k z) $
Es permisible en este paso añadir fases iniciales a las ondas.

Hemos visto que en una sola dirección la onda electromagnética en ausencia de cargas y corrientes (o a gran distancia de estas) se comporta como una onda plana.

Podemos también discutir el caso de la simetría esférica, donde la onda se propaga en todas las direcciones por igual. Recordemos que el laplaciano en coordenadas esféricas es
$ nabla^2 phi = 1/r^2 diff/(diff r) (r^2 dvp(phi,r)) + 1/(r^2 sin theta) diff/(diff theta) (sin theta dvp(phi,theta)) + 1/(r^2 sin^2 theta) dvp(phi,phi.alt, deg:2) $
Sin embargo, al tener simetría esférica:
$ nabla^2 phi = 1/r^2 diff/(diff r) (r^2 dvp(phi,r)) $
Podemos simplificar esta expresión introduciendo una función $f(r)$ tal que $phi = f(r)/r$
$ nabla^2 phi &= 1/r^2 diff/(diff r) (r^2 dvps(f(r)/r,r)) \
  &= 1/r^2 diff/(diff r) (r dvp(f(r),r) - f(r)) \
  &= 1/r^2 (r dvp(f(r),r,deg:2) + dvp(f(r),r) - dvp(f(r),r)) \
  &= 1/r dvp(f(r),r, deg:2) $
Volviendo a sustituir
$ nabla^2 phi = 1/r dvp((r phi),r, deg:2) $
Obtenemos la ecuación 
$ 1/r dvp((r phi), r,deg:2) + k^2 phi = 0 $
Que es una ecuación diferencial homogénea de segundo orden.
Reescribimos la ecuación
$ dvp((r phi),r, deg:2) + k^2 (r phi) = 0 $
La base de soluciones es trivial para la función $r phi$ (igual que anteriormente)
$ r phi = A e^(-j k r) + B e^(j k r) $
Por lo tanto tenemos
$ phi(r) = A e^(-j k r)/r + B e^( j k r)/r $
Pasando al dominio temporal
$ phi (r, t) = frak(R)(A e^(-j k r)/r e^(j omega t) + B e^(j k r)/r e^(j omega t)) $
$ phi(r, t) = frak(R)(A e^(j (omega t - k r ))/r + B e^(j (omega t + k r))/r) $
$ phi(r, t) = A (cos(omega t - k r))/r + B (cos(omega t + k r))/ r $

=== Soluciones con cargas
==== Soluciones para fuentes puntuales
En presencia de cargas (y corrientes) la ecuación para el potencial escalar (en el dominio de frecuencia) es:
$ nabla^2 phi + k^2 phi = - rho/epsilon $
Podemos plantear esta misma ecuación para una carga puntual, que representamos con la función delta de Dirac:
$ nabla^2 phi + k^2 phi = - delta (arrow(r)-arrow(r)') $

Es decir, tiene una densidad infinita en el punto $arrow(r)'$ y cero en el resto del espacio.
Esta ecuación es la misma que resolvemos para el potencial vectorial (en cada una de las coordenadas espaciales) por lo que podemos generalizar la solución a esta ecuación como una función de Green:
$ nabla^2 G + k^2 G = - delta (arrow(r) - arrow(r)') $

Definimos la Delta de Dirac para 3 dimensiones como una distribución de densidad que es cero en todos los puntos excepto en el origen. Por lo que satisface la siguiente relación:
$ integral_V delta(arrow(x)) dif V = 1 $
En coordenadas cartesianas, tendríamos 
$ integral_(RR^3) delta(arrow(x)) dif x dif y dif z = 1 $
Pasando a coordenadas esféricas, multiplicando por el jacobiano de la transformación y ajustando los límites
$ integral_(-oo)^(+oo) integral_0^(2pi) integral_0^pi delta(arrow(x)) r^2 sin theta dif r dif theta dif phi $
Si asumimos que $arrow(x)$ no depende de $theta$ o $phi$, y únicamente de $r=abs(arrow(x))$, tenemos
$ integral_(RR) 4 pi r^2 delta(r) $
Por lo que en el caso de la simetría esférica, comparando integrandos
$ delta(|arrow(x)|) = delta(arrow(x))/(4 pi |arrow(x)|^2) $

Sustituyendo en nuestra ecuación, que es simétrica:
$ nabla^2 G + k^2 G = - delta(abs(arrow(r)-arrow(r)'))/(4 pi abs(arrow(r) - arrow(r)')^2) $
asumiendo que no hay superficies delimitantes, la función de Green dependerá también únicamente de la distancia entre los puntos (que escribiremos como $R$):
$ nabla^2 G(R) + k^2 G(R) = - delta(R)/(4 pi R^2) $
Utilizando el mismo truco que anteriormente para el Laplaciano en coordenadas esféricas con simetría esférica
$ 1/R dvp((R G),R, deg:2) + k^2 G(R) = - delta(R)/(4 pi R^2) $
En todos los puntos excepto $R=0$, la ecuación se reduce a
$ dvp((R G),R, deg:2) + k^2 (R G) = 0 $
Con solución (igual que anteriormente)
$ R G(R) = A e^(-j k R) + B e^( j k R) $
Además, la función delta solo tiene efecto para $R->0$, donde desparece el término $k^2 R phi$, por lo que tenemos la ecuación
$ dvp((R G),R, deg:2) = - delta(R)/(4 pi R) $
Integrando en función de $R$, y utilizando las propiedades de la función delta:
$ dvp((R G),R) = - 1/(4pi R) $
Finalmente
$ R G = 1/(4 pi R^2) $
Por lo que en $R->0$, la condición de normalización es:
$ G = 1/(4pi R) $
Como tenemos
$ G(R) = A e^(-j k R)/R + B e^(j k R)/R $
Tomando el límite para $R->0$
$ lim_(R->0) G(R) = lim_(R->0) [A e^(j k R)/R + B e^(- j k R)/R ] = lim_(R->0) [A/R + B/R] $
Por lo que tenemos la condición $A+B = 1/(4 pi) $

Además, debemos elegir el signo negativo de la exponencial para que la solución obedezca relaciones causales conocidas (véase: potencial retardado), por lo que $B=0$ y $A=1/(4 pi)$ y entonces 
$ G(R) = e^(-j k R)/(4 pi R) equiv G(abs(arrow(r) - arrow(r)')) = e^(- j k abs(arrow(r)-arrow(r)'))/( 4 pi abs(arrow(r)-arrow(r'))) $

==== Soluciones para fuentes distribuidas
Ahora que conocemos la solución para una fuente puntual, podemos generar una onda para fuentes de cualquier forma sumando las contribuciones de todas las fuentes puntuales. Esto se hace por medio de una integral. Para el potencial escalar:
$ phi = 1/epsilon integral.triple_(V') rho(arrow(r)') G(arrow(r), arrow(r)') dif V' $
esto corresponde a la convolución de $rho$ por $mu G$
$ phi = rho convolve G(abs(arrow(r)-arrow(r)')) $
Para el potencial vectorial, la ecuación es:
$ nabla^2 arrow(A) + k^2 arrow(A) = - mu arrow(J) $
Podemos separar esto componente a componente:
$ nabla^2 A_i + k^2 A_i = - mu J_i $
Donde $i$ corresponde a cada coordenada espacial. Esta ecuación se resuelve por medio de la misma ecuación de Green:
$ A_i = mu integral.triple_(V') J_i (arrow(r)) G(arrow(r), arrow(r)') dif V' $
Esto corresponde a la convolución de $J_i$ por $mu G$
$ A_i = J_i convolve mu G(abs(arrow(r)-arrow(r)')) $
Lo podemos denotar en forma vectorial como
$ arrow(A) = arrow(J) convolve mu G(abs(arrow(r)-arrow(r)')) $

= Propagación de ondas en medios indefinidos
== Introducción
Sabemos (por los apartados anteriores) que para una fuente puntual la onda es esférica y decae con razón $1/r$. Lejos de la fuente, podemos realizar una simplificación aproximando esta a una onda esférica que se propaga en una única dirección, y no decae. Este modelo se utiliza para modelar la radiopropagación (ondas electromagnéticas en espacios abiertos).

=== Medios LIH
Para resolver (y plantear) las ecuaciones de onda en medios indefinidos, hemos realizado una serie de suposiciones sobre la naturaleza del medio. El medio al que nos hemos limitado se conoce como medio LIH. La L es de lineal, es decir que $arrow(D)$, $arrow(E)$ y $arrow(B)$, $arrow(H)$ están relacionados de forma lineal:
$ arrow(D) &= epsilon arrow(E) \ arrow(B) = mu arrow(H) $
Donde $epsilon$ es la permitividad eléctrica del medio (medido en $F/m$), que se puede descomponer en dos valores $epsilon = epsilon_0 epsilon_r$, donde $epsilon_0 = 1/(36 pi) 10^(-9) F/m$ es la permitivadad eléctrica del vacío y $epsilon_r$ es la permeabilidad eléctrica relativa del medio (adimensional), y $mu$ es la permeabilidad magnética del medio (medido en $H/m$), que a su vez se puede descomponer en dos valores $ mu = mu_0 mu_r$, donde $mu_0 = 4 pi 10^(-7) H/m$, la permeabilidad magnética del vacío y $mu_r$ es la permeabilidad magnética relativa del medio, un número adimensional.  

La H es de homogéneo, es decir, la permitividad eléctrica y la permeabilidad magnética son constantes en el medio. 

Finalmente, la I viene de isótropo, es decir que $epsilon$ y $mu$ son escalares y por lo tanto no dependen de la dirección del campo.

== Solución de la ecuación de onda plana
Esta vez trabajamos con las ecuaciones de onda en forma fasorial en coordenadas cartesianas, para medios LIH sin fuentes:
$ nabla^2 arrow(E) + k^2 arrow(E) &= 0 \ nabla^2 arrow(H) + k^2 arrow(H) &= 0 $

Ya sabemos resolver estas para simetrías, como para $x$ e $y$ constantes, vamos a emplear el método de separación de variables para resolverlas sin requerir simetrías.

Primero de todo, podemos separarlas componente a componente, y en forma escalar (para cada componente) todas comparten una forma general:
$ nabla^2 U + k^2 U = 0 $
Para realizar la separación de variables, vamos a reescribir $U$ como el producto de funciones de cada coordenada espacial:
$ U(x,y,z) = f(x)g(y)h(z) $ 
Por lo que la ecuación es
$ f''(x) g(y) h(z) + g''(y)f(x)h(z) + h''(z) f(x) g(y) + k^2 f(x)g(y)h(z) = 0 $
Podemos dividir por $f(x)g(y)h(z)$ en los dos lados (asumiendo que no se anulan):
$ (f''(x))/(f(x)) + (g''(x))/(g(y)) + (h''(z))/(h(z)) + k^2 = 0 $
Podemos separar esto en tres ecuaciones (con $k^2 = k_x^2 + k_y^2 + k_z^2 $)
$ (f''(x))/(f(x)) + k_x^2 &= 0 \
(g''(y))/(g(y)) + k_y^2 &= 0 \
(h''(z))/(h(z)) + k_z^2 &= 0 $
Estas ecuaciones son iguales, así que solo es necesario resolver una de ellas:
$ dv(f(x), x, deg:2))/(f(x)) + k_x^2 = 0 $
$ <=> dv(f(x), x, deg:2) = - k_x^2 f(x) $
$ <=> dv(f(x), x, deg:2) + k_x^2 f(x) = 0 $
La solución de esta ecuación es trivial (y ya la conocemos):
$ f(x) = A_x e^(- j x k_x ) + B_x e^(j x k_x ) $
Elegimos el signo negativo (la solución causal)
$ f(x) = A_x e^(-j x k_x) $
Por analogía, todas las soluciones son
$ f(x) &= A_x e^(- j x k_x) \ 
g(y) &= A_y e^(- j y k_y) \ 
h(z) &= A_z e^(- j k k_z) $
Ya tenemos la solución
$ U(x,y,z) = f(x)g(y)h(z) = A_x A_y A_z e^(-j (x k_x + y k_y + z k_z) ) equiv A e^(-j (x k_x + y k_y + z k_z )) $
Fijando $U(0,0,0)=U_0$ la amplitud, se puede obtener de forma trivial $A=U_0$ 
$ U(x,y,z) = U_0 e^(-j (x k_x + y k_y + z k_z )) $

$k_i$ representa el número de onda para cada dirección del espacio (es aparente viendo las ecuaciones para cada variable), es decir, podemos definir un vector de onda tal que $ arrow(k) = k_x hat(x) + k_y hat(y) + k_z hat(z) $ 

Por lo que podemos reescribir la solución como
$ U(x,y,z) = U_0 e^(- j arrow(k) dot arrow(r) ) $

Para el campo eléctrico, tenemos la misma onda que varía en amplitud según la componente del campo estudiada, por lo que la exponencial es la misma para todas las componentes y solo varía la amplitud:
$ E_x &= E_(0 x) e^(-j arrow(k) dot arrow(r)) \ 
E_y &= E_(0 y) e^(- j arrow(k) dot arrow(r)) \
E_z &= E_(0 z) e^(- j arrow(k) dot arrow(r)) $
Podemos definir un vector amplitud $arrow(E)_0$ tal que
$ arrow(E)_0 = E_(0 x) hat(x) + E_(0 y) hat(y) + E_(0 z) hat(z) $
por lo que la expresión vectorial del campo es:
$ arrow(E)(arrow(r)) = arrow(E)_0 e^(- j arrow(k) dot arrow(r)) $
