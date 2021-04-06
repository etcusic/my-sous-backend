class GroceryListIngredient < ApplicationRecord
    belongs_to :user, :grocery_list
end