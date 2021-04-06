class WeeklyMenu < ApplicationRecord
  belongs_to :user
  has_many :daily_menus, dependent: :destroy
  has_many :meals, through: :daily_menus
end
