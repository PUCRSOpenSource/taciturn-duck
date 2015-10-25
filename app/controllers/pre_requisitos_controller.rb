class PreRequisitosController < ApplicationController
  before_action :set_pre_requisito, only: [:show, :edit, :update, :destroy]

  # GET /pre_requisitos
  # GET /pre_requisitos.json
  def index
    @pre_requisitos = PreRequisito.all
  end

  # GET /pre_requisitos/1
  # GET /pre_requisitos/1.json
  def show
  end

  # GET /pre_requisitos/new
  def new
    @pre_requisito = PreRequisito.new
  end

  # GET /pre_requisitos/1/edit
  def edit
  end

  # POST /pre_requisitos
  # POST /pre_requisitos.json
  def create
    @pre_requisito = PreRequisito.new(pre_requisito_params)

    respond_to do |format|
      if @pre_requisito.save
        format.html { redirect_to @pre_requisito, notice: 'Pre requisito was successfully created.' }
        format.json { render :show, status: :created, location: @pre_requisito }
      else
        format.html { render :new }
        format.json { render json: @pre_requisito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pre_requisitos/1
  # PATCH/PUT /pre_requisitos/1.json
  def update
    respond_to do |format|
      if @pre_requisito.update(pre_requisito_params)
        format.html { redirect_to @pre_requisito, notice: 'Pre requisito was successfully updated.' }
        format.json { render :show, status: :ok, location: @pre_requisito }
      else
        format.html { render :edit }
        format.json { render json: @pre_requisito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pre_requisitos/1
  # DELETE /pre_requisitos/1.json
  def destroy
    @pre_requisito.destroy
    respond_to do |format|
      format.html { redirect_to pre_requisitos_url, notice: 'Pre requisito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pre_requisito
      @pre_requisito = PreRequisito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pre_requisito_params
      params.require(:pre_requisito).permit(:disciplina_id, :pre_requisito_id, :create, :destroy)
    end
end
