open IHPBackend

@react.component
let make = (~channel: channel, ~isActive, ~setChannelId) => {
    let classNames = "nav-link" ++ (isActive ? " active" : "")
    let onClick = _ => {
            setChannelId(_ => channel.id)
        }
    <li className="nav-item">
        <a className={classNames} href="#" onClick>{React.string(channel.name)}</a>
    </li>
}
