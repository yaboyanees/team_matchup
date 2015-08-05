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

ActiveRecord::Schema.define(version: 20150802220257) do

  create_table "stats", force: :cascade do |t|
    t.string   "team"
    t.string   "opponent"
    t.integer  "week"
    t.boolean  "win"
    t.boolean  "home_team"
    t.string   "weather"
    t.integer  "run_attempt"
    t.integer  "yards_per_carry"
    t.integer  "pass_attempt"
    t.integer  "pass_completion"
    t.integer  "yards_per_catch"
    t.integer  "first_down"
    t.integer  "fourth_down_attempt"
    t.integer  "fourth_down_made"
    t.time     "time_of_possesion"
    t.integer  "points"
    t.float    "fourth_down_rating"
    t.float    "total_offense"
    t.integer  "o_plays"
    t.float    "pass_efficiency"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
