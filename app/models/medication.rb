class Medication < ApplicationRecord
  has_many :medications_ingredients
  has_many :ingredients, through: :medications_ingredients

  def country_name
    c = ISO3166::Country[country]
    c.translations[I18n.locale.to_s] || c.name
  end
end
