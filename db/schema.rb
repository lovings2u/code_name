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

ActiveRecord::Schema.define(version: 20170806153118) do

  create_table "hints", force: :cascade do |t|
    t.integer  "stage_id"
    t.text     "description"
    t.string   "img_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["stage_id"], name: "index_hints_on_stage_id"
  end

  create_table "images", force: :cascade do |t|
    t.integer  "stage_id"
    t.string   "image_type"
    t.string   "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stage_id"], name: "index_images_on_stage_id"
  end

  create_table "players", force: :cascade do |t|
    t.integer  "theme_id"
    t.integer  "hint_count", default: 5
    t.integer  "stage_num",  default: 1
    t.string   "team_type"
    t.string   "clear_list"
    t.datetime "start_time"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["theme_id"], name: "index_players_on_theme_id"
  end

  create_table "stages", force: :cascade do |t|
    t.integer  "theme_id"
    t.text     "episode"
    t.text     "description"
    t.integer  "stage_num"
    t.string   "img_url"
    t.string   "password_digest"
    t.float    "gps_x"
    t.float    "gps_y"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["theme_id"], name: "index_stages_on_theme_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "difficulty"
    t.integer  "price"
    t.integer  "play_time"
    t.integer  "player_num"
    t.string   "img_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
