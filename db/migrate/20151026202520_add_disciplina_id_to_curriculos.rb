class AddDisciplinaIdToCurriculos < ActiveRecord::Migration
  def change
    add_column :curriculos, :disciplina_id, :integer
  end
end
