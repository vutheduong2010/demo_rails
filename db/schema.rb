# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_05_081618) do
  create_table "classses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "class_code"
    t.string "class_name"
    t.string "school_year"
    t.integer "student_list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "course_code"
    t.string "course_name"
    t.string "teacher"
    t.integer "list_of_registered_student"
    t.integer "number_of_credits"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "duongs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libraries", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "student_code"
    t.string "full_name"
    t.string "gmail"
    t.integer "phone"
    t.integer "number_of_books"
    t.date "date_borrow"
    t.date "date_pay"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "majors", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "majors_code"
    t.string "majors_name"
    t.integer "list_of_teacher"
    t.integer "list_of_student"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifitcations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "student_code"
    t.string "student_name"
    t.date "date_of_birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "student_code"
    t.string "student_name"
    t.date "date_of_birth"
    t.string "address"
    t.string "gmail"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "teacher_code"
    t.string "teacher_name"
    t.date "date_of_birth"
    t.string "gender"
    t.string "gmail"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transcripts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "student_code"
    t.string "student_name"
    t.date "date_of_birth"
    t.string "gender"
    t.string "majors_code"
    t.float "scores"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tuitions", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "student_code"
    t.string "student_name"
    t.integer "phone"
    t.string "gmail"
    t.float "amount_in_number"
    t.string "amount_in_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
