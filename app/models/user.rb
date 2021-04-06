class User < ApplicationRecord
    has_one :pantry
    has_many :supplies, :stores, :recipes, :grocery_lists, :weekly_menus
end
