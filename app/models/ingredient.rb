class Ingredient < ApplicationRecord
  has_many :medications
  include AlgoliaSearch
  after_touch :index!
end
