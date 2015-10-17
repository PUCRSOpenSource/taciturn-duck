class AddGrauToCursos < ActiveRecord::Migration
  def change
    add_column :cursos, :grau, :string
  end
end
