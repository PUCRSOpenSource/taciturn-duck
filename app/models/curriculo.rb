class Curriculo < ActiveRecord::Base
  belongs_to :curso
	has_many :disciplinas
end
