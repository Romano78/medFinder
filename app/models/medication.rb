class Medication < ApplicationRecord
  has_many :ingredients

  def country_name
    c = ISO3166::Country[country]
    c.translations[I18n.locale.to_s] || c.name
  end
end
