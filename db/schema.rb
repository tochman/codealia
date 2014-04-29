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

ActiveRecord::Schema.define(version: 20140429124248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "curriculums", force: true do |t|
    t.string   "title"
    t.text     "desc"
    t.text     "goals"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", force: true do |t|
    t.string   "title"
    t.text     "descr"
    t.string   "resource"
    t.integer  "order"
    t.integer  "workshop_id"
    t.string   "workshop_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "resources", ["workshop_id", "workshop_type"], name: "index_resources_on_workshop_id_and_workshop_type", using: :btree

  create_table "workshops", force: true do |t|
    t.string   "title"
    t.text     "desc"
    t.text     "goals"
    t.string   "duration"
    t.integer  "curriculum_id"
    t.string   "curriculum_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "workshops", ["curriculum_id", "curriculum_type"], name: "index_workshops_on_curriculum_id_and_curriculum_type", using: :btree

end
