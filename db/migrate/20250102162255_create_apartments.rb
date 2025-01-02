class CreateApartments < ActiveRecord::Migration[8.0]
  def change
    create_table :apartments do |t|
      t.references :floor, null: false, foreign_key: true
      t.references :block, null: false, foreign_key: true
      t.string :comment
      t.references :apartment_number, null: false, foreign_key: true

      t.timestamps
    end
  end
end
