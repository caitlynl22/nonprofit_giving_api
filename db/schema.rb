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

ActiveRecord::Schema.define(version: 20150407151558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.text     "description"
    t.integer  "goal"
    t.integer  "organization_profile_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "campaigns", ["organization_profile_id"], name: "index_campaigns_on_organization_profile_id", using: :btree

  create_table "causes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organization_profiles", force: :cascade do |t|
    t.string   "name"
    t.text     "mission"
    t.text     "description"
    t.string   "image_url"
    t.string   "website"
    t.text     "address"
    t.string   "contact"
    t.string   "ein"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "cause_id"
  end

  add_index "organization_profiles", ["cause_id"], name: "index_organization_profiles_on_cause_id", using: :btree
  add_index "organization_profiles", ["organization_id"], name: "index_organization_profiles_on_organization_id", using: :btree

  create_table "organizations", force: :cascade do |t|
    t.string   "org_name"
    t.string   "org_email"
    t.string   "password"
    t.string   "password_digest"
    t.string   "token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.string   "password_digest"
    t.string   "token"
    t.string   "image_url"
    t.text     "bio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "campaigns", "organization_profiles"
  add_foreign_key "organization_profiles", "causes"
  add_foreign_key "organization_profiles", "organizations"
end
