class DailyMenu < ApplicationRecord
  belongs_to :weekly_menu
  has_many :meals, dependent: :destroy
  has_many :recipes, through: :meals
end
