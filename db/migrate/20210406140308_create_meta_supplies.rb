class CreateMetaSupplies < ActiveRecord::Migration[6.1]
  def change
    create_table :meta_supplies do |t|
      t.string :name
      t.string :category
      t.string :sub_category

      t.timestamps
    end
  end
end
