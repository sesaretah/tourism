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

ActiveRecord::Schema.define(version: 20181217091439) do

  create_table "agencies", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.string   "tel",              limit: 255
    t.string   "telegram_channel", limit: 255
    t.string   "instagram_page",   limit: 255
    t.text     "address",          limit: 65535
    t.integer  "uuid",             limit: 4
    t.integer  "user_id",          limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "subdomain",        limit: 255
    t.string   "mobile",           limit: 255
    t.string   "fax",              limit: 255
    t.string   "email",            limit: 255
    t.text     "about_us",         limit: 65535
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "tour_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "tour_packages", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.integer  "days",       limit: 4
    t.integer  "nights",     limit: 4
    t.text     "details",    limit: 65535
    t.integer  "price",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "agency_id",  limit: 4
  end

  create_table "tours", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "price",           limit: 4
    t.integer  "details",         limit: 4
    t.integer  "tour_package_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
