class SpecificEpartmentNumber < ApplicationRecord
  has_many :room_squares
  belongs_to :block
  validates :number, uniqueness: { scope: :block }

  def name
    "#{block.name} #{number}"
  end
end
