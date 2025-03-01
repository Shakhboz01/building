class AddRefToPriceCalculators < ActiveRecord::Migration[8.0]
  def change
    add_reference :price_calculators, :specific_epartment_number, null: true, foreign_key: true
    change_column_null :price_calculators, :apartment_number_id, true
  end
end
