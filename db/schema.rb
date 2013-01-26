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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130126203723) do

  create_table "nections", :force => true do |t|
    t.integer  "scene_id"
    t.integer  "adjacent_id"
    t.string   "direction"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "scene_objects", :force => true do |t|
    t.string   "name"
    t.integer  "scene_id"
    t.boolean  "obtainable"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "scenections", :force => true do |t|
    t.integer  "scene_id"
    t.integer  "adjacent_id"
    t.string   "direction"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "scenes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "floor_file_name"
    t.string   "floor_content_type"
    t.integer  "floor_file_size"
    t.datetime "floor_updated_at"
    t.string   "left_wall_file_name"
    t.string   "left_wall_content_type"
    t.integer  "left_wall_file_size"
    t.datetime "left_wall_updated_at"
    t.string   "right_wall_file_name"
    t.string   "right_wall_content_type"
    t.integer  "right_wall_file_size"
    t.datetime "right_wall_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",                      :null => false
    t.string   "encrypted_password",     :default => "",                      :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
    t.boolean  "admin",                  :default => false,                   :null => false
    t.string   "name",                   :default => "",                      :null => false
    t.string   "time_zone",              :default => "Central Standard Time", :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
