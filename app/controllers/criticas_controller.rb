class CriticasController < ApplicationController
  before_action :set_critica, only: %i[ show edit update destroy ]
  before_action :set_filme, only: %i[new show edit create update ]
  

  # GET /criticas or /criticas.json
  def index
    @criticas = Critica.all
  end

  # GET /criticas/1 or /criticas/1.json
  def show

    
  end

  # GET /criticas/new
  def new
    @critica = Critica.new
    @critica.esta_aprovado = true
  end

  # GET /criticas/1/edit
  def edit
  end

  # POST /criticas or /criticas.json
  def create
    @critica = Critica.new(critica_params)
    

    

    respond_to do |format|
      if @critica.save
        format.html { redirect_to critica_url(@critica), notice: "Comentário feito com sucesso! Aguarde aprovação." }
        format.json { render :show, status: :created, location: @critica }

      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @critica.errors, status: :unprocessable_entity }
      end
      
    end

   end

  # PATCH/PUT /criticas/1 or /criticas/1.json
  
  def update
    
    respond_to do |format|
      if @critica.update(critica_params)
        format.html { redirect_to critica_url(@critica), notice: "Comentário Aprovado!" }
        format.json { render :show, status: :ok, location: @critica }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @critica.errors, status: :unprocessable_entity }
      end
    end
    
    if @critica.esta_aprovado == true
    a = Log.new
    a.comentario_id = params[:id]
    a.save
    end
end

  # DELETE /criticas/1 or /criticas/1.json
  def destroy
    @critica.destroy

    respond_to do |format|
      format.html { redirect_to criticas_url, notice: "Comentário apagado com sucesso" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filme
      @filme = Filme.all.pluck(:titulo,:id)
    end
        
    def set_critica
      @critica = Critica.find(params[:id])
    end
    def set_filme
      @filme= Filme.all.pluck(:titulo,:id)
    end

    # Only allow a list of trusted parameters through.
    def critica_params
      params.require(:critica).permit(:comentario, :esta_aprovado, :Filme_id)
    end
end
