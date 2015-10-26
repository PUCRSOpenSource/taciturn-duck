class AddCurriculoIdToDisciplinas < ActiveRecord::Migration
  def change
	  add_column :disciplinas, :curriculo_id, :integer
  end
end
