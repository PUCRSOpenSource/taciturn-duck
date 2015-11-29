class PagesController < ApplicationController
  def home
  end

  def about
  end

	def backup_restore
	end

	def aconselhamento
    @turma = Turma.new
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
