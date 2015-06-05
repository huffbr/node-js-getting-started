H = require "hyperweb"
H.blastOff()

get "/hello", ->
  "version 1"

post '/:name', (name, data) ->
  H.data name, data
  .then (scores) ->
    scores.push data

    H.data.set "scores", scores

get '/scores', ->
  H.data("scores")
