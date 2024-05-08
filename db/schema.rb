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

ActiveRecord::Schema[7.1].define(version: 2024_05_08_042313) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "controles", force: :cascade do |t|
    t.string "nome"
    t.string "controle_novo_ou_modificado"
    t.string "tipo_de_controle"
    t.string "natureza_do_controle"
    t.string "classificação_controle_quanto_ao_risco"
    t.string "tipo_de_ação"
    t.string "responsável_pela_ação"
    t.string "como_implantar_controle"
    t.string "macroetapas_de_implantação"
    t.date "data_prevista_início"
    t.date "data_prevista_conclusão"
    t.date "data_real_conclusão"
    t.string "órgãos_setores_envolvidos"
    t.string "análise_EGR"
    t.bigint "risco_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "processo_id", null: false
    t.index ["processo_id"], name: "index_controles_on_processo_id"
    t.index ["risco_id"], name: "index_controles_on_risco_id"
  end

  create_table "planos", force: :cascade do |t|
    t.string "título_etapa"
    t.string "descrição_etapa"
    t.string "responsável_pela_implementação"
    t.string "órgãos_setores_envolvidos"
    t.string "recursos_necessários_para_implementação"
    t.date "data_início_etapa"
    t.date "data_final_implementação"
    t.boolean "gerará_produto"
    t.string "qual_produto_gerado"
    t.bigint "controle_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "processo_id", null: false
    t.index ["controle_id"], name: "index_planos_on_controle_id"
    t.index ["processo_id"], name: "index_planos_on_processo_id"
  end

  create_table "processos", force: :cascade do |t|
    t.string "nome"
    t.string "orgao1"
    t.string "orgao2"
    t.string "gestor_processo_1"
    t.string "gestor_processo_2"
    t.string "servidor_responsavel"
    t.string "objetivo_estrategico_associado"
    t.string "embasamento_legal"
    t.string "sistemas_utilizados"
    t.string "partes_interessadas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "riscos", force: :cascade do |t|
    t.string "nome"
    t.date "data_identificação"
    t.string "tipo_de_risco"
    t.string "associação_do_risco"
    t.string "causas"
    t.string "consequências"
    t.string "dimensões_do_risco"
    t.string "frequência"
    t.string "justificativa_frequência"
    t.string "impacto"
    t.string "justificativa_impacto"
    t.string "risco_inerente"
    t.string "existe_procedimento_de_controle"
    t.string "descrição_do_controle_existente"
    t.boolean "eficaz"
    t.boolean "proporcional"
    t.boolean "razoável"
    t.boolean "adequado"
    t.string "fac"
    t.string "risco_residual"
    t.string "resposta_sugerida_ao_risco"
    t.date "data_máxima_implantação"
    t.bigint "processo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["processo_id"], name: "index_riscos_on_processo_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "matricula"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "controles", "processos"
  add_foreign_key "controles", "riscos"
  add_foreign_key "planos", "controles"
  add_foreign_key "planos", "processos"
  add_foreign_key "riscos", "processos"
end
