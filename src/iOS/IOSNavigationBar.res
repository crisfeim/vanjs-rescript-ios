open VanJS
open Style
open Events
open IOSChevron

let iOSNavigationBackButton = () => div(
  iOSChevron()->marginRight("4px"),
  IOSButton.t("Back")
)

let iOSNavigationBar = (~title: string, ~onBackButtonClick: unit => unit) =>
  div(
    iOSNavigationBackButton()->onClick(onBackButtonClick),
    span(title)
        -> fontWeight("bold")
        -> position("absolute")
        -> left("50%")
        -> transform("translateX(-50%)")
  )
  -> display("flex")
  -> alignItems("center")
  -> padding("16px")
  -> backgroundColor("white")
  -> color("black")
