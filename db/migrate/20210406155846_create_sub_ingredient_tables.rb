class CreateSubIngredientTables < ActiveRecord::Migration[6.1]
  def change
    create_table :pantry_ingredients do |t|
    end
    create_table :recipe_ingredients do |t|
    end
    create_table :grocery_list_ingredients do |t|
    end
  end
end
