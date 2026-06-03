#import "@local/linnest:0.2.0":graph,physics,draw,layout,subgraph
#import graph: * 
#import "map-style.typ": source-style,sink-style,edge-label


#let draw_dot(doc)={
  show raw: it => if it.at("lang") == "dot"{
  for g in parse(it.text,eval-edge-fields: "label"){
    
 
  let layed-out = layout(g,layout-algo:"force",epochs: 30,steps: 40,k-spring:4.5,eps:1e-7,step:.6,gamma-dangling:0.3,label-length-scale: 1.1,label-steps: 100)

  

  [#align(center,info(g).name)
#edges
  
]+draw(
  layed-out,
  source-style: source-style,
  sink-style:   sink-style,
  edge-label: edge-label,
  subgraph: subgraph.compass(layed-out,"s")
)
  }
  
}
doc
}