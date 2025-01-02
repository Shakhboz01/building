class ApartmentNumber < ApplicationRecord
  belongs_to :block
  validates :number, uniqueness: { scope: :block }
end
