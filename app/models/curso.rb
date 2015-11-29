class Curso < ActiveRecord::Base
	has_many :disciplinas, through: :curriculo
	has_many :curriculos

	validates :nome, presence: true
	validates :grau, presence: true
end
