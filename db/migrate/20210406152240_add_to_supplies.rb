class AddToSupplies < ActiveRecord::Migration[6.1]
  def change
    add_column :supplies, :unit, :string
    add_column :supplies, :latest_cost_per_unit, :float
    add_column :supplies, :running_quantity, :float
    add_column :supplies, :running_cost, :float
  end
end
