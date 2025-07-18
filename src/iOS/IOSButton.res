open VanJS
open Style

let t = (label: string) =>
  button(label)
    -> color(IOSColors.blue)
    -> cursor("pointer")
    -> fontSize("1rem")
