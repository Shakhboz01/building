class Apartment < ApplicationRecord
  belongs_to :floor
  belongs_to :block
  belongs_to :apartment_number
  belongs_to :specific_epartment_number, optional: true
  has_many :contracts

  def is_full?
    return false unless contracts.exists?

    !contracts.pluck(:status).all?('rejected')
  end

  def apartment_number_id
    return super unless specific_epartment_number

    specific_epartment_number_id
  end

  def apartment_number
    return super unless specific_epartment_number

    specific_epartment_number
  end

  def contract
    contracts.order(id: :desc).first
  end
end
