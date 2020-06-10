# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_10_110430) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "babysits", force: :cascade do |t|
    t.datetime "begin_date"
    t.datetime "end_date"
    t.bigint "kid_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["kid_id"], name: "index_babysits_on_kid_id"
    t.index ["user_id"], name: "index_babysits_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "tag"
    t.text "content"
    t.datetime "begin_event"
    t.datetime "end_event"
    t.bigint "babysit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["babysit_id"], name: "index_events_on_babysit_id"
  end

  create_table "kids", force: :cascade do |t|
    t.string "first_name"
    t.integer "age"
    t.integer "weight"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_kids_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "is_nanny"
    t.string "address"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "babysits", "kids"
  add_foreign_key "babysits", "users"
  add_foreign_key "events", "babysits"
  add_foreign_key "kids", "users"
end
