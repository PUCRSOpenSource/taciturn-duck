class Curriculo < ActiveRecord::Base
  belongs_to :curso
  belongs_to :disciplina
end
