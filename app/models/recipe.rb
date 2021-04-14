class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients, dependent: :destroy
  alias_attribute :ingredients, :recipe_ingredients 
  has_many :supplies, through: :recipe_ingredients
  
  include IngredientProcessor

  # too much processing going on here - move assembly into user. call dictionary just once and assemble pantry, recipes, etc from that one dictionary pull
  def initialization_info(supply_dictionary)
    object = self.attributes
    object["ingredients"] = self.assembled_ingredients(supply_dictionary)
    object
  end

end
