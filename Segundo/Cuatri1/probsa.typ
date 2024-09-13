#align(center, text(25pt)[*Probabilidad y Señales Aleratorias*])

= 1. Probabilidad

== 1.1. Probabilidad

#underline[*Ejemplos*]
+ Se lanza una moneda. El conjunto de posibles resultados es {cara, cruz}
+ Se lanza un dado. El conjunto de posibles resultados es {1,2,...,6}
+ Se lanza una moneda hasta que salga una cara. El conjunto de posibles resultados es ${C, +C, ++C, \.\.\.\.}$

El conjunto de posibles resultados es el suceso seguro.

#underline[*Definición*]: La probabilidad de un subconjunto del suceso seguro es un número en [0,1] de forma que cuanto más (menos) probable sea este subconjunto, mayor (menor) es su probabilidad.

$"pr"(A) = "la probabilidad de que ocurra" A$

#underline[*Fórmulas de la probabilidad*]
+ $"pr"(A union B) = "pr"(A) + "pr"(B) - "pr"(A sect B)$ #[ 
  - $A union B$: los elementos que están en A o en B (pueden estar en ambos) ]
+ Si $A sect B = 0$, entonces $"pr"(A union B) = "pr"(A)+"pr"(B)$ #[
  - $A sect B = 0 <=>$ $A$ y $B$ son incompatibles
]
+ Si $A_i sect A_j = 0$ (si $i!=j$), entonces $"pr"(A_1 union A_2 union ... union A_n)="pr"(A_1)+"pr"(A_2)+...+"pr"(A_n)$#[
- #underline[*Ejemplo*]: Lanzo una moneda 10 veces. ¿Cómo podría calcular la probabilidad de obtener menos de 3 caras?
- Obtener menos de 3 caras $<=>$ $underbrace("0 caras o 1 cara o 2 caras.","Estos 3 sucesos son mutuamente incompatibles")$
- pr(menos de 3 caras) = pr(0 caras) + pr(1 cara) + pr(2 caras)
]
+ $"pr"(A^c) = 1 - "pr"(A)$ #[
  - $A^c$ = los elementos que _no_ están en A
  - #underline[*Ejemplos*]: #[
    + Se lanza una moneda 10 veces. Calcular la probabilidad de que salga al menos una cara. #[
      - $"pr(1 cara) + pr(2 caras) + ... + pr(10 caras) = 1 - pr(0 caras)"$
    ]
    + En una reunión de N personas, calcular la probabilida de que haya al menos dos personas con el mismo cumpleaños #[
      - El suceso contrario es "nadie comparte cumpleaños con nadie"
      - Solución = 1-pr(nadie comparte cumpleaños con nadie)
    ]
  ]
]
#underline[*Regla de Laplace*]
- Sea S el suceso seguro. Si #[
  - $A_1 union A_2 union ... union A_n = S$
  - $A_i sect A_j = 0$ (si $i!=j$)
  - $"pr"(A_1) = ... = "pr"(A_n)$
]
- Entonces #[
  - $"pr"(A_1 union ... union A_k)= k/n$
]
- *Demostración*: #[
  - $1 = "pr"(S) = "pr"(A, union .... union A_n) = "pr"(A_1) + ... + "pr"(A_n) = n p; p = "pr"(A_i)$
  - $p = 1/n$
  - $"pr"(A_1 union ... union A_k) = "pr"(A_1) + ... + "pr"(A_k) = k p = k/n$
]

== 1.2. Combinatoria 
#underline[*Regla del producto*]: 
- Si un suceso tiene $n$ posibilidades y otro $m$ posibilidades, en total hay $n dot m$ posibilidades.
- #underline[Ejemplos] #[
  + Se lanzan un dado y una moneda. ¿Cuántas posibilidades hay? #[
    - $6 dot 2$
  ]
  + Se elige un númeror de 2 cifras las cuales son 1,2,3,4 #[
    #set enum(numbering: "a.")
    + De cuántas maneras? #[
      - $4 dot 4$
    ]
    + Si no se repiten las cifras, ¿cuántas maneras? #[
      - $4 dot 3$
    ]
  ]
  + Se distribuyen 2 bolas en $n$ cajas (pueden haber 2 bolas en la misma caja). #[
    - Hay $n dot n$ posibilidades
  ]
]
#underline[*Regla del producto (generalizada)*]
- Si un suceso tiene $n_1$ posibilidades, otro $n_2$, y así hasta el $k$-ésimo que tiene $n_k$ posibilidades; en total hay $n_1 dot n_2 dot ... dot n_k$ posibilidades.
