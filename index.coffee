H = require "hyperweb"
H.blastOff()

get "/hello", ->
  "version 1"

post '/:name', (name, data) ->
  H.data name, data
  
get '/:n', ->
  H.data("scores")
