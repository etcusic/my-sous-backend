class Store < ApplicationRecord
  belongs_to :user
  has_many :store_supplies, dependent: :destroy

  def initialization_info
    store_info = self.attributes
    store_info[:supplies] = []
    self.store_supplies.each{|sup| store_info[:supplies] << sup.initialization_info } 
    store_info
  end

end
