class AddMatriculaToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :matricula, :string
  end
end
