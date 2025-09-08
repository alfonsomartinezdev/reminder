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

ActiveRecord::Schema[8.0].define(version: 2025_09_08_002921) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.string "client_name"
    t.datetime "scheduled_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "firm_id", null: false
    t.index ["firm_id"], name: "index_appointments_on_firm_id"
  end

  create_table "custom_documents", force: :cascade do |t|
    t.string "title"
    t.string "document_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "firm_id", null: false
    t.index ["firm_id"], name: "index_custom_documents_on_firm_id"
  end

  create_table "firms", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string "title"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "firm_id", null: false
    t.index ["firm_id"], name: "index_invoices_on_firm_id"
  end

  create_table "reminder_types", force: :cascade do |t|
    t.string "name"
    t.string "remindable_type"
    t.text "message_template"
    t.integer "default_days_before"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reminders", force: :cascade do |t|
    t.bigint "reminder_type_id", null: false
    t.datetime "remind_at"
    t.text "rendered_message"
    t.text "sent_message"
    t.boolean "sent"
    t.datetime "sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "remindable_type", null: false
    t.bigint "remindable_id", null: false
    t.index ["remindable_type", "remindable_id"], name: "index_reminders_on_remindable"
    t.index ["remindable_type", "remindable_id"], name: "index_reminders_on_remindable_type_and_remindable_id"
    t.index ["reminder_type_id"], name: "index_reminders_on_reminder_type_id"
  end

  add_foreign_key "appointments", "firms"
  add_foreign_key "custom_documents", "firms"
  add_foreign_key "invoices", "firms"
  add_foreign_key "reminders", "reminder_types"
end
