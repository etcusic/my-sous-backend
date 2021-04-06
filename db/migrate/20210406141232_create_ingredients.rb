class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :meta_supply, null: false, foreign_key: true
      t.string :name
      t.string :category
      t.string :unit
      t.float :latest_cost_per_unit
      t.float :running_quantity
      t.float :running_cost

      t.timestamps
    end
  end
end
