class PagesController < ApplicationController
  def home
  end

  def about
  end

	def backup_restore
	end

	def aconselhamento
	end

	def do_grade
		render :root
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
