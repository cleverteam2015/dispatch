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

ActiveRecord::Schema.define(version: 20150308050319) do

  create_table "business_units", force: :cascade do |t|
    t.string   "short_name"
    t.string   "long_name"
    t.date     "creation_date"
    t.string   "status"
    t.string   "address"
    t.string   "phone"
    t.integer  "parent_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "dealers", force: :cascade do |t|
    t.string   "name"
    t.string   "main_name"
    t.date     "creation_date"
    t.string   "status"
    t.string   "address"
    t.integer  "parent_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "main_entities", force: :cascade do |t|
    t.string   "name"
    t.string   "main_name"
    t.date     "creation_date"
    t.string   "status"
    t.string   "address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "status"
    t.string   "created_by"
    t.string   "updated_by"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
