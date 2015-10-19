class CreateCurriculosDisciplinas < ActiveRecord::Migration
  def change
    create_table :curriculos_disciplinas do |t|
		t.integer :curriculo_id
		t.integer :disciplina_id
    end
  end
end
