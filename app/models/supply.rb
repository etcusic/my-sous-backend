class Supply < ApplicationRecord
    belongs_to :user  # => will eventually want to pull from a MetaSupply
    has_many :store_supplies
    # has_one :ingredient ???

    def self.initialization_info (user)
        hash = {}
        supplies = user.supplies.each{ |supply| hash[supply.id] = supply }
        init_info = {
            all: user.supplies,
            dictionary: hash
        }
    end

end
