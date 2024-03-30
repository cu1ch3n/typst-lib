#let rule_base(counter, lbl) = {
  counter.step()
  let num = box(align(left, counter.display()), width: 1em)
  [ #figure(
      math.attach(math.arrow.long, br: num),
      kind: "rule",
      supplement: [Rule])
    #if lbl != none { label(lbl) } ]
}

// Custom Symbols
#let ex = math.hat
#let ph = "__"
#let mono = math.attach(math.forces, br: "m")
#let nonmono = math.attach(math.tack.r.not, br: "m")
#let monoa = math.attach(math.forces, br: "m")
#let nonmonoa = math.attach(math.forces.not, br: "m")
#let tto = math.class("relation", stack(
  dir: ltr,
  spacing: -0.5em,
  math.arrow.double.r,
  math.arrow.double.r
))

#let tweaks(body) = {
  // Typst Quirks
  show math.bot: math.class("normal", math.bot)

  // Add space after .
  show math.dot.basic: {math.dot.basic; math.space}

  body
}
