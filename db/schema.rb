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

ActiveRecord::Schema[8.0].define(version: 2025_02_05_085242) do
  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dog_sitters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_dog_sitters_on_city_id"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id", null: false
    t.index ["city_id"], name: "index_dogs_on_city_id"
  end

  create_table "strolls", force: :cascade do |t|
    t.datetime "date"
    t.integer "dog_sitter_id"
    t.integer "dog_id"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_strolls_on_city_id"
    t.index ["dog_id"], name: "index_strolls_on_dog_id"
    t.index ["dog_sitter_id"], name: "index_strolls_on_dog_sitter_id"
  end

  add_foreign_key "dogs", "cities"
end
