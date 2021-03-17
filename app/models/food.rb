class Food < ApplicationRecord
  has_many :relationships, dependent: :destroy
  validates :name, uniqueness: true, presence: true, length: { maximum: 40 }
  validates :comment, presence: true, length: { maximum: 200 }
end
