class User < ApplicationRecord
    has_one :pantry, dependent: :destroy
    has_many :supplies, dependent: :destroy
    has_many :stores, dependent: :destroy
    has_many :recipes, dependent: :destroy
    has_many :grocery_lists, dependent: :destroy
    has_many :weekly_menus, dependent: :destroy

  def initialization_info
    info = {
      id: self.id,
      name: self.name,
      supplies: Supply.initialization_info(self),
      pantry: self.pantry.initialization_info
    }
  end

end
