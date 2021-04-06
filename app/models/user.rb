class User < ApplicationRecord
    has_one :pantry
    has_many :supplies
    has_many :stores
    has_many :recipes
    has_many :grocery_lists
    has_many :weekly_menus
end
