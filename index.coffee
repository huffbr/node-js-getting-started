H = require "hyperweb"
H.blastOff()

get "/hello", ->
  "version 1"

post '/:name', (ndata) ->
  H.data name
  .then (scores) ->
    scores.push data

    H.data.set "scores", scores

get '/scores', ->
  H.data("scores")
