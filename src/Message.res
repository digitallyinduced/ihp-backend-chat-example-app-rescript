open IHPBackend
open Js.Date
open IHPBackend.User

@react.component
let make = (~message) => {
    let author = useQuerySingleResult(queryUsers->whereId(message.userId))

    <div className="message">
        <img src="https://picsum.photos/64/64"/>
        <div className="flex-grow-1">
            <div className="header">
                <div className="d-flex align-items-center">
                    <div className="message-author">
                        {switch author {
                        | Some(user) => user.email
                        | None => ""
                        }->React.string}
                    </div>
                    <MessageActions message={message} />
                </div>
                <div className="created-at">
                    {fromString(message.createdAt)
                        ->toLocaleTimeString
                        ->React.string
                    }
                </div>
            </div>
            <div className="message-body">
                {message.body->React.string}
            </div>
        </div>
    </div>
}
