#import "@local/linnest:0.1.0": draw, graph, layout
#set page(width: auto, height: auto, margin: 10mm)



#let b = graph.builder(name: "parallel demo")


#let (node: a, builder: b) = graph.node(b, name: "a")
#let (node: c, builder: b) = graph.node(b, name: "c", pin: graph.pin(x: 2.0, y: 0))
#let b = graph.edge(b, source: (node: a), sink: (node: c), pin: graph.pin(x: 0, y: 1.25))
#let b = graph.edge(b, source: (node: a), sink: (node: c), pin: graph.pin(x: 0, y: 1.25))
#let b = graph.edge(b, source: (node: a), sink: (node: c), pin: graph.pin(x: 0, y: 1.25))


#let g = graph.finish(b)
#draw(layout(g))