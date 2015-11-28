require 'test_helper'

class CurriculoTest < ActiveSupport::TestCase

	test "should not save without codigo" do
		cur = Curriculo.new curso_id: 7, disciplina_id: 1
		assert_not cur.save
		cur.codigo = "4406"
		assert cur.save
	end

	test "should not save without curso_id" do
		cur = Curriculo.new codigo: "4406", disciplina_id: 1
		assert_not cur.save
		cur.curso_id = 7
		assert cur.save
	end

	test "should not save without disciplina_id" do
		cur = Curriculo.new codigo: "4406", curso_id: 7
		assert_not cur.save
		cur.disciplina_id = 1
		assert cur.save
	end

end
