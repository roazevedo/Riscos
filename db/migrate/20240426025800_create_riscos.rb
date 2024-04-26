class CreateRiscos < ActiveRecord::Migration[7.1]
  def change
    create_table :riscos do |t|
      t.string :nome
      t.date :data_identificação
      t.string :tipo_de_risco
      t.string :associação_do_risco
      t.string :causas
      t.string :consequências
      t.string :dimensões_do_risco
      t.string :frequência
      t.string :justificativa_frequência
      t.string :impacto
      t.string :justificativa_impacto
      t.string :risco_inerente
      t.string :existe_procedimento_de_controle
      t.string :descrição_do_controle_existente
      t.boolean :eficaz
      t.boolean :proporcional
      t.boolean :razoável
      t.boolean :adequado
      t.string :fac
      t.string :risco_residual
      t.string :resposta_sugerida_ao_risco
      t.date :data_máxima_implantação
      t.references :processo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
