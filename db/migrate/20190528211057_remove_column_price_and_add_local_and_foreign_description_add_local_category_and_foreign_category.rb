class RemoveColumnPriceAndAddLocalAndForeignDescriptionAddLocalCategoryAndForeignCategory < ActiveRecord::Migration[5.2]
  def change
    remove_column :medications, :price, :integer
    remove_column :medications, :description, :string
    remove_column :medications, :category, :string
    add_column :medications, :local_category, :string
    add_column :medications, :foreign_category, :string
    add_column :medications, :local_description, :string
    add_column :medications, :foreign_description, :string
  end
end
