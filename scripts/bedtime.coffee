request = require('request')
aggression = require('./aggression')
facts = require('./facts')

module.exports = (robot) ->
  robot.listen(
    (message) ->
      cont = 0 <= new Date(Date.now()).getHours() <= 5
      aggression.clear() unless cont
      return cont
    (response) ->
      user = response.message.user
      msgName = user.name
      if msgName and msgName != robot.name
        msg = aggression.getMessage user
        getGiphy msg.giphy, (url) ->
          response.reply "#{msg.message} " + url
  )

  robot.respond /sleep\sfact/i, (res) ->
    res.reply facts.getFact()

getGiphy = (query, callback) ->
  request "http://api.giphy.com/v1/gifs/search?q=#{query}&api_key=dc6zaTOxFJmzC", (error, response, body) ->
    data = JSON.parse(body)
    randomNumber = Math.floor(Math.random() * data.data.length)
    callback data.data[randomNumber].images.downsized.url

# Prevents Heroku app from sleeping by pinging it every 20 minutes.
setInterval (->
  request.get(process.env.APP_URL)
), 1200000
