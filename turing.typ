#import "@preview/cetz:0.2.2"

#let display-tape(datum) = {
  let (tapes, carets, state) = datum
  let shifts = datum.at("shifts", default: auto)

  let shifts = if shifts != auto { shifts } else {
    range(0, tapes.len()).map(it => 0)
  }

  block(
    {
      heading(level: 2, h(-2.8em) + text(gray, raw("State: ")) + raw(state))
      v(1em)

      for ind in range(0, tapes.len()) {
        let shift = shifts.at(ind)
        let symbols = tapes.at(ind)
        let caret-pos = carets.at(ind)

        show table.cell.where(x: caret-pos + shift): rect.with(stroke: (x: orange + 0.2em), outset: -0.4em, width: 100%, height: 100%)
        pad(left: -1cm * shift, table(
          columns: (1cm,) * symbols.len(),
          rows: 1cm,
          align: center + horizon,
          stroke: gray,
          ..symbols.map(s => if s == "_" {} else { s }),
        ))
        v(-1em)
      }
      v(2.5em)
    },
    outset: (x: 4em),
  )
}

#let parse-code(cd) = {
  let cont = if type(cd) == str {
    cd
  } else {
    cd.text
  }

  let lines = cont.split("\n")
  let rules = (:)
  for line in lines {
    if line.trim() == "" { continue }

    let (left, right) = line.split("->").map(it => it.trim())
    let fromstate = left.split(" ").at(0)
    let fromsymbols = left.split(" ").slice(1).map(it => it.trim()).filter(it => it != "")

    let act = right.split(" ").map(it => it.trim()).filter(it => it != "")
    let tostate = act.at(0)
    let actions = act.slice(1).chunks(2)

    let subdict = rules.at(fromstate, default: (:))
    assert.eq(
      subdict.at(repr(fromsymbols), default: (:)),
      (:),
      message: fromstate + " " + fromsymbols.join(),
    )
    subdict.insert(repr(fromsymbols), (tostate: tostate, actions: actions))
    rules.insert(fromstate, subdict)
  }
  return rules
}

#let to-arr(string) = range(0, string.len()).map(it => string.at(it))

#let run(
  initial,
  rules,
  carets: auto,
  shifts: auto,
  lim-steps: 100,
  starting: "Start",
  accepting: "Accept",
  rejecting: "Reject",
) = {
  let tapes = initial
  let state = starting
  let carets = if carets != auto { carets } else {
    range(0, initial.len()).map(it => 0)
  }

  let shifts = if shifts != auto { shifts } else {
    range(0, initial.len()).map(it => 0)
  }

  assert.eq(shifts.len(), initial.len())
  assert.eq(carets.len(), initial.len())

  let data = ((tapes: tapes, carets: carets, state: state, shifts: shifts),)

  let n = initial.len();

  for step in range(0, lim-steps) {
    if state == accepting or state == rejecting { break }

    let position = range(0, n).map(it => tapes.at(it).at(carets.at(it) + shifts.at(it)))

    let act = rules.at(state, default: (:)).at(repr(position), default: (:))
    if act == (:) {
      state = none
      break
    }

    let tostate = act.tostate
    let actions = act.actions

    state = tostate
    for i in range(0, n) {
      tapes.at(i).at(carets.at(i) + shifts.at(i)) = actions.at(i).at(0)
      let move = actions.at(i).at(1)
      carets.at(i) += if move == "<" { -1 } else if move == ">" { 1 } else { 0 }
    }

    for i in range(0, n) {
      if carets.at(i) + shifts.at(i) < 0 {
        shifts.at(i) += 1
        tapes.at(i) = ("_", ..tapes.at(i))
      }
      if carets.at(i) >= tapes.at(i).len() - shifts.at(i) {
        tapes.at(i).push("_")
      }
    }

    data.push((tapes: tapes, carets: carets, state: state, shifts: shifts))
  }

  return (data, state)
}

#let trace(data, endstate, accepting: "Accept", rejecting: "Reject", break-every:20) = {
  let maxshift = calc.max(..data.map(it => calc.max(..it.shifts)))
  let maxlen = calc.max(
    ..data.map(
      datum => {
        let indices = range(0, datum.tapes.len())
        let mapped = indices.map(it => datum.tapes.at(it).len() - datum.shifts.at(it))
        calc.max(..mapped)
      },
    ),
  )

  let ind = 0
  for datum in data {
    line(length: (maxlen + maxshift) * 1cm, stroke:(paint:gray, dash:"dashed"))
    pad(left: maxshift * 1cm, display-tape(datum))
    ind += 1
    if calc.rem(ind, break-every) == 0 {
      pagebreak()
    }
  }

  let res = if endstate == accepting [
    ACCEPTED
  ] else if endstate == rejecting [
    REJECTED
  ] else if endstate == none [
    BROKEN
  ] else [
    TIME LIMIT EXCEEDED
  ]

  move(dy:-1em,res)
}
