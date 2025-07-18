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

let someOtherComponent = () =>
    IOSList.t(~title="List", ~items=["Item 1", "Item 2", "Item 3"], ~cell = (item) => p(item))
    -> width("300px")
    -> aspectRatio("9 / 16")
    -> marginInline("auto")


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
