open IHPBackend
open IHPBackend.Channel

@react.component
let make = (~channelId) => {
    let (body, setBody) = React.useState(_ => "")
    let channel = useQuerySingleResult(queryChannels->whereId(channelId))

    let onSubmit = event => {
        ReactEvent.Form.preventDefault(event)
        
        let _ = Message.createMessage({ body: body, channelId: channelId })
        setBody(_ => "")
    }

    let placeholder = "Send Message to " ++ (switch channel {
                | Some(channel) => channel.name
                | None => ""
            })
    
    let onChange = event => {
        setBody(_ => ReactEvent.Form.target(event)["value"])
    }

    <form className="form-inline d-flex" onSubmit={onSubmit}>
        <input
            className="form-control flex-grow-1"
            id="newMessageBody"
            placeholder
            value={body}
            onChange={onChange}
        />
        <button className="btn btn-primary">{React.string("Send")}</button>
    </form>
}
