class GroceryList < ApplicationRecord
  belongs_to :user
  has_many :grocery_list_ingredients, dependent: :destroy
  # alias_attribute :ingredients, :grocery_list_ingredients #=> would this be helpful ???
  has_many :supplies, through: :grocery_list_ingredients
end
