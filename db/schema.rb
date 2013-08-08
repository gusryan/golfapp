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

ActiveRecord::Schema.define(version: 20130808034120) do

  create_table "courses", force: true do |t|
    t.string   "name"
    t.integer  "par"
    t.text     "location"
    t.string   "tees"
    t.integer  "slope"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "golfers", force: true do |t|
    t.string   "name"
    t.integer  "handicap"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "holes", force: true do |t|
    t.integer  "hole_number"
    t.integer  "par"
    t.integer  "handicap"
    t.integer  "yardage"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "holes", ["course_id"], name: "index_holes_on_course_id"

  create_table "matches", force: true do |t|
    t.string   "name"
    t.string   "golfer1_name"
    t.string   "golfer2_name"
    t.string   "course_name"
    t.integer  "score"
    t.string   "winner"
    t.integer  "course_id"
    t.integer  "golfer_id"
    t.integer  "golfer1_id"
    t.integer  "golfer2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["course_id"], name: "index_matches_on_course_id"
  add_index "matches", ["golfer1_id"], name: "index_matches_on_golfer1_id"
  add_index "matches", ["golfer2_id"], name: "index_matches_on_golfer2_id"
  add_index "matches", ["golfer_id"], name: "index_matches_on_golfer_id"

end
