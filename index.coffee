H = require "hyperweb"
H.blastOff()

post '/scores', (data) ->
  H.data.get "scores"
  .then (scores) ->
    scores.push data
    
    H.data.set "scores", scores

get '/scores', (name) ->
  H.data(name)
