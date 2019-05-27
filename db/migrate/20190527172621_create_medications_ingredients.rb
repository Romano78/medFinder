class CreateMedicationsIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :medications_ingredients do |t|
      t.references :ingredient, foreign_key: true
      t.references :medication, foreign_key: true

      t.timestamps
    end
  end
end
