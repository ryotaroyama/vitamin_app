class Vitamin < ApplicationRecord
  has_many :relationships, dependent: :destroy
  validates :name, uniqueness: true, presence: true, length: { maximum: 40 }
  validates :effect, presence: true, length: { maximum: 300 }
end
