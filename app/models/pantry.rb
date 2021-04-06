class Pantry < ApplicationRecord
  belongs_to :user
  has_many :pantry_ingredients, dependent: :destroy
  # alias_attribute :ingredients, :pantry_ingredients #=> would this be helpful ???
  has_many :supplies, through: :pantry_ingredients
end
