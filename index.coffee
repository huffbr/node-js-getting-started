H = require "hyperweb"
H.blastOff()

post '/scores', (data) ->
  H.data.get "scores"
  .then (scores) ->
    score.push data
    
    H.data.set "scores"

get '/notify', ->
  H.email "thepresident@fogcreek.com",
    text: "I'm visiting the URL"
    subject: "Hello from HyperWeb"

post '/:name', (name, data) ->
  H.data.set name, data
  .then ->
    "#{name} was set to #{JSON.stringify(data)}"

get '/:name', (name) ->
  H.data(name)
