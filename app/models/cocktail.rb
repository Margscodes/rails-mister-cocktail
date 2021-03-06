class Cocktail < ApplicationRecord
  has_many :ingredients, through: :doses
  has many :doses, dependent: :destroy

  validates :name, uniqueness: true
end
