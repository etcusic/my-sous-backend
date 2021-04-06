class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients, dependent: :destroy
  # alias_attribute :ingredients, :recipe_ingredients #=> would this be helpful ???
  has_many :supplies, through: :recipe_ingredients
end
