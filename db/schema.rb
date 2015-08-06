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
    t.string   "weather"
    t.integer  "week"
    t.string   "teamA"
    t.string   "teamB"
    t.boolean  "winA"
    t.boolean  "winB"
    t.boolean  "homeA"
    t.boolean  "homeB"
    t.integer  "pointsA"
    t.integer  "pointsB"
    t.integer  "run_attemptA"
    t.integer  "run_attemptB"
    t.float    "yards_per_carryA"
    t.float    "yards_per_carryB"
    t.integer  "pass_attemptA"
    t.integer  "pass_attemptB"
    t.integer  "pass_completionA"
    t.integer  "pass_completionB"
    t.float    "yards_per_catchA"
    t.float    "yards_per_catchB"
    t.integer  "first_downA"
    t.integer  "first_downB"
    t.integer  "fourth_down_attemptA"
    t.integer  "fourth_down_attemptB"
    t.integer  "fourth_down_madeA"
    t.integer  "fourth_down_madeB"
    t.time     "time_of_possesionA"
    t.time     "time_of_possesionB"
    t.float    "fourth_down_ratingA"
    t.float    "total_offenseA"
    t.integer  "o_playsA"
    t.float    "pass_efficiencyA"
    t.float    "fourth_down_ratingB"
    t.float    "total_offenseB"
    t.integer  "o_playsB"
    t.float    "pass_efficiencyB"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
