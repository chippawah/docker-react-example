app = require "#{__dirname}/app"

port = 80
server = app.listen port, (err)->
  if err
    console.log 'Error starting API server', err
  else
    console.log 'React Express server started on port', port

module.exports = server
