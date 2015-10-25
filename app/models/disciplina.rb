class Disciplina < ActiveRecord::Base
	has_many :pre_requisitos
	has_many :disciplinas, :through => :pre_requisitos
end
