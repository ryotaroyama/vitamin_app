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

ActiveRecord::Schema.define(version: 2021_03_16_051325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string "name", null: false
    t.string "comment", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_foods_on_name", unique: true
  end

  create_table "relationships", force: :cascade do |t|
    t.bigint "vitamin_id", null: false
    t.bigint "food_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_id"], name: "index_relationships_on_food_id"
    t.index ["vitamin_id", "food_id"], name: "index_relationships_on_vitamin_id_and_food_id", unique: true
    t.index ["vitamin_id"], name: "index_relationships_on_vitamin_id"
  end

  create_table "vitamins", force: :cascade do |t|
    t.string "name", null: false
    t.text "effect"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_vitamins_on_name", unique: true
  end

  add_foreign_key "relationships", "foods"
  add_foreign_key "relationships", "vitamins"
end
