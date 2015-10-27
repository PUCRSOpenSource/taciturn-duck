class Disciplina < ActiveRecord::Base
	has_many :pre_requisitos
	has_many :disciplinas, :through => :pre_requisitos
	has_many :curriculos
	has_many :cursos, :through => :curriculos
end
