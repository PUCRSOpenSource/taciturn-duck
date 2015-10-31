class Curso < ActiveRecord::Base
	has_many :disciplinas, through: :curriculo
	has_many :curriculos
end
