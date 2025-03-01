class CreateSpecificEpartmentNumbers < ActiveRecord::Migration[8.0]
  def change
    create_table :specific_epartment_numbers do |t|
      t.references :block, null: false, foreign_key: true
      t.integer :number
      t.integer :number_of_rooms
      t.decimal :square, precision: 10, scale: 2

      t.timestamps
    end
  end
end
