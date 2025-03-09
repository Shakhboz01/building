class RoomSquare < ApplicationRecord
  belongs_to :apartment_number, optional: true
  belongs_to :specific_epartment_number, optional: true
end
