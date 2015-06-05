H = require "hyperweb"
H.blastOff()

get "/hello", ->
  "version 2"

post '/:name', (name, data) ->
  H.data name, data
  .then ->
    "you "
  
get '/:name', (name) ->
  H.data(name)
