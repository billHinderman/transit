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

ActiveRecord::Schema.define(version: 20161107194300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "train_routes", force: :cascade do |t|
    t.integer  "route_id"
    t.string   "route_name"
    t.integer  "train_stop_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["train_stop_id"], name: "index_train_routes_on_train_stop_id", using: :btree
  end

  create_table "train_stations", force: :cascade do |t|
    t.integer  "station_id"
    t.string   "station_name"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "train_stop_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["train_stop_id"], name: "index_train_stations_on_train_stop_id", using: :btree
  end

  create_table "train_stops", force: :cascade do |t|
    t.integer  "stop_id"
    t.string   "stop_name"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "train_route"
    t.integer  "train_route_id"
    t.integer  "train_station_id"
    t.index ["train_route_id"], name: "index_train_stops_on_train_route_id", using: :btree
    t.index ["train_station_id"], name: "index_train_stops_on_train_station_id", using: :btree
  end

  add_foreign_key "train_routes", "train_stops"
  add_foreign_key "train_stations", "train_stops"
  add_foreign_key "train_stops", "train_routes"
  add_foreign_key "train_stops", "train_stations"
end
