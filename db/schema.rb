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

<<<<<<< HEAD
<<<<<<< HEAD
ActiveRecord::Schema[7.0].define(version: 2022_11_20_101607) do
=======
ActiveRecord::Schema[7.0].define(version: 2022_11_20_012545) do
>>>>>>> 774b921cf4b4f8a27f6973d8fb5646edccfc9e64
=======
ActiveRecord::Schema[7.0].define(version: 2022_11_20_110657) do
>>>>>>> 52f249036443c47d6caedd593f4162b4ffc7ca25
  create_table "ators", force: :cascade do |t|
    t.string "nome"
    t.integer "ano_nascimento"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
<<<<<<< HEAD
  create_table "logs", force: :cascade do |t|
    t.integer "comentario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

=======
=======
  create_table "criticas", force: :cascade do |t|
    t.text "comentario"
    t.boolean "esta_aprovado"
    t.integer "Filme_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Filme_id"], name: "index_criticas_on_Filme_id"
  end

>>>>>>> 52f249036443c47d6caedd593f4162b4ffc7ca25
  create_table "filmes", force: :cascade do |t|
    t.string "titulo"
    t.integer "ano_lancamento"
    t.integer "ator_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ator_id"], name: "index_filmes_on_ator_id"
  end

  add_foreign_key "criticas", "Filmes"
  add_foreign_key "filmes", "ators"
>>>>>>> 774b921cf4b4f8a27f6973d8fb5646edccfc9e64
end
