class Round < ApplicationRecord
  has_many :guesses
  belongs_to :user
  belongs_to :deck

  def create_guesses
    self.deck.cards.each do |card|
      new_guess = Guess.new(card_id: card.id, round_id: self.id)
      new_guess.save
    end
  end

 def draw
    false_guesses = self.guesses.select { |guess| guess.correctness == false }
    false_guesses.sample.card
  end
end
