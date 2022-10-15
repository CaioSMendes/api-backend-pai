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

ActiveRecord::Schema[7.0].define(version: 2022_10_13_180010) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "typeAddress"
    t.string "phone"
    t.string "zipcode"
    t.string "address"
    t.string "complement"
    t.string "uf"
    t.string "city"
    t.datetime "dtIncatu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "typeClient"
    t.string "cpf"
    t.string "cnpj"
    t.string "nomeCleint"
    t.string "nameFantasy"
    t.string "status"
    t.string "rfidCard"
    t.string "passwordKeypad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "address_id", null: false
    t.index ["address_id"], name: "index_clients_on_address_id"
  end

  create_table "functionalities", force: :cascade do |t|
    t.string "nameFunctionality"
    t.datetime "dtIncatu"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions", force: :cascade do |t|
    t.datetime "dtIncatu"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "functionality_id", null: false
    t.bigint "profile_id", null: false
    t.index ["functionality_id"], name: "index_permissions_on_functionality_id"
    t.index ["profile_id"], name: "index_permissions_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "nameProfile"
    t.datetime "dtIncatu"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "email"
    t.string "status"
    t.string "phone"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "clients", "addresses"
  add_foreign_key "permissions", "functionalities"
  add_foreign_key "permissions", "profiles"
end
