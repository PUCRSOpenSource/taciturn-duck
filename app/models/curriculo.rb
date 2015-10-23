class Curriculo < ActiveRecord::Base
  belongs_to :curso
  has_and_belongs_to_many :disciplina
end
