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

ActiveRecord::Schema.define(version: 20180712155008) do

  create_table "parks", force: :cascade do |t|
    t.string "states"
    t.string "latitude_longitude"
    t.text   "description"
    t.string "designation"
    t.string "park_code"
    t.string "park_id"
    t.text   "directions_info"
    t.string "directions_url"
    t.string "full_name"
    t.string "url"
    t.text   "weather_info"
    t.string "name"
  end

  create_table "user_visited_parks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "park_id"
  end

  create_table "user_wishlist_parks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "park_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
