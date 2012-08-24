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

ActiveRecord::Schema.define(:version => 20120824053435) do

  create_table "address_details", :force => true do |t|
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.string   "address_1"
    t.string   "address_2"
    t.integer  "city_id"
    t.integer  "state_id"
    t.integer  "country_id"
    t.integer  "mobile_no"
    t.string   "email"
    t.string   "referance_1"
    t.integer  "created_by"
    t.integer  "update_by"
    t.string   "website"
    t.boolean  "status",           :default => true
    t.string   "blood_group"
    t.integer  "telephone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pincode"
  end

  create_table "catagories", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.boolean  "status",     :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.string   "zip_code"
    t.string   "std_code"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "contact_person"
    t.string   "clientid"
    t.string   "cst_no"
    t.string   "tin_no"
    t.string   "status",         :default => "t"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "company_name"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "customer_id"
    t.string   "name"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.boolean  "status",      :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.string   "employeeid"
    t.string   "employee_name"
    t.boolean  "status",        :default => true
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uniqueids", :force => true do |t|
    t.string   "class_name"
    t.string   "prefix"
    t.string   "suffix"
    t.integer  "current_value"
    t.integer  "start_value"
    t.integer  "increment_value"
    t.string   "status",          :default => "t"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.boolean  "is_admin",        :default => false
    t.integer  "city_id"
    t.string   "address"
    t.boolean  "status",          :default => false
    t.string   "hashed_password"
    t.string   "email"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
  end

end
