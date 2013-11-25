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

ActiveRecord::Schema.define(version: 20131125212747) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "citizens", force: true do |t|
    t.string   "type",                       null: false
    t.string   "name",                       null: false
    t.integer  "age",                        null: false
    t.string   "sex",                        null: false
    t.boolean  "volunteer",  default: false
    t.integer  "tesserae"
    t.boolean  "alive",      default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rating"
  end

end