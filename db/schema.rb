# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_19_195905) do

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.integer "height"
    t.integer "mass"
    t.string "hair_color"
    t.string "skin_color"
    t.string "eye_color"
    t.string "birth_year"
    t.string "gender"
    t.string "homeworld"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "planet_id"
    t.integer "specie_id"
    t.index ["planet_id"], name: "index_people_on_planet_id"
    t.index ["specie_id"], name: "index_people_on_specie_id"
  end

  create_table "people_starships", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "starship_id", null: false
    t.index ["person_id"], name: "index_people_starships_on_person_id"
    t.index ["starship_id"], name: "index_people_starships_on_starship_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.integer "rotation_period"
    t.integer "orbital_period"
    t.integer "diameter"
    t.string "climate"
    t.string "gravity"
    t.string "terrain"
    t.integer "surface_water"
    t.integer "population"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "classification"
    t.string "designation"
    t.string "average_height"
    t.string "skin_colors"
    t.string "hair_colors"
    t.string "eye_colors"
    t.string "average_lifespan"
    t.string "homeworld"
    t.string "language"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "planet_id"
    t.index ["planet_id"], name: "index_species_on_planet_id"
  end

  create_table "starships", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.string "manufacturer"
    t.integer "cost_in_credits"
    t.integer "length"
    t.integer "max_atmosphering_speed"
    t.integer "crew"
    t.integer "passengers"
    t.integer "cargo_capacity"
    t.string "consumables"
    t.float "hyperdrive_rating"
    t.integer "mglt"
    t.string "starship_class"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
