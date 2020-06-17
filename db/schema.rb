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

ActiveRecord::Schema.define(version: 2020_06_17_085849) do

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ename"
    t.integer "age"
    t.bigint "contact"
    t.string "post"
    t.string "gender"
    t.bigint "works_for"
    t.bigint "operates"
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["operates"], name: "fk_rails_470df86b50"
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
    t.index ["works_for"], name: "fk_rails_b908e05a5f"
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
    t.bigint "exists_in"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exists_in"], name: "fk_rails_9d1974df89"
  end

  create_table "visitors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "vname"
    t.string "vemail"
    t.bigint "contact"
    t.date "visitDate"
    t.bigint "visits"
    t.integer "noOfTickets"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["visits"], name: "fk_rails_c5b06a6229"
  end

  add_foreign_key "employees", "parks", column: "works_for", primary_key: "pno"
  add_foreign_key "employees", "rides", column: "operates", primary_key: "rno"
  add_foreign_key "rides", "parks", column: "exists_in", primary_key: "pno"
  add_foreign_key "visitors", "parks", column: "visits", primary_key: "pno"
end
