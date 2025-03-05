#import "../config.typ": *


#show: doc => template(doc, "Campos y Ondas")

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

== Ondas electromagnéticas en el vacío
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

==== Potenciales electromagnéticos
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
Por identidades del cálculo vectorial y utilizando la ley de Ampere-Maxwell
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
Definimos los potenciales $arrow(A), phi$ vector y escalar en función de los vectores campo $arrow(H)$ y $arrow(E)$, tal que 
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

Para simplificar aún más la expresión anterior, imponemos la condición de Lorentz, que asegura la invarianza de las ecuaciones bajo transformaciones de Lorentz. 
$ nabla dot arrow(A) + mu epsilon dvp(phi,t) = 0 $
O, en términos fasoriales
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

=== Soluciones de la ecuación de onda
==== Soluciones en el espacio libre
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
Obtenemos la ecuación 
$ 1/r^2 diff/(diff r) (r^2 dvp(phi, r)) + k^2 phi = 0 $
Que es una ecuación diferencial ordinaria de segundo orden.

Vamos a asumir que tiene una solución de forma $phi = f(r)/r $
Por lo que la ecuación se convierte en
$ 1/r^2 diff/(diff r) (r^2 dvp(f(r)/r,r)) + k^2 f(r)/r = 0 $
$ 1/r^2 diff/(diff r) (r dvp(f(r),r) - f(r)) + k^2 f(r)/r = 0 $
$ 1/r^2 (r dvp(f(r),r, deg:2) + dvp(f(r),r) - dvp(f(r),r)) + k^2 f(r)/r = 0 $
$ 1/r dvp(f(r),r, deg:2) + k^2 f(r)/r = 0 $
Multiplicando por $r$ de los dos lados obtenemos la ecuación de antes, cuya solución ya conocemos
$ dvp(f(r),r) + k^2 f(r) = 0 $
$ f(r) = A e^(j k r) + B e^(-j k r) $
Por lo tanto tenemos
$ phi(r) = A e^(-j k r)/r + B e^( j k r)/r $
Pasando al dominio temporal
$ phi (r, t) = frak(R)(A e^(-j k r)/r e^(j omega t) + B e^(j k r)/r e^(j omega t)) $
$ phi(r, t) = frak(R)(A e^(j (omega t - k r ))/r + B e^(j (omega t + k r))/r) $
$ phi(r, t) = A (cos(omega t - k r))/r + B (cos(omega t + k r))/ r $

