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

ActiveRecord::Schema.define(version: 2018_08_15_143940) do

  create_table "calendars", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "id_user"
    t.date "start_date"
    t.date "end_date"
    t.integer "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chats", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user"
    t.string "conversation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forums", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "question"
    t.string "answer"
    t.integer "professional_user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fundations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "fundation_name"
    t.string "address"
    t.bigint "phone"
    t.string "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "name"
    t.string "lastname"
    t.string "password"
    t.bigint "document"
    t.string "mail"
    t.bigint "phone"
    t.string "profession"
    t.integer "id_fundation"
    t.string "role"
    t.integer "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
