#import "../config.typ": *


#show: doc => template(doc, "Campos y Ondas")

= La ecuación de onda
== Qué es una onda?
Una onda, del latin _unda_ es un movimiento periódico que se propaga en un medio físico o en el vacío. Las clasificamos en dos clases, ondas transversales (cuya dirección donde se produce la perturbación es perpendicular a la de propagación) y longitudinales (donde la dirección de perturbación y propagación es igual). 

== Parámetros de onda 

Definimos la frecuencia $f$ de la onda como el número de veces que se repite un periodo (o oscilación completa) por unidad de tiempo. Por lo tanto podemos definir el periodo $T$ como la inversa de la frecuencia, es decir el tiempo que la perturbación en un punto tarda en dar una oscilación completa. Definimos a parte la longitud de onda $lambda$, la distancia que es necesario recorrer para que se repita el valor de la onda en un instante de tiempo dado. 

Por lo tanto, para una onda cualquiera podemos definir su velocidad de propagación $v$ como 
$ v = lambda/T = lambda f $
En una onda electromagnética, como $v$ es conocida y constante ($c$), podemos definir $lambda$ en función de $f$:
$ lambda = c/f $

También es necesario definir la amplitud $A$, es decir el valor máximo que adquiere una perturbación desde el nivel medio.

Con esto, ya hemos caracterizado los parámetros de una onda.

Aun así, podemos definir dos parámetros adicionales que son convenientes a la hora de realizar cálculos al trabajar con funciones de periodo múltiplo de $pi$: la frecuencia angular $omega = 2 pi f$ y el número de onda $k = (2pi)/lambda$.

== Decibelios y medición de potencia

Utilizamos la escala de los decibelios para describir de forma logarítmica la potencia relativa a una potencia de referencia:
$ "dB" = 10 log (P/P_"ref") $
Hablamos de $"dBm"$ cuando tenemos una señal de referencia de 1 mW, $"dBW"$ cuando tenemos una señal de referencia de 1 W, y $"dB"_"SPL"$ cuando tenemos una señal de referencia SPL, es decir la presión mínima audible a 1 kHz.

Al ser una escala logarítmica, sumar 10 dB corresponde a una señal 10 veces más potente mientras que sumar 3 dB corresponde a una señal 2 veces más potente. 

== Ondas electromagnéticas
=== Ecuaciones de Maxwell
En el caso del campo electromagnético, buscamos obtener una ecuación de onda que debe satisfacer las ecuaciones de Maxwell. En su forma diferencial, estas son:
$
nabla dot arrow(E) &= rho/epsilon quad "Ley de Gauss" \ 
nabla dot arrow(H) &= 0 quad "Ley de Gauss (magnetismo)" \
nabla times arrow(E) &= -mu dvp(arrow(H),t) quad "Ley de Faraday" \ 
nabla times arrow(H) &= arrow(J) + epsilon dvp(arrow(E),t) quad "Ley de Ampere-Maxwell" 
$
=== Ecuación de continuidad

Por conveniencia, también podemos definir una ecuación de continuidad a partir de estas tomando la divergencia de la ley de Ampere-Maxwell:
$ nabla times arrow(H) = arrow(J) + epsilon dvp(arrow(E),t) $
$ nabla dot nabla times arrow(H) = nabla dot arrow(J) + epsilon dvp(nabla dot arrow(E),t) $
Por relaciones conocidas del cálculo vectorial sabemos que $ nabla dot nabla times arrow(H) = 0$, por lo que obtenemos
$ nabla dot arrow(J) + epsilon dvp(nabla dot arrow(E),t) = 0 $
Utilizando la ley de Gauss obtenemos
$ nabla dot arrow(J) + dvp(rho,t) = 0 $
Que se conoce como la ecuación de continuidad para el electromagnetismo, y nos dice como evoluciona la densidad de carga con las corrientes. 

=== Forma fasorial de las ecuaciones de Maxwell
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

=== Ecuación de onda para los potenciales
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
