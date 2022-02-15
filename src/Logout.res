open IHPBackend

@react.component
let make = () => {
    let user = useCurrentUser()

    let onClick = _ => { let _ = logout() }

    switch user {
    | Some(user) => <a href="#" className="text-muted" id="logout" onClick>
            {React.string("Logout " ++ user.email)}
        </a>
    | None => <span/>
    }
}
