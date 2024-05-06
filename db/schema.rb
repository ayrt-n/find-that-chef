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

ActiveRecord::Schema[7.0].define(version: 2024_05_06_113537) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appearances", force: :cascade do |t|
    t.bigint "chef_id"
    t.bigint "show_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "season_id"
    t.integer "rank"
    t.index ["chef_id"], name: "index_appearances_on_chef_id"
    t.index ["season_id"], name: "index_appearances_on_season_id"
    t.index ["show_id"], name: "index_appearances_on_show_id"
  end

  create_table "chefs", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.bigint "chef_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "state"
    t.text "category", default: [], array: true
    t.decimal "rating", precision: 3, scale: 2
    t.index ["chef_id"], name: "index_restaurants_on_chef_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.bigint "show_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["show_id"], name: "index_seasons_on_show_id"
  end

  create_table "shows", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "appearances", "chefs"
  add_foreign_key "appearances", "shows"
  add_foreign_key "restaurants", "chefs"
  add_foreign_key "seasons", "shows"
end
