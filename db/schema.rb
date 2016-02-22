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

ActiveRecord::Schema.define(version: 20160221014814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmark_tags", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "bookmark_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "bookmark_tags", ["bookmark_id"], name: "index_bookmark_tags_on_bookmark_id", using: :btree
  add_index "bookmark_tags", ["tag_id"], name: "index_bookmark_tags_on_tag_id", using: :btree

  create_table "bookmarks", force: :cascade do |t|
    t.string   "link"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "jankiness"
  end

  add_index "bookmarks", ["user_id"], name: "index_bookmarks_on_user_id", using: :btree

  create_table "project_bookmarks", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "bookmark_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "project_bookmarks", ["bookmark_id"], name: "index_project_bookmarks_on_bookmark_id", using: :btree
  add_index "project_bookmarks", ["project_id"], name: "index_project_bookmarks_on_project_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "github_link"
    t.string   "state",       default: "incomplete"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "snippets", force: :cascade do |t|
    t.text     "code"
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "snippets", ["project_id"], name: "index_snippets_on_project_id", using: :btree
  add_index "snippets", ["user_id"], name: "index_snippets_on_user_id", using: :btree

  create_table "stories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "points"
    t.integer  "project_id"
    t.string   "state",           default: "icebox"
    t.datetime "due_date"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.datetime "completion_date"
  end

  add_index "stories", ["project_id"], name: "index_stories_on_project_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "photo"
    t.string   "uid"
    t.string   "provider"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "auth_token"
  end

  add_foreign_key "bookmark_tags", "bookmarks"
  add_foreign_key "bookmark_tags", "tags"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "project_bookmarks", "bookmarks"
  add_foreign_key "project_bookmarks", "projects"
  add_foreign_key "projects", "users"
  add_foreign_key "snippets", "projects"
  add_foreign_key "snippets", "users"
  add_foreign_key "stories", "projects"
end
