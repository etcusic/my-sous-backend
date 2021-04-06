class Ingredient < ApplicationRecord
  belongs_to :supply

  def initialization_info
    ingredient = {
      supply_id: self.supply_id, 
      ingredient_id: self.id, 
      quantity: self.quantity
    }
  end
  
end
