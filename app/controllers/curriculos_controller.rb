class CurriculosController < ApplicationController
	before_action :set_curriculo, only: [:show, :edit, :update, :destroy]

	# GET /curriculos
	# GET /curriculos.json
	def index
		@curriculos = Curriculo.all.group(:curso_id)
		#@curriculos = Curriculo.all
	end

	# GET /curriculos/1
	# GET /curriculos/1.json
	def show
		@disciplinas = Disciplina.joins(:curriculos).where(curriculos: {codigo: @curriculo.codigo})
	end

	# GET /curriculos/new
	def new
		@curriculo = Curriculo.new
	end

	# GET /curriculos/1/edit
	def edit
		@curriculo
		@disciplinas = Disciplina.joins(:curriculos).where(curriculos: {codigo: @curriculo.codigo})
	end

	# POST /curriculos
	# POST /curriculos.json
	def create
		#@curriculo = Curriculo.new(curriculo_params)
		puts "AHHHHHHHHHHHHHH"
		hash = Hash.new
		array = Array.new
		curriculo_params[:disciplinas_attributes].each do |k,v|
			curr = Curriculo.new
			curr[:codigo] = curriculo_params[:codigo]
			curr[:curso_id] = curriculo_params[:curso_id]
			curr[:disciplina_id] = v[:id]
			array << curr
		end
		saved = true
		array.each { |x| puts "#{x[:codigo]} - #{x[:curso_id]} - #{x[:disciplina_id]}" }
		array.each { |x| saved &= x.save }
		puts saved
		puts "OHHHHHHHHHHHHHH"

		respond_to do |format|
			if @curriculo.save
				format.html { redirect_to @curriculo, notice: 'Curriculo was successfully created.' }
				format.json { render :show, status: :created, location: @curriculo }
			else
				format.html { render :new }
				format.json { render json: @curriculo.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /curriculos/1
	# PATCH/PUT /curriculos/1.json
	def update
		respond_to do |format|
			if @curriculo.update(curriculo_params)
				format.html { redirect_to @curriculo, notice: 'Curriculo was successfully updated.' }
				format.json { render :show, status: :ok, location: @curriculo }
			else
				format.html { render :edit }
				format.json { render json: @curriculo.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /curriculos/1
	# DELETE /curriculos/1.json
	def destroy
		@curriculo.destroy
		respond_to do |format|
			format.html { redirect_to curriculos_url, notice: 'Curriculo was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_curriculo
		@curriculo = Curriculo.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def curriculo_params
		params.require(:curriculo).permit(:codigo, :curso_id, disciplinas_attributes: [:id])
	end
end
