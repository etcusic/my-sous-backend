class StoreSupply < ApplicationRecord
  belongs_to :store
  belongs_to :supply

  def initialization_info
    info = {
      supply_id: self.supply_id,
      unit: self.unit,
      cost_per_unit: self.cost_per_unit
    }
  end

end
