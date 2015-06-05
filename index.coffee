H = require "hyperweb"
H.blastOff()

get "/hello", ->
  "version 1"

post '/:name', (data) ->
  H.set
  .then (scores) ->
    scores.push data

    H.data.set "scores", scores

get '/scores', ->
  H.data("scores")
