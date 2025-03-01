class RoomSquare < ApplicationRecord
  belongs_to :apartment_number
  validates_uniqueness_of :name, scope: :apartment_number_id
end
