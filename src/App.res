@react.component
let make = () => {
    let (channelId, setChannelId) = React.useState(_ => "02f3fb78-7283-4aed-833c-e64d39657164")

    <IHPBackend>
        <div className="container-fluid">
            <div className="row">
                <div className="col-3 bg-light pt-4">
                    <Sidebar channelId={channelId} setChannelId={setChannelId}/>
                </div>

                <div className="col-9">
                    <MessagesContainer channelId/>
                </div>
            </div>
        </div>
    </IHPBackend>
}