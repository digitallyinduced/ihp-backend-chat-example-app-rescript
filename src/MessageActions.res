open IHPBackend
open IHPBackend.Message

let prompt = (message, defValue) => {
    %raw("window.prompt(message, defValue)")
}

@react.component
let make = (~message) => {
    let onDeleteClick = event => {
        ReactEvent.Mouse.preventDefault(event)
        let _ = deleteMessage(message.id)
    }
    let onEditClick = event => {
        ReactEvent.Mouse.preventDefault(event)

        let _ = updateMessage(message.id, {
            ...message,
            body: prompt("Update message", message.body)
        })
    }
    <div className="actions">
        <a href="#" className="js-delete text-muted" onClick={onDeleteClick}>
            {React.string("Delete message")}
        </a>
        <a href="#" className="text-muted" onClick={onEditClick}>
            {React.string("Edit Message")}
        </a>        
    </div>
}
