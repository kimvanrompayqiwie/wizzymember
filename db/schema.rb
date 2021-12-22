# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_21_232956) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "feedback"
    t.bigint "post_id", null: false
    t.integer "views"
    t.integer "candidates"
    t.integer "invited"
    t.string "personality"
    t.text "action"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "commments", force: :cascade do |t|
    t.text "feedback"
    t.bigint "post_id", null: false
    t.integer "views"
    t.integer "candidates"
    t.integer "invited"
    t.text "action"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_commments_on_post_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.boolean "staff"
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "region"
    t.string "generation"
    t.string "personality"
    t.string "sectorcat"
    t.string "functioncat"
    t.string "type"
    t.integer "duration"
    t.date "online"
    t.string "company"
    t.string "views"
    t.date "offline"
    t.integer "candidates"
    t.string "urljob"
    t.string "media"
    t.string "ads"
    t.string "a"
    t.string "b"
    t.string "c"
    t.integer "d"
    t.integer "e"
    t.integer "f"
    t.date "g"
    t.text "h"
    t.text "i"
    t.text "j"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "commments", "posts"
end
