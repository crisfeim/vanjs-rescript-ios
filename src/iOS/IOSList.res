open VanJS
open Style

let t = (~title: string, ~items: array<'a> = [], ~cell: ('a) => Dom.element) => {
    let titleView = p(title)
      ->fontWeight("bold")
      ->fontSize("24px")
      ->marginBottom("12px")

    let domItems = Belt.Array.map(items, cell)

    let list = ul(domItems)
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
