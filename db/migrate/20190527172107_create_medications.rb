class CreateMedications < ActiveRecord::Migration[5.2]
  def change
    create_table :medications do |t|
      t.string :local_name
      t.string :english_name
      t.integer :price
      t.string :country
      t.string :photo_url
      t.string :category

      t.timestamps
    end
  end
end
