class AddCreditosToDisciplinas < ActiveRecord::Migration
  def change
    add_column :disciplinas, :creditos, :integer
  end
end
