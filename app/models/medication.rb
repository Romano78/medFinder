class Medication < ApplicationRecord
  has_many :medications_ingredients
  has_many :ingredients, through: :medications_ingredients
  include PgSearch
  mount_uploader :photo, PhotoUploader

  pg_search_scope :search_by_title_and_syllabus,
  against: [:local_name, :local_category],
  using: {
    tsearch: { prefix: true }
  }

  # include AlgoliaSearch
  # after_save { ingredients.each(&:touch) }
  # algoliasearch do
  #   attribute :local_name, :english_name
  #   attribute :public_ingredients do
  #     ingredients.map do |ingredient|
  #       { name: ingredient.name }
  #     end
  #   end
  # end

  def country_name
    c = ISO3166::Country[country]
    c.translations[I18n.locale.to_s] || c.name
  end
end
