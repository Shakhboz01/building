class ApartmentNumber < ApplicationRecord
  belongs_to :block
  validates :number, uniqueness: { scope: :block }

  def name
    "#{block.name} #{number}"
  end
end
