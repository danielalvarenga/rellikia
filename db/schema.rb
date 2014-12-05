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

ActiveRecord::Schema.define(version: 20141116160233) do

  create_table "categories", force: true do |t|
    t.string   "name",       limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entries", force: true do |t|
    t.boolean  "positive"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
  end

  create_table "entries_tags", id: false, force: true do |t|
    t.integer "entry_id"
    t.integer "tag_id"
  end

  create_table "entry_details", force: true do |t|
    t.decimal  "amount",      precision: 10, scale: 2
    t.decimal  "amount_paid", precision: 10, scale: 2
    t.integer  "day"
    t.integer  "month"
    t.integer  "year"
    t.integer  "day_paid"
    t.integer  "month_paid"
    t.integer  "year_paid"
    t.integer  "entry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "paid"
    t.date     "entry_date"
    t.date     "paid_date"
  end

  add_index "entry_details", ["entry_id"], name: "index_entry_details_on_entry_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name",       limit: 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
