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

ActiveRecord::Schema.define(version: 20170516064040) do

  create_table "abouts", force: :cascade do |t|
    t.text     "bio"
    t.string   "phone"
    t.string   "degree"
    t.string   "fb_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_abouts_on_user_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "context"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "banners", force: :cascade do |t|
    t.string   "img"
    t.string   "page"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "colleges", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "school_id"
    t.integer  "department_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "chinese_name"
    t.string   "chinese_short"
    t.string   "english_name"
    t.string   "english_short"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "discipline_id"
  end

  create_table "disciplines", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "context"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "talk_id"
    t.integer  "jobTalk_id"
  end

  create_table "indentities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.text     "context"
    t.integer  "user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
    t.index ["role_id"], name: "index_roles_users_on_role_id"
    t.index ["user_id"], name: "index_roles_users_on_user_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string   "chinese_name"
    t.string   "english_name"
    t.string   "english_short"
    t.string   "region"
    t.string   "category"
    t.string   "featured"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "country_id"
  end

  create_table "talkers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "talk_id"
    t.string   "degree"
    t.string   "identity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["talk_id"], name: "index_talkers_on_talk_id"
    t.index ["user_id"], name: "index_talkers_on_user_id"
  end

  create_table "talks", force: :cascade do |t|
    t.string   "title"
    t.text     "context"
    t.string   "part1"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "thanks"
    t.date     "post_date"
    t.string   "poster"
    t.string   "profile_pic"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "uid"
    t.string   "provider"
    t.string   "name"
    t.string   "english_name"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
