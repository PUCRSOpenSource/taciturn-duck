class CreateCurriculos < ActiveRecord::Migration
  def change
    create_table :curriculos do |t|
      t.string :codigo
      t.references :curso, index: true, foreign_key: true
      t.references :disciplina, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
