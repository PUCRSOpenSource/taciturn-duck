class CreateCurriculos < ActiveRecord::Migration
  def change
    create_table :curriculos do |t|
      t.references :curso, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
