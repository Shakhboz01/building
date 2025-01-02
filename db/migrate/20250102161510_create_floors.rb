class CreateFloors < ActiveRecord::Migration[8.0]
  def change
    create_table :floors do |t|
      t.references :block, null: false, foreign_key: true
      t.integer :number

      t.timestamps
    end
  end
end
