class GroceryList < ApplicationRecord
  belongs_to :user
  has_many :grocery_list_ingredients
end
