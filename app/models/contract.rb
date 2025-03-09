class Contract < ApplicationRecord
  belongs_to :user
  belongs_to :apartment
  has_many :top_ups, dependent: :destroy
  has_one :block, through: :apartment
  has_one :apartment_number, through: :apartment
  validate :percent_is_within_100
  validate :none_empty_prices
  validates_presence_of :price_per_square
  validates_presence_of :start_date
  validates_presence_of :fullname
  validates_presence_of :passport_number
  validates_presence_of :phone_number
  validates_presence_of :passport_date
  before_save :set_prices
  validate :can_create_contract, on: :create
  validates :payment_day, numericality: {
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 31
  }, allow_nil: true
  enum :status, [ :pending, :started, :paid, :rejected ], suffix: true

  def price_per_month
    (total_price - first_payment_in_cash) / number_of_months
  end

  def last_top_up
    top_ups.order(:created_at).last
  end

  def total_price
    apartment.apartment_number.square * price_per_square
  end

  def deadline
    generate_payment_schedule.last.dig(:payment_date)
  end

  def generate_payment_schedule
    return [] if start_date.nil?

    schedule = []
    remaining = total_price - first_payment_in_cash
    date = start_date
    top_ups_excluding_first_payment = top_ups.sum(:amount) - first_payment_in_cash
    number_of_months_client_paid = (top_ups_excluding_first_payment / (price_per_month.zero? ? 1 : price_per_month).to_f).floor
    number_of_months.times do
      remaining -= price_per_month
      number_of_months_client_paid -= 1
      schedule << {
        payment_date: date,
        remaining: remaining.positive? ? remaining.to_i : 0,
        paid: !number_of_months_client_paid.negative?
      }

      # Move to the next month while ensuring the end of month is handled correctly
      date = (date + 1.month).end_of_month if date.day == date.end_of_month.day
      date = date + 1.month unless date.day == date.end_of_month.day
    end

    schedule
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
