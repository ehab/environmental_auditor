# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090503232701) do

  create_table "audits", :force => true do |t|
    t.integer  "facility_id",      :limit => 11
    t.integer  "question_id",      :limit => 11
    t.integer  "leg_group",        :limit => 11
    t.text     "answer"
    t.text     "answer_comment"
    t.string   "evidence"
    t.text     "evidence_comment"
    t.string   "decision"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_facilities", :force => true do |t|
    t.integer  "category_id", :limit => 11
    t.integer  "facility_id", :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilities", :force => true do |t|
    t.integer  "user_id",        :limit => 11
    t.string   "name"
    t.text     "address"
    t.string   "tel"
    t.string   "fax"
    t.string   "contact_person"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facilities_users", :force => true do |t|
    t.integer  "user_id",     :limit => 11
    t.integer  "facility_id", :limit => 11
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "open_id_authentication_associations", :force => true do |t|
    t.integer "issued",     :limit => 11
    t.integer "lifetime",   :limit => 11
    t.string  "handle"
    t.string  "assoc_type"
    t.binary  "server_url"
    t.binary  "secret"
  end

  create_table "open_id_authentication_nonces", :force => true do |t|
    t.integer "timestamp",  :limit => 11,                 :null => false
    t.string  "server_url"
    t.string  "salt",                     :default => "", :null => false
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id",    :limit => 11
    t.string   "real_name"
    t.string   "location"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.string   "original_id"
    t.integer  "leg_group",         :limit => 11
    t.string   "number"
    t.text     "ar"
    t.text     "english"
    t.string   "short_ref_ar"
    t.string   "short_ref_en"
    t.text     "compliance_answer"
    t.text     "full_ref_ar"
    t.text     "full_ref_en"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id", :limit => 11
    t.integer "user_id", :limit => 11
  end

  create_table "settings", :force => true do |t|
    t.string   "label"
    t.string   "identifier"
    t.text     "description"
    t.string   "field_type",  :default => "string"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "identity_url"
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token",            :limit => 40
    t.string   "activation_code",           :limit => 40
    t.string   "state",                                    :default => "passive"
    t.datetime "remember_token_expires_at"
    t.string   "password_reset_code"
    t.datetime "activated_at"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
