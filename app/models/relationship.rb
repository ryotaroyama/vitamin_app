class Relationship < ApplicationRecord
  belongs_to :vitamin
  belongs_to :food

  validates :food_id, uniqueness: {
              scope: :vitamin_id,
              message: "は同じビタミンにタグづけできません",
            }
end
