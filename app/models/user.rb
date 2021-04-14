class User < ApplicationRecord
    has_one :pantry, dependent: :destroy
    has_many :supplies, dependent: :destroy
    has_many :stores, dependent: :destroy
    has_many :recipes, dependent: :destroy
    has_many :grocery_lists, dependent: :destroy
    has_many :weekly_menus, dependent: :destroy

  # too much processing going on here - move assembly into user. call dictionary just once and assemble pantry, recipes, etc from that one dictionary pull
  def initialization_info
    supply_dictionary = self.supply_dictionary
    info = {
      user: {id: self.id, name: self.name},
      supplies: self.supplies,
      pantry: self.pantry.initialization_info(supply_dictionary),
      recipes: self.recipes.map{|recipe| recipe.initialization_info(supply_dictionary)},
      stores: self.stores.map{ |store| store.initialization_info }
      # add current_week_menu, last_week_menu, next_week_menu
    }
  end

  def supply_dictionary 
      supplies = {}
      self.user.supplies.each do |supply| 
          supplies[supply.id] = {
          name: supply.name,
          category: supply.category,
          sub_category: supply.sub_category,
          unit: supply.unit
          }
      end 
      supplies
  end

end
