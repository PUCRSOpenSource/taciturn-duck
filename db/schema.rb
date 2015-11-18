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

ActiveRecord::Schema.define(version: 20151028021909) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "curriculos", force: :cascade do |t|
    t.string   "codigo"
    t.integer  "curso_id"
    t.integer  "disciplina_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "curriculos", ["curso_id"], name: "index_curriculos_on_curso_id", using: :btree
  add_index "curriculos", ["disciplina_id"], name: "index_curriculos_on_disciplina_id", using: :btree

  create_table "cursos", force: :cascade do |t|
    t.string   "nome"
    t.string   "grau"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string   "nome"
    t.integer  "creditos"
    t.integer  "semestre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "turmas", force: :cascade do |t|
    t.string   "horario"
    t.integer  "numero"
    t.integer  "disciplina_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "turmas", ["disciplina_id"], name: "index_turmas_on_disciplina_id", using: :btree
  add_index "turmas", ["horario"], name: "index_turmas_on_horario", using: :btree
  add_index "turmas", ["numero"], name: "index_turmas_on_numero", using: :btree

  add_foreign_key "curriculos", "cursos"
  add_foreign_key "curriculos", "disciplinas"
  add_foreign_key "turmas", "disciplinas"
end
