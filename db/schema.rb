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

ActiveRecord::Schema.define(version: 20180422231453) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.datetime "date"
    t.integer "venue_id"
    t.text "ticket_url"
    t.string "genre"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name"
    t.text "description"
  end

  create_table "events_users", id: false, force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "accepted_at"
    t.boolean "active"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.text "image"
    t.text "bio"
    t.string "hometown"
    t.text "interests"
    t.text "email"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "venues", force: :cascade do |t|
    t.string "location"
    t.string "name"
    t.text "url"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
  end

end
