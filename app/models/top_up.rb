class TopUp < ApplicationRecord
  belongs_to :contract
  belongs_to :user
  validates_presence_of :amount
  enum :top_up_type, [ :cash, :card, :bank, :mix ], suffix: true
end
