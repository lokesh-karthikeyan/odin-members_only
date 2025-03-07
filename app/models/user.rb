class User < ApplicationRecord
  has_many :posts

  validates :name, presence: true, length: { minimum: 4, maximum: 50 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
