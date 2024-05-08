class RenameOrgao2Column < ActiveRecord::Migration[7.1]
  def change
    rename_column :processos, :órgão_2, :orgao2
  end
end
