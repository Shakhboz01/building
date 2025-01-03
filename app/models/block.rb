class Block < ApplicationRecord
  validates_uniqueness_of :name
  has_many :floors
  has_many :apartments
  has_many :apartment_numbers

  def number_of_rooms
    apartments.count
  end

  def total_square
    square = 0
    apartment_numbers.each do |apartment_number|
      square += apartment_number.square * floors.count
    end

    square
  end
end
