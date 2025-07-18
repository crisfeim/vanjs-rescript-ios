@module("./utils/styledTags.js")
external styledTags: {
  "div": 'a,
  "p": 'a,
  "button": 'a,
  "span": 'a,
  "ul": 'a,
} = "styledTags"

let div = styledTags["div"]
let p = styledTags["p"]
let button = styledTags["button"]
let span = styledTags["span"]
let ul = styledTags["ul"]

@send external color: (Dom.element, string) => Dom.element = "color"

type state<'a> = { mutable val: 'a }

@module("vanjs-core")
external van: {
  "state": 'a => state<'a>
} = "vanjs"

let store = (x: 'a) => van["state"](x)
