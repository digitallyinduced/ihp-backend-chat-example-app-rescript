// Entry point of the application
IHPBackend.init({ host: %raw("process.env.BACKEND_URL") })

switch(ReactDOM.querySelector("#app")){
| Some(root) => ReactDOM.render(<App />, root)
| None => () // do nothing
}