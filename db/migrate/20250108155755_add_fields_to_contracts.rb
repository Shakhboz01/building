class AddFieldsToContracts < ActiveRecord::Migration[8.0]
  def change
    add_column :contracts, :phone_number, :string
    add_column :contracts, :contract_number, :integer
  end
end
