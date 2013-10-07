# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131007085109) do

  create_table "games", force: true do |t|
    t.string   "name"
    t.integer  "home_user_id"
    t.integer  "away_user_id"
    t.integer  "active_user_id"
    t.integer  "status_id"
    t.integer  "winner"
    t.integer  "loser"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moves", force: true do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.string   "move"
    t.integer  "result"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "moves", ["game_id", "user_id", "move"], name: "index_moves_on_game_id_and_user_id_and_move", unique: true
  add_index "moves", ["game_id"], name: "index_moves_on_game_id"
  add_index "moves", ["user_id"], name: "index_moves_on_user_id"

  create_table "positions", force: true do |t|
    t.integer  "game_id"
    t.integer  "user_id"
    t.integer  "ship_id"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "positions", ["game_id", "user_id", "ship_id"], name: "index_positions_on_game_id_and_user_id_and_ship_id", unique: true
  add_index "positions", ["game_id"], name: "index_positions_on_game_id"
  add_index "positions", ["ship_id"], name: "index_positions_on_ship_id"
  add_index "positions", ["user_id"], name: "index_positions_on_user_id"

  create_table "ships", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ships", ["name"], name: "index_ships_on_name", unique: true

  create_table "statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "statuses", ["name"], name: "index_statuses_on_name", unique: true

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
