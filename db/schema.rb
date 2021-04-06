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

ActiveRecord::Schema.define(version: 2021_04_06_142006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "daily_menus", force: :cascade do |t|
    t.bigint "weekly_menu_id", null: false
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["weekly_menu_id"], name: "index_daily_menus_on_weekly_menu_id"
  end

  create_table "grocery_list_ingredients", force: :cascade do |t|
    t.float "quantity"
    t.bigint "ingredient_id", null: false
    t.bigint "grocery_list_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "grocery_lists", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_grocery_lists_on_user_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "meta_supply_id", null: false
    t.string "name"
    t.string "category"
    t.string "unit"
    t.float "latest_cost_per_unit"
    t.float "running_quantity"
    t.float "running_cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meta_supply_id"], name: "index_ingredients_on_meta_supply_id"
    t.index ["user_id"], name: "index_ingredients_on_user_id"
  end

  create_table "meals", force: :cascade do |t|
    t.bigint "daily_menu_id", null: false
    t.bigint "recipe_id", null: false
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["daily_menu_id"], name: "index_meals_on_daily_menu_id"
    t.index ["recipe_id"], name: "index_meals_on_recipe_id"
  end

  create_table "meta_supplies", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "sub_category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pantries", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_pantries_on_user_id"
  end

  create_table "pantry_ingredients", force: :cascade do |t|
    t.float "quantity"
    t.bigint "ingredient_id", null: false
    t.bigint "pantry_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.float "quantity"
    t.bigint "ingredient_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.integer "servings"
    t.text "instructions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "store_supplies", force: :cascade do |t|
    t.bigint "store_id", null: false
    t.bigint "meta_supply_id", null: false
    t.string "unit"
    t.float "cost_per_unit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meta_supply_id"], name: "index_store_supplies_on_meta_supply_id"
    t.index ["store_id"], name: "index_store_supplies_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_stores_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weekly_menus", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_weekly_menus_on_user_id"
  end

  add_foreign_key "daily_menus", "weekly_menus"
  add_foreign_key "grocery_lists", "users"
  add_foreign_key "ingredients", "meta_supplies"
  add_foreign_key "ingredients", "users"
  add_foreign_key "meals", "daily_menus"
  add_foreign_key "meals", "recipes"
  add_foreign_key "pantries", "users"
  add_foreign_key "recipes", "users"
  add_foreign_key "store_supplies", "meta_supplies"
  add_foreign_key "store_supplies", "stores"
  add_foreign_key "stores", "users"
  add_foreign_key "weekly_menus", "users"
end
