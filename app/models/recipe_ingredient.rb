class RecipeIngredient < ApplicationRecord
    belongs_to :user, :recipe
end