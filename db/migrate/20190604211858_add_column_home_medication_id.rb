class AddColumnHomeMedicationId < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :home_medication_id, :integer
  end
end
