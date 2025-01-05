class TopUp < ApplicationRecord
  belongs_to :contract
  belongs_to :user
  validates_presence_of :amount
end
