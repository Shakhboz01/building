class CreatePriceCalculators < ActiveRecord::Migration[8.0]
  def change
    create_table :price_calculators do |t|
      t.references :apartment_number, null: false, foreign_key: true
      t.decimal :price_per_square, precision: 15, scale: 2
      t.decimal :first_payment_in_cash, precision: 15, scale: 2
      t.decimal :first_payment_in_percent, precision: 5, scale: 2
      t.decimal :number_of_months, default: 36

      t.timestamps
    end
  end
end
