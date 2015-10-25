class CreatePreRequisitos < ActiveRecord::Migration
  def change
    create_table :pre_requisitos do |t|
      t.integer :disciplina_id
      t.integer :pre_requisito_id
      t.string :create
      t.string :destroy

      t.timestamps null: false
    end
  end
end
