H = require "hyperweb"
H.blastOff()

get "/hello", ->
  "version 1"

post '/:name', (name, data) ->
  H.data name, data
  
get '/:name', (name) ->
  H.data("scores")
