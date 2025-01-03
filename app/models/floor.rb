class Floor < ApplicationRecord
  belongs_to :block
  has_many :apartments
  validates :number, uniqueness: { scope: :block }

  def name
    "#{block.name} #{number}"
  end
end
