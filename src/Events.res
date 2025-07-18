@val external alert: string => unit = "alert"

@send external addEventListener: (Dom.element, string, unit => unit) => unit = "addEventListener"
let onClick = (el, cb) => {
  addEventListener(el, "click", cb)
  el
}
