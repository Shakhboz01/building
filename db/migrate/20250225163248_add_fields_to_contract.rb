class AddFieldsToContract < ActiveRecord::Migration[8.0]
  def change
    add_column :contracts, :passport_date, :date
    add_column :contracts, :deadline, :date
    add_column :contracts, :address, :string
    add_column :contracts, :extra_phone_number, :string
  end
end
