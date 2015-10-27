class AddCurriculoRefToDisciplinas < ActiveRecord::Migration
  def change
    add_reference :disciplinas, :curriculo, index: true, foreign_key: true
  end
end
