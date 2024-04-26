class CreateControles < ActiveRecord::Migration[7.1]
  def change
    create_table :controles do |t|
      t.string :nome
      t.string :controle_novo_ou_modificado
      t.string :tipo_de_controle
      t.string :natureza_do_controle
      t.string :classificação_controle_quanto_ao_risco
      t.string :tipo_de_ação
      t.string :responsável_pela_ação
      t.string :como_implantar_controle
      t.string :macroetapas_de_implantação
      t.date :data_prevista_início
      t.date :data_prevista_conclusão
      t.date :data_real_conclusão
      t.string :órgãos_setores_envolvidos
      t.string :análise_EGR
      t.references :risco, null: false, foreign_key: true

      t.timestamps
    end
  end
end
