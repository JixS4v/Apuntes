
#import "@preview/diverential:0.2.0": *
#let scr(it) = text(
  features: ("ss01",),
  box($cal(it)$),
)

#let template(doc)= {

set heading(numbering: "1.1.1.")

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


outline(title: [Índice], indent: auto, fill: none)

doc
}

