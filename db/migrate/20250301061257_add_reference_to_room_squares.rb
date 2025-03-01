class AddReferenceToRoomSquares < ActiveRecord::Migration[8.0]
  def change
    add_reference :room_squares, :specific_epartment_number, null: true, foreign_key: true
    change_column_null :room_squares, :apartment_number_id, true
  end
end
