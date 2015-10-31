class Disciplina < ActiveRecord::Base
	has_many :cursos, through: :curriculo
	has_many :curriculos
end
