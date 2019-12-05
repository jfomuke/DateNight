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

ActiveRecord::Schema.define(version: 2019_12_03_005954) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.string "link"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dateactivities", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.text "description"
    t.string "link"
    t.string "location"
    t.integer "generator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["generator_id"], name: "index_dateactivities_on_generator_id"
  end

  create_table "datefoods", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.text "description"
    t.string "link"
    t.string "location"
    t.integer "generator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["generator_id"], name: "index_datefoods_on_generator_id"
  end

  create_table "datenights", force: :cascade do |t|
    t.integer "PID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generators", force: :cascade do |t|
    t.integer "acitivityID"
    t.integer "foodID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_submissions", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.text "description"
    t.string "link"
    t.string "location"
    t.integer "Activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Activity_id"], name: "index_user_submissions_on_Activity_id"
  end

end
