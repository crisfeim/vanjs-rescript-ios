open VanJS
open Events

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

let someOtherComponent = () => IOSButton.t("Label") ->onClick(_ => alert("hello"))

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
