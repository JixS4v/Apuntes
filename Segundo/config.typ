
#import "@preview/diverential:0.2.0": *
#import "@preview/xarrow:0.3.1": *
#import "@preview/hydra:0.5.1": hydra


// Styling helper
#let scr(it) = text(
  features: ("ss01",),
  box($cal(it)$),
)

#let template(doc, title, preface:none, wip:false)= {

// Numbering format for pre pages
set page(numbering:"(i)")

// Title
align(center, text(25pt)[#strong(title)])
align(center+horizon, text(20pt)[Apuntes de Segundo de GIFIS])
pagebreak()

// Fill in preface if set
if preface != none [
  #heading(outlined:false)[Sobre los apuntes]
  #preface
]

// WIP warning
if wip == true [
  #align(center, text(size:25pt, fill:red, stroke:black, font:"DejaVu Sans Mono")[#strong([ESTOS APUNTES NO ESTÁN ACABADOS AÚN Y LES FALTA CONTENIDO])])
]
pagebreak(weak:true)

set heading(numbering: "1.1.1.")
// Language
set text(
  lang:"es"
)

// Heading outline styling
show heading.where(level: 1, outlined: true): it => {
  pagebreak(weak:true)
	it
}
show heading.where(label:<todo>):{
  none
}

show outline.entry: it =>{
  // Gray fill if todo
  set text(fill:gray) if it.element in query(label("todo"))


  let style = h(3pt) + box(width:1fr, it.fill)+h(3pt)+it.page

  if it.element in query(label("todo")){
    style=none
  }
  if it.level == 1 {
      v(15pt, weak: true)

      text(15pt)[#strong(it.body)]+ text(14pt, fill:black)[#style]
  }
  else if it.level in (2,3,4,5) {
    text(14pt)[#(it.body)]+text(14pt, fill:black)[#style]
  }
}

outline(title: [Índice], indent: auto)

// Margin titles
set page(paper: "a4", margin: (y: 4em), numbering: "1", header: context {
    align(left, emph(hydra()))
  line(length: 100%)
})
counter(page).update(1)
doc
}

