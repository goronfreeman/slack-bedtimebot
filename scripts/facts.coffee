module.exports = {
  facts:
    [
      "Humans spend a third of their life sleeping. That's about 25 years.",
      "Parents of new babies miss out on 6 months worth of sleep in the first 2 years of their child's life.",
      "The record for the longest period without sleep is 11 days.",
      "An experiment in 1998 found that a bright light shone on the backs of human knees can reset the brain's sleep-wake clock.",
      "Sleeping less than 7 hours each night reduces your life expectancy.",
      "Only one-half of a dolphin's brain goes to sleep at a time.",
      "Some deaf people make sign language in their sleep.",
      "Lack of sleep can cause weight gain of 2 pounds (0.9kg) in under a week.",
      "Before alarm clocks were invented, there were \"knocker-ups\" who went tapping on client's windows with long sticks until they were awake.",
      "A snail can sleep for 3 years.",
      "It's impossible to sneeze while sleeping.",
      "Most people can survive for up to 2 months without eating, but people can only live up to 11 days without sleeping.",
      "Sleeping on the job is acceptable in Japan, as it's viewed as exhaustion from working hard.",
      "Sea otters hold hands when they sleep so they don't drift away from each other.",
      "The ability of the brain to tell what's important from what's not is compromised by lack of sleep.",
      "People experience better sleep during the new moon and worse sleep during a full moon, a study found.",
      "Many Tibetan monks sleep upright.",
      "Half of the pilots surveyed in the UK admitted to having fallen asleep while flying a passenger plane.",
      "Cats sleep for 70% of their lives.",
      "Believing you've slept well, even if you haven't, improves performance.",
      "Memories take hold better during sleep.",
      "Horse can sleep standing.",
      "Rabbits often sleep with their eyes open.",
      "John Lennon sometimes liked to sleep in an old coffin.",
      "In 1849, David Atchison became president of the United States for just one day, and he spent most of the day sleeping."
    ]

  getFact: ->
    facts = @facts
    facts[Math.floor(Math.random() * facts.length)]
}
