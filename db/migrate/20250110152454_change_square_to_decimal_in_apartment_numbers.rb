class ChangeSquareToDecimalInApartmentNumbers < ActiveRecord::Migration[8.0]
  def change
    change_column :apartment_numbers, :square, :decimal, precision: 8, scale: 2
  end
end
