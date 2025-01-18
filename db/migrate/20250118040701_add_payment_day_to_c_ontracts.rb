class AddPaymentDayToCOntracts < ActiveRecord::Migration[8.0]
  def change
    add_column :contracts, :payment_day, :integer
  end
end
