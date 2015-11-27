require 'test_helper'

class CursoTest < ActiveSupport::TestCase
	
	test "should not save without nome" do
		curso = Curso.new grau: "Bacharelado"
		assert_not curso.save
		curso.nome = "Direito"
		assert curso.save
	end

	test "should not save without grau" do
		curso = Curso.new nome: "Direito"
		assert_not curso.save
		curso.grau = "Bacharelado"
		assert curso.save
	end

end
