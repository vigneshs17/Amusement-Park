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

ActiveRecord::Schema.define(version: 2020_06_17_065030) do

  create_table "employees", primary_key: "eid", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "ename"
    t.integer "age"
    t.bigint "econtact"
    t.string "email"
    t.string "post"
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parks", primary_key: "pno", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "pname"
    t.string "location"
    t.integer "employees"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rides", primary_key: "rno", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "rname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visitors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "vname"
    t.string "vemail"
    t.bigint "contact"
    t.date "visitDate"
    t.integer "noOfTickets"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
