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

ActiveRecord::Schema.define(version: 20170720001823) do

  create_table "children", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "first_name"
    t.string   "Middle_initial"
    t.string   "last_name"
    t.string   "grade"
    t.string   "child_address"
    t.string   "gender_id"
    t.integer  "date_of_birth"
    t.integer  "child_social_security"
    t.string   "medical_conditions"
    t.text     "allergies",             limit: 65535
    t.string   "pediatrician_name"
    t.integer  "pediatrician_phone"
    t.string   "pediatrician_address"
    t.boolean  "photagraphy"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "frequencies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marital_statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parent_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "parent_type_id"
    t.string   "first_name"
    t.string   "Middle_initial"
    t.string   "last_name"
    t.string   "address"
    t.string   "occupation"
    t.integer  "home_phone"
    t.string   "employed_by"
    t.integer  "office_phone"
    t.string   "work_address"
    t.string   "work_hours"
    t.integer  "cell_phone"
    t.boolean  "custodial_parent"
    t.integer  "mother_social"
    t.string   "email"
    t.string   "driver_license_number"
    t.integer  "maritial_status_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
