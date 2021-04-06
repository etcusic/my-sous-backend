class AddForeignIdsToIngredientsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :ingredients, :recipe_id, :integer
    add_column :ingredients, :pantry_id, :integer
    add_column :ingredients, :grocery_list_id, :integer
  end
end
