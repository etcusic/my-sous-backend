class StoreSupply < ApplicationRecord
  belongs_to :store
  belongs_to :meta_supply
end
