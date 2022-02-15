// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as IhpBackend from "ihp-backend";
import * as MessageActions from "./MessageActions.bs.js";
import * as React$1 from "ihp-backend/react";

function Message(Props) {
  var message = Props.message;
  var author = React$1.useQuerySingleResult(IhpBackend.query("users").filterWhere("id", message.userId));
  return React.createElement("div", {
              className: "message"
            }, React.createElement("img", {
                  src: "https://picsum.photos/64/64"
                }), React.createElement("div", {
                  className: "flex-grow-1"
                }, React.createElement("div", {
                      className: "header"
                    }, React.createElement("div", {
                          className: "d-flex align-items-center"
                        }, React.createElement("div", {
                              className: "message-author"
                            }, (author == null) ? "" : author.email), React.createElement(MessageActions.make, {
                              message: message
                            })), React.createElement("div", {
                          className: "created-at"
                        }, new Date(message.createdAt).toLocaleTimeString())), React.createElement("div", {
                      className: "message-body"
                    }, message.body)));
}

var make = Message;

export {
  make ,
  
}
/* react Not a pure module */