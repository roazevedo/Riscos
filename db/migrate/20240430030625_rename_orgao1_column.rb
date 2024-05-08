class RenameOrgao1Column < ActiveRecord::Migration[7.1]
  def change
    rename_column :processos, :órgão_1, :orgao1
  end
end
