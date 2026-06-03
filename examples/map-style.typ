#import "@local/linnest:0.2.0":physics
#import physics: *


#let fermion = (
    source: source-stroke(c: blue, thickness: massless),
    sink: sink-stroke(c: blue, thickness: massless),
    fermion-arrow: true,
  )

#let scalar = (
  source: source-stroke(c: black, thickness: massive, dash: dashed),
  sink: sink-stroke(c: black, thickness: massive, dash: dashed),
)

#let gluon =  (
    source: source-stroke(c: black, thickness: massless) + coil,
    sink: sink-stroke(c: black, thickness: massless) + coil,
    label: mi(`{g}`),
)

#let photon = (
    source: source-stroke(c: black, thickness: massless) + wave,
    sink: sink-stroke(c: black, thickness: massless) + wave,
  )


#let map = (
  "a": photon+(label:[$gamma$]),
  "mu+": fermion+(label:[$mu^+$]),
  "mu-": fermion+(label:[$mu^-$]),
  "e+": fermion+(label:[$e^+$]),
  "e-": fermion+(label:[$e^-$]),
  "q": fermion+(label:[q]),
  "d": fermion+(label:[d]),"t": fermion+(label:[$t$]),
  "photon": photon,
  "g": gluon,
  "gluon": gluon,
  "fermion":fermion+(label:[$f$]),
  "scalar": scalar+(label:[$s$]),
  "ghG": scalar+(label:[$s$]),
)
#let (source-style, sink-style, edge-label, ..callbacks) = physics.style(map:map,momentum-arrows: false,show-particle:false, show-edge-index: false,)