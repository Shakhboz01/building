class PriceCalculator < ApplicationRecord
  belongs_to :apartment_number, optional: true
  belongs_to :specific_epartment_number, optional: true
  before_save :set_prices
  validate :percent_is_within_100
  validate :none_empty_prices
  validates_presence_of :price_per_square

  def price_per_month
    (total_price - first_payment_in_cash) / number_of_months
  end

  def apartment_number_id
    return super unless specific_epartment_number

    specific_epartment_number_id
  end

  def apartment_number
    return super unless specific_epartment_number

    specific_epartment_number
  end

  def square
    apartment_number&.square || specific_epartment_number.square
  end

  def total_price
    square * price_per_square
  end

  private

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
