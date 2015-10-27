class Curso < ActiveRecord::Base
	has_many :curriculos
	has_many :disciplinas, :through => :curriculos
end
