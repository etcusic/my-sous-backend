class Pantry < ApplicationRecord
  belongs_to :user
  has_many :pantry_ingredients, dependent: :destroy
  alias_attribute :ingredients, :pantry_ingredients
  has_many :supplies, through: :pantry_ingredients

  def initialization_info
    self.ingredients.map{ |ing| ing.initialization_info }
  end

  def supply_dictionary 
    supplies = {}
    self.user.supplies.each do |supply| 
      supplies[supply.id] = {
        name: supply.name,
        category: supply.category,
        sub_category: supply.sub_category,
        unit: supply.unit
      }
    end 
    supplies
  end

  def initialization_info
    supplies = self.supply_dictionary
    ingredients = self.ingredients.map{|ing| ing.attributes.merge!(supplies[ing.supply_id])}
    binding.pry
  end

end
