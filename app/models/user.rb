class User < ApplicationRecord
  has_secure_password
  has_many :rounds
  has_many :guesses, through: :rounds

  validates :name, :username, :email, presence: true
  validates :username, :email, uniqueness: true
end
