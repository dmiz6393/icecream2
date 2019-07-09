# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_09_133828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ice_cream_orders", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "ice_cream_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ice_cream_id"], name: "index_ice_cream_orders_on_ice_cream_id"
    t.index ["order_id"], name: "index_ice_cream_orders_on_order_id"
  end

  create_table "ice_creams", force: :cascade do |t|
    t.string "flavor"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.float "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ice_cream_orders", "ice_creams"
  add_foreign_key "ice_cream_orders", "orders"
  add_foreign_key "orders", "users"
end
