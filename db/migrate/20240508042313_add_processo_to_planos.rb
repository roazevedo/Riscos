class AddProcessoToPlanos < ActiveRecord::Migration[7.1]
  def change
    add_reference :planos, :processo, null: false, foreign_key: true
  end
end
