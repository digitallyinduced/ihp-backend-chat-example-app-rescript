open IHPBackend
open IHPBackend.Channel

@react.component
let make = () => {
    let (isLoading, setLoading) = React.useState(_ => false)

    let login = _ => {
        setLoading(_ => true)
        let _ = loginWithRedirect()
        setLoading(_ => false)
    }

    <div className="text-muted text-center">
        <p>{React.string("You need to be logged in to write a message.")}</p>
        <button className="btn btn-primary ml-auto" onClick={login} disabled={isLoading}>{React.string("Login to Chat")}</button>
    </div>
}
