class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :nome
      t.string :grau

      t.timestamps null: false
    end
  end
end
