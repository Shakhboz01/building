class Block < ApplicationRecord
  validates_uniqueness_of :name
  has_many :floors
  has_many :apartments
  has_many :apartment_numbers
end
