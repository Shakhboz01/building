# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_01_10_152454) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "apartment_numbers", force: :cascade do |t|
    t.bigint "block_id", null: false
    t.integer "number"
    t.integer "number_of_rooms"
    t.decimal "square", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["block_id"], name: "index_apartment_numbers_on_block_id"
  end

  create_table "apartments", force: :cascade do |t|
    t.bigint "floor_id", null: false
    t.bigint "block_id", null: false
    t.string "comment"
    t.bigint "apartment_number_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartment_number_id"], name: "index_apartments_on_apartment_number_id"
    t.index ["block_id"], name: "index_apartments_on_block_id"
    t.index ["floor_id"], name: "index_apartments_on_floor_id"
  end

  create_table "blocks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.decimal "first_payment_in_cash", precision: 16, scale: 2
    t.decimal "first_payment_in_percent", precision: 16, scale: 2
    t.integer "number_of_months"
    t.string "fullname"
    t.string "pinfl"
    t.string "passport_number"
    t.bigint "user_id", null: false
    t.integer "status", default: 0
    t.decimal "price_per_square", precision: 16, scale: 2
    t.bigint "apartment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
    t.integer "contract_number"
    t.index ["apartment_id"], name: "index_contracts_on_apartment_id"
    t.index ["user_id"], name: "index_contracts_on_user_id"
  end

  create_table "floors", force: :cascade do |t|
    t.bigint "block_id", null: false
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["block_id"], name: "index_floors_on_block_id"
  end

  create_table "price_calculators", force: :cascade do |t|
    t.bigint "apartment_number_id", null: false
    t.decimal "price_per_square", precision: 15, scale: 2
    t.decimal "first_payment_in_cash", precision: 15, scale: 2
    t.decimal "first_payment_in_percent", precision: 5, scale: 2
    t.decimal "number_of_months", default: "36.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartment_number_id"], name: "index_price_calculators_on_apartment_number_id"
  end

  create_table "room_squares", force: :cascade do |t|
    t.string "name"
    t.decimal "square", precision: 6, scale: 1
    t.bigint "apartment_number_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartment_number_id"], name: "index_room_squares_on_apartment_number_id"
  end

  create_table "top_ups", force: :cascade do |t|
    t.decimal "amount", precision: 16, scale: 2
    t.string "comment"
    t.bigint "contract_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "top_up_type", default: 0
    t.index ["contract_id"], name: "index_top_ups_on_contract_id"
    t.index ["user_id"], name: "index_top_ups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "role", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "apartment_numbers", "blocks"
  add_foreign_key "apartments", "apartment_numbers"
  add_foreign_key "apartments", "blocks"
  add_foreign_key "apartments", "floors"
  add_foreign_key "contracts", "apartments"
  add_foreign_key "contracts", "users"
  add_foreign_key "floors", "blocks"
  add_foreign_key "price_calculators", "apartment_numbers"
  add_foreign_key "room_squares", "apartment_numbers"
  add_foreign_key "top_ups", "contracts"
  add_foreign_key "top_ups", "users"
end
