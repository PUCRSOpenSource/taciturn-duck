class PagesController < ApplicationController
	def home
	end

	def about
	end

	def backup_restore
	end

	def aconselhamento
		@restricao = Restricao.new
	end

	def do_grade
		horarios = [ '2JK', '3JK', '6JKLMNP' ]
		disc_cur = [ 1, 2, 3, 10 ]

		#disciplinas q o user pode fazer
		@courses_available = Disciplina.where.not(id: disc_cur)

	end

	def restore
		system "rake site:restore"
		render 'backup_restore'
	end

	def backup
		system "rake site:backup"
		render 'backup_restore'
	end

end
