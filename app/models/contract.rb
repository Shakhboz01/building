class Contract < ApplicationRecord
  belongs_to :user
  belongs_to :apartment
  has_many :top_ups, dependent: :destroy
  validate :percent_is_within_100
  validate :none_empty_prices
  validates_presence_of :price_per_square
  validates_presence_of :fullname
  validates_presence_of :passport_number
  before_save :set_prices
  validate :can_create_contract, on: :create
  enum :status, [ :pending, :started, :paid, :rejected ], suffix: true

  def price_per_month
    (total_price - first_payment_in_cash) / number_of_months
  end

  def total_price
    apartment.apartment_number.square * price_per_square
  end

  private

  def can_create_contract
    return unless apartment.is_full?

    errors.add(:base, 'cannot create a contract')
  end

  def set_prices
    if first_payment_in_percent.nil?
      # find in percent using a cash
      self.first_payment_in_percent = first_payment_in_cash * 100 / total_price.to_f
    else
      # find in cash using a percent
      self.first_payment_in_cash = (first_payment_in_percent * total_price).to_f / 100
    end
  end

  def none_empty_prices
    errors.add(:base, 'set price') if first_payment_in_percent.nil? && first_payment_in_cash.nil?
  end

  def percent_is_within_100
    return if first_payment_in_percent.nil? || (first_payment_in_percent <= 100 && first_payment_in_percent >= 0)

    errors.add(:base, 'Invalid percentage')
  end
end
