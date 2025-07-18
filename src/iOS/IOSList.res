open VanJS
open Style

let t = (~title: string, ~items: array<'a> = [], ~cell: ('a) => Dom.element) => {
    let titleView = p(title)
      ->fontWeight("bold")
      ->fontSize("24px")
      ->marginBottom("12px")

    let li_wrapper = (el: Dom.element) => li(el)
    let mappedItems = items
        ->Array.map(cell)
        ->Array.map(li_wrapper)

    let list = ul(mappedItems)
    ->background("white")
    ->borderRadius("8px")
    ->listStyle("none")
    ->padding("0")

    div(titleView, list)
    ->background("#efeef5")
    ->color("black")
    ->cursor("default")
    ->overflow("scroll")
    ->width("100%")
    ->height("100%")
    ->padding("16px")
    ->boxSizing("border-box")
}
