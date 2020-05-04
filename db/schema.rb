# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_04_174509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feelings", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_feelings_on_user_id"
  end

  create_table "goals", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.string "description"
    t.datetime "completed_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "journal_entries", force: :cascade do |t|
    t.bigint "user_id"
    t.string "entry"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_journal_entries_on_user_id"
  end

  create_table "journal_tags", force: :cascade do |t|
    t.bigint "journal_id"
    t.bigint "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["journal_id"], name: "index_journal_tags_on_journal_id"
    t.index ["tag_id"], name: "index_journal_tags_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.bigint "user_id"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tags_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.integer "phone_number"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wins", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_wins_on_user_id"
  end

end
