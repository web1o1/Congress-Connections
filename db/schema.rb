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

ActiveRecord::Schema.define(version: 20140904192626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "committees", force: true do |t|
    t.string   "committee_id"
    t.string   "name"
    t.string   "members_id"
    t.integer  "senator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "members",      array: true
    t.string   "cmembers_id",  array: true
    t.string   "node_type"
  end

  add_index "committees", ["senator_id"], name: "index_committees_on_senator_id", using: :btree

  create_table "practices", force: true do |t|
    t.string   "too"
    t.string   "many"
    t.string   "newbs"
    t.string   "here"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prod_bills", force: true do |t|
    t.string   "bill_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prod_committee_refs", force: true do |t|
    t.string   "committee_id"
    t.string   "committee_name"
    t.integer  "committee_seq_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prod_committees", force: true do |t|
    t.string   "bioguide_id"
    t.string   "committee_id"
    t.string   "committee_name"
    t.string   "senator_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prod_senators", force: true do |t|
    t.string   "bioguide_id"
    t.string   "senator_name"
    t.string   "chamber"
    t.string   "nm_first"
    t.string   "nm_last"
    t.string   "gender"
    t.string   "party"
    t.string   "state"
    t.string   "state_name"
    t.string   "rank"
    t.date     "tern_end"
    t.date     "term_start"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prod_votes", force: true do |t|
    t.string   "bioguide_id"
    t.string   "bill_id"
    t.string   "vote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "senator_committee_ref_2s", force: true do |t|
    t.string   "committee_id"
    t.string   "committee_name"
    t.integer  "committee_seq_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "senator_committee_refs", force: true do |t|
    t.string   "committee_id"
    t.string   "committee_name"
    t.integer  "committee_seq_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "senators", force: true do |t|
    t.string   "bioguide_Id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "state"
    t.string   "party"
    t.integer  "committee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "members",      array: true
    t.string   "node_type"
  end

  add_index "senators", ["committee_id"], name: "index_senators_on_committee_id", using: :btree

end
