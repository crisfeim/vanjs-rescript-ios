open VanJS
open Style

let iOSChevron = () => div()
  -> display("inline-block")
  -> borderBottom("2px solid")
  -> borderRight("2px solid")
  -> transform("rotate(-225deg)")
  -> height("10px")
  -> width("10px")
  -> borderColor(IOSColors.blue)
