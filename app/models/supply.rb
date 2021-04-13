class Supply < ApplicationRecord
    belongs_to :user  # => will eventually want to pull from a MetaSupply
    has_many :store_supplies
    # has_one :ingredient ???

    def self.initialization_info (user)
        hash = {}
        user.supplies.each{ |supply| hash[supply.id] = supply.attributes }
        info = {
            array: user.supplies,
            dictionary: hash
        }
    end

end
