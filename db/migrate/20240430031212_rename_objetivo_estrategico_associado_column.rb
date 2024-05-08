class RenameObjetivoEstrategicoAssociadoColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :processos, :objetivo_estratégico_associado, :objetivo_estrategico_associado
  end
end
