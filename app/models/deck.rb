class Deck < ApplicationRecord
  has_many :rounds
  has_many :cards
  validates :title, presence: :true
end
