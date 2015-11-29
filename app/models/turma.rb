class Turma < ActiveRecord::Base
  belongs_to :disciplina

	validates :horario, presence: true, format: { with: /\A([0-9][A-Z]{2,4}){1,3}\z/ }
	validates :numero, presence: true, numericality: { only_integer: true }
	validates :disciplina_id, presence: true, numericality: { only_integer: true }
end
