class Food < ApplicationRecord
  has_many :relationships, dependent: :destroy
  has_many :vitamins, through: :relationships, source: :vitamin
  validates :name, uniqueness: true, presence: true, length: { maximum: 40 }
  validates :comment, presence: true, length: { maximum: 200 }
end
