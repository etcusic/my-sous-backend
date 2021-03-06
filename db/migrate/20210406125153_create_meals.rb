class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.belongs_to :daily_menu, null: false, foreign_key: true
      t.belongs_to :recipe, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
