class StoreSupply < ApplicationRecord
  belongs_to :store
  belongs_to :supply

  def initialization_info
    self.supply.assemble(self.attributes)
  end

end
