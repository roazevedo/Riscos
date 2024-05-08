class CreateProcessos < ActiveRecord::Migration[7.1]
  def change
    create_table :processos do |t|
      t.string :nome
      t.string :orgao1
      t.string :orgao2
      t.string :gestor_processo_1
      t.string :gestor_processo_2
      t.string :servidor_responsável
      t.string :objetivo_estratégico_associado
      t.string :embasamento_legal
      t.string :sistemas_utilizados
      t.string :partes_interessadas

      t.timestamps
    end
  end
end
