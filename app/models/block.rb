class Block < ApplicationRecord
  validates_uniqueness_of :name
  has_many :floors
  has_many :apartments
  has_many :apartment_numbers
  has_many :specific_epartment_numbers
  has_many :contracts, through: :apartments

  def number_of_rooms
    apartments.count
  end

  def number_of_unavailable_rooms
    contracts.where.not(status: :rejected).count
  end

  def total_square
    square = 0
    apartment_numbers.each do |apartment_number|
      square += apartment_number.square * floors.count
    end

    square
  end
end
