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

ActiveRecord::Schema.define(version: 20170324110600) do

  create_table "abouts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "type"
    t.string   "title"
    t.string   "body"
    t.string   "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constructors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contact_for_feedbacks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "value"
  end

  create_table "galleries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "img"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ordered_feedback_sessions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "username"
    t.string   "phone_numder"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "phone_numder"
    t.string   "email"
    t.string   "img"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "login"
    t.string "password"
    t.string "position"
  end

end
