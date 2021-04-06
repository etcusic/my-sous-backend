class PantryIngredient < ApplicationRecord
    belongs_to :user, :pantry
end