class Guess < ApplicationRecord
  belongs_to :card
  belongs_to :round

  def check_answer(answer)
    self.card.answer.downcase == answer.downcase
  end
end
