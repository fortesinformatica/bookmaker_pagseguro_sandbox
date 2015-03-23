class RespostaPagsegurosController < ApplicationController
  before_action :set_resposta_pagseguro, only: [:show, :edit, :update, :destroy]

  # GET /resposta_pagseguros
  # GET /resposta_pagseguros.json
  def index
    @resposta_pagseguros = RespostaPagseguro.all
  end

  # GET /resposta_pagseguros/1
  # GET /resposta_pagseguros/1.json
  def show
  end

  # GET /resposta_pagseguros/new
  def new
    @resposta_pagseguro = RespostaPagseguro.new
  end

  # GET /resposta_pagseguros/1/edit
  def edit
  end

  # POST /resposta_pagseguros
  # POST /resposta_pagseguros.json
  def create
    @resposta_pagseguro = RespostaPagseguro.new(resposta_pagseguro_params)

    respond_to do |format|
      if @resposta_pagseguro.save
        format.html { redirect_to @resposta_pagseguro, notice: 'Resposta pagseguro was successfully created.' }
        format.json { render :show, status: :created, location: @resposta_pagseguro }
      else
        format.html { render :new }
        format.json { render json: @resposta_pagseguro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resposta_pagseguros/1
  # PATCH/PUT /resposta_pagseguros/1.json
  def update
    respond_to do |format|
      if @resposta_pagseguro.update(resposta_pagseguro_params)
        format.html { redirect_to @resposta_pagseguro, notice: 'Resposta pagseguro was successfully updated.' }
        format.json { render :show, status: :ok, location: @resposta_pagseguro }
      else
        format.html { render :edit }
        format.json { render json: @resposta_pagseguro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resposta_pagseguros/1
  # DELETE /resposta_pagseguros/1.json
  def destroy
    @resposta_pagseguro.destroy
    respond_to do |format|
      format.html { redirect_to resposta_pagseguros_url, notice: 'Resposta pagseguro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resposta_pagseguro
      @resposta_pagseguro = RespostaPagseguro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resposta_pagseguro_params
      params[:resposta_pagseguro]
    end
end
