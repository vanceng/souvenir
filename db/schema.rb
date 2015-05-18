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

ActiveRecord::Schema.define(version: 20150517011541) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks_memories", id: false, force: true do |t|
    t.integer "bookmark_id"
    t.integer "memory_id"
  end

  create_table "memories", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "category"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "city"
    t.string   "google_place_id"
    t.string   "media_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.string   "website"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "biography"
    t.string   "profile_photo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
    t.string   "password_digest"
  end

end
