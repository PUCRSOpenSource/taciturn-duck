class Curriculo < ActiveRecord::Base
	belongs_to :curso
	has_many :disciplinas
	accepts_nested_attributes_for :disciplinas
end
