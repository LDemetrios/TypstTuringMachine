#import "turing.typ": *

#set page(fill: black, height: auto, width: auto)
#set text(fill: white)

#let source = sys.inputs.at("source", default: "./zero.out")

#let rules = parse-code(read(source))

#let empty = to-arr("_")
#let demo-states = (
  "./zero.out": (to-arr("000"),),
  "./aplusb.out": (to-arr("10+11"),),
  "./mirror.out": (to-arr("10100"),),
  "./tandem.out": (to-arr("110110"),),
  "./balanced.out": (to-arr("(()())"),),
  "./less.out": (to-arr("11<10"),),
  "./convertto2.out": (to-arr("102"),),
  "./postfixlogic.out": (to-arr("01|0&1|"), empty),
  "./infixlogic.out": (to-arr("(0|0|1)&1&0"), empty),
  "./factorial.out": (to-arr("101"),),
  "./sorting.out": (to-arr("101|11|10"), empty, empty, empty,),
)

#let initial-state = demo-states.at(source)

#let (data, endstate) = run(initial-state, rules, lim-steps: 1000)

#trace(data, endstate)
