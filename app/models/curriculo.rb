class Curriculo < ActiveRecord::Base
	belongs_to :curso
	has_many :disciplinas
	accepts_nested_attributes_for :disciplinas, reject_if: :all_blank, allow_destroy: true

	validates :codigo, presence: true
	validates :curso_id, presence: true
	validates :disciplina_id, presence: true
end
