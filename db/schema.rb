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

ActiveRecord::Schema.define(version: 20160225230958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "branches", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discount_technical_types", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "document_types", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "value"
    t.integer  "document_type_id"
    t.string   "dispatcher_entity"
    t.date     "dispatcher_date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "documents", ["document_type_id"], name: "index_documents_on_document_type_id", using: :btree

  create_table "genders", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insurers", force: :cascade do |t|
    t.string   "name"
    t.string   "branch_office"
    t.decimal  "standard_commission"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "mailing_addresses", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marital_statuses", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "metiers", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occupations", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operations", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_types", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.integer  "person_type_id"
    t.boolean  "accept_email"
    t.integer  "metier_id"
    t.string   "contact"
    t.date     "birth"
    t.integer  "marital_status_id"
    t.integer  "gender_id"
    t.boolean  "politically_exposed_person"
    t.string   "exposed_name"
    t.integer  "occupation_id"
    t.integer  "salary_range_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "people", ["gender_id"], name: "index_people_on_gender_id", using: :btree
  add_index "people", ["marital_status_id"], name: "index_people_on_marital_status_id", using: :btree
  add_index "people", ["metier_id"], name: "index_people_on_metier_id", using: :btree
  add_index "people", ["occupation_id"], name: "index_people_on_occupation_id", using: :btree
  add_index "people", ["person_type_id"], name: "index_people_on_person_type_id", using: :btree
  add_index "people", ["salary_range_id"], name: "index_people_on_salary_range_id", using: :btree

  create_table "person_types", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productives", force: :cascade do |t|
    t.string   "name"
    t.string   "short_name"
    t.integer  "gender_id"
    t.string   "cpf"
    t.string   "email"
    t.date     "birth"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "productives", ["gender_id"], name: "index_productives_on_gender_id", using: :btree

  create_table "proposals", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "current_insurer_id"
    t.integer  "susep_id"
    t.integer  "branch_id"
    t.date     "start_validity"
    t.date     "end_validity"
    t.date     "issue_date"
    t.integer  "operation_id"
    t.string   "proposal_number"
    t.string   "insurance_policy"
    t.string   "endorsement_number"
    t.integer  "previous_insurer_id"
    t.string   "previous_insurance_policy"
    t.string   "previous_endorsement_number"
    t.decimal  "policy_cost"
    t.decimal  "iof"
    t.decimal  "additional_fractionation"
    t.decimal  "expenses"
    t.integer  "discount_technical_type_id"
    t.decimal  "discount_technical"
    t.decimal  "discount_broker"
    t.integer  "installment_number"
    t.integer  "payment_type_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "proposals", ["branch_id"], name: "index_proposals_on_branch_id", using: :btree
  add_index "proposals", ["discount_technical_type_id"], name: "index_proposals_on_discount_technical_type_id", using: :btree
  add_index "proposals", ["operation_id"], name: "index_proposals_on_operation_id", using: :btree
  add_index "proposals", ["payment_type_id"], name: "index_proposals_on_payment_type_id", using: :btree
  add_index "proposals", ["person_id"], name: "index_proposals_on_person_id", using: :btree
  add_index "proposals", ["susep_id"], name: "index_proposals_on_susep_id", using: :btree

  create_table "salary_ranges", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suseps", force: :cascade do |t|
    t.integer  "insurer_id"
    t.integer  "person_id"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "suseps", ["insurer_id"], name: "index_suseps_on_insurer_id", using: :btree
  add_index "suseps", ["person_id"], name: "index_suseps_on_person_id", using: :btree

  add_foreign_key "documents", "document_types"
  add_foreign_key "people", "genders"
  add_foreign_key "people", "marital_statuses"
  add_foreign_key "people", "metiers"
  add_foreign_key "people", "occupations"
  add_foreign_key "people", "person_types"
  add_foreign_key "people", "salary_ranges"
  add_foreign_key "productives", "genders"
  add_foreign_key "proposals", "branches"
  add_foreign_key "proposals", "discount_technical_types"
  add_foreign_key "proposals", "operations"
  add_foreign_key "proposals", "payment_types"
  add_foreign_key "proposals", "people"
  add_foreign_key "proposals", "suseps"
  add_foreign_key "suseps", "insurers"
  add_foreign_key "suseps", "people"
end
