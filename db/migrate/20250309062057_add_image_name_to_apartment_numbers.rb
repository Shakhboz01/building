class AddImageNameToApartmentNumbers < ActiveRecord::Migration[8.0]
  def change
    add_column :apartment_numbers, :asset_image_name, :string
    add_column :specific_epartment_numbers, :asset_image_name, :string
  end
end
