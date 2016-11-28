module.exports = {
  # Facts taken from http://www.factslides.com/s-Sleep
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
      "In 1849, David Atchison became president of the United States for just one day, and he spent most of the day sleeping.",
      "You burn more calories sleeping than you do watching television.",
      "Sleep deprivation affects the brain in multiple ways that can impair judgment and slow reaction.",
      "Neuroscientists believe babies don't dream for the first few years of their life.",
      "Women experience significantly more nightmares than men and have more emotional dreams, a study found.",
      "A baby's brain can use up to 50% of the total glucose supply, which may help explain why babies need so much sleep.",
      "Giraffes only need 5 to 30 minutes of sleep in a 24-hour period.",
      "Koalas sleep up to 20 hours a day.",
      "In darkness, most people eventually adjust to a 48-hour cycle: 36 hours of activity followed by 12 hours of sleep. The reasons are still unclear.",
      "The changes of eating even one spider in your sleep throughout your lifetime is close to 0%.",
      "The average person in France sleeps 8.83 hours per day, the most in the developed world.",
      "40% of adult Americans have always slept on the same side of the bed.",
      "Drinking caffeine in the evening delays our brain's release of melatonin and interrupts our circadian rhythm by as much as 40 minutes.",
      "While you sleep, your brain filters out noises that might wake you up if it doesn't think you're in danger.",
      "We lose over a pound of weight during sleep by exhaling.",
      "Dysania is the state of finding it hard to get out of bed in the morning.",
      "Depression can cause you to dream up to 3 to 4 times more than you normally would.",
      "Somniphobia is the fear of falling asleep.",
      "The average person falls asleep in seven minutes.",
      "People who procrastinate may be more likely to have insomnia, a study found.",
      "People who requently take naps tend to die younger than those who don't, a study found.",
      "It's illegal to lie down and fall asleep with your shoes on in North Dakota.",
      "Trees \"sleep\" at night, relaxing their branches after dawn and perking them up before sunrise.",
      "3 AM is when most Americans are sleeping (95.1%). Conversely, 6 PM is when most Americans are awake (97.5%).",
      "People in Britain who wake in the middle of the night are most likely to do it at 3:44 AM."
    ]

  getFact: ->
    facts = @facts
    facts[Math.floor(Math.random() * facts.length)]
}
