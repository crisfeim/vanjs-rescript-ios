open VanJS
open Events
open Style

let helloWorld = () => {
    let count = store(0)

    div(
        p(count),
        button("+")
            ->onClick(_ => count.val = count.val + 1),
        button("-")
            ->onClick(_ => count.val = count.val - 1)
    )
}

let iOSAsyncList = (~title: string, loader: unit => unit) => {
    let state = store("loading")

   div(p("helo world"))
    // ->onAppear(() => load())
    ->width("100%")
    ->height("100%")
    ->display("flex")
    ->alignItems("center")
    // ->justifyContent("center")
}


let list = () =>
    IOSList.t(~title="List", ~items=["Item 1", "Item 2", "Item 3"], ~cell = (item) => p(item))
    -> width("300px")
    -> aspectRatio("9 / 16")
    -> marginInline("auto")

let someOtherComponent = () => div(iOSAsyncList(~title="title", () => ()), list())

%%raw(`
function defineComponent(tagName, domElement) {
    class Wrapper extends HTMLElement {
       connectedCallback() {
           this.attachShadow({ mode: "open" }).appendChild(domElement);
       }
    }

    customElements.define(tagName, Wrapper)
}

defineComponent("hello-world", helloWorld())
defineComponent("some-other", someOtherComponent())
`)
