class Store < ApplicationRecord
  belongs_to :user
  has_many :store_supplies, dependent: :destroy
end
