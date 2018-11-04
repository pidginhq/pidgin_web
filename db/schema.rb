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

ActiveRecord::Schema.define(version: 20181103222816) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colleges", force: :cascade do |t|
    t.string "college_name"
    t.integer "university_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dorms", force: :cascade do |t|
    t.string "dorm_name"
    t.integer "delivery_zone"
    t.integer "user_count"
  end

  create_table "menu_items", force: :cascade do |t|
    t.integer "menu_id"
    t.string "menu_item_name"
    t.string "menu_section"
    t.float "item_price"
  end

  create_table "menu_menu_items", force: :cascade do |t|
    t.integer "menu_id"
    t.integer "item_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "menu_name"
    t.integer "restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.integer "restaurant_id"
    t.string "restaurant_name"
    t.string "restaurant_location"
    t.string "restaurant_food_genre"
    t.string "price"
    t.string "profile_image_url"
    t.integer "menu_id"
  end

  create_table "waitlists", force: :cascade do |t|
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
