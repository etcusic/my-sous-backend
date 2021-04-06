class Pantry < ApplicationRecord
  belongs_to :user
  has_many :pantry_ingredients, dependent: :destroy
  alias_attribute :ingredients, :pantry_ingredients
  has_many :supplies, through: :pantry_ingredients

  def initialization_info
    self.ingredients.map{ |ing| ing.initialization_info }
  end

end
