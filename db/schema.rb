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

ActiveRecord::Schema.define(version: 20150131123428) do

  create_table "colleges", force: true do |t|
    t.string   "name"
    t.string   "country"
    t.integer  "sat_min_score"
    t.integer  "sat_max_score"
    t.integer  "tution_fees"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_list"
  end

  create_table "mentors", force: true do |t|
    t.string   "name"
    t.string   "sex"
    t.integer  "age"
    t.date     "dob"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "sex"
    t.integer  "age"
    t.date     "dob"
    t.string   "current_school"
    t.string   "current_level"
    t.string   "country"
    t.integer  "sat_score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "current_mentor_id"
    t.string   "applied_colleges"
    t.string   "current_mentor"
  end

  add_index "students", ["current_mentor_id"], name: "index_students_on_current_mentor_id"

end
