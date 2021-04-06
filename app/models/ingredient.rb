class Ingredient < ApplicationRecord
  belongs_to :user
  belongs_to :meta_supply
end
