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

ActiveRecord::Schema.define(version: 20161001063653) do

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
    t.index ["restaurant_id"], name: "index_inspections_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "vendor_type"
    t.string "address"
    t.string "city"
    t.string "lic_status"
    t.string "license_no"
    t.string "location"
  end

end
