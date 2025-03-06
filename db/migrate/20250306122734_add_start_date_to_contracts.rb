class AddStartDateToContracts < ActiveRecord::Migration[8.0]
  def change
    add_column :contracts, :start_date, :date
  end
end
