class DropIngredientTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :pantry_ingredients
    drop_table :recipe_ingredients
    drop_table :grocery_list_ingredients
    drop_table :store_supplies
    drop_table :ingredients
  end
end
