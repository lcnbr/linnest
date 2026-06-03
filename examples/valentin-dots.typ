#import "@local/linnest:0.2.0":graph,physics,draw,layout,subgraph
#import graph: * 

#set page(width: auto,height: auto)
#let (source-style, sink-style, edge-label, ..callbacks) = physics.style(map:,momentum-arrows: true, show-edge-index: true)

#show raw: it => if it.at("lang") == "dot"{
  let g = parse(it.text).at(0) 
  let layed-out = layout(layout(g,beta: 100,epochs:300,steps:200),subgraph: subgraph.bits(g,(false,false,false,false,false,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true,true)))

  [#let a = edges(layed-out)
#a.map(e =>e.pos).join()
]+draw(
  layed-out,
  source-style: source-style,
  sink-style:   sink-style,
  edge-label: edge-label,
)
  
}

```dot
digraph {
0 [dod="-100" num="1"];
1 [dod="-100" num="1"];
2 [dod="-100" num="1"];
3 [dod="-100" num="1"];
4 [dod="-100" num="1"];
5 [dod="-100" num="1"];
6 [dod="-100" num="1"];
exte0	 [style=invis];
exte0	-> 2:0	 [id=0  dod="-100" lmb_rep="P(0,a___)" num="1" particle="d" pin="x:@-left"];
exte1	 [style=invis];
exte1	-> 1:1	 [id=1 dir=back  dod="-100" lmb_rep="P(1,a___)" num="1" particle="d~" pin="x:@-left"];
exte2	 [style=invis];
exte2	-> 1:2	 [id=2 dir=none  dod="-100" lmb_rep="P(2,a___)" mass="0" num="1" particle="H" pin="x:@-left"];
exte3	 [style=invis];
exte3	-> 2:3	 [id=3 dir=none  dod="-100" is_dummy="true" lmb_rep="0" mass="0" num="1" particle="H" pin="x:@-left"];
exte4	 [style=invis];
6:4	-> exte4	 [id=4 dir=none  dod="-100" lmb_rep="P(3,a___)" mass="0" num="1" particle="H" pin="x:@+right"];
exte5	 [style=invis];
1:5	-> exte5	 [id=5 dir=none  dod="-100" is_dummy="true" lmb_rep="0" mass="0" num="1" particle="H" pin="x:@+right"];
exte6	 [style=invis];
5:6	-> exte6	 [id=6 dir=none  dod="-100" lmb_rep="P(4,a___)" num="1" particle="H" pin="x:@+right"];
exte7	 [style=invis];
4:7	-> exte7	 [id=7 dir=none  dod="-100" lmb_rep="P(5,a___)" num="1" particle="H" pin="x:@+right"];
exte8	 [style=invis];
3:8	-> exte8	 [id=8 dir=none  dod="-100" lmb_rep="-1*P(3,a___)+-1*P(4,a___)+-1*P(5,a___)+P(0,a___)+P(1,a___)+P(2,a___)" num="1" particle="H" pin="x:@+right"];
0:9	-> 1:10	 [id=9  dod="-100" lmb_id="1" lmb_rep="K(1,a___)" num="1" particle="t"];
0:11	-> 2:12	 [id=10 dir=none  dod="-100" lmb_rep="-1*P(0,a___)+K(0,a___)" num="1" particle="g"];
5:13	-> 0:14	 [id=11  dod="-100" lmb_rep="-1*P(0,a___)+K(0,a___)+K(1,a___)" num="1" particle="t"];
6:24	-> 1:18	 [id=12 dir=none  dod="-100" lmb_rep="-1*P(3,a___)+K(0,a___)" mass="((Q(2,spenso::cind(0)))^2+(Q(2,spenso::cind(1)))^2*-1+(Q(2,spenso::cind(2)))^2*-1+(Q(2,spenso::cind(3)))^2*-1)^(1/2)" num="1" particle="g"];
1:15	-> 4:16	 [id=13  dod="-100" lmb_rep="-1*P(3,a___)+K(0,a___)+K(1,a___)+P(1,a___)+P(2,a___)" num="1" particle="t"];
2:17	-> 6:23	 [id=14  dod="-100" lmb_id="0" lmb_rep="K(0,a___)" num="1" particle="d"];
4:19	-> 3:20	 [id=15  dod="-100" lmb_rep="-1*P(3,a___)+-1*P(5,a___)+K(0,a___)+K(1,a___)+P(1,a___)+P(2,a___)" num="1" particle="t"];
3:21	-> 5:22	 [id=16  dod="-100" lmb_rep="-1*P(0,a___)+K(0,a___)+K(1,a___)+P(4,a___)" num="1" particle="t"];
}
```


  
