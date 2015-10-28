class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.string :horario, index: true
      t.integer :numero, index: true
      t.references :disciplina, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
