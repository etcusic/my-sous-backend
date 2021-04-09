class User < ApplicationRecord
    has_one :pantry, dependent: :destroy
    has_many :supplies, dependent: :destroy
    has_many :stores, dependent: :destroy
    has_many :recipes, dependent: :destroy
    has_many :grocery_lists, dependent: :destroy
    has_many :weekly_menus, dependent: :destroy

  def initialization_info
    info = {
      user: {id: self.id, name: self.name},
      supplies_array: self.supplies,
      pantry: self.pantry.initialization_info,
      recipes: self.recipes.map{|recipe| recipe.initialization_info},
      stores: self.stores.map{ |store| store.initialization_info }
      # add current_week_menu, last_week_menu, next_week_menu
    }
  end

end
