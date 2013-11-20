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

ActiveRecord::Schema.define(version: 20131111230303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "effects", force: true do |t|
    t.integer  "caster_id"
    t.integer  "target_id"
    t.integer  "spell_id"
    t.integer  "remaining_duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.integer  "player1_move_id"
    t.integer  "player2_move_id"
    t.string   "player1_move_string"
    t.string   "player2_move_string"
    t.string   "player1_true_move_string"
    t.string   "player2_true_move_string"
    t.date     "creation"
    t.date     "last_activity"
    t.integer  "current_turn_number"
    t.string   "description"
    t.string   "game_state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hand_moves", force: true do |t|
    t.string   "player_hand"
    t.string   "player_hand_gesture"
    t.integer  "player_hand_spell_id"
    t.integer  "player_hand_target_id"
    t.boolean  "make_permanent"
    t.boolean  "bank_spell"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "information_pages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_moves", force: true do |t|
    t.integer  "player_id"
    t.integer  "player_lh_move_id"
    t.integer  "player_rh_move_id"
    t.boolean  "fire_banked_spell"
    t.boolean  "previously_casted_lightning_bolt"
    t.integer  "player_dictate_hand_id"
    t.boolean  "move_done"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.integer  "games_won"
    t.date     "last_activity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sequences", force: true do |t|
    t.integer  "spell_id"
    t.string   "sequence"
    t.string   "reverse_sequence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spells", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.boolean  "is_beneficial"
    t.boolean  "is_baneful"
    t.boolean  "is_targeted"
    t.integer  "priority"
    t.boolean  "is_enchantment"
    t.integer  "duration"
    t.integer  "damage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "targets", force: true do |t|
    t.integer  "game_id"
    t.integer  "player_owner_id"
    t.string   "target_type"
    t.integer  "health"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
