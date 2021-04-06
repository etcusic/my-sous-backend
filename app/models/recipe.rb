class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients, dependent: :destroy
  alias_attribute :ingredients, :recipe_ingredients 
  has_many :supplies, through: :recipe_ingredients

  def initialization_info
    ingredients = {ingredients: self.ingredients.map{ |ing| ing.initialization_info } }
    info = self.attributes.merge!(ingredients)
  end

end
