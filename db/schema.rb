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

ActiveRecord::Schema.define(version: 20170619002259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mountains", force: :cascade do |t|
    t.string   "name"
    t.integer  "size"
    t.integer  "number_of_runs"
    t.string   "map"
    t.integer  "highest_point"
    t.integer  "number_of_bars"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "mountains_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "mountain_id"
  end

  create_table "runs", force: :cascade do |t|
    t.string   "name"
    t.string   "length"
    t.string   "difficulty"
    t.string   "number_of_deaths"
    t.boolean  "claim"
    t.text     "image"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "mountain_id"
  end

  create_table "runs_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "run_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "ski_type"
    t.text     "photo"
    t.string   "nickname"
    t.string   "nationality"
    t.string   "home_mountain"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
  end

end
