class Apartment < ApplicationRecord
  belongs_to :floor
  belongs_to :block
  belongs_to :apartment_number
  validates :block, uniqueness: { scope: :floor }
end
