class DisciplinasController < ApplicationController
	before_action :set_disciplina, only: [:show, :edit, :update, :destroy]

	# GET /disciplinas
	# GET /disciplinas.json
	def index
		@disciplinas = Disciplina.all
	end

	# GET /disciplinas/1
	# GET /disciplinas/1.json
	def show
		@pre_requisitos = get_pre_requisitos params[:id]
	end

	# GET /disciplinas/new
	def new
		@disciplina = Disciplina.new
	end

	# GET /disciplinas/1/edit
	def edit
	end

	# POST /disciplinas
	# POST /disciplinas.json
	def create
		@disciplina = Disciplina.new(disciplina_params)

		respond_to do |format|
			if @disciplina.save
				format.html { redirect_to @disciplina, notice: 'Disciplina was successfully created.' }
				format.json { render :show, status: :created, location: @disciplina }
			else
				format.html { render :new }
				format.json { render json: @disciplina.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /disciplinas/1
	# PATCH/PUT /disciplinas/1.json
	def update
		respond_to do |format|
			if @disciplina.update(disciplina_params)
				format.html { redirect_to @disciplina, notice: 'Disciplina was successfully updated.' }
				format.json { render :show, status: :ok, location: @disciplina }
			else
				format.html { render :edit }
				format.json { render json: @disciplina.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /disciplinas/1
	# DELETE /disciplinas/1.json
	def destroy
		@disciplina.destroy
		respond_to do |format|
			format.html { redirect_to disciplinas_url, notice: 'Disciplina was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_disciplina
		@disciplina = Disciplina.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def disciplina_params
		params.require(:disciplina).permit(:nome, :semestre)
	end

	def get_pre_requisitos disciplina_id
		Disciplina.find_by_sql("select disciplinas.nome, disciplinas.id from disciplinas inner join pre_requisitos on disciplinas.id == pre_requisitos.pre_requisito_id where pre_requisitos.disciplina_id == #{disciplina_id}")
	end
end
