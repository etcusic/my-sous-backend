class CreateSubIngredientTablesAgain < ActiveRecord::Migration[6.1]
  def change
    create_table :pantry_ingredients do |t|
      t.float :quantity
      t.bigint :ingredient_id, null: false
      t.bigint :pantry_id, null: false
      t.timestamps
    end

    create_table :recipe_ingredients do |t|
      t.float :quantity
      t.bigint :ingredient_id, null: false
      t.bigint :recipe_id, null: false
      t.timestamps
    end

    create_table :grocery_list_ingredients do |t|
      t.float :quantity
      t.bigint :ingredient_id, null: false
      t.bigint :grocery_list_id, null: false
      t.timestamps
    end
  end
end
