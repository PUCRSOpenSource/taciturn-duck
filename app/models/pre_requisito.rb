class PreRequisito < ActiveRecord::Base
	belongs_to :disciplina
	belongs_to :pre_requisito, :class_name => "Disciplina"
end
