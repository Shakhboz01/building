class RoomSquare < ApplicationRecord
  belongs_to :apartment_number, optional: true
  belongs_to :specific_apartment_number, optional: true
  validates_uniqueness_of :name, scope: :apartment_number_id
end
