open VanJS

let helloWorld = () => p("Hello")
-> color("brown")

let someOtherComponent = () => p("This is a VanJS WebComponent")

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
