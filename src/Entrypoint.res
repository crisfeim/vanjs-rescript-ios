open VanJS

let helloWorld = () => p("Instant reload")

%%raw(`
    document.body.appendChild(helloWorld())
`)
