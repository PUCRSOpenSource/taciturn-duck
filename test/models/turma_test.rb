require 'test_helper'

class TurmaTest < ActiveSupport::TestCase

	test "should not save turma without horario" do
		turma = Turma.new numero: 128, disciplina_id: 1
		assert_not turma.save
		turma.horario = "2JK4JK"
		assert turma.save
	end

	test "should not save turma without numero" do
		turma = Turma.new horario: "2JK4JK", disciplina_id: 1
		assert_not turma.save
		turma.numero = 128
		assert turma.save
	end

	test "should not save turma without disciplina_id" do
		turma = Turma.new horario: "2JK4JK", numero: 128
		assert_not turma.save
		turma.disciplina_id = 1
		assert turma.save
	end

	test "horarios should always be a number followed by two capital letters, one to three times that" do
		# /\A([0-9][A-Z]{2,4}){1,3}\z/
		turma = Turma.new horario: "2jk4jk", numero: 128, disciplina_id: 1
		assert_not turma.save
		turma.horario = "bla"
		assert_not turma.save
		turma.horario = "2JK4JK6JK7AB"
		assert_not turma.save
		turma.horario = "3NP5NP"
		assert turma.save
	end

	test "horario should always be a string" do
		turma = Turma.new horario: 102, numero: 128, disciplina_id: 1
		assert_not turma.save
	end

	test "numero should always be a number" do
		turma = Turma.new horario: "2JK4JK", numero: "128", disciplina_id: 1
		assert_not turma.save
	end

	test "disciplina_id should always be a number" do
		turma = Turma.new horario: "2JK4JK", numero: 128, disciplina_id: "1"
		assert_not turma.save
	end

end
