class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum gender: {
    "masculino": 1,
    "feminino": 2
  }

  validates :name, :age, :gender, presence: true
end
