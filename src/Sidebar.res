open IHPBackend
open IHPBackend.Channel

@react.component
let make = (~channelId, ~setChannelId) => {
    let channels = useQuery(queryChannels->orderByName)

    let newChannelClick = _ => {
        let name = %raw("prompt('Name:') || ''");

        switch name {
        | "" => ()
        | name => let _ = createChannel({ name: name })
        }
    }

    <div>
        <h1 className="mb-3 border-bottom">{React.string("Chat")}</h1>

        <ul className="nav nav-pills flex-column">
            {switch channels {
                | Some(channels) => Belt.Array.map(channels, channel => {
                    <SidebarChannel key={channel.id} channel setChannelId isActive={channel.id == channelId}/>
                    })->React.array
                | None => React.string("loading")
            }}

            <li className={"nav-item"}>
                <a className="nav-link" onClick={newChannelClick} href="#">{React.string("+ New Channel")}</a>
            </li>
        </ul>

        <hr />

        <Logout/>
    </div>
}
