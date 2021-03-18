class Vitamin < ApplicationRecord
  has_many :relationships, dependent: :destroy
  has_many :included_foods, through: :relationships, source: :food
  validates :name, uniqueness: true, presence: true, length: { maximum: 40 }
  validates :effect, presence: true, length: { maximum: 300 }
end
