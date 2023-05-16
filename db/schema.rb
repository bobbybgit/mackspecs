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

ActiveRecord::Schema[7.0].define(version: 2023_05_16_151159) do
  create_table "instructions", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "piece_constructions", force: :cascade do |t|
    t.integer "piece_id", null: false
    t.integer "instruction_id", null: false
    t.integer "topstitch_rows"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instruction_id"], name: "index_piece_constructions_on_instruction_id"
    t.index ["piece_id"], name: "index_piece_constructions_on_piece_id"
  end

  create_table "pieces", force: :cascade do |t|
    t.string "name"
    t.string "area"
    t.string "sub_area"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "style_specs", force: :cascade do |t|
    t.integer "style_id", null: false
    t.integer "piece_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["piece_id"], name: "index_style_specs_on_piece_id"
    t.index ["style_id"], name: "index_style_specs_on_style_id"
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
    t.string "style_num"
    t.string "style_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "brand"
    t.string "gender"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "piece_constructions", "instructions"
  add_foreign_key "piece_constructions", "pieces"
  add_foreign_key "style_specs", "pieces"
  add_foreign_key "style_specs", "styles"
end
