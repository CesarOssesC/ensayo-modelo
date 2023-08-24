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

ActiveRecord::Schema[7.0].define(version: 2023_08_24_151021) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asociados", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.string "telefono"
    t.string "email"
    t.string "rut"
    t.string "representante"
    t.string "email_representante"
    t.bigint "comuna_id", null: false
    t.integer "estado"
    t.bigint "tipo_socio_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comuna_id"], name: "index_asociados_on_comuna_id"
    t.index ["tipo_socio_id"], name: "index_asociados_on_tipo_socio_id"
  end

  create_table "boletas", force: :cascade do |t|
    t.string "payer"
    t.string "flowOrder"
    t.integer "status"
    t.string "subject"
    t.decimal "amount"
    t.string "currency"
    t.string "media"
    t.string "token"
    t.bigint "asociado_id", null: false
    t.integer "estado"
    t.bigint "tipo_pago_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asociado_id"], name: "index_boletas_on_asociado_id"
    t.index ["tipo_pago_id"], name: "index_boletas_on_tipo_pago_id"
  end

  create_table "boletas_meses", force: :cascade do |t|
    t.bigint "boleta_id", null: false
    t.bigint "mes_id", null: false
    t.bigint "year_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boleta_id"], name: "index_boletas_meses_on_boleta_id"
    t.index ["mes_id"], name: "index_boletas_meses_on_mes_id"
    t.index ["year_id"], name: "index_boletas_meses_on_year_id"
  end

  create_table "comunas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meses", force: :cascade do |t|
    t.string "mes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "precios", force: :cascade do |t|
    t.string "nombre"
    t.decimal "precio_pesos"
    t.decimal "precio_uf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipos_pagos", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipos_socios", force: :cascade do |t|
    t.string "tipo"
    t.integer "tipo_colaborador", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "years", force: :cascade do |t|
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "asociados", "comunas"
  add_foreign_key "asociados", "tipos_socios"
  add_foreign_key "boletas", "asociados"
  add_foreign_key "boletas", "tipos_pagos"
  add_foreign_key "boletas_meses", "boletas"
  add_foreign_key "boletas_meses", "meses"
  add_foreign_key "boletas_meses", "years"
end
