open Belt.Array

@react.component
let make = (~channelId) => {
    let messages = {
            open IHPBackend.Message
            IHPBackend.useQuery(
                queryMessages
                ->whereChannelId(channelId)
                ->orderByCreatedAt
            )
        }
    let isLoggedIn = IHPBackend.useIsLoggedIn()

    <div>
        <div className="messages">
            {switch messages {
            | Some(messages) => map(messages, message => <Message key={message.id} message/>)->React.array
            | None => <div/>
            }}
        </div>

        {switch isLoggedIn {
        | Some(true) => <NewMessageForm channelId/>
        | Some(false) => <NewMessageFormIfLoggedOut/>
        | None => <div/>
        }}
    </div>
}
