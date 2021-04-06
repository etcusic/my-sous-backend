class AdjustIngredientsTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :ingredients, :pantry_id
    remove_column :ingredients, :recipe_id
    remove_column :ingredients, :grocery_list_id
  end
end
