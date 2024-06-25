#import "../turing.typ": *

#set page(fill: black, height: auto, width: auto, margin: (y:0cm))
#set text(fill: white)

#let source = sys.inputs.at("source", default: "./zero.tm")

#let rules = parse-code(read(source))

#let empty = to-arr("_")
#let demo-states = (
  "./zero.tm": (to-arr("000"),),
  "./aplusb.tm": (to-arr("10+11"),),
  "./mirror.tm": (to-arr("10100"),),
  "./tandem.tm": (to-arr("110110"),),
  "./balanced.tm": (to-arr("(()())"),),
  "./less.tm": (to-arr("11<10"),),
  "./convertto2.tm": (to-arr("102"),),
  "./postfixlogic.tm": (to-arr("01|0&1|"), empty),
  "./infixlogic.tm": (to-arr("(0|0|1)&1&0"), empty),
  "./factorial.tm": (to-arr("101"),),
  "./sorting.tm": (to-arr("101|11|10"), empty, empty, empty,),
)

#let initial-state = demo-states.at(source)

#let (data, endstate) = run(initial-state, rules, lim-steps: 1000)

#trace(data, endstate, break-every: 8)
