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

ActiveRecord::Schema.define(version: 20170116154431) do

  create_table "_alter0_restaurants", force: :cascade do |t|
    t.string "name"
    t.string "vendor_type"
    t.string "address"
    t.string "city"
    t.string "lic_status"
    t.string "license_no"
    t.string "location"
  end

  create_table "_alter1_restaurants", id: false, force: :cascade do |t|
    t.integer "id"
    t.string  "name"
    t.string  "vendor_type"
    t.string  "address"
    t.string  "city"
    t.string  "lic_status"
    t.string  "license_no"
    t.string  "location"
  end

  create_table "inspections", force: :cascade do |t|
    t.integer "restaurant_id"
    t.string  "license_no"
    t.string  "lic_issue_date"
    t.string  "lic_exp_date"
    t.string  "result"
    t.string  "result_date"
    t.string  "viol_code"
    t.string  "viol_level"
    t.text    "viol_desc"
    t.string  "comments"
    t.string  "viol_date"
    t.integer "flags",          default: 0
    t.index ["restaurant_id"], name: "index_inspections_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string  "name"
    t.string  "vendor_type"
    t.string  "address"
    t.string  "city"
    t.string  "lic_status"
    t.string  "license_no"
    t.string  "location"
    t.        "longitude"
    t.text    "state",         default: "MA"
    t.        "latitude"
    t.integer "would_eat",     default: 0
    t.integer "would_not_eat", default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
