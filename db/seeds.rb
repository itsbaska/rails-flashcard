# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Card.destroy_all
Deck.destroy_all
Round.destroy_all
Guess.destroy_all


bar_trivia = [
  { question: "The beaver is the national emblem of which country?",
    answer: "Canada"},
  { question: "Which singer's real name is Stefani Joanne Angelina Germanotta?",
    answer: "Lady Gaga"}
]

bar_trivia_2 = [
  { question: "How many players are there in a baseball team?",
    answer: "9"},
  { question: "What is the name of Batman's butler?",
    answer: "Alfred"}
]

halloween_trivia = [
  { question: "Halloween is the day before which holiday?",
    answer: "All Saints Day"},
  { question: "Which region in the world do pumpkins originate from?",
    answer: "Central America"}
  ]
halloween_trivia_2 = [
  { question: "Transylvania is a region in which country?",
    answer: "Romania"},
   { question: "In the The Texas Chainsaw Massacre, how many people are killed with a chainsaw?",
    answer: "1"},
]


bar_trivia_deck = Deck.create(title: "Bar Trivia")
bar_trivia_2_deck = Deck.create(title: "Bar Trivia 2")
halloween_trivia_deck = Deck.create(title: "Halloween Trivia")
halloween_trivia_2_deck = Deck.create(title: "Halloween Trivia 2")

cards1 = Card.create(bar_trivia)
cards2 = Card.create(bar_trivia_2)
cards3 = Card.create(halloween_trivia)
cards4 = Card.create(halloween_trivia_2)

bar_trivia_deck.cards << cards1
bar_trivia_2_deck.cards << cards2
halloween_trivia_deck.cards << cards3
halloween_trivia_2_deck.cards << cards4
