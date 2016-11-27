module.exports = {
  users: {},

  messages: (user) ->
    name = user.real_name.split(' ')[0]

    {
      0: [
        {
          giphy: 'sleep',
          message: "Hi, #{name}. Looks like you're up late. Maybe it's time to head to bed. :sleeping:"
        },
        {
          giphy: 'sleep',
          message: "Hi, #{name}. Eyelids feeling heavy? Maybe it's time to go to sleep. :sleeping:"
        },
        {
          giphy: 'sleep',
          message: "Hi, #{name}. You're really burning the midnight oil! Maybe it's time to get some shut-eye. :sleeping:"
        }
      ],
      1: [
        {
          giphy: 'bed',
          message: "Still working, #{name}? You should try to get at least 7 hours of sleep per night. :bed:"
        },
        {
          giphy: 'bed',
          message: "Still working, #{name}? Did you know that man is the only mammal that willingly delays sleep? :bed:"
        },
        {
          giphy: 'bed',
          message: "Still working, #{name}? Sleep is just as important as diet and exercise. :bed:"
        }
      ],
      2: [
        {
          giphy: 'insomnia',
          message: "Maybe you didn't hear me before, #{name}. :anguished: It's really getting late. Time to call it a night."
        },
        {
          giphy: 'insomnia',
          message: "Must not have heard me before, #{name}. :anguished: Power down that computer, and hit the hay."
        },
        {
          giphy: 'insomnia',
          message: "Maybe my last two messages got lost in the mail. :anguished: Hit the sack, and get re-energized for tomorrow, #{name}!"
        }
      ],
      3: [
        {
          giphy: 'annoyed',
          message: "I'm starting to think you're purposely ignoring me now, #{name}. :angry: You're testing my patience. Time to sign off."
        },
        {
          giphy: 'annoyed',
          message: "Am I talking to myself, #{name}? :angry: I'm serious this time. Go to bed."
        },
        {
          giphy: 'annoyed',
          message: "Now you're just being rude, #{name}. :angry: Power your computer down, and get in bed."
        }
      ],
      4: [
        {
          giphy: 'mad',
          message: "That's it, #{name}. :fire: :angry: :fire: I'm going to have to come over there myself and turn your computer off for you!"
        },
        {
          giphy: 'mad',
          message: "I've been nothing but patient with you, and this is how you treat me, #{name}? :fire: :angry: :fire: Fine. Don't sleep then. I'm sure you won't regret that decision."
        },
        {
          giphy: 'mad',
          message: "Fine. I tried my best. :fire: :angry: :fire: You're digging your own grave, #{name}. :ghost:"
        }
      ]
    }

  getMessage: (user) ->
    messages = @messages(user)
    maxLevel = Object.keys(messages).length - 1
    level = @_getAggressionLevel user.id
    level = maxLevel if level > maxLevel
    possible = messages[level]
    possible[Math.floor(Math.random() * possible.length)]

  clear: ->
    @users = {}

  _getAggressionLevel: (id) ->
    unless @users[id]
      @users[id] = {
        level: 0
      }

    @users[id].level++
}
