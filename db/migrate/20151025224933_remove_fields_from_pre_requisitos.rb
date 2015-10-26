class RemoveFieldsFromPreRequisitos < ActiveRecord::Migration
  def change
    remove_column :pre_requisitos, :create, :string
    remove_column :pre_requisitos, :destroy, :string
  end
end
