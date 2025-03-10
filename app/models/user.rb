class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts

  validates :name, presence: true, length: { minimum: 4, maximum: 50 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
