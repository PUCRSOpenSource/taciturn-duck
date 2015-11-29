class Disciplina < ActiveRecord::Base
	has_many :cursos, through: :curriculo
	has_many :curriculos

	validates :nome, presence: true
	validates :creditos, presence: true
	validates :semestre, presence: true
end
