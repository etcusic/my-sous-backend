class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :unit
      t.float :cost_per_unit
      t.string :category

      t.timestamps
    end
  end
end