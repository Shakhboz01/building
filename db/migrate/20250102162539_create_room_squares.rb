class CreateRoomSquares < ActiveRecord::Migration[8.0]
  def change
    create_table :room_squares do |t|
      t.string :name
      t.decimal :square, precision: 6, scale: 1
      t.references :apartment_number, null: false, foreign_key: true

      t.timestamps
    end
  end
end
