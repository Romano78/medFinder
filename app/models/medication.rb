class Medication < ApplicationRecord
  has_many :medications_ingredients
  has_many :ingredients, through: :medications_ingredients
  include AlgoliaSearch

  after_save { ingredients.each(&:touch) }

  algoliasearch do
    attribute :local_name, :english_name
    attribute :public_ingredients do
      ingredients.map do |ingredient|
        { name: ingredient.name }
      end
    end
  end
end
