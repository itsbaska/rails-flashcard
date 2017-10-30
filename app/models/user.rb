class User < ApplicationRecord
  has_secure_password
  validates :name, :username, :email, presence: true
  validates :username, :email, uniqueness: true
end
