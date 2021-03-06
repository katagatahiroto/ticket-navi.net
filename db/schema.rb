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

ActiveRecord::Schema.define(version: 20170225204312) do

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id",    limit: 4, null: false
    t.integer  "shop_id",    limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "favorites", ["shop_id"], name: "index_favorites_on_shop_id", using: :btree
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.string  "image",   limit: 255
    t.integer "shop_id", limit: 4
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.text     "text",       limit: 65535
    t.integer  "shop_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shops", force: :cascade do |t|
    t.string   "state",              limit: 255,   default: ""
    t.string   "airt_name",          limit: 255,   default: ""
    t.time     "time_date"
    t.date     "day_date"
    t.datetime "close_datetime"
    t.string   "big_tags",           limit: 255,   default: ""
    t.integer  "user_id",            limit: 4
    t.string   "price",              limit: 255
    t.integer  "female",             limit: 4
    t.string   "size",               limit: 11
    t.string   "serial_number",      limit: 11
    t.string   "color",              limit: 11
    t.integer  "shipping_method",    limit: 4
    t.integer  "certificate",        limit: 4
    t.integer  "postage",            limit: 4
    t.integer  "nsk",                limit: 4
    t.string   "material",           limit: 11
    t.integer  "ticket_name_yes_no", limit: 4
    t.string   "seat_in_detail",     limit: 255,   default: ""
    t.integer  "docide_promptly",    limit: 4
    t.text     "item_name",          limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image",              limit: 255
    t.string   "close_day",          limit: 255
    t.string   "sub_tags",           limit: 255
    t.string   "ref_price",          limit: 255
    t.string   "number",             limit: 255
    t.text     "comment_text",       limit: 65535
    t.text     "state_info",         limit: 65535
    t.string   "madein",             limit: 255
    t.integer  "accessories",        limit: 4
    t.string   "accessories_info",   limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "nickname",               limit: 255
    t.string   "name",                   limit: 255
    t.string   "kana",                   limit: 255
    t.string   "tel",                    limit: 255
    t.integer  "number",                 limit: 4
    t.string   "big_address",            limit: 255
    t.string   "subaddress",             limit: 255
    t.string   "address",                limit: 255
    t.string   "littleaddress",          limit: 255
    t.string   "bankname",               limit: 255
    t.string   "branch_name",            limit: 255
    t.string   "account_type",           limit: 255
    t.string   "account_number",         limit: 255
    t.string   "account_name",           limit: 255
    t.string   "momey",                  limit: 255
    t.string   "identification",         limit: 255
    t.text     "user_text",              limit: 65535
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
