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

ActiveRecord::Schema.define(version: 2020_04_26_103652) do

  create_table "languagegenres", force: :cascade do |t|
    t.integer "language_genre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "languagenames", force: :cascade do |t|
    t.integer "language_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "computerlanguage_name"
    t.string "name"
  end

  create_table "members", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "deleted_at"
    t.string "name"
    t.integer "member_type"
    t.boolean "admin_flg"
    t.index ["deleted_at"], name: "index_members_on_deleted_at"
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

  create_table "posts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.string "post_content"
    t.datetime "deleted_at"
    t.integer "learning_genre"
    t.integer "languagename_id"
    t.integer "member_id"
    t.integer "languagegenre_id"
    t.index ["deleted_at"], name: "index_posts_on_deleted_at"
    t.index ["languagegenre_id"], name: "index_posts_on_languagegenre_id"
    t.index ["languagename_id"], name: "index_posts_on_languagename_id"
    t.index ["member_id"], name: "index_posts_on_member_id"
  end

  create_table "uploadfiles", force: :cascade do |t|
    t.integer "post_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "uploadfile_id"
  end

  add_foreign_key "posts", "languagegenres"
  add_foreign_key "posts", "languagenames"
  add_foreign_key "posts", "members"
end
