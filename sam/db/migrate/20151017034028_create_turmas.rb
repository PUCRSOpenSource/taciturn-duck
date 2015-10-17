class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.integer :numero
      t.string :horario
      t.references :disciplina, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
