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

ActiveRecord::Schema.define(version: 2019_10_23_084812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "content_in_lists", force: :cascade do |t|
    t.bigint "content_id"
    t.bigint "list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_content_in_lists_on_content_id"
    t.index ["list_id"], name: "index_content_in_lists_on_list_id"
  end

  create_table "contents", force: :cascade do |t|
    t.bigint "user_id"
    t.string "link"
    t.string "title"
    t.text "description"
    t.string "origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_contents_on_user_id"
  end

  create_table "emotion_tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lists", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "profils", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.date "birthday"
    t.string "city"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profils_on_user_id"
  end

  create_table "tags_in_contents", force: :cascade do |t|
    t.bigint "content_id"
    t.bigint "emotion_tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_id"], name: "index_tags_in_contents_on_content_id"
    t.index ["emotion_tag_id"], name: "index_tags_in_contents_on_emotion_tag_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin?", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "content_in_lists", "contents"
  add_foreign_key "content_in_lists", "lists"
  add_foreign_key "contents", "users"
  add_foreign_key "lists", "users"
  add_foreign_key "profils", "users"
  add_foreign_key "tags_in_contents", "contents"
  add_foreign_key "tags_in_contents", "emotion_tags"
end
