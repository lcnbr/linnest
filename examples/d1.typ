#import "@local/linnest:0.2.0":graph,physics,draw,layout,subgraph
#import graph: * 
#import "map-style.typ": source-style,sink-style,edge-label

#set page(width: auto,height: auto)

#let draw_dot()={
  
}

#show raw: it => if it.at("lang") == "dot"{
  for g in parse(it.text){
    
 
  let layed-out = layout(g,layout-algo:"force",epochs: 50,steps: 20,k-spring:4.5,eps:1e-7,step:0.4)

  [#align(center,info(g).name)
]+draw(
  layed-out,
  source-style: source-style,
  sink-style:   sink-style,
  edge-label: edge-label,
  subgraph: subgraph.compass(layed-out,"s")
)
  }
  
}

```dot
digraph d1 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^3*rat( - 3/8*ep^-2 + 29/32*ep^-1)";
  overall_factor= "+1/6"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v1 -> v2 [particle= "ghG"];
  v3 -> v1 [particle= "g"];
  v4 -> v2 [particle= "g"];
  v4 -> v3 [particle= "g"];
  v4 -> v3 [particle= "g"];
  v4 -> v3 [particle= "g"];
}

digraph d3 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^3*rat(9/128*ep^-3 - 39/256*ep^-2 + 9/128*ep^-1)";
  overall_factor= "+1/2"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v1 -> v3 [particle= "ghG"];
  v5 -> v1 [particle= "g"];
  v3 -> v2 [particle= "ghG"];
  v5 -> v2 [particle= "g"];
  v4 -> v3 [particle= "g"];
  v5 -> v4 [particle= "g"];
  v5 -> v4 [particle= "g"];
}
digraph d4 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^3*rat(9/128*ep^-3 - 39/256*ep^-2 + 27/128*ep^-1)";
  overall_factor= "+1/2"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v1 -> v3 [particle= "ghG"];
  v4 -> v1 [particle= "g"];
  v3 -> v2 [particle= "ghG"];
  v5 -> v2 [particle= "g"];
  v5 -> v3 [particle= "g"];
  v5 -> v4 [particle= "g"];
  v5 -> v4 [particle= "g"];
}
digraph d9 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="0";
  overall_factor= "+1"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v3 -> v1 [particle= "g"];
  v1 -> v4 [particle= "ghG"];
  v5 -> v2 [particle= "g"];
  v6 -> v2 [particle= "ghG"];
  v5 -> v3 [particle= "g"];
  v6 -> v3 [particle= "g"];
  v5 -> v4 [particle= "g"];
  v4 -> v6 [particle= "ghG"];
}
digraph d11 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^2*nf*rat(1/12*ep^-3 - 1/12*ep^-2 - 1/12*ep^-1)";
  overall_factor= "-1"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v3 -> v1 [particle= "g"];
  v1 -> v4 [particle= "ghG"];
  v5 -> v2 [particle= "g"];
  v6 -> v2 [particle= "ghG"];
  v5 -> v3 [particle= "d"];
  v3 -> v5 [particle= "d"];
  v6 -> v4 [particle= "g"];
  v4 -> v6 [particle= "ghG"];
}

digraph d14 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^3*rat( - 3/64*ep^-3 + 7/64*ep^-2 - 173/1536*ep^-1)";
  overall_factor= "+1"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v3 -> v1 [particle= "g"];
  v1 -> v4 [particle= "ghG"];
  v5 -> v2 [particle= "g"];
  v6 -> v2 [particle= "ghG"];
  v4 -> v3 [particle= "g"];
  v5 -> v3 [particle= "g"];
  v4 -> v6 [particle= "ghG"];
  v6 -> v5 [particle= "g"];
}
digraph d18 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^3*rat( - 1/128*ep^-3 + 7/768*ep^-2 + 11/128*ep^-1) + p1.p1*gs^6*\n      z3*ca^3*rat( - 1/8*ep^-1)";
  overall_factor= "+1"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v3 -> v1 [particle= "g"];
  v1 -> v4 [particle= "ghG"];
  v3 -> v2 [particle= "g"];
  v5 -> v2 [particle= "ghG"];
  v6 -> v3 [particle= "g"];
  v5 -> v4 [particle= "g"];
  v4 -> v6 [particle= "ghG"];
  v6 -> v5 [particle= "ghG"];
}
digraph d19 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^3*rat( - 3/128*ep^-3 + 23/256*ep^-2 - 3/128*ep^-1) + p1.p1*gs^6*\n      z3*ca^3*rat( - 1/8*ep^-1)";
  overall_factor= "+1"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v3 -> v1 [particle= "g"];
  v1 -> v4 [particle= "ghG"];
  v3 -> v2 [particle= "g"];
  v5 -> v2 [particle= "ghG"];
  v6 -> v3 [particle= "g"];
  v4 -> v5 [particle= "ghG"];
  v6 -> v4 [particle= "g"];
  v6 -> v5 [particle= "g"];
}
digraph d30 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^2*nf*rat(1/48*ep^-3 - 1/48*ep^-2 - 1/48*ep^-1)";
  overall_factor= "-1"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v3 -> v1 [particle= "g"];
  v1 -> v4 [particle= "ghG"];
  v3 -> v2 [particle= "ghG"];
  v5 -> v2 [particle= "g"];
  v4 -> v3 [particle= "ghG"];
  v6 -> v4 [particle= "g"];
  v6 -> v5 [particle= "d"];
  v5 -> v6 [particle= "d"];
}

digraph d45 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^2*nf*rat(1/48*ep^-3 - 11/96*ep^-2 + 7/96*ep^-1)";
  overall_factor= "-1"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v3 -> v1 [particle= "g"];
  v1 -> v4 [particle= "ghG"];
  v3 -> v2 [particle= "g"];
  v4 -> v2 [particle= "ghG"];
  v5 -> v3 [particle= "g"];
  v6 -> v4 [particle= "g"];
  v6 -> v5 [particle= "d"];
  v5 -> v6 [particle= "d"];
}

digraph d48 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^3*rat( - 1/96*ep^-3 + 1/64*ep^-2 - 1/96*ep^-1)";
  overall_factor= "+1"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v3 -> v1 [particle= "g"];
  v1 -> v4 [particle= "ghG"];
  v3 -> v2 [particle= "ghG"];
  v4 -> v2 [particle= "g"];
  v5 -> v3 [particle= "ghG"];
  v4 -> v6 [particle= "ghG"];
  v6 -> v5 [particle= "g"];
  v6 -> v5 [particle= "ghG"];
}
digraph d49 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^3*rat( - 1/32*ep^-3 + 13/192*ep^-2 - 13/192*ep^-1) + p1.p1*gs^6*\n      z3*ca^3*rat(1/8*ep^-1)";
  overall_factor= "+1"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v2 -> v1 [particle= "g"];
  v1 -> v3 [particle= "ghG"];
  v4 -> v2 [particle= "ghG"];
  v5 -> v3 [particle= "g"];
  v3 -> v6 [particle= "ghG"];
  v5 -> v4 [particle= "g"];
  v6 -> v4 [particle= "ghG"];
  v6 -> v5 [particle= "g"];
}

digraph d58 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^3*rat( - 1/24*ep^-3 + 1/48*ep^-2 + 5/96*ep^-1)";
  overall_factor= "+1"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v2 -> v1 [particle= "g"];
  v1 -> v3 [particle= "ghG"];
  v4 -> v2 [particle= "ghG"];
  v5 -> v3 [particle= "g"];
  v3 -> v5 [particle= "ghG"];
  v6 -> v4 [particle= "g"];
  v6 -> v4 [particle= "ghG"];
  v5 -> v6 [particle= "ghG"];
}
digraph d59 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca*nf^2*rat( - 1/9*ep^-3 + 5/54*ep^-2 + 35/324*ep^-1)";
  overall_factor= "+1"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v1 -> v2 [particle= "ghG"];
  v3 -> v1 [particle= "g"];
  v4 -> v2 [particle= "g"];
  v5 -> v3 [particle= "d"];
  v3 -> v5 [particle= "d"];
  v6 -> v4 [particle= "d"];
  v4 -> v6 [particle= "d"];
  v6 -> v5 [particle= "g"];
}
digraph d60 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^2*nf*rat(19/72*ep^-3 - 29/108*ep^-2 - 343/1296*ep^-1)";
  overall_factor= "-1/2"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v1 -> v2 [particle= "ghG"];
  v3 -> v1 [particle= "g"];
  v4 -> v2 [particle= "g"];
  v5 -> v3 [particle= "d"];
  v3 -> v5 [particle= "d"];
  v6 -> v4 [particle= "g"];
  v6 -> v4 [particle= "g"];
  v6 -> v5 [particle= "g"];
}
digraph d61 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^2*nf*rat(1/72*ep^-3 - 1/54*ep^-2 - 19/1296*ep^-1)";
  overall_factor= "+1"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v1 -> v2 [particle= "ghG"];
  v3 -> v1 [particle= "g"];
  v4 -> v2 [particle= "g"];
  v5 -> v3 [particle= "d"];
  v3 -> v5 [particle= "d"];
  v6 -> v4 [particle= "ghG"];
  v4 -> v6 [particle= "ghG"];
  v6 -> v5 [particle= "g"];
}
digraph d62 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^2*nf*rat(19/72*ep^-3 - 29/108*ep^-2 - 343/1296*ep^-1)";
  overall_factor= "-1/2"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v1 -> v2 [particle= "ghG"];
  v3 -> v1 [particle= "g"];
  v4 -> v2 [particle= "g"];
  v5 -> v3 [particle= "g"];
  v5 -> v3 [particle= "g"];
  v6 -> v4 [particle= "d"];
  v4 -> v6 [particle= "d"];
  v6 -> v5 [particle= "g"];
}
digraph d63 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^3*rat( - 179/288*ep^-3 + 1297/1728*ep^-2 + 5767/10368*ep^-1)";
  overall_factor= "+1/4"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v1 -> v2 [particle= "ghG"];
  v3 -> v1 [particle= "g"];
  v4 -> v2 [particle= "g"];
  v5 -> v3 [particle= "g"];
  v5 -> v3 [particle= "g"];
  v6 -> v4 [particle= "g"];
  v6 -> v4 [particle= "g"];
  v6 -> v5 [particle= "g"];
}

digraph d65 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^2*nf*rat(1/72*ep^-3 - 1/54*ep^-2 - 19/1296*ep^-1)";
  overall_factor= "+1"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v1 -> v2 [particle= "ghG"];
  v3 -> v1 [particle= "g"];
  v4 -> v2 [particle= "g"];
  v5 -> v3 [particle= "ghG"];
  v3 -> v5 [particle= "ghG"];
  v6 -> v4 [particle= "d"];
  v4 -> v6 [particle= "d"];
  v6 -> v5 [particle= "g"];
}
digraph d69 {
 num = "spenso::g(spenso::coad(8,hedge(0)),spenso::coad(8,hedge(1)))"
pole_part="p1.p1*gs^6*ca^2*nf*rat(1/24*ep^-3 - 1/16*ep^-2 + 5/48*ep^-1)";
  overall_factor= "-1"

  in1 [style=invis];
  in1 -> v1:0
  [particle="ghG" pin="x:@-left"];

  out1 [style=invis];
  v2:1 -> out1
  [particle="ghG" pin="x:@+right"];

  v2 -> v1 [particle= "g"];
  v1 -> v3 [particle= "ghG"];
  v4 -> v2 [particle= "ghG"];
  v3 -> v4 [particle= "ghG"];
  v5 -> v3 [particle= "g"];
  v6 -> v4 [particle= "g"];
  v6 -> v5 [particle= "d"];
  v5 -> v6 [particle= "d"];
}

```


  
