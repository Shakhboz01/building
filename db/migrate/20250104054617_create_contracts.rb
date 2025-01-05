class CreateContracts < ActiveRecord::Migration[8.0]
  def change
    create_table :contracts do |t|
      t.decimal :first_payment_in_cash, precision: 16, scale: 2
      t.decimal :first_payment_in_percent, precision: 16, scale: 2
      t.integer :number_of_months
      t.string :fullname
      t.string :pinfl
      t.string :passport_number
      t.references :user, null: false, foreign_key: true
      t.integer :status, default: 0
      t.decimal :price_per_square, precision: 16, scale: 2
      t.references :apartment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
