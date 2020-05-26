class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, length: { minimum: 5, maximum: 15 }
  validates :email, presence: true, uniqueness: true
  validates :password, confirmation: true, unless: -> { password.blank? }
end
