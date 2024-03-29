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

ActiveRecord::Schema.define(version: 20160725174313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "stocks", force: :cascade do |t|
    t.string   "symbol",        null: false
    t.string   "name",          null: false
    t.decimal  "last_sale"
    t.string   "market_cap"
    t.string   "ipo_year"
    t.string   "sector"
    t.string   "industry"
    t.string   "summary_quote"
    t.string   "exchange"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index "lower((name)::text) varchar_pattern_ops", name: "stocks_lower_name", using: :btree
    t.index ["symbol"], name: "index_stocks_on_symbol", using: :btree
  end

end
