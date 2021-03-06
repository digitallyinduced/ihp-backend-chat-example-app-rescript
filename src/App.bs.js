// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Sidebar from "./Sidebar.bs.js";
import * as MessagesContainer from "./MessagesContainer.bs.js";
import * as React$1 from "ihp-backend/react";

function App(Props) {
  var match = React.useState(function () {
        return "02f3fb78-7283-4aed-833c-e64d39657164";
      });
  var channelId = match[0];
  return React.createElement(React$1.IHPBackend, {
              children: React.createElement("div", {
                    className: "container-fluid"
                  }, React.createElement("div", {
                        className: "row"
                      }, React.createElement("div", {
                            className: "col-3 bg-light pt-4"
                          }, React.createElement(Sidebar.make, {
                                channelId: channelId,
                                setChannelId: match[1]
                              })), React.createElement("div", {
                            className: "col-9"
                          }, React.createElement(MessagesContainer.make, {
                                channelId: channelId
                              }))))
            });
}

var make = App;

export {
  make ,
  
}
/* react Not a pure module */
