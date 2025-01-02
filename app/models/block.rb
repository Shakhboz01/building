class Block < ApplicationRecord
  validates_uniqueness_of :name
end
