# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140403042850) do

  create_table "doctor_sessions", force: true do |t|
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.text     "session_key"
    t.boolean  "is_valid",      default: true
    t.string   "status",        default: "INITIALIZED"
    t.boolean  "completed"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "invitation_id"
  end

  add_index "doctor_sessions", ["doctor_id"], name: "index_doctor_sessions_on_doctor_id", using: :btree
  add_index "doctor_sessions", ["invitation_id"], name: "index_doctor_sessions_on_invitation_id", using: :btree
  add_index "doctor_sessions", ["patient_id"], name: "index_doctor_sessions_on_patient_id", using: :btree

  create_table "doctors", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "experience"
    t.boolean  "active",          default: true
    t.string   "doc_code"
    t.string   "password_digest"
    t.string   "age"
    t.string   "tag_line"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "online"
  end

  create_table "invitations", force: true do |t|
    t.string   "doctor_id"
    t.string   "user_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invitations", ["doctor_id"], name: "index_invitations_on_doctor_id", using: :btree
  add_index "invitations", ["user_id"], name: "index_invitations_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "user_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "age"
    t.string   "gender"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
