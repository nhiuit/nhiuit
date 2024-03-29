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

ActiveRecord::Schema.define(version: 20170514015435) do

  create_table "exam_schedulers", force: :cascade do |t|
    t.integer "student_id"
    t.integer "klass_id"
    t.integer "id_number"
    t.index ["klass_id"], name: "index_exam_schedulers_on_klass_id"
    t.index ["student_id"], name: "index_exam_schedulers_on_student_id"
  end

  create_table "klasses", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "date"
    t.string   "day"
    t.integer  "shift"
    t.string   "room"
    t.integer  "sum"
    t.string   "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "student_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_students_on_student_id"
  end

  create_table "trackers", force: :cascade do |t|
    t.string   "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
