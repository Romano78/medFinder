class AddLocalNameToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :local_name, :string, null: false, default: ""
  end
end
