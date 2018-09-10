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

ActiveRecord::Schema.define(version: 2018_09_10_191335) do

  create_table "calendars", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "id_user"
    t.date "start_date"
    t.date "end_date"
    t.integer "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chat_rooms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_chat_rooms_on_user_id"
  end

  create_table "events", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forum_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "slug", null: false
    t.string "color", default: "000000"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forum_posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "forum_thread_id"
    t.bigint "user_id"
    t.text "body"
    t.boolean "solved", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["forum_thread_id"], name: "index_forum_posts_on_forum_thread_id"
    t.index ["user_id"], name: "index_forum_posts_on_user_id"
  end

  create_table "forum_subscriptions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "forum_thread_id"
    t.bigint "user_id"
    t.string "subscription_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["forum_thread_id"], name: "index_forum_subscriptions_on_forum_thread_id"
    t.index ["user_id"], name: "index_forum_subscriptions_on_user_id"
  end

  create_table "forum_threads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "forum_category_id"
    t.bigint "user_id"
    t.string "title", null: false
    t.string "slug", null: false
    t.integer "forum_posts_count", default: 0
    t.boolean "pinned", default: false
    t.boolean "solved", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["forum_category_id"], name: "index_forum_threads_on_forum_category_id"
    t.index ["user_id"], name: "index_forum_threads_on_user_id"
  end

  create_table "fundations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "fundation_name"
    t.string "address"
    t.bigint "phone"
    t.string "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "body"
    t.bigint "user_id"
    t.bigint "chat_room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_room_id"], name: "index_messages_on_chat_room_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "role_name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "service_name"
    t.string "description"
    t.bigint "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "lastname"
    t.bigint "document"
    t.bigint "phone"
    t.string "profession"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.bigint "role_id"
    t.bigint "state_id"
    t.bigint "fundation_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["fundation_id"], name: "index_users_on_fundation_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["state_id"], name: "index_users_on_state_id"
  end

  add_foreign_key "chat_rooms", "users"
  add_foreign_key "forum_posts", "forum_threads"
  add_foreign_key "forum_posts", "users"
  add_foreign_key "forum_subscriptions", "forum_threads"
  add_foreign_key "forum_subscriptions", "users"
  add_foreign_key "forum_threads", "forum_categories"
  add_foreign_key "forum_threads", "users"
  add_foreign_key "messages", "chat_rooms"
  add_foreign_key "messages", "users"
  add_foreign_key "users", "fundations"
  add_foreign_key "users", "roles"
  add_foreign_key "users", "states"
end
