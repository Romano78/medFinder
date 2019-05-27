class AddDescriptionToMedications < ActiveRecord::Migration[5.2]
  def change
    add_column :medications, :description, :string
  end
end
