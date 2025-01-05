class CreateTopUps < ActiveRecord::Migration[8.0]
  def change
    create_table :top_ups do |t|
      t.decimal :amount, precision: 16, scale: 2
      t.string :comment
      t.references :contract, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
