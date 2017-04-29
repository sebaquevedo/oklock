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

ActiveRecord::Schema.define(version: 20170429161256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "channels", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "service_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["service_id"], name: "index_channels_on_service_id", using: :btree
  end

  create_table "charges", force: :cascade do |t|
    t.string   "title"
    t.string   "summary"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "is_current"
    t.integer  "enterprise_id"
    t.string   "org_level"
    t.string   "market_responsability"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["enterprise_id"], name: "index_charges_on_enterprise_id", using: :btree
  end

  create_table "enterprises", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "industry"
    t.string   "ticker"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_enterprises_on_user_id", using: :btree
  end

  create_table "languages", force: :cascade do |t|
    t.string   "language"
    t.string   "proficiency"
    t.boolean  "certificate"
    t.string   "system_of_measure"
    t.integer  "score"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["user_id"], name: "index_languages_on_user_id", using: :btree
  end

  create_table "sectors", force: :cascade do |t|
    t.string   "title"
    t.integer  "enterprise_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["enterprise_id"], name: "index_sectors_on_enterprise_id", using: :btree
  end

  create_table "services", force: :cascade do |t|
    t.integer  "value"
    t.string   "geo_zone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_services_on_user_id", using: :btree
  end

  create_table "socials", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_socials_on_user_id", using: :btree
  end

  create_table "specialties", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "charge_id"
    t.index ["charge_id"], name: "index_specialties_on_charge_id", using: :btree
  end

  create_table "studies", force: :cascade do |t|
    t.string   "title"
    t.date     "initdate"
    t.date     "enddate"
    t.string   "grade"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_studies_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "headline"
    t.string   "image"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "channels", "services"
  add_foreign_key "charges", "enterprises"
  add_foreign_key "enterprises", "users"
  add_foreign_key "languages", "users"
  add_foreign_key "sectors", "enterprises"
  add_foreign_key "services", "users"
  add_foreign_key "socials", "users"
  add_foreign_key "specialties", "charges"
  add_foreign_key "studies", "users"
end
