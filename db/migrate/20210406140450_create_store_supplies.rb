class CreateStoreSupplies < ActiveRecord::Migration[6.1]
  def change
    create_table :store_supplies do |t|
      t.belongs_to :store, null: false, foreign_key: true
      t.belongs_to :meta_supply, null: false, foreign_key: true
      t.string :unit
      t.float :cost_per_unit

      t.timestamps
    end
  end
end
