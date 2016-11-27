request = require('request')

module.exports = (robot) ->
  robot.listen(
    (message) ->
      0 <= new Date(Date.now()).getHours() <= 5
    (response) ->
      msgName = response.message.user.name
      get_giphy((url) ->
        response.reply "Hi, #{response.message.user.real_name.split(' ')[0]}. Looks like you're up late. Maybe it's time to head to bed. :sleeping: " + url if msgName and msgName != robot.name
      )
  )

get_giphy = (callback) ->
  request 'http://api.giphy.com/v1/gifs/search?q=sleep&api_key=dc6zaTOxFJmzC', (error, response, body) ->
    data = JSON.parse(body)
    max = data.data.length
    min = 0
    randomNumber = Math.floor(Math.random() * (max - min)) + min
    callback data.data[randomNumber].images.downsized.url
