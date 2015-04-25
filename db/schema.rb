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

ActiveRecord::Schema.define(version: 20150425040808) do

  create_table "farmers", force: :cascade do |t|
    t.integer  "user_id",            limit: 4
    t.integer  "farmer_flg",         limit: 4
    t.string   "farm_name",          limit: 255
    t.string   "catchcopy",          limit: 255
    t.string   "representative",     limit: 255
    t.text     "management_content", limit: 65535
    t.string   "farm_banner",        limit: 255
    t.text     "farm_area",          limit: 65535
    t.string   "zipcode",            limit: 255
    t.string   "address",            limit: 255
    t.string   "access",             limit: 255
    t.string   "tel",                limit: 255
    t.string   "fax",                limit: 255
    t.string   "twitter",            limit: 255
    t.string   "facebook",           limit: 255
    t.string   "googlemap",          limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "taxfrees", force: :cascade do |t|
    t.integer  "user_id",          limit: 4
    t.string   "user_name",        limit: 255
    t.integer  "nationality_id",   limit: 4
    t.string   "nationality_name", limit: 255
    t.string   "name",             limit: 255
    t.string   "passport",         limit: 255
    t.date     "birthday"
    t.integer  "sex_id",           limit: 4
    t.integer  "visastatus_id",    limit: 4
    t.date     "landingdate"
    t.integer  "taxfreeflg_id",    limit: 4
    t.string   "taxpaymentplace",  limit: 255
    t.string   "taxpaymentoffice", limit: 255
    t.text     "note",             limit: 65535
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

end
