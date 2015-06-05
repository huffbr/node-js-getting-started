H = require "hyperweb"
H.blastOff()

get "/hello", ->
  "version 1"

post '/:name', (name, data) ->
  H.data name, data
  
get '/scores', ->
  H.data("scores")
