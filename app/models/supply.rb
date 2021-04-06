class Supply < ApplicationRecord
    belongs_to :user  # => will eventually want to pull from a MetaSupply
    has_many :store_supplies
    # has_one :ingredient ???
end
