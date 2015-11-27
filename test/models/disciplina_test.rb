require 'test_helper'

class DisciplinaTest < ActiveSupport::TestCase

	test "should not save disciplina without nome" do
		disciplina = Disciplina.new creditos: 6, semestre: 3
		assert_not disciplina.save
		disciplina.nome = "Algoritmos e Programação III"
		assert disciplina.save
	end

	test "should not save disciplina without creditos" do
		disciplina = Disciplina.new nome: "Algoritmos e Programação III", semestre: 3
		assert_not disciplina.save
		disciplina.creditos = 6
		assert disciplina.save
	end

	test "should not save disciplina without semestre" do
		disciplina = Disciplina.new nome: "Algoritmos e Programação III", creditos: 6
		assert_not disciplina.save
		disciplina.semestre = 3
		assert disciplina.save
	end

	test "name should be a string" do
		disciplina = Disciplina.new nome: 123, creditos: 6, semestre: 3
		assert_not disciplina.nome.class == String
	end

end
