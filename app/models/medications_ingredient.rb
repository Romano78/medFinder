class MedicationsIngredient < ApplicationRecord
  belongs_to :ingredient
  belongs_to :medication
end
