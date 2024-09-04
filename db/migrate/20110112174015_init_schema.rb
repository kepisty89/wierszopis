# class InitSchema < ActiveRecord::Migration[5.2]
#   def up
#     create_table "chapters" do |t|
#       t.integer "user_id"
#       t.string "name"
#       t.text "description"
#       t.datetime "created_at", precision: nil, null: false
#       t.datetime "updated_at", precision: nil, null: false
#     end
#     create_table "comments" do |t|
#       t.integer "poem_id"
#       t.integer "user_id"
#       t.string "name"
#       t.string "email"
#       t.text "body"
#       t.datetime "created_at", precision: nil, null: false
#       t.datetime "updated_at", precision: nil, null: false
#     end
#     create_table "credits" do |t|
#       t.string "name"
#       t.string "email"
#       t.string "img_url"
#       t.datetime "created_at", precision: nil, null: false
#       t.datetime "updated_at", precision: nil, null: false
#     end
#     create_table "poems" do |t|
#       t.integer "user_id"
#       t.integer "chapter_id"
#       t.date "composed_at"
#       t.text "body"
#       t.datetime "created_at", precision: nil, null: false
#       t.datetime "updated_at", precision: nil, null: false
#       t.string "title"
#       t.string "mp3_file_name"
#       t.string "mp3_content_type"
#       t.integer "mp3_file_size"
#     end
#     create_table "profiles" do |t|
#       t.integer "user_id"
#       t.string "name"
#       t.string "surname"
#       t.string "place"
#       t.date "birthday"
#       t.string "gender"
#       t.text "site"
#       t.text "bio"
#       t.datetime "created_at", precision: nil, null: false
#       t.datetime "updated_at", precision: nil, null: false
#     end
#     create_table "sessions" do |t|
#       t.string "session_id", null: false
#       t.text "data"
#       t.datetime "created_at", precision: nil, null: false
#       t.datetime "updated_at", precision: nil, null: false
#       t.index ["session_id"], name: "index_sessions_on_session_id"
#       t.index ["updated_at"], name: "index_sessions_on_updated_at"
#     end
#     create_table "taggings" do |t|
#       t.integer "tag_id"
#       t.string "taggable_type"
#       t.integer "taggable_id"
#       t.string "tagger_type"
#       t.integer "tagger_id"
#       t.string "context"
#       t.datetime "created_at", precision: nil
#       t.index ["tag_id"], name: "index_taggings_on_tag_id"
#       t.index ["taggable_type", "taggable_id"], name: "index_taggings_on_taggable_type_and_taggable_id"
#       t.index ["tagger_type", "tagger_id"], name: "index_taggings_on_tagger_type_and_tagger_id"
#     end
#     create_table "tags" do |t|
#       t.string "name"
#     end
#     create_table "users" do |t|
#       t.string "nickname"
#       t.string "email"
#       t.string "hashed_password"
#       t.datetime "created_at", precision: nil, null: false
#       t.datetime "updated_at", precision: nil, null: false
#     end
#   end

#   def down
#     raise ActiveRecord::IrreversibleMigration, "The initial migration is not revertable"
#   end
# end
