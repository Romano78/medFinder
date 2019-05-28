class Medication < ApplicationRecord
  has_many :medications_ingredients
  has_many :ingredients, through: :medications_ingredients
end
