class CreatePlanos < ActiveRecord::Migration[7.1]
  def change
    create_table :planos do |t|
      t.string :título_etapa
      t.string :descrição_etapa
      t.string :responsável_pela_implementação
      t.string :órgãos_setores_envolvidos
      t.string :recursos_necessários_para_implementação
      t.date :data_início_etapa
      t.date :data_final_implementação
      t.boolean :gerará_produto
      t.string :qual_produto_gerado
      t.references :controle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
