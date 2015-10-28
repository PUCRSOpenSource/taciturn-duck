class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.integer :creditos
      t.integer :semestre

      t.timestamps null: false
    end
  end
end
