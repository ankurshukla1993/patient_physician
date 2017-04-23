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

ActiveRecord::Schema.define(version: 20170423091044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "address_for"
    t.string   "flat_number"
    t.string   "street_name"
    t.string   "area"
    t.string   "city"
    t.string   "state"
    t.string   "pin_code"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "assignments", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "referring_physician_id"
    t.integer  "primary_care_physician_id"
    t.string   "pharmacy_name"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "patient_addresses", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.integer  "age"
    t.string   "nationality"
    t.string   "mobile_number"
    t.string   "email_id"
    t.string   "marital_status"
    t.string   "blood_group"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "physician_addresses", force: :cascade do |t|
    t.integer  "physician_id"
    t.integer  "address_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string   "name"
    t.string   "speciality"
    t.string   "gender"
    t.integer  "age"
    t.string   "nationality"
    t.string   "mobile_number"
    t.string   "email_id"
    t.string   "marital_status"
    t.string   "blood_group"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
