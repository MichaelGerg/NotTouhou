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

ActiveRecord::Schema.define(version: 20171120180059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "highscores", force: :cascade do |t|
    t.string "username"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "replays", force: :cascade do |t|
    t.integer "user_id"
    t.string "replay_id"
    t.integer "stage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.integer "level"
    t.integer "exp"
    t.integer "campaign_progress"
    t.string "drive_refresh_token"
    t.string "drive_access_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "remember_digest"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end