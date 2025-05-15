
#import "@preview/diverential:0.2.0": *
#import "@preview/xarrow:0.3.1": *
#import "@preview/hydra:0.5.1": hydra


// Styling helper
#let scr(it) = text(
  features: ("ss01",),
  box($cal(it)$),
)

#let template(doc, title, preface:none)= {

// Numbering format for pre pages
set page(numbering:"(i)")

// Title
align(center, text(25pt)[#strong(title)])
align(center+horizon, text(20pt)[Apuntes de Segundo de GIFIS])

context{
if query(label("todo")).len() > 0 {
  align(center+bottom, text(15pt, fill:gray)[Copia provisional, indices en gris son contenido que falta.])
}
}
pagebreak()

// Fill in preface if set
if preface != none [
  #heading(outlined:false)[Sobre los apuntes]
  #preface
]

pagebreak(weak:true)

set heading(numbering: "1.1.1.")
// Language
set text(
  lang:"es"
)

// Heading styling
show heading.where(level: 1, outlined: true): it => {
  pagebreak(weak:true)
	it
}

// Don't render todo
show heading.where(label:<todo>):{
  none
}

show heading.where(label:<wip>):it=>{
  set text(navy)
  it + text(10pt)[(en proceso)]
}

show outline.entry: it =>{
  if it.level > 5 {return}
  // Gray fill if todo
  let todo = it.element in query(label("todo"))
  let wip = it.element in query(label("wip"))
  set text(fill:gray) if todo
  set text(fill:navy) if wip
  let style = h(3pt) + box(width:1fr, it.fill)+h(3pt)+it.page
  // We don't want any page number for todo
  if todo{
    style=none
  }

  let output = text(14pt, fill:black, weight:"regular")[#style]

  // Add the bold level 1 non todo
  set text(15pt, weight:"bold") if it.level == 1

  let output = text[#it.body] + output

  // V spacing for bigger ones
  if it.level == 1 {v(15pt, weak:true)}

  if not todo {
    link(it.element.location(), output)
  }
  else{output}
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

