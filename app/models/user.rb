class User < ApplicationRecord
    has_one :pantry
    has_many :ingredients, :recipes, :grocery_lists, :weekly_menus
end
