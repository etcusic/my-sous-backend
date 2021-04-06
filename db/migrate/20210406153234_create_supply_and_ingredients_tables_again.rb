class CreateSupplyAndIngredientsTablesAgain < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.bigint :supply_id, null: false
      t.bigint :recipe_id, null: false
      t.bigint :pantry_id, null: false
      t.bigint :grocery_list_id, null: false
      t.float :quantity
      t.timestamps
    end

    create_table :store_supplies do |t|
      t.bigint :supply_id, null: false
      t.bigint :store_id, null: false
      t.string :unit
      t.float :cost_per_unit
      t.timestamps
    end
  end
end
