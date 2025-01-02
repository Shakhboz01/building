class CreateApartmentNumbers < ActiveRecord::Migration[8.0]
  def change
    create_table :apartment_numbers do |t|
      t.references :block, null: false, foreign_key: true
      t.integer :number
      t.integer :number_of_rooms
      t.integer :square

      t.timestamps
    end
  end
end
