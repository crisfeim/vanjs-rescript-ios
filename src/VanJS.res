// Van.res
type state<'a> = { mutable val: 'a }

@module("vanjs-core")
external van: {
  "tags": {
    "div": 'a,
    "p": 'a,
    "button": 'a,
    "span": 'a,
    "ul": 'a,
  },
  "state": 'a => state<'a>
} = "default"

let store = (x: 'a) => van["state"](x)
let div = van["tags"]["div"]
let button = van["tags"]["button"]
let p = van["tags"]["p"]
let span = van["tags"]["span"]
let ul = van["tags"]["ul"]
