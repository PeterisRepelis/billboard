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

ActiveRecord::Schema.define(version: 20170603111258) do

  create_table "agreement_billboards", force: :cascade do |t|
    t.integer  "agreement_id",      limit: 4
    t.integer  "billboard_item_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "agreements", force: :cascade do |t|
    t.integer  "customer_id",  limit: 4
    t.integer  "months_count", limit: 4, default: 0
    t.integer  "days_count",   limit: 4, default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "billboard_items", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.boolean  "is_broken",                     default: false
    t.integer  "visual_state",      limit: 4
    t.integer  "technical_state",   limit: 4
    t.integer  "billboard_type_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "billboard_types", force: :cascade do |t|
    t.text     "description",             limit: 65535
    t.string   "main_image_file_name",    limit: 255
    t.string   "main_image_content_type", limit: 255
    t.integer  "main_image_file_size",    limit: 4
    t.datetime "main_image_updated_at"
    t.decimal  "price_per_day",                         precision: 10, default: 0
    t.decimal  "price_per_month",                       precision: 10, default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.decimal  "discount",               precision: 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
