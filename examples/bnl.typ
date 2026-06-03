#set page(width: auto,height: auto,margin: 5mm)
#import "@local/linnest:0.2.0":graph,physics,draw,layout,subgraph
#import graph: * 
#import "map-style.typ": source-style,sink-style,edge-label


#let draw_dot(doc)={
  show raw: it => if it.at("lang") == "dot"{
  for g in parse(it.text,eval-edge-fields: "label"){
    
 
  let layed-out = layout(g,layout-algo:"force",epochs: 30,steps: 40,k-spring:4.5,eps:1e-7,step:.6,gamma-dangling:0.3,label-length-scale: 1.1,label-steps: 100)

  

//   [#align(center,info(g).name)
// #edges
  
// ]+
draw(
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

#show: draw_dot
```dot 
digraph BNL {
    num = "1";
    overall_factor = "1";
    overall_factor_evaluated = "1";
    projector = "vbar(0,spenso::bis(4,hedge(0))) * u(1,spenso::bis(4,hedge(1))) * v(2,spenso::bis(4,hedge(2))) * ubar(3,spenso::bis(4,hedge(3))) * ϵbar(4,spenso::mink(4,hedge(4))) * ϵbar(5,spenso::mink(4,hedge(5))) * ϵbar(6,spenso::mink(4,hedge(6)))";
edge[label=""]
	exte0	 [style=invis, pos="y:0!"];
	exte1	 [style=invis pos="y:0!"];

	exte2	 [style=invis pos="y:0!"];
	exte3	 [style=invis pos="y:0!"];
	exte4	 [style=invis pos="y:10!,x:-3!"];
	exte5	 [style=invis pos="y:17!,x:-10!"];
	exte6	 [style=invis pos="y:10!,x:0!"];
  8[pos="x:13!,y:6!"]
  7[pos="x:-2!,y:14!"]
  2[pos="x:-6!,y:7!"]
  3[pos="x:-10!,y:21!"]
	exte0	-> 0:0	 [dir=back id=0 particle="e+" ];
	exte1	-> 0:1	 [id=1 particle="e-" ];

	1:2	-> exte2	 [dir=back id=2 particle="mu+" ];
	1:3	-> exte3	 [id=3 particle="mu-" ];
	2:4	-> exte4	 [id=4 particle="a" ];
	3:5	-> exte5	 [id=5 particle="a" ];
	4:6	-> exte6	 [id=6 particle="a" ];


	0	-> 5		[id=7 particle="a"];
	6   -> 1        [id=8 particle="a"];
	
	5   -> 6        [id=9 particle="t" lmb_id=0];
	6   -> 2        [id=10 particle="t"];
	2   -> 3        [id=11 particle="t" pos="y:16!,x:-7!"];
	3   -> 7        [id=12 particle="t"];
	7   -> 4        [id=13 particle="t"];
	4 	-> 8		[id=14 particle="t"];
	8 	-> 5		[id=15 particle="t"];
	7   -> 8        [id=16 particle="g" lmb_id=1 pos="y:20!,x:68"];
}

```
