class RenameServidorResponsavelColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :processos, :servidor_responsável, :servidor_responsavel
  end
end
