class AddProcessoToControles < ActiveRecord::Migration[7.1]
  def change
    add_reference :controles, :processo, null: false, foreign_key: true
  end
end
