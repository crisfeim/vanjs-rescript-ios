@scope("style") @set external setAllInternal: (Dom.element, string) => unit = "all"
@scope("style") @set external setColorInternal: (Dom.element, string) => unit = "color"
@scope("style") @set external setFontSizeInternal: (Dom.element, string) => unit = "fontSize"
@scope("style") @set external setCursorInternal: (Dom.element, string) => unit = "cursor"
@scope("style") @set external setBackgroundInternal: (Dom.element, string) => unit = "background"
@scope("style") @set external setDisplay: (Dom.element, string) => unit = "display"
@scope("style") @set external setBorderBottom: (Dom.element, string) => unit = "borderBottom"
@scope("style") @set external setBorderRight: (Dom.element, string) => unit = "borderRight"
@scope("style") @set external setTransform: (Dom.element, string) => unit = "transform"
@scope("style") @set external setHeight: (Dom.element, string) => unit = "height"
@scope("style") @set external setWidth: (Dom.element, string) => unit = "width"
@scope("style") @set external setBorderColor: (Dom.element, string) => unit = "borderColor"
@scope("style") @set external setMarginRight: (Dom.element, string) => unit = "marginRight"
@scope("style") @set external setAlignItems: (Dom.element, string) => unit = "alignItems"
@scope("style") @set external setPadding: (Dom.element, string) => unit = "padding"
@scope("style") @set external setBackgroundColor: (Dom.element, string) => unit = "backgroundColor"
@scope("style") @set external setPosition: (Dom.element, string) => unit = "position"
@scope("style") @set external setLeft: (Dom.element, string) => unit = "left"
@scope("style") @set external setFontWeight: (Dom.element, string) => unit = "fontWeight"
@scope("style") @set external setMarginBottom: (Dom.element, string) => unit = "marginBottom"
@scope("style") @set external setBorderRadius: (Dom.element, string) => unit = "borderRadius"
@scope("style") @set external setListStyle: (Dom.element, string) => unit = "listStyle"
@scope("style") @set external setOverflow: (Dom.element, string) => unit = "overflow"
@scope("style") @set external setBoxSizing: (Dom.element, string) => unit = "boxSizing"

let makeHelper = (f: (Dom.element, string) => unit) => {
  (el: Dom.element, value: string): Dom.element => {
    f(el, value)
    el
  }
}

let color = setColorInternal->makeHelper
let all = setAllInternal->makeHelper
let fontSize = setFontSizeInternal->makeHelper
let cursor = setCursorInternal->makeHelper
let background = setBackgroundInternal->makeHelper
let display = setDisplay->makeHelper
let borderBottom = setBorderBottom->makeHelper
let borderRight = setBorderRight->makeHelper
let transform = setTransform->makeHelper
let height = setHeight->makeHelper
let width = setWidth->makeHelper
let borderColor = setBorderColor->makeHelper
let marginRight = setMarginRight->makeHelper
let alignItems = setAlignItems->makeHelper
let padding = setPadding->makeHelper
let backgroundColor = setBackgroundColor->makeHelper
let position = setPosition->makeHelper
let left = setLeft->makeHelper
let fontWeight = setFontWeight->makeHelper
let marginBottom = setMarginBottom->makeHelper
let borderRadius = setBorderRadius->makeHelper
let listStyle = setListStyle->makeHelper
let overflow = setOverflow->makeHelper
let boxSizing = setBoxSizing->makeHelper
