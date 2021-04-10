class DeleteUnitColumnFromStoreSupplies < ActiveRecord::Migration[6.1]
  def change
    remove_column :store_supplies, :unit
  end
end
