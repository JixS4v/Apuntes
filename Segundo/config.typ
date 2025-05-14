
#import "@preview/diverential:0.2.0": *
#import "@preview/xarrow:0.3.1": *
#import "@preview/hydra:0.5.1": hydra
#let scr(it) = text(
  features: ("ss01",),
  box($cal(it)$),
)

#let template(doc, title, preface:none, wip:false)= {

set page(numbering:"(i)")


align(center, text(25pt)[#strong(title)])
align(center+horizon, text(20pt)[Apuntes de Segundo de GIFIS])
pagebreak()
if preface != none [
  #heading(outlined:false)[Sobre los apuntes]
  #preface
]
if wip == true [
  #align(center, text(size:25pt, fill:red, stroke:black, font:"DejaVu Sans Mono")[#strong([ESTOS APUNTES NO ESTÁN ACABADOS AÚN Y LES FALTA CONTENIDO])])
]
pagebreak(weak:true)
set heading(numbering: "1.1.1.")
set text(
  lang:"es"
)

show heading.where(level: 1, outlined: true): it => {
	pagebreak(weak:true)
	it
}
show outline.entry.where(
  level: 1): it => {
  v(15pt, weak: true)
  text(15pt)[#strong(it)]
}

show outline.entry.where(
  level: 2
): it => {
  text(14pt)[#(it)]
}

show outline.entry.where(
  level: 3
): it => {
  text(14pt)[#(it)]
}

show outline.entry.where(
  level: 4
): it => {
  text(14pt)[#(it)]
}

show outline.entry.where(
  level: 5
): it => {
  text(14pt)[#(it)]
}


outline(title: [Índice], indent: auto)


set page(paper: "a4", margin: (y: 4em), numbering: "1", header: context {
    align(left, emph(hydra()))
  line(length: 100%)
})
counter(page).update(1)
doc
}

